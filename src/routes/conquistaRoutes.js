const express = require('express');
const router = express.Router();
const conquistaController = require('../controllers/conquistaController');
const { requireAuth } = require('../middlewares/auth');

// Catálogo é público (conteúdo do jogo, não dado pessoal)
router.get('/catalogo', conquistaController.listCatalogo);

// "Minhas conquistas" exige auth
router.get('/minhas', requireAuth, conquistaController.listMinhas);

module.exports = router;
