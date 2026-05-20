const express = require('express');
const router = express.Router();
const historicoController = require('../controllers/historicoController');
const { optionalAuth } = require('../middlewares/auth');
const validate = require('../middlewares/validate');
const { responder } = require('../schemas/historico.schema');

router.post('/responder', optionalAuth, validate(responder), historicoController.submitAnswer);

module.exports = router;
