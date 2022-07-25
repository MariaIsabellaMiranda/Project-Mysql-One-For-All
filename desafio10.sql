SELECT 
    can.cancao AS nome,
    COUNT(his.usuario_id) AS reproducoes
FROM
    SpotifyClone.Cancoes AS can
        INNER JOIN
    SpotifyClone.Historico AS his ON can.cancao_id = his.cancao_id
            INNER JOIN
    SpotifyClone.Usuarios AS us ON us.usuario_id = his.usuario_id
    WHERE us.plano_id IN (1, 4)
    GROUP BY can.cancao
    ORDER BY can.cancao;