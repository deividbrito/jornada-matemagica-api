// src/schemas/arcade.schema.js
const { z } = require('zod');

// id_jogador/id_sessao vêm do JWT; aqui só validamos os agregados da run.
const recordRun = z.object({
  victory: z.boolean(),
  score: z.number().int().min(0).max(999999),
  correct: z.number().int().min(0).max(500),
  wrong: z.number().int().min(0).max(500).optional(),
  total: z.number().int().min(1).max(500),
  lives: z.number().int().min(0).max(99).optional(),
  maxLives: z.number().int().min(1).max(99).optional(),
  maxStreak: z.number().int().min(0).max(500).optional(),
  questionsPerMage: z.number().int().min(1).max(50).optional(),
  elapsedMs: z.number().int().min(0).optional(),
  avgTimeMs: z.number().int().min(0).optional(),
});

const rankingQuery = z.object({
  limit: z.coerce.number().int().min(1).max(100).optional(),
  id_jogador: z.coerce.number().int().positive().optional(),
});

const historyQuery = z.object({
  limit: z.coerce.number().int().min(1).max(100).optional(),
  sort: z.enum(['recent', 'score']).optional(),
});

module.exports = { recordRun, rankingQuery, historyQuery };
