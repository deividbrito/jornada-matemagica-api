// src/schemas/jogador.schema.js
const { z } = require('zod');

const create = z.object({
  nome: z.string().trim().min(2).max(100),
  email: z.string().email().max(120),
  senha: z.string().min(6).max(120),
});

module.exports = { create };
