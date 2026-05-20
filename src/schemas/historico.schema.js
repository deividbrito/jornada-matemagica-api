// src/schemas/historico.schema.js
const { z } = require('zod');

const responder = z.object({
  id_quiz: z.number().int().positive(),
  id_alternativa_escolhida: z.number().int().positive(),
  tempo_resposta_ms: z.number().int().min(0).max(60 * 60 * 1000), // teto de 1h
});

module.exports = { responder };
