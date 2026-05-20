const db = require('../config/db');

exports.getAll = () => db.query('SELECT id, nome, email FROM jogador');

exports.create = ({ nome, email, senha }) =>
  db.query('INSERT INTO jogador (nome, email, senha) VALUES (?, ?, ?)', [nome, email, senha]);

