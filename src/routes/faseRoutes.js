const express = require('express');
const router = express.Router();
const faseController = require('../controllers/faseController');
const { requireAuth } = require('../middlewares/auth');
const validate = require('../middlewares/validate');
const { listQuery, concluir } = require('../schemas/fase.schema');

router.get('/', requireAuth, validate(listQuery, 'query'), faseController.list);
router.post('/:codigo/concluir', requireAuth, validate(concluir), faseController.concluir);

module.exports = router;
