SELECT 
    us.usuario,
    COUNT(his.usuario_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(can.duracao_segundos) / 60, 2) AS total_minutos
FROM
    SpotifyClone.Usuarios AS us
        INNER JOIN
    SpotifyClone.Historico AS his ON his.usuario_id = us.usuario_id
        INNER JOIN
    SpotifyClone.Cancoes AS can ON can.cancao_id = his.cancao_id
    GROUP BY us.usuario_id
    ORDER BY us.usuario;