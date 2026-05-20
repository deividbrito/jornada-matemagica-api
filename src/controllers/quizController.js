// src/controllers/quizController.js
const quizModel = require('../models/quizModel');
const quizService = require('../services/quizService');

exports.getAll = async (_req, res, next) => {
  try {
    const [rows] = await quizModel.getAll();
    res.json(rows);
  } catch (err) { next(err); }
};

exports.getById = async (req, res, next) => {
  try {
    const [rows] = await quizModel.getById(req.params.id);
    if (!rows || !rows.length) return res.status(404).json({ error: 'Quiz não encontrado.' });
    res.json(rows[0]);
  } catch (err) { next(err); }
};

exports.create = async (req, res, next) => {
  try {
    const [result] = await quizModel.create(req.body);
    res.status(201).json({ id: result.insertId });
  } catch (err) { next(err); }
};

exports.getRandom = async (req, res, next) => {
  try {
    const data = await quizService.getRandom({
      idAssunto: req.query.id_assunto,
      dificuldade: req.query.dificuldade,
      campanha: req.query.campanha,
      fiftyFifty: req.query.fiftyFifty === 'true',
    });
    if (!data) return res.status(404).json({ error: 'Nenhuma pergunta encontrada.' });
    res.json(data);
  } catch (err) { next(err); }
};
