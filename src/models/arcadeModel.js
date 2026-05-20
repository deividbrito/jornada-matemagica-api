// models/arcadeModel.js
const db = require('../config/db');

// Retorna meta do jogador ou null se não existir ainda.
exports.getMetaByJogador = (id_jogador) =>
  db.query('SELECT * FROM arcade_meta WHERE id_jogador = ?', [id_jogador]);

// Soma `xpAmount` ao XP do jogador em arcade_meta, sem mexer nos demais
// agregados de run. Usado pelo XP narrativo (cada quiz correto, fora do arcade).
// Retorna a linha de arcade_meta atualizada.
exports.addXp = async (id_jogador, xpAmount) => {
  await db.query(
    `INSERT INTO arcade_meta (id_jogador, xp)
     VALUES (?, ?)
     ON DUPLICATE KEY UPDATE xp = xp + VALUES(xp)`,
    [id_jogador, xpAmount]
  );
  const [rows] = await db.query('SELECT * FROM arcade_meta WHERE id_jogador = ?', [id_jogador]);
  return rows[0];
};

// Salva a run + atualiza (ou cria) a meta agregada numa só transação.
// Retorna { runId, metaRow } onde metaRow é a linha de arcade_meta já com os valores atualizados.
exports.saveRunWithMeta = async (run) => {
  const conn = await db.getConnection();
  try {
    await conn.beginTransaction();

    const [runResult] = await conn.query(
      `INSERT INTO arcade_run (
         id_jogador, id_sessao, victory, score,
         total_correct, total_wrong, total_questions,
         lives_remaining, max_lives, max_streak,
         questions_per_mage, elapsed_ms, avg_time_ms,
         xp_gained, medals
       ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
      [
        run.id_jogador,
        run.id_sessao || null,
        run.victory ? 1 : 0,
        run.score,
        run.total_correct,
        run.total_wrong,
        run.total_questions,
        run.lives_remaining,
        run.max_lives,
        run.max_streak,
        run.questions_per_mage,
        run.elapsed_ms,
        run.avg_time_ms,
        run.xp_gained,
        run.medals ? JSON.stringify(run.medals) : null,
      ]
    );

    const victoryInt    = run.victory ? 1 : 0;
    const defeatInt     = run.victory ? 0 : 1;
    const perfectInt    = (run.victory && run.lives_remaining === run.max_lives) ? 1 : 0;
    const semFalhasInt  = perfectInt;
    const velocistaInt  = (run.victory && run.avg_time_ms && run.avg_time_ms < 10000) ? 1 : 0;
    const tempestadeInt = (run.max_streak >= 10) ? 1 : 0;

    await conn.query(
      `INSERT INTO arcade_meta (
         id_jogador, xp, total_runs, victories, defeats,
         best_score, max_streak, perfect_runs,
         medal_sem_falhas, medal_velocista, medal_tempestade
       ) VALUES (?, ?, 1, ?, ?, ?, ?, ?, ?, ?, ?)
       ON DUPLICATE KEY UPDATE
         xp               = xp + VALUES(xp),
         total_runs       = total_runs + 1,
         victories        = victories + VALUES(victories),
         defeats          = defeats + VALUES(defeats),
         best_score       = GREATEST(best_score, VALUES(best_score)),
         max_streak       = GREATEST(max_streak, VALUES(max_streak)),
         perfect_runs     = perfect_runs + VALUES(perfect_runs),
         medal_sem_falhas = medal_sem_falhas + VALUES(medal_sem_falhas),
         medal_velocista  = medal_velocista + VALUES(medal_velocista),
         medal_tempestade = medal_tempestade + VALUES(medal_tempestade)`,
      [
        run.id_jogador,
        run.xp_gained,
        victoryInt,
        defeatInt,
        run.score,
        run.max_streak,
        perfectInt,
        semFalhasInt,
        velocistaInt,
        tempestadeInt,
      ]
    );

    const [metaRows] = await conn.query(
      'SELECT * FROM arcade_meta WHERE id_jogador = ?',
      [run.id_jogador]
    );

    await conn.commit();
    return { runId: runResult.insertId, metaRow: metaRows[0] };
  } catch (err) {
    await conn.rollback();
    throw err;
  } finally {
    conn.release();
  }
};

// Ranking global — retorna 3 listas (por XP, por melhor score, por vitórias).
// Cada entrada traz nome do jogador + agregados.
exports.getGlobalRanking = async (limit = 10) => {
  const safeLimit = Math.max(1, Math.min(100, parseInt(limit, 10) || 10));
  const baseSelect = `
    SELECT j.id, j.nome,
           m.xp, m.total_runs, m.victories, m.defeats,
           m.best_score, m.max_streak,
           (m.medal_sem_falhas + m.medal_velocista + m.medal_tempestade) AS medals_total
      FROM arcade_meta m
      INNER JOIN jogador j ON j.id = m.id_jogador
  `;
  const [byXp]        = await db.query(`${baseSelect} ORDER BY m.xp DESC LIMIT ${safeLimit}`);
  const [byScore]     = await db.query(`${baseSelect} ORDER BY m.best_score DESC LIMIT ${safeLimit}`);
  const [byVictories] = await db.query(`${baseSelect} ORDER BY m.victories DESC, m.total_runs ASC LIMIT ${safeLimit}`);
  return { byXp, byScore, byVictories };
};

// Posição do jogador em cada um dos 3 rankings. Retorna null se ele ainda não tem meta.
exports.getPlayerPosition = async (id_jogador) => {
  const [rows] = await db.query(
    `SELECT
        (SELECT COUNT(*) FROM arcade_meta WHERE xp > m.xp) + 1          AS pos_xp,
        (SELECT COUNT(*) FROM arcade_meta WHERE best_score > m.best_score) + 1 AS pos_score,
        (SELECT COUNT(*) FROM arcade_meta
            WHERE victories > m.victories
               OR (victories = m.victories AND total_runs < m.total_runs)) + 1 AS pos_victories
       FROM arcade_meta m
      WHERE m.id_jogador = ?`,
    [id_jogador]
  );
  return rows.length ? rows[0] : null;
};

// Histórico de runs de um jogador. sort: 'recent' (padrão) ou 'score'.
exports.getHistory = (id_jogador, limit = 10, sort = 'recent') => {
  const orderBy = sort === 'score' ? 'score DESC, data_fim DESC' : 'data_fim DESC';
  const safeLimit = Math.max(1, Math.min(100, parseInt(limit, 10) || 10));
  return db.query(
    `SELECT id, data_fim, victory, score, total_correct, total_wrong, total_questions,
            lives_remaining, max_lives, max_streak, questions_per_mage,
            elapsed_ms, avg_time_ms, xp_gained, medals
       FROM arcade_run
      WHERE id_jogador = ?
      ORDER BY ${orderBy}
      LIMIT ${safeLimit}`,
    [id_jogador]
  );
};
