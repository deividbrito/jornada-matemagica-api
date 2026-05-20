const assuntoModel = require('../models/assuntoModel');

exports.getAll = async (req, res) => {
  try {
    const [rows] = await assuntoModel.getAll();
    res.json(rows);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.create = async (req, res) => {
  const { nome_assunto } = req.body;
  try {
    const [result] = await assuntoModel.create(nome_assunto);
    res.status(201).json({ id: result.insertId, nome_assunto });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
