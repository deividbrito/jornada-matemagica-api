// src/controllers/historicoController.js
const historicoModel = require('../models/historicoModel');
const quizModel = require('../models/quizModel');
const xpService = require('../services/xpService');

// POST /api/historico/responder
// Rota é semi-pública (optionalAuth). Com JWT:
//   - salva a resposta contra a sessão do token
//   - se a resposta foi correta, concede XP via xpService (unifica
//     Fundamental e Arcade na mesma economia)
// Sem JWT: valida sem persistir (modo convidado).
exports.submitAnswer = async (req, res, next) => {
  try {
    const { id_quiz, id_alternativa_escolhida, tempo_resposta_ms } = req.body;

    const resultAlt = await historicoModel.checkAlternative(id_alternativa_escolhida);
    const alternativa = Array.isArray(resultAlt)
      ? (Array.isArray(resultAlt[0]) ? resultAlt[0][0] : resultAlt[0])
      : resultAlt;

    if (!alternativa) {
      return res.status(404).json({ error: 'Alternativa não encontrada.' });
    }

    const foiCorreta = (alternativa.eh_correta == 1 || alternativa.eh_correta === true);
    const idSessao = req.user ? req.user.sid : null;
    const idJogador = req.user ? req.user.sub : null;

    if (idSessao) {
      await historicoModel.saveResponse({
        id_sessao: idSessao,
        id_quiz,
        id_alternativa_escolhida,
        foi_correta: foiCorreta,
        tempo_resposta_ms,
      });
    }

    // Busca dificuldade do quiz pra calcular XP corretamente.
    let dificuldade = null;
    if (foiCorreta && idJogador) {
      const [quizRows] = await quizModel.getById(id_quiz);
      const quiz = quizRows && quizRows[0];
      if (quiz) dificuldade = quiz.dificuldade;
    }

    // A explicação no banco (feedback.explicacao) é pedagógica e serve
    // tanto pra acerto (confirma o raciocínio) quanto pra erro (mostra o
    // caminho certo). Buscamos sempre — só caímos no fallback se o quiz
    // não tem explicação cadastrada.
    const resultFeedback = await quizModel.getFeedbackByQuizId(id_quiz);
    const feedbackObj = Array.isArray(resultFeedback)
      ? (Array.isArray(resultFeedback[0]) ? resultFeedback[0][0] : resultFeedback[0])
      : resultFeedback;
    const explicacao = feedbackObj?.explicacao;
    const feedback = explicacao
      || (foiCorreta
            ? 'Correto!'
            : 'Resposta incorreta. Revise o conteúdo e tente novamente.');

    // Concede XP apenas para jogador autenticado e resposta correta.
    let xpInfo = null;
    if (foiCorreta && idJogador && dificuldade) {
      try {
        xpInfo = await xpService.awardForCorrectAnswer(idJogador, {
          dificuldade,
          tempoMs: tempo_resposta_ms,
        });
      } catch (err) {
        // Falha em XP NÃO pode quebrar a resposta principal do quiz —
        // só logamos e seguimos. O cliente recebe foi_correta+feedback.
        console.error('[xp] award error:', err);
      }
    }

    // Quando o jogador errou, devolvemos o id da alternativa correta pra que o
    // cliente destaque visualmente qual era a certa (fecha o loop pedagógico).
    // Em acerto omitimos (a alternativa escolhida já é a correta).
    let idAlternativaCorreta = null;
    if (!foiCorreta) {
      idAlternativaCorreta = await historicoModel.getCorrectAlternativeId(id_quiz);
    }

    res.json({
      foi_correta: foiCorreta,
      feedback,
      id_alternativa_correta: idAlternativaCorreta,
      xp: xpInfo, // null se guest, erro ou resposta errada
    });
  } catch (err) {
    next(err);
  }
};
