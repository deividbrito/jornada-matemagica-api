const express = require('express');
const router = express.Router();
const authController = require('../controllers/authController');
const { requireAuth } = require('../middlewares/auth');
const validate = require('../middlewares/validate');
const { login } = require('../schemas/auth.schema');

router.post('/login', validate(login), authController.login);

// Re-hidrata a sessão a partir do Bearer token guardado em localStorage.
router.get('/me', requireAuth, authController.me);

module.exports = router;
