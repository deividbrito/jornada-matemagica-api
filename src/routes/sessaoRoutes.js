const express = require('express');
const router = express.Router();
const sessaoController = require('../controllers/sessaoController');
const { requireAuth } = require('../middlewares/auth');
const { requireSelfUser } = require('../middlewares/ownership');

router.get('/:id_usuario', requireAuth, requireSelfUser('id_usuario'), sessaoController.getAllByUsuario);
router.post('/', requireAuth, sessaoController.create);

module.exports = router;
