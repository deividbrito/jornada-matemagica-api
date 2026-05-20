// server.js — entrypoint fino. Toda a lógica do app vive em src/app.js.
// Mantido na raiz por compatibilidade com `npm start`.

const env = require('./src/config/env');  // valida .env e aborta se inválido
const app = require('./src/app');

app.listen(env.port, () => {
  console.log(`Servidor rodando na porta ${env.port} (${env.nodeEnv})`);
});
