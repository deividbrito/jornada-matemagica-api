// src/controllers/arcadeController.js
// Controller fino: req.user vem do JWT; req.body já validado por Zod.
// Toda a lógica de XP/rank/medalhas vive em arcadeService.

const arcadeService = require('../services/arcadeService');

exports.recordRun = async (req, res, next) => {
  try {
    const result = await arcadeService.recordRun(req.user.sub, req.user.sid, req.body);
    res.json(result);
  } catch (err) { next(err); }
};

exports.getMeta = async (req, res, next) => {
  try {
    const data = await arcadeService.getMeta(parseInt(req.params.id_jogador, 10));
    res.json(data);
  } catch (err) { next(err); }
};

exports.getRanking = async (req, res, next) => {
  try {
    const data = await arcadeService.getRanking({
      limit: req.query.limit,
      idJogador: req.query.id_jogador,
    });
    res.json(data);
  } catch (err) { next(err); }
};

exports.getHistory = async (req, res, next) => {
  try {
    const data = await arcadeService.getHistory(
      parseInt(req.params.id_jogador, 10),
      req.query.limit,
      req.query.sort
    );
    res.json(data);
  } catch (err) { next(err); }
};
