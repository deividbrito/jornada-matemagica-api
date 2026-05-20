const express = require('express');
const router = express.Router();
const arcadeController = require('../controllers/arcadeController');
const { requireAuth } = require('../middlewares/auth');
const { requireSelfPlayer } = require('../middlewares/ownership');
const validate = require('../middlewares/validate');
const { recordRun, rankingQuery, historyQuery } = require('../schemas/arcade.schema');

router.post('/runs', requireAuth, validate(recordRun), arcadeController.recordRun);
router.get('/meta/:id_jogador', requireAuth, requireSelfPlayer('id_jogador'), arcadeController.getMeta);
router.get('/ranking', requireAuth, validate(rankingQuery, 'query'), arcadeController.getRanking);
router.get('/historico/:id_jogador', requireAuth, requireSelfPlayer('id_jogador'), validate(historyQuery, 'query'), arcadeController.getHistory);

module.exports = router;
