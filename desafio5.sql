CREATE VIEW top_2_hits_do_momento AS SELECT m.musica_name AS 'cancao', COUNT(*) AS 'reproducoes'
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.musicas AS m
ON h.musica_id = m.musica_id
GROUP BY h.musica_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;