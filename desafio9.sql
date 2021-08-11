USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(in artista_name varchar(100))
BEGIN
    SELECT artista_name AS 'artista', al.album_name AS 'album' FROM album AS al
    INNER JOIN artistas AS ar
    ON ar.artista_name = artista_name AND  al.artista_id = ar.artista_id
    GROUP BY al.album_name
    ORDER BY artista;
END $$
DELIMITER ; 
