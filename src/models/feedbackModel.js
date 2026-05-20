// models/feedbackModel.js
const db = require('../config/db');

// Esta função continua correta
exports.getByQuizId = (id_quiz) =>
  db.query('SELECT * FROM feedback WHERE id_quiz = ?', [id_quiz]);

// ATUALIZADO: Corrigido o typo no argumento e na query
exports.create = (id_quiz, explicacao) =>
  db.query('INSERT INTO feedback (id_quiz, explicacao) VALUES (?, ?)', [
    id_quiz,
    explicacao,
  ]);