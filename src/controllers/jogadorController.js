// src/controllers/jogadorController.js
const jogadorModel = require('../models/jogadorModel');
const authModel = require('../models/authModel');
const bcrypt = require('bcrypt');
const { signToken } = require('../utils/jwt');

const saltRounds = 10;

exports.getAll = async (_req, res, next) => {
  try {
    const [rows] = await jogadorModel.getAll();
    res.json(rows);
  } catch (err) { next(err); }
};

// Cadastra novo jogador + cria sessão inicial + emite JWT (auto-login).
exports.create = async (req, res, next) => {
  try {
    const { nome, email, senha } = req.body; // já validado pelo Zod

    const senhaHash = await bcrypt.hash(senha, saltRounds);
    const [result] = await jogadorModel.create({ nome, email, senha: senhaHash });
    const jogadorId = result.insertId;

    const [novaSessao] = await authModel.criarSessao(jogadorId);
    const sessaoId = novaSessao.insertId;
    await authModel.criarProgresso(sessaoId, '{}');

    const token = signToken({ id_jogador: jogadorId, id_sessao: sessaoId });

    res.status(201).json({
      token,
      jogador: { id: jogadorId, nome, email },
      sessao: { id: sessaoId, id_usuario: jogadorId },
    });
  } catch (err) {
    if (err.code === 'ER_DUP_ENTRY') {
      return res.status(409).json({ error: 'Este email já está cadastrado.' });
    }
    next(err);
  }
};
