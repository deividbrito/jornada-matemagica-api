// src/services/arcadeService.js
// Regras de negócio do modo Arcade — fonte da verdade para XP, rank e medalhas.
// O controller fica magro: parsa request, chama service, devolve JSON.

const arcadeModel = require('../models/arcadeModel');

const RANKS = [
  { name: 'Calouro I',        xp: 0 },
  { name: 'Calouro II',       xp: 400 },
  { name: 'Calouro III',      xp: 1000 },
  { name: 'Estudante I',      xp: 1800 },
  { name: 'Estudante II',     xp: 2800 },
  { name: 'Estudante III',    xp: 4000 },
  { name: 'Bolsista I',       xp: 5500 },
  { name: 'Bolsista II',      xp: 7500 },
  { name: 'Bolsista III',     xp: 10000 },
  { name: 'Destaque I',       xp: 13000 },
  { name: 'Destaque II',      xp: 16500 },
  { name: 'Destaque III',     xp: 20500 },
  { name: 'Campeão Nacional', xp: 25000 },
];

function getRankInfo(xp) {
  let currentIndex = 0;
  for (let i = 0; i < RANKS.length; i++) {
    if (xp >= RANKS[i].xp) currentIndex = i;
  }
  const current = RANKS[currentIndex];
  const next = RANKS[currentIndex + 1] || null;
  const progress = next ? (xp - current.xp) / (next.xp - current.xp) : 1;
  return {
    name: current.name,
    xp,
    currentXp: current.xp,
    nextXp: next ? next.xp : current.xp,
    nextName: next ? next.name : null,
    progress: Math.max(0, Math.min(1, progress)),
    isMax: !next,
  };
}

function computeXpGained(victory, score, questionsPerMage) {
  const fator = (questionsPerMage || 5) / 5;
  let xp = Math.round((score || 0) * fator);
  if (!victory) xp = Math.round(xp * 0.3);
  return xp;
}

function computeMedals(run) {
  const medals = [];
  if (run.victory && run.lives_remaining === run.max_lives) {
    medals.push({ id: 'semFalhas', label: 'Gabarito', icon: '🏆' });
  }
  if (run.victory && run.avg_time_ms && run.avg_time_ms < 10000) {
    medals.push({ id: 'velocista', label: 'Velocista', icon: '⚡' });
  }
  if ((run.max_streak || 0) >= 10) {
    medals.push({ id: 'tempestade', label: 'Maratona', icon: '📚' });
  }
  return medals;
}

function defaultMetaRow(id_jogador) {
  return {
    id_jogador,
    xp: 0,
    total_runs: 0,
    victories: 0,
    defeats: 0,
    best_score: 0,
    max_streak: 0,
    perfect_runs: 0,
    medal_sem_falhas: 0,
    medal_velocista: 0,
    medal_tempestade: 0,
  };
}

function metaRowToDto(row) {
  return {
    xp: row.xp,
    totalRuns: row.total_runs,
    victories: row.victories,
    defeats: row.defeats,
    bestScore: row.best_score,
    maxStreak: row.max_streak,
    perfectRuns: row.perfect_runs,
    medals: {
      semFalhas: row.medal_sem_falhas,
      velocista: row.medal_velocista,
      tempestade: row.medal_tempestade,
    },
    rank: getRankInfo(row.xp),
  };
}

function runRowToDto(r) {
  let medals = [];
  if (r.medals) {
    if (Array.isArray(r.medals)) medals = r.medals;
    else { try { medals = JSON.parse(r.medals); } catch (_) { medals = []; } }
  }
  return {
    id: r.id,
    date: r.data_fim,
    victory: !!r.victory,
    score: r.score,
    correct: r.total_correct,
    total: r.total_questions,
    pct: r.total_questions > 0
      ? Math.round((r.total_correct / r.total_questions) * 100)
      : 0,
    lives: r.lives_remaining,
    maxLives: r.max_lives,
    maxStreak: r.max_streak,
    questionsPerMage: r.questions_per_mage,
    elapsedMs: r.elapsed_ms,
    avgTimeMs: r.avg_time_ms,
    xpGained: r.xp_gained,
    medals,
  };
}

function rankingRowToDto(r) {
  return {
    id: r.id,
    nome: r.nome,
    xp: r.xp,
    totalRuns: r.total_runs,
    victories: r.victories,
    defeats: r.defeats,
    bestScore: r.best_score,
    maxStreak: r.max_streak,
    medalsTotal: r.medals_total,
    rank: getRankInfo(r.xp),
  };
}

// --- Use cases ---------------------------------------------------------------

async function recordRun(idJogador, idSessao, body) {
  const [metaRowsBefore] = await arcadeModel.getMetaByJogador(idJogador);
  const metaBefore = metaRowsBefore.length ? metaRowsBefore[0] : defaultMetaRow(idJogador);
  const rankBefore = getRankInfo(metaBefore.xp);

  const victory = !!body.victory;
  const xpGained = computeXpGained(victory, body.score, body.questionsPerMage);

  const runForInsert = {
    id_jogador: idJogador,
    id_sessao: idSessao || null,
    victory,
    score: body.score || 0,
    total_correct: body.correct || 0,
    total_wrong: body.wrong != null
      ? body.wrong
      : Math.max(0, (body.total || 0) - (body.correct || 0)),
    total_questions: body.total || 0,
    lives_remaining: body.lives != null ? body.lives : 0,
    max_lives: body.maxLives || 3,
    max_streak: body.maxStreak || 0,
    questions_per_mage: body.questionsPerMage || 5,
    elapsed_ms: body.elapsedMs || 0,
    avg_time_ms: body.avgTimeMs || 0,
    xp_gained: xpGained,
    medals: null,
  };
  const medalsEarned = computeMedals(runForInsert);
  runForInsert.medals = medalsEarned.map((m) => m.id);

  const { metaRow } = await arcadeModel.saveRunWithMeta(runForInsert);
  const rankAfter = getRankInfo(metaRow.xp);

  return {
    xpGained,
    rankBefore,
    rankAfter,
    rankedUp: rankAfter.name !== rankBefore.name,
    medalsEarned,
    meta: metaRowToDto(metaRow),
  };
}

async function getMeta(idJogador) {
  const [rows] = await arcadeModel.getMetaByJogador(idJogador);
  const row = rows.length ? rows[0] : defaultMetaRow(idJogador);
  return metaRowToDto(row);
}

async function getRanking({ limit, idJogador }) {
  const { byXp, byScore, byVictories } = await arcadeModel.getGlobalRanking(limit);
  const response = {
    xp: byXp.map(rankingRowToDto),
    bestScore: byScore.map(rankingRowToDto),
    victories: byVictories.map(rankingRowToDto),
    playerPositions: null,
  };
  if (idJogador) {
    const pos = await arcadeModel.getPlayerPosition(idJogador);
    if (pos) {
      response.playerPositions = {
        xp: pos.pos_xp,
        bestScore: pos.pos_score,
        victories: pos.pos_victories,
      };
    }
  }
  return response;
}

async function getHistory(idJogador, limit, sort) {
  const [rows] = await arcadeModel.getHistory(idJogador, limit, sort);
  return rows.map(runRowToDto);
}

module.exports = {
  // helpers expostos pra testes / debugging
  getRankInfo,
  computeXpGained,
  computeMedals,
  // use cases
  recordRun,
  getMeta,
  getRanking,
  getHistory,
};
