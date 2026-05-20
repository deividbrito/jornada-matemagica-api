const express = require('express');
const router = express.Router();
const assuntoController = require('../controllers/assuntoController');
const { requireAuth } = require('../middlewares/auth');

// GET é público (lista de assuntos é conteúdo do jogo, não dado pessoal).
router.get('/', assuntoController.getAll);

// Criação só com auth (cadastro de conteúdo).
router.post('/', requireAuth, assuntoController.create);

module.exports = router;
