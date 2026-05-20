// models/quizModel.js
const db = require('../config/db');

exports.getAll = () =>
  db.query('SELECT id, id_assunto, pergunta, dificuldade, campanha, files FROM quiz');

exports.getAllByCampanha = (campanha) => {
  if (campanha) {
    return db.query(
      'SELECT id, id_assunto, pergunta, dificuldade, files FROM quiz WHERE campanha = ?',
      [campanha]
    );
  }
  return db.query('SELECT id, id_assunto, pergunta, dificuldade, files FROM quiz');
};

exports.getById = async (id) => {
  const [quizRows] = await db.query(
    'SELECT id, id_assunto, pergunta, dificuldade, campanha, files FROM quiz WHERE id = ?',
    [id]
  );
  if (!quizRows.length) return [[]];

  const quiz = quizRows[0];
  const [alternativas] = await exports.getAlternativesByQuizId(quiz.id);
  quiz.alternativas = alternativas;
  return [[quiz]];
};

// ATUALIZADO: retorna também a coluna file das alternativas.
// eh_correta é usado internamente (para o buff 50/50); NÃO deve ser enviado ao cliente.
exports.getAlternativesByQuizId = (id_quiz) => {
  return db.query(
    'SELECT id, texto, file, eh_correta FROM alternativa WHERE id_quiz = ?',
    [id_quiz]
  );
};

exports.create = async (quiz) => {
  const conn = await db.getConnection();
  try {
    await conn.beginTransaction();

    const [quizResult] = await conn.query(
      'INSERT INTO quiz (id_assunto, pergunta, dificuldade, campanha, files) VALUES (?, ?, ?, ?, ?)',
      [
        quiz.id_assunto,
        quiz.pergunta,
        quiz.dificuldade,
        quiz.campanha || 'fundamental',
        quiz.files ? JSON.stringify(quiz.files) : null
      ]
    );
    const quizId = quizResult.insertId;

    for (const alt of quiz.alternativas) {
      await conn.query(
        'INSERT INTO alternativa (id_quiz, texto, eh_correta, file) VALUES (?, ?, ?, ?)',
        [quizId, alt.texto, alt.eh_correta, alt.file || null]
      );
    }

    if (quiz.explicacao) {
      await conn.query(
        'INSERT INTO feedback (id_quiz, explicacao) VALUES (?, ?)',
        [quizId, quiz.explicacao]
      );
    }

    await conn.commit();
    return [quizResult];
  } catch (err) {
    await conn.rollback();
    throw err;
  } finally {
    conn.release();
  }
};

exports.getFeedbackByQuizId = (quizId) =>
  db.query('SELECT explicacao FROM feedback WHERE id_quiz = ?', [quizId]);

exports.getByAssunto = (id_assunto, campanha) => {
  if (campanha) {
    return db.query(
      'SELECT id, id_assunto, pergunta, dificuldade, files FROM quiz WHERE id_assunto = ? AND campanha = ?',
      [id_assunto, campanha]
    );
  }
  return db.query(
    'SELECT id, id_assunto, pergunta, dificuldade, files FROM quiz WHERE id_assunto = ?',
    [id_assunto]
  );
};

exports.getByDificuldade = (dificuldade, campanha) => {
  if (campanha) {
    return db.query(
      'SELECT id, id_assunto, pergunta, dificuldade, files FROM quiz WHERE dificuldade = ? AND campanha = ?',
      [dificuldade, campanha]
    );
  }
  return db.query(
    'SELECT id, id_assunto, pergunta, dificuldade, files FROM quiz WHERE dificuldade = ?',
    [dificuldade]
  );
};

exports.getByAssuntoAndDificuldade = (id_assunto, dificuldade, campanha) => {
  if (campanha) {
    return db.query(
      'SELECT id, id_assunto, pergunta, dificuldade, files FROM quiz WHERE id_assunto = ? AND dificuldade = ? AND campanha = ?',
      [id_assunto, dificuldade, campanha]
    );
  }
  return db.query(
    'SELECT id, id_assunto, pergunta, dificuldade, files FROM quiz WHERE id_assunto = ? AND dificuldade = ?',
    [id_assunto, dificuldade]
  );
};