// models/progressoModel.js
const db = require('../config/db');

exports.getBySessao = (id_sessao) =>
  db.query('SELECT * FROM progresso_jogo WHERE id_sessao = ?', [id_sessao]);

// UPSERT por id_sessao. `value` pode chegar como objeto (do JSON do body) ou
// como string já serializada — em qualquer caso, normalizamos para JSON text
// antes de enviar ao MySQL (a coluna pode ser tanto `JSON` quanto `LONGTEXT`,
// e ambas aceitam um texto JSON válido).
exports.save = (id_sessao, value) => {
  const serialized = typeof value === 'string' ? value : JSON.stringify(value);
  return db.query(
    'INSERT INTO progresso_jogo (id_sessao, ponto_de_salvamento) VALUES (?, ?) ON DUPLICATE KEY UPDATE ponto_de_salvamento = VALUES(ponto_de_salvamento)',
    [id_sessao, serialized]
  );
};
