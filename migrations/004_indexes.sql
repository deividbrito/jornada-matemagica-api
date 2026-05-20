-- ============================================================
-- 004_indexes.sql
-- Índices secundários para performance das queries mais frequentes.
-- Usa stored procedure auxiliar para criar índice apenas se ele
-- não existir (MySQL não tem CREATE INDEX IF NOT EXISTS nativo).
-- ============================================================

DROP PROCEDURE IF EXISTS jm_create_index_if_missing;

DELIMITER //
CREATE PROCEDURE jm_create_index_if_missing(
  IN p_table  VARCHAR(64),
  IN p_index  VARCHAR(64),
  IN p_cols   VARCHAR(255)
)
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.STATISTICS
     WHERE TABLE_SCHEMA = DATABASE()
       AND TABLE_NAME   = p_table
       AND INDEX_NAME   = p_index
  ) THEN
    SET @ddl := CONCAT('CREATE INDEX ', p_index, ' ON ', p_table, ' (', p_cols, ')');
    PREPARE stmt FROM @ddl;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
  END IF;
END //
DELIMITER ;

-- quiz: busca aleatória filtrada por assunto/dificuldade/campanha (quizController)
CALL jm_create_index_if_missing('quiz', 'idx_quiz_assunto_dif_camp', 'id_assunto, dificuldade, campanha');

-- alternativa: já tem idx_alternativa_quiz da 001, garante presença
CALL jm_create_index_if_missing('alternativa', 'idx_alternativa_quiz', 'id_quiz');

DROP PROCEDURE IF EXISTS jm_create_index_if_missing;
