// src/controllers/authController.js
const authModel = require('../models/authModel');
const bcrypt = require('bcrypt');
const { signToken } = require('../utils/jwt');

// Re-hidrata a sessão a partir de um token Bearer válido. Usado pelo
// frontend no boot quando o token está em localStorage mas o estado em
// memória foi perdido (reload, nova aba). Sem isso, o usuário precisaria
// logar de novo após cada reload mesmo com token válido.
exports.me = async (req, res, next) => {
  try {
    const { id_jogador, id_sessao } = req.user;
    const [jogadores] = await authModel.findJogadorById(id_jogador);
    if (jogadores.length === 0) {
      return res.status(401).json({ error: 'Jogador não encontrado.' });
    }
    const [sessoes] = await authModel.findSessaoById(id_sessao);
    if (sessoes.length === 0) {
      return res.status(401).json({ error: 'Sessão não encontrada.' });
    }
    res.json({
      jogador: jogadores[0],
      sessao: sessoes[0],
    });
  } catch (err) {
    next(err);
  }
};

exports.login = async (req, res, next) => {
  try {
    const { email, senha } = req.body; // já validado pelo Zod

    const [usuarios] = await authModel.findJogadorByEmail(email);
    if (usuarios.length === 0) {
      return res.status(401).json({ error: 'Credenciais inválidas.' });
    }

    const jogador = usuarios[0];
    const senhaCorreta = await bcrypt.compare(senha, jogador.senha);
    if (!senhaCorreta) {
      return res.status(401).json({ error: 'Credenciais inválidas.' });
    }

    const [sessoes] = await authModel.getSessaoMaisRecente(jogador.id);
    let sessao;
    if (sessoes.length > 0) {
      sessao = sessoes[0];
    } else {
      const [novaSessao] = await authModel.criarSessao(jogador.id);
      const sessaoId = novaSessao.insertId;
      await authModel.criarProgresso(sessaoId, '{}');
      sessao = { id: sessaoId, id_usuario: jogador.id };
    }

    const token = signToken({ id_jogador: jogador.id, id_sessao: sessao.id });

    res.json({
      token,
      jogador: { id: jogador.id, nome: jogador.nome, email: jogador.email },
      sessao,
    });
  } catch (err) {
    next(err);
  }
};
