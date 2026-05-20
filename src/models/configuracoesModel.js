const db = require('../config/db');

exports.getByUsuarioId = (id_usuario) =>
  db.query('SELECT * FROM Configuracoes WHERE id_usuario = ?', [id_usuario]);

exports.createOrUpdate = (id_usuario, volume_musica, volume_efeitos, idioma) =>
  db.query(
    `INSERT INTO Configuracoes (id_usuario, volume_musica, volume_efeitos, idioma)
     VALUES (?, ?, ?, ?)
     ON DUPLICATE KEY UPDATE volume_musica = VALUES(volume_musica), volume_efeitos = VALUES(volume_efeitos), idioma = VALUES(idioma)`,
    [id_usuario, volume_musica, volume_efeitos, idioma]
  );
