// controllers/sessaoController.js
const sessaoModel = require('../models/sessaoModel');
const progressoModel = require('../models/progressoModel');

// GET /api/sessoes/:id_usuario
// Middleware requireSelfUser garante que :id_usuario === req.user.sub.
exports.getAllByUsuario = async (req, res) => {
  try {
    const [rows] = await sessaoModel.getAllByUsuario(req.params.id_usuario);
    res.json(rows);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// POST /api/sessoes
// Não aceita id_usuario no body — sempre cria sessão para o jogador autenticado.
exports.create = async (req, res) => {
  try {
    const idUsuario = req.user.sub;
    const [result] = await sessaoModel.create(idUsuario);
    const sessaoId = result.insertId;

    // Cria progresso 1:1 já vazio.
    await progressoModel.save(sessaoId, '{}');

    res.status(201).json({ id: sessaoId, id_usuario: idUsuario });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
