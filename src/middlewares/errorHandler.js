// src/middlewares/errorHandler.js
// Handler de erro global. Capta qualquer erro propagado nos controllers
// (next(err) ou throw em async) e responde JSON uniforme.
// - Em dev: inclui mensagem detalhada.
// - Em prod: oculta detalhes (apenas status genérico).
// - Não loga 4xx (são esperados); loga 5xx.

const { isProd } = require('../config/env');

// 404 — capturado quando nenhuma rota matchou.
function notFoundHandler(_req, res, _next) {
  res.status(404).json({ error: 'Rota não encontrada.' });
}

// Erros explícitos (CORS, etc.) e exceções não tratadas.
function errorHandler(err, _req, res, _next) {
  // CORS deny vem como Error com mensagem específica.
  if (err && err.message && err.message.startsWith('Origin não permitida pelo CORS')) {
    return res.status(403).json({ error: err.message });
  }

  // Status custom (alguns middlewares lançam err.status).
  const status = err && err.status ? err.status : 500;

  if (status >= 500) {
    console.error('[unhandled error]', err);
  }

  res.status(status).json({
    error: status >= 500 ? 'Erro interno do servidor.' : (err.message || 'Erro.'),
    ...(isProd ? {} : { detail: err && err.message }),
  });
}

module.exports = { notFoundHandler, errorHandler };
