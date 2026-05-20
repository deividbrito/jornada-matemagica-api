const express = require('express');
const router = express.Router();
const feedbackController = require('../controllers/feedbackController');
const { requireAuth } = require('../middlewares/auth');

// GET de feedback é conteúdo público (explicação pedagógica).
router.get('/:id_quiz', feedbackController.getByQuizId);

// Criação requer auth.
router.post('/', requireAuth, feedbackController.create);

module.exports = router;
