#!/usr/bin/env node
/**
 * export-arcade-seed.js
 *
 * Lê do MySQL LOCAL todas as questões da campanha 'medio' (arcade
 * ENEM) — que não estão no tables.sql nem em nenhum arquivo
 * versionado — e gera `migrations/009_seed_quizzes_arcade.sql`.
 *
 * Pré-requisitos:
 *   - WAMP/MySQL local rodando
 *   - .env apontando pro DB local com as questões
 *
 * Idempotência:
 *   - Apaga alternativa/feedback do range de IDs antes de inserir.
 *   - INSERT IGNORE no quiz (PK protege).
 */

const fs = require('fs');
const path = require('path');
const mysql = require('mysql2/promise');
const dotenv = require('dotenv');

dotenv.config({ path: path.resolve(__dirname, '..', '.env') });

const OUT = path.resolve(__dirname, '..', 'migrations', '009_seed_quizzes_arcade.sql');

const esc = (v) => {
  if (v === null || v === undefined) return 'NULL';
  if (typeof v === 'number') return String(v);
  if (typeof v === 'boolean') return v ? '1' : '0';
  if (typeof v === 'object') return "'" + JSON.stringify(v).replace(/'/g, "''") + "'";
  return "'" + String(v).replace(/\\/g, '\\\\').replace(/'/g, "''") + "'";
};

(async () => {
  const conn = await mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME,
  });

  const [quizzes] = await conn.query(
    "SELECT id, id_assunto, pergunta, dificuldade, campanha, files FROM quiz WHERE campanha='medio' ORDER BY id"
  );
  if (!quizzes.length) {
    console.error('Nenhum quiz com campanha=medio encontrado no DB local.');
    process.exit(1);
  }
  const ids = quizzes.map((q) => q.id);
  const minId = Math.min(...ids);
  const maxId = Math.max(...ids);

  const [alternativas] = await conn.query(
    `SELECT id, id_quiz, texto, eh_correta, file FROM alternativa WHERE id_quiz BETWEEN ${minId} AND ${maxId} ORDER BY id_quiz, id`
  );
  const [feedbacks] = await conn.query(
    `SELECT id_quiz, explicacao FROM feedback WHERE id_quiz BETWEEN ${minId} AND ${maxId} ORDER BY id_quiz`
  );

  console.log(`Encontrados: ${quizzes.length} quizzes 'medio' (IDs ${minId}-${maxId}), ${alternativas.length} alternativas, ${feedbacks.length} feedbacks`);

  let sql = '';
  sql += '-- ============================================================\n';
  sql += '-- 009_seed_quizzes_arcade.sql  (GERADO POR scripts/export-arcade-seed.js)\n';
  sql += '-- Não edite à mão. Para regenerar (precisa do MySQL local com dados):\n';
  sql += '--   node scripts/export-arcade-seed.js\n';
  sql += '--\n';
  sql += '-- Popula quiz/alternativa/feedback da campanha "medio" (arcade ENEM)\n';
  sql += `-- com IDs preservados ${minId}..${maxId}. Sem conflito com a faixa 1..419\n`;
  sql += '-- de campanha "fundamental" (migration 008).\n';
  sql += '-- ============================================================\n\n';

  // Limpeza idempotente — apaga só o range deste seed.
  sql += '-- ===== limpeza idempotente para reentradas =====\n';
  sql += `DELETE FROM alternativa WHERE id_quiz BETWEEN ${minId} AND ${maxId};\n`;
  sql += `DELETE FROM feedback WHERE id_quiz BETWEEN ${minId} AND ${maxId};\n\n`;

  // quiz
  sql += '-- ===== quiz (campanha=medio) =====\n';
  sql += 'INSERT IGNORE INTO quiz (id, id_assunto, pergunta, dificuldade, campanha, files) VALUES\n';
  sql += quizzes
    .map((q) =>
      `  (${q.id}, ${q.id_assunto}, ${esc(q.pergunta)}, ${esc(String(q.dificuldade))}, ${esc(q.campanha)}, ${esc(q.files)})`
    )
    .join(',\n');
  sql += ';\n\n';

  // alternativa
  sql += '-- ===== alternativa =====\n';
  sql += 'INSERT INTO alternativa (id, id_quiz, texto, eh_correta, file) VALUES\n';
  sql += alternativas
    .map((a) =>
      `  (${a.id}, ${a.id_quiz}, ${esc(a.texto)}, ${a.eh_correta ? 1 : 0}, ${esc(a.file)})`
    )
    .join(',\n');
  sql += ';\n\n';

  // feedback
  sql += '-- ===== feedback =====\n';
  sql += 'INSERT IGNORE INTO feedback (id_quiz, explicacao) VALUES\n';
  sql += feedbacks
    .map((f) => `  (${f.id_quiz}, ${esc(f.explicacao)})`)
    .join(',\n');
  sql += ';\n';

  fs.writeFileSync(OUT, sql, 'utf8');
  console.log(`Escrito: ${path.relative(process.cwd(), OUT)} (${(sql.length / 1024).toFixed(1)} KB)`);

  await conn.end();
})().catch((e) => {
  console.error(e);
  process.exit(1);
});
