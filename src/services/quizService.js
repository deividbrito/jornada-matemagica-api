// src/services/quizService.js
// Regras de seleção de pergunta aleatória + buff 50/50.
// Mantém o servidor como fonte da verdade sobre `eh_correta` (nunca vaza
// pro cliente — só o flag `hidden` das eliminadas pelo 50/50).

const quizModel = require('../models/quizModel');

async function _fetchPool({ idAssunto, dificuldade, campanha }) {
  if (idAssunto && dificuldade) {
    const [rows] = await quizModel.getByAssuntoAndDificuldade(idAssunto, dificuldade, campanha);
    return rows;
  }
  if (idAssunto) {
    const [rows] = await quizModel.getByAssunto(idAssunto, campanha);
    return rows;
  }
  if (dificuldade) {
    const [rows] = await quizModel.getByDificuldade(dificuldade, campanha);
    return rows;
  }
  const [rows] = await quizModel.getAllByCampanha(campanha);
  return rows;
}

/**
 * Busca um quiz aleatório respeitando filtros e aplicando fallbacks:
 *   1. Filtros completos vazios → relaxa dificuldade
 *   2. Ainda vazio → relaxa campanha
 *   3. Vazio → null
 *
 * @param {{ idAssunto?, dificuldade?, campanha?, fiftyFifty? }} opts
 * @returns {Promise<object|null>} DTO pronto para resposta HTTP, ou null se vazio.
 */
async function getRandom({ idAssunto, dificuldade, campanha, fiftyFifty }) {
  let rows = await _fetchPool({ idAssunto, dificuldade, campanha });

  // Fallback 1: pediu assunto+dificuldade mas pool vazio → relaxa dificuldade.
  if ((!rows || rows.length === 0) && idAssunto && dificuldade) {
    rows = await _fetchPool({ idAssunto, campanha });
  }
  // Fallback 2: ainda vazio → relaxa campanha.
  if ((!rows || rows.length === 0) && idAssunto && campanha) {
    rows = await _fetchPool({ idAssunto });
  }
  if (!rows || rows.length === 0) return null;

  const quiz = rows[Math.floor(Math.random() * rows.length)];
  const [alternativas] = await quizModel.getAlternativesByQuizId(quiz.id);
  const embaralhadas = alternativas.slice().sort(() => Math.random() - 0.5);

  // Coluna `files` pode vir como string (LONGTEXT) ou JSON (mysql2 já parsea).
  let files = quiz.files;
  if (typeof files === 'string') {
    try { files = JSON.parse(files); } catch (_) { files = []; }
  }

  // Buff 50/50: marca 2 alternativas erradas como ocultas.
  const hiddenIds = new Set();
  if (fiftyFifty) {
    const wrongIds = embaralhadas
      .filter((alt) => !(alt.eh_correta == 1 || alt.eh_correta === true))
      .map((alt) => alt.id);
    for (let i = wrongIds.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [wrongIds[i], wrongIds[j]] = [wrongIds[j], wrongIds[i]];
    }
    wrongIds.slice(0, 2).forEach((id) => hiddenIds.add(id));
  }

  return {
    id: quiz.id,
    pergunta: quiz.pergunta,
    dificuldade: quiz.dificuldade,
    files: files || [],
    options: embaralhadas.map((alt) => ({
      id: alt.id,
      texto: alt.texto,
      file: alt.file || null,
      hidden: hiddenIds.has(alt.id),
    })),
  };
}

module.exports = { getRandom };
