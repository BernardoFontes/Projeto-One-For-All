CREATE VIEW top_3_artistas AS
    SELECT 
        a.artista_name AS artista,
        COUNT(s.artista_id) AS seguidores
    FROM
        SpotifyClone.seguidores s
            INNER JOIN
        SpotifyClone.artistas a ON a.artista_id = s.artista_id
    GROUP BY a.artista_name
    ORDER BY seguidores DESC , a.artista_name
    LIMIT 3;