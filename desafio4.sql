SELECT 
    us.usuario,
    IF (MAX(YEAR(his.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM
    SpotifyClone.Usuarios AS us
        INNER JOIN
    SpotifyClone.Historico AS his ON his.usuario_id = us.usuario_id
    GROUP BY  us.usuario
    ORDER BY us.usuario;