CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE plano (
plano_id INT AUTO_INCREMENT PRIMARY KEY,
plano_name VARCHAR(50) NOT NULL,
plano_price DECIMAL(5, 2) NOT NULL
);

INSERT INTO plano
VALUES
(1, "gratuito", 0.00),
(2, "familiar", 7.99),
(3, "universitário", 5.99);

CREATE TABLE usuario (
user_id INT AUTO_INCREMENT PRIMARY KEY,
user_name VARCHAR(50) NOT NULL,
user_age INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES plano (plano_id)
);

INSERT INTO usuario
VALUES
(1, "Thati", 23, 1),
(2, "Cintia", 35, 2),
(3, "Bill", 20, 3),
(4, "Roger", 45, 1);

CREATE TABLE artistas (
artista_id INT AUTO_INCREMENT PRIMARY KEY,
artista_name VARCHAR(50) NOT NULL
);

INSERT INTO artistas
VALUES
(1, "Walter Phoenix"),
(2, "Peter Strong"),
(3, "Lance Day"),
(4, "Freedie Shannon");

CREATE TABLE album (
album_id INT AUTO_INCREMENT PRIMARY KEY,
album_name VARCHAR(50) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
);

INSERT INTO album
VALUES
(1, "Envious", 1),
(2, "Exuberant", 1),
(3, "Hallowed Steam", 2),
(4, "Incandescent", 3),
(5, "Temporary Culture", 4);

CREATE TABLE musicas (
musica_id INT AUTO_INCREMENT PRIMARY KEY,
musica_name VARCHAR(50) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES album (album_id)
);

INSERT INTO musicas
VALUES
(1, "Soul For Us", 1),
(2, "Reflections Of Magic", 1),
(3, "Dance With Her Own", 1),
(4, "Troubles Of My Inner Fire", 2),
(5, "Time Fireworks", 2),
(6, "Magic Circus", 3),
(7, "Honey, So Do I", 3),
(8, "Sweetie, Let's Go Wild", 3),
(9, "She Knows", 3),
(10, "Fantasy For Me", 4),
(11, "Celebration Of More", 4),
(12, "Rock His Everything", 4),
(13, "Home Forever", 4),
(14, "Diamond Power", 4),
(15, "Honey, Let's Be Silly", 4),
(16, "Thang Of Thunder", 5),
(17, "Words Of Her Life", 5),
(18, "Without My Streets", 5);

CREATE TABLE historico (
user_id INT NOT NULL,
musica_id INT NOT NULL,
PRIMARY KEY (user_id , musica_id),
FOREIGN KEY (user_id) REFERENCES usuario (user_id),
FOREIGN KEY (musica_id) REFERENCES musicas (musica_id)
);

INSERT INTO historico
VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 13),
(2, 17),
(2, 2),
(2, 15),
(3, 4),
(3, 16),
(3, 6),
(4, 3),
(4, 18),
(4, 11);

CREATE TABLE seguidores (
user_id INT NOT NULL,
artista_id INT NOT NULL,
PRIMARY KEY (user_id , artista_id),
FOREIGN KEY (user_id) REFERENCES usuario (user_id),
FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
);

INSERT INTO seguidores
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);