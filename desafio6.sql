SELECT 
    ROUND(MIN(pl.valor_plano), 2) AS faturamento_minimo,
    ROUND(MAX(pl.valor_plano), 2) AS faturamento_maximo,
	ROUND(AVG(valor_plano), 2) AS faturamento_medio,
    ROUND(SUM(valor_plano), 2) AS faturamento_total
FROM
    SpotifyClone.Planos AS pl
        INNER JOIN
    SpotifyClone.Usuarios AS us ON us.plano_id = pl.plano_id;