const db = require('../config/db');

exports.getAll = () => db.query('SELECT * FROM assunto');

exports.create = (nome_assunto) =>
  db.query('INSERT INTO assunto (nome_assunto) VALUES (?)', [nome_assunto]);
