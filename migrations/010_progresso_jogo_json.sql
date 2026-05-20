-- ============================================================
-- 010_progresso_jogo_json.sql
-- Alinha o tipo de `progresso_jogo.ponto_de_salvamento` ao que o
-- DB de desenvolvimento (WAMP) já usa: JSON em vez de LONGTEXT.
--
-- Razão: o mysql2 só auto-parseia colunas tipadas como JSON. Com
-- LONGTEXT, a string serializada chegava no front como string crua
-- e `file.mapId` quebrava (undefined), zerando a continuidade do
-- save após reload.
--
-- Idempotente: ALTER MODIFY é no-op se a coluna já é JSON.
-- ============================================================

ALTER TABLE progresso_jogo
  MODIFY COLUMN ponto_de_salvamento JSON NULL;
