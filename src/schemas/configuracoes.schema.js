// src/schemas/configuracoes.schema.js
const { z } = require('zod');

const save = z.object({
  volume_musica: z.number().min(0).max(1).optional(),
  volume_efeitos: z.number().min(0).max(1).optional(),
  idioma: z.string().min(2).max(10).optional(),
});

module.exports = { save };
