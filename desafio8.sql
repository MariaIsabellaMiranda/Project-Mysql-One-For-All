SELECT 
    art.artista,
    alb.album
FROM
    SpotifyClone.Artistas AS art
        INNER JOIN
    SpotifyClone.Albuns AS alb ON art.artista_id = alb.artista_id
	WHERE art.artista = 'Walter Phoenix'
    GROUP BY art.artista, alb.album
    ORDER BY alb.album;