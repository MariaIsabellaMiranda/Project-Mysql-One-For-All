SELECT 
    COUNT(his.usuario_id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.Historico AS his
        INNER JOIN
    SpotifyClone.Usuarios AS us ON us.usuario_id = his.usuario_id
	WHERE us.usuario = 'Bill';