-- ============================================================
-- 006_conquistas.sql
-- Catálogo de conquistas + desbloqueio por jogador.
-- `criterio_tipo` é uma string livre que o backend interpreta
-- (ex.: 'fases_completas_campanha', 'acertos_assunto', 'streak_dias').
-- ============================================================

CREATE TABLE IF NOT EXISTS conquista (
  id              INT NOT NULL AUTO_INCREMENT,
  codigo          VARCHAR(50) NOT NULL,
  nome            VARCHAR(100) NOT NULL,
  descricao       TEXT NULL,
  icone           VARCHAR(10) NULL,
  criterio_tipo   VARCHAR(40) NOT NULL,
  criterio_valor  JSON NULL,
  ativo           TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (id),
  UNIQUE KEY uk_conquista_codigo (codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS jogador_conquista (
  id_jogador       INT NOT NULL,
  id_conquista     INT NOT NULL,
  desbloqueada_em  DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id_jogador, id_conquista),
  KEY idx_jc_jogador (id_jogador),
  CONSTRAINT fk_jc_jogador
    FOREIGN KEY (id_jogador) REFERENCES jogador (id) ON DELETE CASCADE,
  CONSTRAINT fk_jc_conquista
    FOREIGN KEY (id_conquista) REFERENCES conquista (id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
