#!/usr/bin/env node
/**
 * Migration runner — executa migrations sequenciais em ordem alfabética
 * a partir de `migrations/*.sql`. Cada arquivo aplicado é registrado na
 * tabela `_migrations` para não rodar duas vezes.
 *
 * Uso:
 *   node scripts/migrate.js          # aplica migrations pendentes
 *   node scripts/migrate.js --list   # lista status (aplicadas vs pendentes)
 *
 * Não usa Knex/Sequelize de propósito — escopo conservador.
 */

const fs = require('fs');
const path = require('path');
const mysql = require('mysql2/promise');
const dotenv = require('dotenv');
dotenv.config();

const MIGRATIONS_DIR = path.resolve(__dirname, '..', 'migrations');

function readMigrationFiles() {
  if (!fs.existsSync(MIGRATIONS_DIR)) {
    throw new Error(`Pasta migrations/ não encontrada em ${MIGRATIONS_DIR}`);
  }
  return fs
    .readdirSync(MIGRATIONS_DIR)
    .filter((f) => f.endsWith('.sql'))
    .sort();
}

/**
 * Quebra um arquivo SQL em comandos individuais respeitando blocos
 * `DELIMITER //` ... `DELIMITER ;` usados em stored procedures.
 * mysql2 não interpreta DELIMITER (que é metacomando do cliente).
 */
function splitSqlStatements(sql) {
  const statements = [];
  const lines = sql.split(/\r?\n/);
  let current = '';
  let delimiter = ';';

  // Remove linhas que são 100% comentário `-- ...`. Statements podem ter
  // comentários no topo + SQL em seguida — só queremos descartar quando NADA
  // resta de SQL real.
  const stripFullLineComments = (block) =>
    block
      .split(/\r?\n/)
      .filter((l) => !/^\s*--/.test(l))
      .join('\n')
      .trim();

  const pushIfMeaningful = () => {
    const stripped = stripFullLineComments(current);
    if (stripped) {
      statements.push(stripped);
    }
    current = '';
  };

  for (const rawLine of lines) {
    const line = rawLine;
    const delimMatch = line.trim().match(/^DELIMITER\s+(\S+)\s*$/i);
    if (delimMatch) {
      pushIfMeaningful();
      delimiter = delimMatch[1];
      continue;
    }

    current += line + '\n';

    // Procura o delimiter atual no fim do conteúdo acumulado
    const trimmedCurrent = current.trim();
    if (trimmedCurrent.endsWith(delimiter)) {
      current = trimmedCurrent.slice(0, -delimiter.length);
      pushIfMeaningful();
    }
  }

  pushIfMeaningful();
  return statements;
}

async function ensureMigrationsTable(conn) {
  await conn.query(`
    CREATE TABLE IF NOT EXISTS _migrations (
      name        VARCHAR(255) NOT NULL,
      applied_at  DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
      PRIMARY KEY (name)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  `);
}

async function getAppliedMigrations(conn) {
  const [rows] = await conn.query('SELECT name FROM _migrations');
  return new Set(rows.map((r) => r.name));
}

async function applyMigration(conn, file) {
  const fullPath = path.join(MIGRATIONS_DIR, file);
  const sql = fs.readFileSync(fullPath, 'utf8');
  const statements = splitSqlStatements(sql);

  for (const stmt of statements) {
    try {
      await conn.query(stmt);
    } catch (err) {
      const preview = stmt.length > 200 ? stmt.slice(0, 200) + '…' : stmt;
      throw new Error(
        `Falha em ${file}: ${err.message}\n--- statement ---\n${preview}\n-----------------`
      );
    }
  }

  await conn.query('INSERT INTO _migrations (name) VALUES (?)', [file]);
}

async function main() {
  const listOnly = process.argv.includes('--list');

  const required = ['DB_HOST', 'DB_USER', 'DB_PASS', 'DB_NAME'];
  const missing = required.filter((k) => !process.env[k]);
  if (missing.length) {
    console.error(`Variáveis de ambiente faltando: ${missing.join(', ')}`);
    console.error('Copie .env.example para .env e preencha os valores.');
    process.exit(1);
  }

  const conn = await mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME,
    multipleStatements: false,
  });

  try {
    await ensureMigrationsTable(conn);
    const applied = await getAppliedMigrations(conn);
    const files = readMigrationFiles();

    if (listOnly) {
      console.log('Status das migrations:');
      for (const f of files) {
        const tag = applied.has(f) ? '[applied]' : '[pending]';
        console.log(`  ${tag} ${f}`);
      }
      return;
    }

    const pending = files.filter((f) => !applied.has(f));
    if (pending.length === 0) {
      console.log('Nenhuma migration pendente. Banco está atualizado.');
      return;
    }

    console.log(`Aplicando ${pending.length} migration(s) pendente(s)...`);
    for (const file of pending) {
      process.stdout.write(`  -> ${file} ... `);
      await applyMigration(conn, file);
      console.log('OK');
    }
    console.log('Todas as migrations aplicadas com sucesso.');
  } finally {
    await conn.end();
  }
}

main().catch((err) => {
  console.error('Erro ao executar migrations:');
  console.error(err.message || err);
  process.exit(1);
});
