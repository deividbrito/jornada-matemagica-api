// src/config/env.js
// Carrega .env e valida na partida. Falha cedo com mensagem clara em vez
// de deixar o servidor subir e quebrar na primeira query/JWT.
//
// Variáveis obrigatórias sempre: DB_HOST, DB_USER, DB_PASS, DB_NAME.
// Em NODE_ENV=production também: CORS_ORIGINS, JWT_SECRET.

const dotenv = require('dotenv');
dotenv.config();

const REQUIRED_ALWAYS = ['DB_HOST', 'DB_USER', 'DB_PASS', 'DB_NAME'];
const REQUIRED_PROD = ['CORS_ORIGINS', 'JWT_SECRET'];

function validate() {
  const missing = REQUIRED_ALWAYS.filter((k) => !process.env[k]);
  if (process.env.NODE_ENV === 'production') {
    missing.push(...REQUIRED_PROD.filter((k) => !process.env[k]));
  }
  if (missing.length) {
    console.error(`FATAL: variáveis de ambiente faltando: ${missing.join(', ')}`);
    console.error('Verifique seu .env (use .env.example como referência).');
    process.exit(1);
  }
}

validate();

const isProd = process.env.NODE_ENV === 'production';

module.exports = {
  isProd,
  nodeEnv: process.env.NODE_ENV || 'development',
  port: parseInt(process.env.PORT, 10) || 3000,
  db: {
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME,
  },
  cors: {
    origins: (process.env.CORS_ORIGINS || '')
      .split(',')
      .map((s) => s.trim())
      .filter(Boolean),
  },
  jwt: {
    secret: process.env.JWT_SECRET || null,  // resolveSecret() em utils/jwt cuida do fallback dev
    expiresIn: process.env.JWT_EXPIRES_IN || '7d',
  },
};
