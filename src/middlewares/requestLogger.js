// src/middlewares/requestLogger.js
// Log estruturado (JSON) por requisição. Sem dependência externa — a Onda 5
// substitui por pino se a necessidade crescer.
// Loga: timestamp, método, path, status, duração (ms), userId quando autenticado.

const { isProd } = require('../config/env');

function requestLogger(req, res, next) {
  const start = Date.now();
  res.on('finish', () => {
    const entry = {
      ts: new Date().toISOString(),
      method: req.method,
      path: req.originalUrl,
      status: res.statusCode,
      duration_ms: Date.now() - start,
      user_id: req.user ? req.user.sub : null,
    };
    // Em dev, formato uma linha legível; em prod, JSON puro pra ingestão de logs.
    if (isProd) {
      process.stdout.write(JSON.stringify(entry) + '\n');
    } else {
      const flag = entry.status >= 500 ? '✗' : entry.status >= 400 ? '!' : '·';
      console.log(`${flag} ${entry.method} ${entry.path} → ${entry.status} (${entry.duration_ms}ms)${entry.user_id ? ` user=${entry.user_id}` : ''}`);
    }
  });
  next();
}

module.exports = requestLogger;
