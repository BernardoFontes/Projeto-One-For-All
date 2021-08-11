CREATE VIEW cancoes_premium AS
    SELECT 
        (SELECT 
                m.musica_name
            FROM
                SpotifyClone.musicas AS m
            WHERE
                m.musica_id = h.musica_id) AS nome,
        COUNT(*) AS reproducoes
    FROM
        SpotifyClone.historico AS h
    WHERE
        h.user_id IN (SELECT 
                u.user_id
            FROM
                SpotifyClone.usuario AS u
            WHERE
                u.plano_id IN (SELECT 
                        p.plano_id
                    FROM
                        SpotifyClone.plano AS p
                    WHERE
                        p.plano_name IN ('familiar' , 'universitário')))
    GROUP BY h.musica_id
    ORDER BY nome; 
