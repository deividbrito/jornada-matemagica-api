// src/app.js
// Constrói o Express app: middlewares globais, rotas, error handlers.
// server.js apenas escuta — facilita testes e import em ambientes serverless.

const express = require('express');
const cors = require('cors');
const helmet = require('helmet');

const env = require('./config/env');
const requestLogger = require('./middlewares/requestLogger');
const {
  authLoginLimiter,
  registerLimiter,
  quizRandomLimiter,
  apiGeneralLimiter,
} = require('./middlewares/rateLimit');
const { notFoundHandler, errorHandler } = require('./middlewares/errorHandler');

const app = express();

// Atrás do proxy do Railway/Render/etc: confiar no primeiro hop para que
// req.ip e express-rate-limit usem o X-Forwarded-For real, não o IP interno.
if (env.isProd) app.set('trust proxy', 1);

// Segurança HTTP
app.use(helmet());

// CORS: whitelist via env em prod; em dev, libera tudo se CORS_ORIGINS não setado.
if (env.cors.origins.length > 0) {
  app.use(cors({
    origin: (origin, cb) => {
      if (!origin) return cb(null, true); // same-origin / curl
      if (env.cors.origins.includes(origin)) return cb(null, true);
      return cb(new Error(`Origin não permitida pelo CORS: ${origin}`));
    },
    credentials: false,
  }));
  console.log(`CORS restrito a: ${env.cors.origins.join(', ')}`);
} else {
  app.use(cors());
  console.warn('CORS_ORIGINS não definido — liberando todas as origens (use apenas em dev).');
}

app.use(express.json({ limit: '256kb' }));
app.use(requestLogger);

// Health check (público, fora do rate limiter geral)
app.get('/health', (_req, res) => res.json({ status: 'ok', uptime: process.uptime() }));

// Rate limiters específicos antes do geral
app.use('/api/auth/login', authLoginLimiter);
app.use('/api/jogadores', (req, res, next) => {
  if (req.method === 'POST') return registerLimiter(req, res, next);
  return next();
});
app.use('/api/quizzes/random', quizRandomLimiter);
app.use('/api', apiGeneralLimiter);

// Rotas
app.use('/api/jogadores',     require('./routes/jogadorRoutes'));
app.use('/api/assuntos',      require('./routes/assuntoRoutes'));
app.use('/api/quizzes',       require('./routes/quizRoutes'));
app.use('/api/feedbacks',     require('./routes/feedbackRoutes'));
app.use('/api/configuracoes', require('./routes/configuracoesRoutes'));
app.use('/api/sessoes',       require('./routes/sessaoRoutes'));
app.use('/api/progressos',    require('./routes/progressoRoutes'));
app.use('/api/historico',     require('./routes/historicoRoutes'));
app.use('/api/auth',          require('./routes/authRoutes'));
app.use('/api/arcade',        require('./routes/arcadeRoutes'));
app.use('/api/fases',         require('./routes/faseRoutes'));
app.use('/api/conquistas',    require('./routes/conquistaRoutes'));

// 404 + erro global (devem ser os últimos)
app.use(notFoundHandler);
app.use(errorHandler);

module.exports = app;
