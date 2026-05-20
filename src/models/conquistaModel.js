// src/models/conquistaModel.js
const db = require('../config/db');

exports.listAll = () =>
  db.query(
    'SELECT id, codigo, nome, descricao, icone, criterio_tipo, criterio_valor FROM conquista WHERE ativo = 1'
  );

exports.findByCodigo = (codigo) =>
  db.query('SELECT id, codigo, nome, descricao, icone FROM conquista WHERE codigo = ? AND ativo = 1', [codigo]);

exports.getByJogador = (idJogador) =>
  db.query(
    `SELECT c.id, c.codigo, c.nome, c.descricao, c.icone, jc.desbloqueada_em
       FROM jogador_conquista jc
       INNER JOIN conquista c ON c.id = jc.id_conquista
      WHERE jc.id_jogador = ?
      ORDER BY jc.desbloqueada_em DESC`,
    [idJogador]
  );

// Idempotente — INSERT IGNORE em PK composta evita duplicar desbloqueio.
exports.grant = (idJogador, idConquista) =>
  db.query(
    'INSERT IGNORE INTO jogador_conquista (id_jogador, id_conquista) VALUES (?, ?)',
    [idJogador, idConquista]
  );
