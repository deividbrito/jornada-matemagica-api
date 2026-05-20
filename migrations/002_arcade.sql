-- ============================================================
-- 002_arcade.sql
-- Tabelas do modo Arcade (boss fight do Ensino Médio).
-- arcade_run = histórico de partidas; arcade_meta = agregado por jogador.
-- ============================================================

-- arcade_run (1 linha por partida concluída)
CREATE TABLE IF NOT EXISTS arcade_run (
  id                  INT NOT NULL AUTO_INCREMENT,
  id_jogador          INT NOT NULL,
  id_sessao           INT NULL,
  victory             TINYINT(1) NOT NULL,
  score               INT NOT NULL DEFAULT 0,
  total_correct       INT NOT NULL DEFAULT 0,
  total_wrong         INT NOT NULL DEFAULT 0,
  total_questions     INT NOT NULL DEFAULT 0,
  lives_remaining     INT NOT NULL DEFAULT 0,
  max_lives           INT NOT NULL DEFAULT 0,
  max_streak          INT NOT NULL DEFAULT 0,
  questions_per_mage  INT NOT NULL DEFAULT 0,
  elapsed_ms          INT NOT NULL DEFAULT 0,
  avg_time_ms         INT NOT NULL DEFAULT 0,
  xp_gained           INT NOT NULL DEFAULT 0,
  medals              JSON NULL,
  data_fim            DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  KEY idx_arcade_run_jogador (id_jogador),
  KEY idx_arcade_run_jogador_data (id_jogador, data_fim),
  KEY idx_arcade_run_jogador_score (id_jogador, score),
  CONSTRAINT fk_arcade_run_jogador
    FOREIGN KEY (id_jogador) REFERENCES jogador (id) ON DELETE CASCADE,
  CONSTRAINT fk_arcade_run_sessao
    FOREIGN KEY (id_sessao) REFERENCES sessao (id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- arcade_meta (agregado por jogador — atualizado via UPSERT a cada run)
CREATE TABLE IF NOT EXISTS arcade_meta (
  id_jogador        INT NOT NULL,
  xp                INT NOT NULL DEFAULT 0,
  total_runs        INT NOT NULL DEFAULT 0,
  victories         INT NOT NULL DEFAULT 0,
  defeats           INT NOT NULL DEFAULT 0,
  best_score        INT NOT NULL DEFAULT 0,
  max_streak        INT NOT NULL DEFAULT 0,
  perfect_runs      INT NOT NULL DEFAULT 0,
  medal_sem_falhas  INT NOT NULL DEFAULT 0,
  medal_velocista   INT NOT NULL DEFAULT 0,
  medal_tempestade  INT NOT NULL DEFAULT 0,
  atualizado_em     DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id_jogador),
  KEY idx_arcade_meta_xp (xp),
  KEY idx_arcade_meta_score (best_score),
  KEY idx_arcade_meta_victories (victories),
  CONSTRAINT fk_arcade_meta_jogador
    FOREIGN KEY (id_jogador) REFERENCES jogador (id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
