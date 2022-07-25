SELECT 
    COUNT(DISTINCT can.cancao_id) AS cancoes,
    COUNT(DISTINCT art.artista_id) AS artistas,
    COUNT(DISTINCT alb.album_id) AS albuns
FROM
    SpotifyClone.Albuns AS alb
        INNER JOIN
    SpotifyClone.Artistas AS art ON art.artista_id = alb.artista_id
        INNER JOIN
    SpotifyClone.Cancoes AS can ON can.album_id = alb.album_id;