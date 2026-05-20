// models/authModel.js
const db = require('../config/db');

// ATUALIZADO: Busca apenas por email. O controller fará a comparação do hash.
exports.findJogadorByEmail = (email) =>
  db.query('SELECT * FROM jogador WHERE email = ?', [email]);

// Esta função continua correta
exports.getSessaoMaisRecente = (id_usuario) =>
  db.query('SELECT * FROM sessao WHERE id_usuario = ? ORDER BY id DESC LIMIT 1', [id_usuario]);

// Re-hidrata sessão por id_jogador + id_sessao (usado em /auth/me).
exports.findJogadorById = (id) =>
  db.query('SELECT id, nome, email FROM jogador WHERE id = ?', [id]);

exports.findSessaoById = (id) =>
  db.query('SELECT * FROM sessao WHERE id = ?', [id]);

// Esta função continua correta
exports.criarSessao = (id_usuario) =>
  db.query('INSERT INTO sessao (id_usuario) VALUES (?)', [id_usuario]);

// ATUALIZADO: Aceita o 'ponto_de_salvamento' (JSON vazio)
// A query agora usa 'progresso_jogo'
exports.criarProgresso = (id_sessao, ponto_de_salvamento) =>
  db.query(
    'INSERT INTO progresso_jogo (id_sessao, ponto_de_salvamento) VALUES (?, ?)',
    [id_sessao, ponto_de_salvamento]
  );

// REMOVIDO: 'criarDesempenho' não existe mais
// exports.criarDesempenho = ...

// REMOVIDO: 'vincularProgressoDesempenhoNaSessao' não é mais necessário
// exports.vincularProgressoDesempenhoNaSessao = ...