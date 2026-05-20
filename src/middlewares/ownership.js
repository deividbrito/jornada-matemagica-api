// middlewares/ownership.js
// Helpers que comparam um id de recurso (vindo do path/body) com a identidade
// do JWT (req.user). Sem eles, o JWT só protege contra anônimos — usuários
// logados poderiam falsificar id_jogador / id_sessao de terceiros.
//
// Convenção: req.user = { sub: id_jogador, sid: id_sessao }.

const db = require('../config/db');

function asInt(v) {
  const n = parseInt(v, 10);
  return Number.isFinite(n) ? n : null;
}

/**
 * Exige que :id_usuario na URL pertença ao próprio jogador autenticado.
 */
function requireSelfUser(paramName = 'id_usuario') {
  return (req, res, next) => {
    if (!req.user) return res.status(401).json({ error: 'Não autenticado.' });
    const claimed = asInt(req.params[paramName]);
    if (claimed === null) return res.status(400).json({ error: `${paramName} inválido.` });
    if (claimed !== req.user.sub) {
      return res.status(403).json({ error: 'Acesso negado a recurso de outro jogador.' });
    }
    next();
  };
}

/**
 * Exige que :id_jogador na URL coincida com o JWT.
 */
function requireSelfPlayer(paramName = 'id_jogador') {
  return (req, res, next) => {
    if (!req.user) return res.status(401).json({ error: 'Não autenticado.' });
    const claimed = asInt(req.params[paramName]);
    if (claimed === null) return res.status(400).json({ error: `${paramName} inválido.` });
    if (claimed !== req.user.sub) {
      return res.status(403).json({ error: 'Acesso negado a recurso de outro jogador.' });
    }
    next();
  };
}

/**
 * Exige que :id_sessao na URL pertença ao jogador autenticado.
 * Busca o dono no banco e cacheia em req.session.
 */
function requireSessionOwnership(paramName = 'id_sessao') {
  return async (req, res, next) => {
    if (!req.user) return res.status(401).json({ error: 'Não autenticado.' });
    const id_sessao = asInt(req.params[paramName]);
    if (id_sessao === null) return res.status(400).json({ error: `${paramName} inválido.` });

    try {
      const [rows] = await db.query('SELECT id, id_usuario FROM sessao WHERE id = ?', [id_sessao]);
      if (!rows.length) return res.status(404).json({ error: 'Sessão não encontrada.' });
      if (rows[0].id_usuario !== req.user.sub) {
        return res.status(403).json({ error: 'Acesso negado a sessão de outro jogador.' });
      }
      req.session = rows[0];
      next();
    } catch (err) {
      next(err);
    }
  };
}

module.exports = {
  requireSelfUser,
  requireSelfPlayer,
  requireSessionOwnership,
};
