CREATE VIEW historico_reproducao_usuarios AS
SELECT user_name AS usuario, musica_name AS nome
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.usuario AS u ON h.user_id = u.user_id
INNER JOIN SpotifyClone.musicas AS m ON h.musica_id = m.musica_id 
ORDER BY usuario, nome;