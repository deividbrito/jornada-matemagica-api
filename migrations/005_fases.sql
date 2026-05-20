-- ============================================================
-- 005_fases.sql
-- Separa metadata de fase (DB) da cena visual (código JS).
--
-- `fase`:        catálogo de fases por campanha, com pré-requisito,
--                metas (questões/acertos) e recompensa (XP + medalha).
-- `fase_progresso`: 1 linha por (jogador, fase), com status, estrelas,
--                   melhor score e tentativas.
--
-- Idempotente: usa IF NOT EXISTS. Seeds iniciais vivem em seeds/ (postergado).
-- ============================================================

CREATE TABLE IF NOT EXISTS fase (
  id                    INT NOT NULL AUTO_INCREMENT,
  codigo                VARCHAR(40) NOT NULL,                   -- 'sala1_decimais'
  nome                  VARCHAR(100) NOT NULL,                  -- 'Sala 1 — Decimais'
  campanha              VARCHAR(20) NOT NULL DEFAULT 'fundamental',
  id_assunto            INT NULL,
  ordem                 INT NOT NULL DEFAULT 0,
  pre_requisito_codigo  VARCHAR(40) NULL,                       -- desbloqueia após outra fase
  meta_questoes         INT NOT NULL DEFAULT 5,
  meta_acertos          INT NOT NULL DEFAULT 3,
  recompensa_xp         INT NOT NULL DEFAULT 50,
  recompensa_medalha    VARCHAR(40) NULL,
  map_id                VARCHAR(40) NULL,                       -- referência ao mapa visual em OverworldMaps
  descricao             TEXT NULL,
  ativo                 TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (id),
  UNIQUE KEY uk_fase_codigo (codigo),
  KEY idx_fase_campanha_ordem (campanha, ordem),
  CONSTRAINT fk_fase_assunto
    FOREIGN KEY (id_assunto) REFERENCES assunto (id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS fase_progresso (
  id_jogador             INT NOT NULL,
  id_fase                INT NOT NULL,
  status                 VARCHAR(20) NOT NULL DEFAULT 'disponivel',
                          -- 'bloqueada' | 'disponivel' | 'em_progresso' | 'concluida'
  melhor_score           INT NOT NULL DEFAULT 0,
  acertos                INT NOT NULL DEFAULT 0,
  tentativas             INT NOT NULL DEFAULT 0,
  estrelas               TINYINT NOT NULL DEFAULT 0,            -- 0-3
  primeira_conclusao_em  DATETIME NULL,
  atualizado_em          DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id_jogador, id_fase),
  KEY idx_fp_jogador_status (id_jogador, status),
  CONSTRAINT fk_fp_jogador
    FOREIGN KEY (id_jogador) REFERENCES jogador (id) ON DELETE CASCADE,
  CONSTRAINT fk_fp_fase
    FOREIGN KEY (id_fase) REFERENCES fase (id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
