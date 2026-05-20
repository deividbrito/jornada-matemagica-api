// src/services/faseService.js
// Catálogo de fases + progressão do jogador.
//
// Regras de status (computadas dinamicamente a partir de fase_progresso + pre_requisito):
//   - 'concluida'   → existe linha em fase_progresso com status='concluida'.
//   - 'em_progresso'→ existe linha com status='em_progresso'.
//   - 'disponivel'  → sem pre_requisito OU pre_requisito está concluído.
//   - 'bloqueada'   → pre_requisito ainda não concluído.

const faseModel = require('../models/faseModel');
const arcadeModel = require('../models/arcadeModel');
const arcadeService = require('./arcadeService');

function _faseRowToDto(row) {
  return {
    id: row.id,
    codigo: row.codigo,
    nome: row.nome,
    campanha: row.campanha,
    idAssunto: row.id_assunto,
    ordem: row.ordem,
    preRequisitoCodigo: row.pre_requisito_codigo,
    metaQuestoes: row.meta_questoes,
    metaAcertos: row.meta_acertos,
    recompensaXp: row.recompensa_xp,
    recompensaMedalha: row.recompensa_medalha,
    mapId: row.map_id,
    descricao: row.descricao,
  };
}

async function listForJogador(idJogador, campanha) {
  const [fases] = await faseModel.listByCampanha(campanha);
  const [progRows] = await faseModel.getProgressoByJogador(idJogador);
  const progByFase = new Map(progRows.map((r) => [r.id_fase, r]));

  // Set de códigos concluídos pra resolver pré-requisitos.
  const concluidosCodigo = new Set(
    fases
      .filter((f) => {
        const p = progByFase.get(f.id);
        return p && p.status === 'concluida';
      })
      .map((f) => f.codigo)
  );

  return fases.map((f) => {
    const dto = _faseRowToDto(f);
    const prog = progByFase.get(f.id);

    let status;
    let estrelas = 0;
    let melhorScore = 0;
    let tentativas = 0;
    let primeiraConclusaoEm = null;

    if (prog) {
      status = prog.status;
      estrelas = prog.estrelas;
      melhorScore = prog.melhor_score;
      tentativas = prog.tentativas;
      primeiraConclusaoEm = prog.primeira_conclusao_em;
    } else if (!f.pre_requisito_codigo || concluidosCodigo.has(f.pre_requisito_codigo)) {
      status = 'disponivel';
    } else {
      status = 'bloqueada';
    }

    return {
      ...dto,
      progresso: { status, estrelas, melhorScore, tentativas, primeiraConclusaoEm },
    };
  });
}

/**
 * Calcula estrelas a partir do desempenho na fase.
 * 1★ = concluiu (acertou >= meta_acertos)
 * 2★ = acertou >= 80% das questões
 * 3★ = acertou 100% (sem usar buff, mas isso é flag opcional)
 */
function _calcularEstrelas({ totalQuestoes, acertos, semBuffs }) {
  if (totalQuestoes <= 0) return 0;
  const pct = acertos / totalQuestoes;
  if (pct >= 1 && semBuffs) return 3;
  if (pct >= 0.8) return 2;
  return 1;
}

async function concluir(idJogador, codigo, resultado) {
  const [fases] = await faseModel.findByCodigo(codigo);
  if (!fases.length || !fases[0].ativo) {
    const err = new Error('Fase não encontrada.');
    err.status = 404;
    throw err;
  }
  const fase = fases[0];

  // Valida pré-requisito (rejeita conclusão de fase bloqueada).
  if (fase.pre_requisito_codigo) {
    const [preReq] = await faseModel.findByCodigo(fase.pre_requisito_codigo);
    if (preReq.length) {
      const [progPre] = await faseModel.getProgressoByFase(idJogador, preReq[0].id);
      if (!progPre.length || progPre[0].status !== 'concluida') {
        const err = new Error('Fase bloqueada: conclua o pré-requisito primeiro.');
        err.status = 403;
        throw err;
      }
    }
  }

  const totalQuestoes = Math.max(1, resultado.totalQuestoes || fase.meta_questoes);
  const acertos = Math.max(0, Math.min(totalQuestoes, resultado.acertos || 0));
  const score = Math.max(0, resultado.score || 0);
  const aprovou = acertos >= fase.meta_acertos;

  const estrelas = aprovou
    ? _calcularEstrelas({
        totalQuestoes,
        acertos,
        semBuffs: !!resultado.semBuffs,
      })
    : 0;

  // Primeiro acesso a esta fase pelo jogador conclui (se aprovou).
  const [progAntes] = await faseModel.getProgressoByFase(idJogador, fase.id);
  const jaConcluida = progAntes.length && progAntes[0].status === 'concluida';
  const marcarConclusao = aprovou && !jaConcluida;

  await faseModel.upsertProgresso({
    idJogador,
    idFase: fase.id,
    status: aprovou ? 'concluida' : (progAntes.length ? progAntes[0].status : 'em_progresso'),
    score,
    acertos,
    estrelas,
    marcarConclusao,
  });

  // Recompensa XP apenas na PRIMEIRA conclusão.
  let xpReward = 0;
  let rankInfo = null;
  if (marcarConclusao && fase.recompensa_xp > 0) {
    const meta = await arcadeModel.addXp(idJogador, fase.recompensa_xp);
    xpReward = fase.recompensa_xp;
    rankInfo = arcadeService.getRankInfo(meta.xp);
  }

  return {
    aprovou,
    primeiraConclusao: marcarConclusao,
    estrelas,
    acertos,
    totalQuestoes,
    score,
    xpReward,
    rank: rankInfo,
    medalha: marcarConclusao ? fase.recompensa_medalha || null : null,
  };
}

module.exports = {
  listForJogador,
  concluir,
};
