-- ============================================================
-- 003_historico_resposta.sql
-- Histórico de respostas dadas pelo jogador em cada quiz.
-- Usado por historicoController para auditoria e analytics.
-- ============================================================

CREATE TABLE IF NOT EXISTS historico_resposta (
  id                       INT NOT NULL AUTO_INCREMENT,
  id_sessao                INT NOT NULL,
  id_quiz                  INT NOT NULL,
  id_alternativa_escolhida INT NOT NULL,
  foi_correta              TINYINT(1) NOT NULL,
  tempo_resposta_ms        INT NOT NULL,
  respondido_em            DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  KEY idx_historico_sessao (id_sessao),
  KEY idx_historico_quiz (id_quiz),
  KEY idx_historico_sessao_data (id_sessao, respondido_em),
  CONSTRAINT fk_historico_sessao
    FOREIGN KEY (id_sessao) REFERENCES sessao (id) ON DELETE CASCADE,
  CONSTRAINT fk_historico_quiz
    FOREIGN KEY (id_quiz) REFERENCES quiz (id),
  CONSTRAINT fk_historico_alternativa
    FOREIGN KEY (id_alternativa_escolhida) REFERENCES alternativa (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
