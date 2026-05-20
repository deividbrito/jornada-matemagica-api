// src/middlewares/rateLimit.js
// Limiters específicos por endpoint sensível + limiter geral para o resto.
// Os específicos rodam ANTES do geral, e o geral pula essas paths para evitar
// dupla contagem (e sobrescrever headers RateLimit-*).

const rateLimit = require('express-rate-limit');

const authLoginLimiter = rateLimit({
  windowMs: 60 * 1000,
  max: 10,
  standardHeaders: true,
  legacyHeaders: false,
  message: { error: 'Muitas tentativas de login. Tente novamente em instantes.' },
});

const registerLimiter = rateLimit({
  windowMs: 60 * 60 * 1000,
  max: 5,
  standardHeaders: true,
  legacyHeaders: false,
  message: { error: 'Limite de registros excedido. Tente novamente mais tarde.' },
});

const quizRandomLimiter = rateLimit({
  windowMs: 60 * 1000,
  max: 90,
  standardHeaders: true,
  legacyHeaders: false,
});

const apiGeneralLimiter = rateLimit({
  windowMs: 60 * 1000,
  max: 300,
  standardHeaders: true,
  legacyHeaders: false,
  skip: (req) =>
    req.path === '/auth/login' ||
    req.path === '/quizzes/random' ||
    (req.path === '/jogadores' && req.method === 'POST'),
});

module.exports = {
  authLoginLimiter,
  registerLimiter,
  quizRandomLimiter,
  apiGeneralLimiter,
};
