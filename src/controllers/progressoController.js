// controllers/progressoController.js
const progressoModel = require('../models/progressoModel');

// Esta função está correta
exports.getBySessao = async (req, res) => {
  const { id_sessao } = req.params;

  try {
    const [rows] = await progressoModel.getBySessao(id_sessao);
    if (rows.length === 0) {
      // Isso pode acontecer se o authController falhar ao criar o progresso inicial
      return res.status(404).json({ message: "Nenhum progresso encontrado para esta sessão." });
    }
    
    // Agora sempre retornará 1 ou 0 linhas
    res.json(rows[0]); 
  } catch (err) {
    res.status(500).json({ error: "Erro ao buscar progresso: " + err.message });
  }
};

// ATUALIZADO: Substitui 'create', 'getById' e 'updateById'
// Esta função agora faz um "UPSERT" (Update ou Insert)
exports.saveBySessao = async (req, res) => {
  const { id_sessao } = req.params; // Pega o ID da sessão pela URL
  const { ponto_de_salvamento } = req.body; // Pega o JSON do body

  if (!ponto_de_salvamento) {
    return res.status(400).json({ error: "ponto_de_salvamento é obrigatório." });
  }

  try {
    // O model 'progressoModel.save' deve usar "INSERT ... ON DUPLICATE KEY UPDATE"
    const [result] = await progressoModel.save(id_sessao, ponto_de_salvamento);
    
    res.status(200).json({ message: "Progresso salvo com sucesso." });
  } catch (err) {
    res.status(500).json({ error: "Erro ao salvar progresso: " + err.message });
  }
};

/*
  OBS: As funções 'create', 'getById' e 'updateById'
  do seu arquivo original devem ser REMOVIDAS,
  pois 'saveBySessao' e 'getBySessao' cobrem toda a necessidade.
  
  Você precisará atualizar o seu 'progressoRoutes.js' para:
  
  router.get('/:id_sessao', progressoController.getBySessao);
  router.post('/:id_sessao', progressoController.saveBySessao); // Ou router.put(...)
*/