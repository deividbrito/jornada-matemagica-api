// utils/jwt.js
// Wrappers leves em volta do jsonwebtoken + resolução do segredo.
//
// Política do segredo:
//   - process.env.JWT_SECRET tem prioridade.
//   - Se ausente e NODE_ENV=production → falha imediata (não sobe inseguro).
//   - Se ausente em dev → gera um segredo aleatório no boot e avisa.
//     Tokens emitidos em dev não sobrevivem a um restart do servidor —
//     trade-off aceitável para o ciclo de desenvolvimento.

const crypto = require('crypto');
const jwt = require('jsonwebtoken');

let cachedSecret = null;

function resolveSecret() {
  if (cachedSecret) return cachedSecret;

  const fromEnv = (process.env.JWT_SECRET || '').trim();
  if (fromEnv) {
    cachedSecret = fromEnv;
    return cachedSecret;
  }

  if (process.env.NODE_ENV === 'production') {
    // Em produção, exigir o segredo no .env é mandatório.
    throw new Error(
      'JWT_SECRET não definido em NODE_ENV=production. Configure no .env antes de subir.'
    );
  }

  cachedSecret = crypto.randomBytes(48).toString('hex');
  console.warn(
    '[auth] JWT_SECRET não definido — gerado um segredo efêmero para esta execução. ' +
    'Tokens não sobreviverão ao restart do servidor. Defina JWT_SECRET no .env para fixar.'
  );
  return cachedSecret;
}

function getExpiresIn() {
  return process.env.JWT_EXPIRES_IN || '7d';
}

/**
 * Assina um token contendo a identidade do jogador e da sessão.
 * @param {{ id_jogador: number, id_sessao: number }} identity
 * @returns {string} JWT
 */
function signToken({ id_jogador, id_sessao }) {
  return jwt.sign(
    { sub: id_jogador, sid: id_sessao },
    resolveSecret(),
    { expiresIn: getExpiresIn() }
  );
}

/**
 * Verifica um token e retorna seu payload. Lança se inválido/expirado.
 * @param {string} token
 * @returns {{ sub: number, sid: number, iat: number, exp: number }}
 */
function verifyToken(token) {
  return jwt.verify(token, resolveSecret());
}

module.exports = { signToken, verifyToken };
