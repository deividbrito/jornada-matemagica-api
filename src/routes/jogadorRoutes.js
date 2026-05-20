const express = require('express');
const router = express.Router();
const jogadorController = require('../controllers/jogadorController');
const { requireAuth } = require('../middlewares/auth');
const validate = require('../middlewares/validate');
const { create } = require('../schemas/jogador.schema');

router.get('/', requireAuth, jogadorController.getAll);
router.post('/', validate(create), jogadorController.create);

module.exports = router;
