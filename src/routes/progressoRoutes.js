const express = require('express');
const router = express.Router();
const progressoController = require('../controllers/progressoController');
const { requireAuth } = require('../middlewares/auth');
const { requireSessionOwnership } = require('../middlewares/ownership');
const validate = require('../middlewares/validate');
const { save } = require('../schemas/progresso.schema');

router.get(
  '/:id_sessao',
  requireAuth,
  requireSessionOwnership('id_sessao'),
  progressoController.getBySessao
);

router.post(
  '/:id_sessao',
  requireAuth,
  requireSessionOwnership('id_sessao'),
  validate(save),
  progressoController.saveBySessao
);

module.exports = router;
