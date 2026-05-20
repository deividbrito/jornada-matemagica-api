// src/schemas/fase.schema.js
const { z } = require('zod');

const listQuery = z.object({
  campanha: z.enum(['fundamental', 'medio']).optional(),
});

const concluir = z.object({
  totalQuestoes: z.number().int().min(1).max(50),
  acertos: z.number().int().min(0).max(50),
  score: z.number().int().min(0).max(99999).optional(),
  semBuffs: z.boolean().optional(),
});

module.exports = { listQuery, concluir };
