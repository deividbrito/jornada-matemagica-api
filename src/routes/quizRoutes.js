const express = require('express');
const router = express.Router();
const quizController = require('../controllers/quizController');
const { requireAuth, optionalAuth } = require('../middlewares/auth');
const validate = require('../middlewares/validate');
const { randomQuery, create } = require('../schemas/quiz.schema');

router.get('/random', optionalAuth, validate(randomQuery, 'query'), quizController.getRandom);
router.get('/', requireAuth, quizController.getAll);
router.get('/:id', requireAuth, quizController.getById);
router.post('/', requireAuth, validate(create), quizController.create);

module.exports = router;
