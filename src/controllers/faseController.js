// src/controllers/faseController.js
const faseService = require('../services/faseService');

// GET /api/fases?campanha=fundamental
exports.list = async (req, res, next) => {
  try {
    const campanha = req.query.campanha || 'fundamental';
    const fases = await faseService.listForJogador(req.user.sub, campanha);
    res.json(fases);
  } catch (err) { next(err); }
};

// POST /api/fases/:codigo/concluir
// Body: { totalQuestoes, acertos, score?, semBuffs? }
exports.concluir = async (req, res, next) => {
  try {
    const result = await faseService.concluir(req.user.sub, req.params.codigo, req.body);
    res.json(result);
  } catch (err) { next(err); }
};
