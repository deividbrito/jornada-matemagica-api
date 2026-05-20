// controllers/configuracoesController.js
const configuracoesModel = require('../models/configuracoesModel');

// GET /api/configuracoes/:id_usuario
// Middleware requireSelfUser garante posse.
exports.getByUsuarioId = async (req, res) => {
  try {
    const [rows] = await configuracoesModel.getByUsuarioId(req.params.id_usuario);
    res.json(rows[0] || null);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// POST /api/configuracoes
// Não aceita id_usuario no body — usa sempre req.user.sub.
exports.save = async (req, res) => {
  const { volume_musica, volume_efeitos, idioma } = req.body;
  try {
    await configuracoesModel.createOrUpdate(req.user.sub, volume_musica, volume_efeitos, idioma);
    res.status(200).json({ message: 'Configurações salvas com sucesso' });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
