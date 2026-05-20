// src/controllers/conquistaController.js
const conquistaService = require('../services/conquistaService');

// GET /api/conquistas/catalogo — todas as conquistas ativas (não exige ownership)
exports.listCatalogo = async (_req, res, next) => {
  try {
    res.json(await conquistaService.listCatalogo());
  } catch (err) { next(err); }
};

// GET /api/conquistas/minhas — conquistas desbloqueadas do jogador autenticado
exports.listMinhas = async (req, res, next) => {
  try {
    res.json(await conquistaService.listForJogador(req.user.sub));
  } catch (err) { next(err); }
};
