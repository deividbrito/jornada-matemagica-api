// src/schemas/progresso.schema.js
const { z } = require('zod');

// Checkpoint do mapa + storyFlags. Não validamos o conteúdo interno (varia
// muito conforme o jogo evolui), só garantimos que é um objeto JSON sano.
const save = z.object({
  ponto_de_salvamento: z.object({}).passthrough(),
});

module.exports = { save };
