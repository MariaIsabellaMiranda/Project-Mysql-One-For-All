SELECT 
    art.artista, alb.album, COUNT(af.usuario_id) AS seguidores
FROM
    SpotifyClone.Artistas AS art
        INNER JOIN
    SpotifyClone.Albuns AS alb ON art.artista_id = alb.artista_id
        INNER JOIN
    SpotifyClone.Artistas_favoritos AS af ON art.artista_id = af.artista_id
GROUP BY art.artista, alb.album
ORDER BY seguidores DESC , art.artista ASC;