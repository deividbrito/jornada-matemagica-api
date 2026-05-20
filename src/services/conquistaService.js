// src/services/conquistaService.js
// Stub mínimo: lista conquistas catalogadas + desbloqueio manual por código.
// A regra de "quando desbloquear" (ex.: 50 acertos em decimais) é leve aqui —
// o gatilho fica nos services que produzem o evento (xpService, faseService).

const conquistaModel = require('../models/conquistaModel');

function _toDto(row) {
  return {
    codigo: row.codigo,
    nome: row.nome,
    descricao: row.descricao,
    icone: row.icone,
    desbloqueadaEm: row.desbloqueada_em || null,
  };
}

async function listForJogador(idJogador) {
  const [rows] = await conquistaModel.getByJogador(idJogador);
  return rows.map(_toDto);
}

async function listCatalogo() {
  const [rows] = await conquistaModel.listAll();
  return rows.map(_toDto);
}

/**
 * Garante o desbloqueio de uma conquista por código.
 * Idempotente: chamadas repetidas não duplicam.
 * Retorna a conquista (DTO) se foi NOVA, ou null se já existia.
 */
async function unlockByCodigo(idJogador, codigo) {
  const [conqs] = await conquistaModel.findByCodigo(codigo);
  if (!conqs.length) return null;
  const conq = conqs[0];

  // Verifica se já estava desbloqueada
  const [existing] = await conquistaModel.getByJogador(idJogador);
  if (existing.some((e) => e.codigo === codigo)) return null;

  await conquistaModel.grant(idJogador, conq.id);
  return _toDto({ ...conq, desbloqueada_em: new Date() });
}

module.exports = {
  listForJogador,
  listCatalogo,
  unlockByCodigo,
};
