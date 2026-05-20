// controllers/feedbackController.js
const feedbackModel = require('../models/feedbackModel');

exports.getByQuizId = async (req, res) => {
  const { id_quiz } = req.params;
  try {
    const [rows] = await feedbackModel.getByQuizId(id_quiz);
    res.json(rows[0]);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.create = async (req, res) => {
  // --- ATUALIZAÇÃO AQUI ---
  const { id_quiz, explicacao } = req.body; // Corrigido de 'explicacacao'
  try {
    await feedbackModel.create(id_quiz, explicacao); // Passa a variável correta
  // --- FIM DA ATUALIZAÇÃO ---
    res.status(201).json({ message: 'Feedback criado com sucesso' });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};