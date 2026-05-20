-- ============================================================
-- 001_initial_schema.sql
-- Schema base alinhado com o código atual (jogador, configuracoes,
-- assunto, quiz, alternativa, feedback, sessao, progresso_jogo).
-- Idempotente: usa CREATE TABLE IF NOT EXISTS — seguro para
-- bancos em desenvolvimento que já contenham parte do schema.
-- ============================================================

-- jogador
CREATE TABLE IF NOT EXISTS jogador (
  id      INT NOT NULL AUTO_INCREMENT,
  nome    VARCHAR(100) NOT NULL,
  email   VARCHAR(120) NOT NULL,
  senha   VARCHAR(255) NOT NULL,                -- hash bcrypt (60 chars), folga para algoritmos futuros
  PRIMARY KEY (id),
  UNIQUE KEY uk_jogador_email (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- configuracoes (1 linha por jogador)
CREATE TABLE IF NOT EXISTS configuracoes (
  id_usuario     INT NOT NULL,
  volume_musica  FLOAT DEFAULT 1,
  volume_efeitos FLOAT DEFAULT 1,
  idioma         VARCHAR(10) DEFAULT 'pt-BR',
  PRIMARY KEY (id_usuario),
  CONSTRAINT fk_configuracoes_jogador
    FOREIGN KEY (id_usuario) REFERENCES jogador (id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- assunto
CREATE TABLE IF NOT EXISTS assunto (
  id           INT NOT NULL AUTO_INCREMENT,
  nome_assunto VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- quiz (sem colunas alternativa1..4 do schema antigo;
-- alternativas vivem em tabela própria)
CREATE TABLE IF NOT EXISTS quiz (
  id          INT NOT NULL AUTO_INCREMENT,
  id_assunto  INT NOT NULL,
  pergunta    TEXT NOT NULL,
  dificuldade ENUM('1','2','3') NOT NULL,
  campanha    VARCHAR(20) NOT NULL DEFAULT 'fundamental',
  files       JSON NULL,
  PRIMARY KEY (id),
  KEY idx_quiz_assunto (id_assunto),
  CONSTRAINT fk_quiz_assunto
    FOREIGN KEY (id_assunto) REFERENCES assunto (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- alternativa (4+ por quiz, exatamente 1 marcada como correta)
CREATE TABLE IF NOT EXISTS alternativa (
  id         INT NOT NULL AUTO_INCREMENT,
  id_quiz    INT NOT NULL,
  texto      VARCHAR(500) NOT NULL,
  eh_correta TINYINT(1) NOT NULL DEFAULT 0,
  file       VARCHAR(255) NULL,
  PRIMARY KEY (id),
  KEY idx_alternativa_quiz (id_quiz),
  CONSTRAINT fk_alternativa_quiz
    FOREIGN KEY (id_quiz) REFERENCES quiz (id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- feedback (explicação pedagógica por quiz)
-- Coluna é `explicacao` (sem typo). Em bancos antigos com
-- `explicacacao`, a migration 999_legacy_remediation.sql faz o rename.
CREATE TABLE IF NOT EXISTS feedback (
  id_quiz    INT NOT NULL,
  explicacao TEXT NOT NULL,
  PRIMARY KEY (id_quiz),
  CONSTRAINT fk_feedback_quiz
    FOREIGN KEY (id_quiz) REFERENCES quiz (id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- sessao (sem as FKs obsoletas para progresso_jogo / desempenho_jogo)
CREATE TABLE IF NOT EXISTS sessao (
  id         INT NOT NULL AUTO_INCREMENT,
  id_usuario INT NOT NULL,
  criada_em  DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  KEY idx_sessao_usuario (id_usuario),
  CONSTRAINT fk_sessao_jogador
    FOREIGN KEY (id_usuario) REFERENCES jogador (id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- progresso_jogo (1 linha por sessao, com checkpoint serializado em JSON)
CREATE TABLE IF NOT EXISTS progresso_jogo (
  id                  INT NOT NULL AUTO_INCREMENT,
  id_sessao           INT NOT NULL,
  ponto_de_salvamento LONGTEXT NULL,
  atualizado_em       DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uk_progresso_sessao (id_sessao),
  CONSTRAINT fk_progresso_sessao
    FOREIGN KEY (id_sessao) REFERENCES sessao (id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
