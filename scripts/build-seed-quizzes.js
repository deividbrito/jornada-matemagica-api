#!/usr/bin/env node
/**
 * build-seed-quizzes.js
 *
 * Lê `tables.sql` (schema legado: Quiz com `alternativa1..4` inline e
 * Feedback com typo `explicacacao`) e gera
 * `migrations/008_seed_quizzes.sql` no schema atual:
 *   - quiz(id, id_assunto, pergunta, dificuldade)
 *   - alternativa(id_quiz, texto, eh_correta)  — 1ª opção é a correta
 *   - feedback(id_quiz, explicacao)
 *
 * Idempotência:
 *   - quiz e feedback usam INSERT IGNORE (PK colide se já existir).
 *   - alternativa não tem PK natural; assume DB limpo (uso em deploy novo).
 *     Localmente, esta migration é marcada como aplicada via _migrations
 *     se o usuário já populou via tables.sql — basta inserir manualmente.
 *
 * IDs de quiz são explícitos e sequenciais (1..N na ordem do tables.sql),
 * batendo com as referências em Feedback.
 */

const fs = require('fs');
const path = require('path');

const SRC = path.resolve(__dirname, '..', 'tables.sql');
const OUT = path.resolve(__dirname, '..', 'migrations', '008_seed_quizzes.sql');

const src = fs.readFileSync(SRC, 'utf8');

// --- Parser tolerante a aspas escapadas via '' (SQL-padrão) ---
//
// Divide um VALUES (...) em colunas, respeitando strings entre '...'
// (com '' como escape de aspas).
function splitValuesRow(row) {
  const cols = [];
  let i = 0;
  while (i < row.length) {
    // pula whitespace e vírgulas externas
    while (i < row.length && /[\s,]/.test(row[i])) i++;
    if (i >= row.length) break;
    if (row[i] === "'") {
      // string literal
      let out = '';
      i++; // consome aspas inicial
      while (i < row.length) {
        if (row[i] === "'" && row[i + 1] === "'") { out += "'"; i += 2; continue; }
        if (row[i] === "'") { i++; break; }
        out += row[i++];
      }
      cols.push({ kind: 'string', value: out });
    } else {
      // número ou identificador até próxima vírgula/fechamento
      let out = '';
      while (i < row.length && row[i] !== ',') { out += row[i++]; }
      cols.push({ kind: 'raw', value: out.trim() });
    }
  }
  return cols;
}

// Extrai todos os blocos INSERT INTO <table> (...) VALUES (...),(...),...;
// e devolve { table, rows: [[col, col, ...], ...] }.
function extractInserts(text, tableRegex) {
  const results = [];
  const re = new RegExp(
    `INSERT\\s+INTO\\s+(${tableRegex.source})\\s*\\([^)]*\\)\\s*VALUES\\s*([\\s\\S]*?);`,
    'gi'
  );
  let m;
  while ((m = re.exec(text)) !== null) {
    const table = m[1];
    const body = m[2];
    // tokeniza linhas de valores `(...)` no top-level
    const rows = [];
    let depth = 0, current = '', inStr = false;
    for (let i = 0; i < body.length; i++) {
      const c = body[i];
      if (inStr) {
        current += c;
        if (c === "'" && body[i + 1] === "'") { current += body[++i]; continue; }
        if (c === "'") inStr = false;
        continue;
      }
      if (c === "'") { inStr = true; current += c; continue; }
      if (c === '(') { depth++; if (depth === 1) { current = ''; continue; } }
      else if (c === ')') { depth--; if (depth === 0) { rows.push(current); continue; } }
      if (depth >= 1) current += c;
    }
    results.push({ table, rows: rows.map(splitValuesRow) });
  }
  return results;
}

const quizBlocks = extractInserts(src, /Quiz/i);
const feedbackBlocks = extractInserts(src, /Feedback/i);

const allQuizRows = quizBlocks.flatMap((b) => b.rows);
const allFeedbackRows = feedbackBlocks.flatMap((b) => b.rows);

console.log(`Encontrados: ${allQuizRows.length} quizzes, ${allFeedbackRows.length} feedbacks`);

// --- Format helpers ---
const esc = (s) => "'" + String(s).replace(/'/g, "''") + "'";

// --- Gera SQL ---
let sql = '';
sql += '-- ============================================================\n';
sql += '-- 008_seed_quizzes.sql  (GERADO POR scripts/build-seed-quizzes.js)\n';
sql += '-- Não edite à mão. Para regenerar:\n';
sql += '--   node scripts/build-seed-quizzes.js\n';
sql += '--\n';
sql += '-- Popula quiz + alternativa + feedback a partir do schema novo,\n';
sql += '-- convertendo os INSERTs legados de tables.sql.\n';
sql += '-- ============================================================\n\n';

// quiz inserts com id explícito
sql += '-- ===== quiz =====\n';
sql += 'INSERT IGNORE INTO quiz (id, id_assunto, pergunta, dificuldade) VALUES\n';
sql += allQuizRows
  .map((cols, idx) => {
    // cols: [id_assunto, pergunta, dificuldade, alt1, alt2, alt3, alt4]
    const idAssunto = cols[0].value;
    const pergunta = cols[1].value;
    const dificuldade = cols[2].value;
    return `  (${idx + 1}, ${idAssunto}, ${esc(pergunta)}, ${esc(dificuldade)})`;
  })
  .join(',\n');
sql += ';\n\n';

// alternativa inserts: 4 por quiz, primeira é a correta
sql += '-- ===== alternativa (1ª opção é a correta) =====\n';
sql += 'INSERT IGNORE INTO alternativa (id_quiz, texto, eh_correta) VALUES\n';
sql += allQuizRows
  .flatMap((cols, idx) => {
    const id = idx + 1;
    return [
      `  (${id}, ${esc(cols[3].value)}, 1)`,
      `  (${id}, ${esc(cols[4].value)}, 0)`,
      `  (${id}, ${esc(cols[5].value)}, 0)`,
      `  (${id}, ${esc(cols[6].value)}, 0)`,
    ];
  })
  .join(',\n');
sql += ';\n\n';

// feedback inserts: id_quiz dos blocos legados bate com a ordem dos quizzes
sql += '-- ===== feedback =====\n';
sql += 'INSERT IGNORE INTO feedback (id_quiz, explicacao) VALUES\n';
sql += allFeedbackRows
  .map((cols) => {
    // cols: [id_quiz, explicacacao]
    const idQuiz = cols[0].value;
    const explicacao = cols[1].value;
    return `  (${idQuiz}, ${esc(explicacao)})`;
  })
  .join(',\n');
sql += ';\n';

fs.writeFileSync(OUT, sql, 'utf8');
console.log(`Escrito: ${path.relative(process.cwd(), OUT)} (${(sql.length / 1024).toFixed(1)} KB)`);
