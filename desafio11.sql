SELECT  cancao AS nome_musica,
CASE 
	WHEN RIGHT(cancao, 7) = 'Streets' THEN REPLACE(cancao, 'Streets', 'Code Review')
    WHEN RIGHT(cancao, 7) = 'Her Own' THEN REPLACE(cancao, 'Her Own', 'Trybe')
    WHEN RIGHT(cancao, 10) = 'Inner Fire' THEN REPLACE(cancao, 'Inner Fire', 'Project')
    WHEN RIGHT(cancao, 5) = 'Silly' THEN REPLACE(cancao, 'Silly', 'Nice')
    WHEN RIGHT(cancao, 6) = 'Circus' THEN  REPLACE(cancao, 'Circus', 'Pull Request')
    ELSE cancao
END AS novo_nome
FROM
    SpotifyClone.Cancoes
    WHERE cancao LIKE '%Streets'
    OR cancao LIKE '%Her Own'
    OR cancao LIKE '%Inner Fire'
    OR cancao LIKE '%Silly'
    OR cancao LIKE '%Circus'
    ORDER BY nome_musica;