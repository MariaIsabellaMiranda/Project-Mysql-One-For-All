SELECT 
    can.cancao,
    COUNT(his.usuario_id) AS reproducoes
FROM
    SpotifyClone.Cancoes AS can
        INNER JOIN
    SpotifyClone.Historico AS his ON his.cancao_id = can.cancao_id
    GROUP BY  his.cancao_id
    ORDER BY reproducoes DESC, can.cancao ASC
    LIMIT 2;