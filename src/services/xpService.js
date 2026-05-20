// src/services/xpService.js
// XP unificado: cada quiz respondido (em qualquer modo, autenticado) gera XP
// proporcional à dificuldade + bônus de tempo. A fonte da verdade é
// arcade_meta — assim Fundamental e Arcade compartilham o mesmo rank/XP.

const arcadeModel = require('../models/arcadeModel');
const arcadeService = require('./arcadeService');

// XP base por nível (matches a expectativa "Fundamental ganha menos do que Arcade
// boss fights por questão individual").
const XP_BY_DIFFICULTY = { '1': 8, '2': 14, '3': 22 };

function _baseXpFor(dificuldade) {
  return XP_BY_DIFFICULTY[String(dificuldade)] || XP_BY_DIFFICULTY['1'];
}

function _timeBonus(tempoMs) {
  if (!tempoMs || tempoMs <= 0) return 0;
  if (tempoMs < 5000) return 5;
  if (tempoMs < 15000) return 2;
  return 0;
}

/**
 * Computa o XP que um acerto isolado vale (sem persistir).
 * Útil para preview no frontend antes de salvar.
 */
function previewXp({ dificuldade, tempoMs }) {
  return _baseXpFor(dificuldade) + _timeBonus(tempoMs);
}

/**
 * Concede XP por um acerto e devolve a transição de rank.
 * Idempotência: cada chamada SOMA — chame uma vez por resposta correta.
 *
 * @returns {Promise<{
 *   xpGained: number,
 *   xpTotal: number,
 *   rankBefore: object,
 *   rankAfter: object,
 *   rankedUp: boolean,
 * }>}
 */
async function awardForCorrectAnswer(idJogador, { dificuldade, tempoMs }) {
  const xpGained = previewXp({ dificuldade, tempoMs });

  // Snapshot do rank ANTES (para detectar rank-up)
  const [rowsBefore] = await arcadeModel.getMetaByJogador(idJogador);
  const xpBefore = rowsBefore.length ? rowsBefore[0].xp : 0;
  const rankBefore = arcadeService.getRankInfo(xpBefore);

  const metaRow = await arcadeModel.addXp(idJogador, xpGained);
  const rankAfter = arcadeService.getRankInfo(metaRow.xp);

  return {
    xpGained,
    xpTotal: metaRow.xp,
    rankBefore,
    rankAfter,
    rankedUp: rankAfter.name !== rankBefore.name,
  };
}

module.exports = {
  previewXp,
  awardForCorrectAnswer,
};
