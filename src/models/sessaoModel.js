const db = require('../config/db');

exports.getAllByUsuario = (id_usuario) =>
  db.query('SELECT * FROM Sessao WHERE id_usuario = ?', [id_usuario]);

exports.create = (id_usuario) =>
  db.query('INSERT INTO Sessao (id_usuario) VALUES (?)', [id_usuario]);
