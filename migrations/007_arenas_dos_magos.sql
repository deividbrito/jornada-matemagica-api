-- ============================================================
-- 007_arenas_dos_magos.sql
-- Substitui as 3 fases seed iniciais por 6 fases temáticas que
-- ocorrem nas arenas dos magos (Desafio1d1..Desafio7d1).
--
-- Ordem (pré-requisito em cadeia):
--   1. Sala1   → Conde dos Decimais         (Decimais)
--   2. Sala2   → Mestre da Aproximação      (Aproximação p/ múltiplos de 10)
--   3. Grêmio  → Sentinela dos Primos       (Primos e compostos)
--   4. Bibl.   → Bibliófilo das Frações     (Frações)
--   5. Pátio   → Trapaceiro Racional        (Operações com racionais)
--   6. Jardim  → Mestre das Porcentagens    (Porcentagem — boss)
--
-- Idempotente: ON DUPLICATE KEY UPDATE em todas as fases.
-- ============================================================

INSERT INTO fase
  (codigo, nome, campanha, id_assunto, ordem, pre_requisito_codigo,
   meta_questoes, meta_acertos, recompensa_xp, recompensa_medalha,
   map_id, descricao, ativo)
VALUES
  ('sala1_decimais',
   'Sala 1 — Conde dos Decimais',
   'fundamental', 1, 1, NULL,
   5, 3, 50, NULL,
   'Desafio1d1',
   'Domine o sistema decimal e prove ao Conde que cada vírgula importa.',
   1),

  ('sala2_aproximacao',
   'Sala 2 — Mestre da Aproximação',
   'fundamental', 6, 2, 'sala1_decimais',
   5, 3, 70, NULL,
   'Desafio2d1',
   'Arredonde para múltiplos de 10 antes que o Mestre faça o mesmo com você.',
   1),

  ('gremio_primos',
   'Grêmio — Sentinela dos Primos',
   'fundamental', 3, 3, 'sala2_aproximacao',
   5, 3, 80, NULL,
   'Desafio3d1',
   'Separe primos de compostos. A Sentinela só respeita o indivisível.',
   1),

  ('biblioteca_fracoes',
   'Biblioteca — Bibliófilo das Frações',
   'fundamental', 4, 4, 'gremio_primos',
   6, 4, 100, NULL,
   'Desafio5d1',
   'Some, subtraia, compare frações. O Bibliófilo só liberta quem entende as partes.',
   1),

  ('patio_racionais',
   'Pátio — Trapaceiro Racional',
   'fundamental', 5, 5, 'biblioteca_fracoes',
   6, 4, 120, NULL,
   'Desafio6d1',
   'Opere com racionais sem se perder. O Trapaceiro mistura tudo de propósito.',
   1),

  ('jardim_porcentagem',
   'Jardim — Mestre das Porcentagens',
   'fundamental', 7, 6, 'patio_racionais',
   8, 5, 150, 'mestre_da_matemagica',
   'Desafio7d1',
   'Calcule porcentagens com confiança. O boss final espera no Jardim.',
   1)

ON DUPLICATE KEY UPDATE
  nome                  = VALUES(nome),
  campanha              = VALUES(campanha),
  id_assunto            = VALUES(id_assunto),
  ordem                 = VALUES(ordem),
  pre_requisito_codigo  = VALUES(pre_requisito_codigo),
  meta_questoes         = VALUES(meta_questoes),
  meta_acertos          = VALUES(meta_acertos),
  recompensa_xp         = VALUES(recompensa_xp),
  recompensa_medalha    = VALUES(recompensa_medalha),
  map_id                = VALUES(map_id),
  descricao             = VALUES(descricao),
  ativo                 = VALUES(ativo);

-- Remove a antiga 'biblioteca_revisao' (substituída por 'biblioteca_fracoes').
-- Apaga progresso correlato pra não deixar lixo de FK órfã (cascade by code).
DELETE fp FROM fase_progresso fp
  INNER JOIN fase f ON fp.id_fase = f.id
  WHERE f.codigo = 'biblioteca_revisao';
DELETE FROM fase WHERE codigo = 'biblioteca_revisao';

-- Recalcula pre_requisitos: caso a 'patio_aproximacao' antiga (com codigo
-- antigo) ainda exista, removê-la também — fica substituída por 'sala2_aproximacao'.
DELETE fp FROM fase_progresso fp
  INNER JOIN fase f ON fp.id_fase = f.id
  WHERE f.codigo = 'patio_aproximacao';
DELETE FROM fase WHERE codigo = 'patio_aproximacao';
