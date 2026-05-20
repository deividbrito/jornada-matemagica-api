// src/models/faseModel.js
const db = require('../config/db');

exports.listByCampanha = (campanha) =>
  db.query(
    `SELECT id, codigo, nome, campanha, id_assunto, ordem, pre_requisito_codigo,
            meta_questoes, meta_acertos, recompensa_xp, recompensa_medalha,
            map_id, descricao
       FROM fase
      WHERE ativo = 1 AND campanha = ?
      ORDER BY ordem ASC, id ASC`,
    [campanha]
  );

exports.findByCodigo = (codigo) =>
  db.query(
    `SELECT id, codigo, nome, campanha, id_assunto, ordem, pre_requisito_codigo,
            meta_questoes, meta_acertos, recompensa_xp, recompensa_medalha,
            map_id, descricao, ativo
       FROM fase
      WHERE codigo = ?`,
    [codigo]
  );

exports.getProgressoByJogador = (idJogador) =>
  db.query(
    `SELECT id_jogador, id_fase, status, melhor_score, acertos, tentativas,
            estrelas, primeira_conclusao_em
       FROM fase_progresso
      WHERE id_jogador = ?`,
    [idJogador]
  );

exports.getProgressoByFase = (idJogador, idFase) =>
  db.query(
    `SELECT status, melhor_score, acertos, tentativas, estrelas, primeira_conclusao_em
       FROM fase_progresso
      WHERE id_jogador = ? AND id_fase = ?`,
    [idJogador, idFase]
  );

// UPSERT — salva tentativa (ou cria registro) preservando melhor_score/estrelas.
// estrelas e melhor_score só sobem quando o resultado novo é melhor.
exports.upsertProgresso = ({
  idJogador, idFase, status, score, acertos, estrelas, marcarConclusao,
}) => {
  const concluidaEm = marcarConclusao ? 'NOW()' : 'primeira_conclusao_em';
  return db.query(
    `INSERT INTO fase_progresso
       (id_jogador, id_fase, status, melhor_score, acertos, tentativas, estrelas, primeira_conclusao_em)
     VALUES (?, ?, ?, ?, ?, 1, ?, ${marcarConclusao ? 'NOW()' : 'NULL'})
     ON DUPLICATE KEY UPDATE
       status        = VALUES(status),
       tentativas    = tentativas + 1,
       melhor_score  = GREATEST(melhor_score, VALUES(melhor_score)),
       acertos       = GREATEST(acertos, VALUES(acertos)),
       estrelas      = GREATEST(estrelas, VALUES(estrelas)),
       primeira_conclusao_em = COALESCE(primeira_conclusao_em, ${concluidaEm})`,
    [idJogador, idFase, status, score, acertos, estrelas]
  );
};
