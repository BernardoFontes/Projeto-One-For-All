DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(userid INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;

SELECT 
COUNT(*)
FROM
SpotifyClone.historico AS h
WHERE h.user_id = userid
INTO quantidade;
RETURN quantidade;

END $$
DELIMITER ;