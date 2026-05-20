const express = require('express');
const router = express.Router();
const configuracoesController = require('../controllers/configuracoesController');
const { requireAuth } = require('../middlewares/auth');
const { requireSelfUser } = require('../middlewares/ownership');
const validate = require('../middlewares/validate');
const { save } = require('../schemas/configuracoes.schema');

router.get('/:id_usuario', requireAuth, requireSelfUser('id_usuario'), configuracoesController.getByUsuarioId);
router.post('/', requireAuth, validate(save), configuracoesController.save);

module.exports = router;
