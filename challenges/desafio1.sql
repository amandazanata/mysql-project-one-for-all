DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

-- plano
CREATE TABLE IF NOT EXISTS plano (
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_plano VARCHAR(255) NOT NULL,
    valor DECIMAL(3, 2) NOT NULL
) ENGINE = InnoDB;

--artista
CREATE TABLE IF NOT EXISTS artista (
    artista_id INT NOT NULL AUTO_INCREMENT,
    nome_artista VARCHAR(255) NOT NULL,
    PRIMARY KEY (artista_id)
) ENGINE = InnoDB;

-- album
CREATE TABLE IF NOT EXISTS album (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_album VARCHAR(255) NOT NULL,
    artista_id INT NOT NULL,
    lancamento_ano INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES artista (artista_id)
) ENGINE = InnoDB;

-- musicas
CREATE TABLE IF NOT EXISTS musicas (
    cancao_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_cancao VARCHAR(255) NOT NULL,
    duracao_segundos INT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES album (album_id)
) ENGINE = InnoDB;

-- usuario
CREATE TABLE IF NOT EXISTS usuario (
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_usuario VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    data_assinatura DATETIME NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES plano (plano_id)
) ENGINE = InnoDB;

-- reproducoes
CREATE TABLE IF NOT EXISTS reproducoes (
    PRIMARY KEY (usuario_id, cancao_id),
    usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    data_reproducao DATETIME NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
    FOREIGN KEY (cancao_id) REFERENCES cancao (cancao_id)
) ENGINE = InnoDB;

-- seguindo
CREATE TABLE IF NOT EXISTS seguindo (
    PRIMARY KEY (usuario_id, artista_id),
    artista_id INT NOT NULL,
    usuario_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
    FOREIGN KEY (artista_id) REFERENCES artista (artista_id)
) ENGINE = InnoDB;

-- plano
INSERT INTO plano (nome_plano, valor)
VALUES
    ('gratuito', 0),
    ('familiar', 7.99),
    ('universitário', 5.99),
    ('pessoal', 6.99);

-- artista
INSERT INTO artista (nome_artista)
VALUES
    ('Beyoncé'),
    ('Queen'),
    ('Elis Regina'),
    ('Baco Exu do Blues'),
    ('Blind Guardian'),
    ('Nina Simone');

-- album
INSERT INTO album (nome_album, lancamento_ano, artista_id)
VALUES
    ('Renaissance', 2022, 1),
    ('Jazz', 1978, 2),
    ('Hot Space', 1982, 2),
    ('Falso Brilhante', 1998, 3),
    ('Vento de Maio', 2001, 3),
    ('QVVJFA?', 2003, 4),
    ('Somewhere Far Beyond', 2007, 5),
    ('I Put A Spell On You', 2012, 6);

-- musicas
INSERT INTO musicas (nome_cancao, duracao_segundos, album_id)
VALUES
    ('BREAK MY SOUL', 279, 1),
    (`VIRGO'S GROOVE`, 369, 1),
    ('ALIEN SUPERSTAR', 116, 1),
    (`Don't Stop Me Now`, 203, 2),
    ('Under Pressure', 152, 3),
    ('Como Nossos Pais', 105, 4),
    ('O Medo de Amar é o Medo de Ser Livre', 207, 5),
    ('Samba em Paris', 267, 6),
    (`The Bard's Song`, 244, 7),
    ('Feeling Good', 100, 8);

-- usuario
INSERT INTO usuario (nome_usuario, idade, data_assinatura, plano_id)
VALUES
    ('Barbara Liskov', 82, '2019-10-20', 1),
    ('Robert Cecil Martin', 58, '2017-01-06', 1),
    ('Ada Lovelace', 37, '2017-12-30', 2),
    ('Martin Fowler', 46, '2017-01-17', 2),
    ('Sandi Metz', 58, '2018-04-29', 2),
    ('Paulo Freire', 19, '2018-02-14', 3),
    ('Bell Hooks', 26, '2018-01-05', 3),
    ('Christopher Alexander', 85, '2019-06-05', 4),
    ('Judith Butler', 45, '2020-05-13', 4),
    ('Jorge Amado', 58, '2017-02-17', 4);

--reproducoes
INSERT INTO reproducoes (cancao_id, usuario_id, data_reproducao)
VALUES
    (8, 1, '2022-02-28 10:45:55'),
    (2, 1, '2020-05-02 05:30:35'),
    (10, 1, '2020-03-06 11:22:33'),
    (10, 2, '2022-08-05 08:05:17'),
    (7, 2, '2020-01-02 07:40:33'),
    (10, 3, '2020-11-13 16:55:13'),
    (2, 3, '2020-12-05 18:38:30'),
    (8, 4, '2021-08-15 17:10:10'),
    (8, 5, '2022-01-09 01:44:33'),
    (5, 5, '2020-08-06 15:23:43'),
    (7, 6, '2017-01-24 00:31:17'),
    (1, 6, '2017-10-12 12:35:20'),
    (4, 7, '2011-12-15 22:30:49'),
    (4, 8, '2012-03-17 14:56:41'),
    (9, 9, '2022-02-24 21:14:22'),
    (3, 10, '2015-12-13 08:30:22');

-- seguindo
INSERT INTO seguindo (usuario_id, artista_id)
VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (4, 4),
    (5, 5),
    (5, 6),
    (6, 6),
    (6, 1),
    (7, 6),
    (9, 3),
    (10, 2);
