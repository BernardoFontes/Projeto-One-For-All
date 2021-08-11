CREATE VIEW faturamento_atual AS SELECT MIN(p.plano_price) AS "faturamento_minimo", 
MAX(p.plano_price) AS "faturamento_maximo",
ROUND(AVG(p.plano_price),2) AS "faturamento_medio",
SUM(p.plano_price) AS "faturamento_total"
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.plano AS p
ON u.plano_id = p.plano_id; 
