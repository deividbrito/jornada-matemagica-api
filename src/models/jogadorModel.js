const db = require('../config/db');

exports.getAll = () => db.query('SELECT id, nome, email FROM Jogador');

exports.create = ({ nome, email, senha }) =>
  db.query('INSERT INTO Jogador (nome, email, senha) VALUES (?, ?, ?)', [nome, email, senha]);

