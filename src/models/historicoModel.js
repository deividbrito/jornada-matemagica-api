// models/historicoModel.js
const db = require('../config/db');

// Verifica se a alternativa marcada é a correta
exports.checkAlternative = async (id_alternativa) => {
  const [rows] = await db.query(
    'SELECT eh_correta FROM alternativa WHERE id = ?',
    [id_alternativa]
  );
  return rows[0];
};

// Salva a tentativa na tabela 'historico_resposta'
exports.saveResponse = (resposta) => {
  return db.query(
    'INSERT INTO historico_resposta (id_sessao, id_quiz, id_alternativa_escolhida, foi_correta, tempo_resposta_ms) VALUES (?, ?, ?, ?, ?)',
    [
      resposta.id_sessao,
      resposta.id_quiz,
      resposta.id_alternativa_escolhida,
      resposta.foi_correta,
      resposta.tempo_resposta_ms
    ]
  );
};