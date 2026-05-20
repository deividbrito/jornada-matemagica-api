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

// Retorna o id da alternativa correta do quiz (pra revelar resposta após erro).
// Sem o campo eh_correta no payload normal (que é filtrado pelo quizModel pra
// evitar leak antes da resposta), o cliente precisa dessa lookup pra destacar
// a alternativa certa quando o jogador erra.
exports.getCorrectAlternativeId = async (id_quiz) => {
  const [rows] = await db.query(
    'SELECT id FROM alternativa WHERE id_quiz = ? AND eh_correta = 1 LIMIT 1',
    [id_quiz]
  );
  return rows[0] ? rows[0].id : null;
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