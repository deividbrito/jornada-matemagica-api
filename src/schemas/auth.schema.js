// src/schemas/auth.schema.js
const { z } = require('zod');

const login = z.object({
  email: z.string().email().max(120),
  senha: z.string().min(6).max(120),
});

module.exports = { login };
