-- ============================================================
-- 006b_seed_assuntos.sql
-- Semeia os 7 assuntos com IDs explícitos (1..7) usados pelas
-- migrations seguintes (007_arenas_dos_magos referencia 1, 3, 4,
-- 5, 6, 7 via FK em `fase.id_assunto`).
--
-- Em ambientes locais (WAMP) `tables.sql` já popula esta tabela;
-- ON DUPLICATE KEY UPDATE garante idempotência sem conflitar.
-- ============================================================

INSERT INTO assunto (id, nome_assunto) VALUES
  (1, 'Sistema de numeração decimal'),
  (2, 'Operações com números naturais e divisão euclidiana'),
  (3, 'Números primos e compostos'),
  (4, 'Frações'),
  (5, 'operações com números racionais'),
  (6, 'Aproximação de números para múltiplos de potências de 10'),
  (7, 'Cálculo de porcentagem por meio de estratégias diversas')
ON DUPLICATE KEY UPDATE
  nome_assunto = VALUES(nome_assunto);
