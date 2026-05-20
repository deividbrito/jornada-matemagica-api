// src/schemas/quiz.schema.js
const { z } = require('zod');

// Querystring de /api/quizzes/random — todos opcionais. Coerções convertem
// "1" → 1 quando aplicável e aceitam o subset de campanhas conhecidas.
const randomQuery = z.object({
  id_assunto: z.coerce.number().int().positive().optional(),
  dificuldade: z.enum(['1', '2', '3']).optional(),
  campanha: z.enum(['fundamental', 'medio']).optional(),
  fiftyFifty: z.enum(['true', 'false']).optional(),
});

const alternativaInput = z.object({
  texto: z.string().min(1).max(500),
  eh_correta: z.union([z.boolean(), z.literal(0), z.literal(1)]),
  file: z.string().max(500).nullable().optional(),
});

const create = z.object({
  id_assunto: z.number().int().positive(),
  pergunta: z.string().min(1),
  dificuldade: z.enum(['1', '2', '3']),
  campanha: z.enum(['fundamental', 'medio']).optional(),
  files: z.array(z.string()).optional(),
  alternativas: z.array(alternativaInput).min(2).max(8),
  explicacao: z.string().optional(),
});

module.exports = { randomQuery, create };
