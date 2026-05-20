const db = require('../config/db');

exports.getAll = () => db.query('SELECT * FROM Assunto');

exports.create = (nome_assunto) =>
  db.query('INSERT INTO Assunto (nome_assunto) VALUES (?)', [nome_assunto]);
