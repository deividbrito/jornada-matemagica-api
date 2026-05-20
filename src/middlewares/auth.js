// middlewares/auth.js
// Dois modos:
//   - requireAuth: exige Bearer JWT válido. Sem token → 401.
//   - optionalAuth: aceita Bearer JWT. Sem token → segue como convidado.
//
// Em sucesso, populam req.user = { sub: id_jogador, sid: id_sessao }.

const { verifyToken } = require('../utils/jwt');

function extractToken(req) {
  const header = req.headers.authorization || '';
  return header.startsWith('Bearer ') ? header.slice(7).trim() : '';
}

function requireAuth(req, res, next) {
  const token = extractToken(req);
  if (!token) {
    return res.status(401).json({ error: 'Autenticação necessária.' });
  }
  try {
    req.user = verifyToken(token);
    return next();
  } catch (err) {
    const reason = err.name === 'TokenExpiredError'
      ? 'Sessão expirada.'
      : 'Token inválido.';
    return res.status(401).json({ error: reason });
  }
}

// Usado em rotas que aceitam convidado (ex.: quiz aleatório, submissão de
// resposta sem persistência). Se o token é válido, segue autenticado;
// se ausente ou inválido, segue como anônimo (req.user permanece undefined).
function optionalAuth(req, _res, next) {
  const token = extractToken(req);
  if (!token) return next();
  try {
    req.user = verifyToken(token);
  } catch (_err) {
    // Token inválido / expirado em rota opcional → tratar como guest.
  }
  next();
}

module.exports = requireAuth;
module.exports.requireAuth = requireAuth;
module.exports.optionalAuth = optionalAuth;
