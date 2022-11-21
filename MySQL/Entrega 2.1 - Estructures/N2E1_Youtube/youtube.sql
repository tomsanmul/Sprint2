DROP DATABASE IF EXISTS YOUTUBE;

CREATE DATABASE IF NOT EXISTS `youtube`;

USE `youtube`;

DROP TABLE IF EXISTS `usuari`;

CREATE TABLE
    `usuari` (
        `ID_Usuari` int NOT NULL AUTO_INCREMENT,
        `NomUsuari` varchar(45) DEFAULT NULL,
        `Password` varchar(45) DEFAULT NULL,
        `E-mail` varchar(100) DEFAULT NULL,
        `DataNaixament` date DEFAULT NULL,
        `Sexe` enum('Home', 'Dona') DEFAULT NULL,
        `CP` varchar(12) DEFAULT NULL,
        `Pais` varchar(45) DEFAULT NULL,
        PRIMARY KEY (`ID_Usuari`)
    );

DROP TABLE IF EXISTS `videos`;

CREATE TABLE
    `videos` (
        `id_Video` int NOT NULL AUTO_INCREMENT,
        `id_usuari` int DEFAULT NULL,
        `titol` varchar(45) DEFAULT NULL,
        `nom_Arxiu` varchar(45) DEFAULT NULL,
        `descripcio` varchar(45) DEFAULT NULL,
        `grandaria` bigint DEFAULT NULL,
        `durada` int DEFAULT NULL,
        `data` datetime DEFAULT NULL,
        `thumbnail` varchar(45) DEFAULT NULL,
        `reproduccions` int DEFAULT NULL,
        `estat` tinyint DEFAULT NULL,
        PRIMARY KEY (`id_Video`),
        FOREIGN KEY (`id_usuari`) REFERENCES `usuari`(`id_usuari`)
    );

DROP TABLE IF EXISTS `canal`;

CREATE TABLE
    `canal` (
        `id_canal` int NOT NULL AUTO_INCREMENT,
        `id_usuari` int DEFAULT NULL,
        `id_video` int DEFAULT NULL,
        `nom` varchar(45) DEFAULT NULL,
        `descripcio` varchar(255) DEFAULT NULL,
        `data` datetime DEFAULT NULL,
        PRIMARY KEY (`id_canal`),
        FOREIGN KEY (`id_usuari`) REFERENCES `usuari`(`id_usuari`),
        FOREIGN KEY (`id_video`) REFERENCES `videos`(`id_video`)
    );

DROP TABLE IF EXISTS `comentaris`;

CREATE TABLE
    `comentaris` (
        `id_comentari` int NOT NULL AUTO_INCREMENT,
        `id_usuari` int DEFAULT NULL,
        `id_video` int DEFAULT NULL,
        `comentari` varchar(255) DEFAULT NULL,
        `data` datetime DEFAULT NULL,
        PRIMARY KEY (`id_comentari`),
        FOREIGN KEY (`id_usuari`) REFERENCES `usuari`(`id_usuari`),
        FOREIGN KEY (`id_video`) REFERENCES `videos`(`id_video`)
    );

DROP TABLE IF EXISTS `historial_comentaris`;

CREATE TABLE
    `historial_comentaris` (
        `id_historial_comentari` int NOT NULL AUTO_INCREMENT,
        `id_comentari` int DEFAULT NULL,
        `id_usuari` int DEFAULT NULL,
        `estat` varchar(20) DEFAULT NULL,
        `data` datetime DEFAULT NULL,
        PRIMARY KEY (`id_historial_comentari`),
        FOREIGN KEY (`id_comentari`) REFERENCES `comentaris`(`id_comentari`),
        FOREIGN KEY (`id_usuari`) REFERENCES `usuari`(`id_usuari`)
    );

DROP TABLE IF EXISTS `etiquetas`;

CREATE TABLE
    `etiquetas` (
        `id_etiqueta` int NOT NULL AUTO_INCREMENT,
        `id_video` int DEFAULT NULL,
        `id_usuari` int DEFAULT NULL,
        `nom` varchar(128) DEFAULT NULL,
        `data` datetime DEFAULT NULL,
        PRIMARY KEY (`id_etiqueta`),
        FOREIGN KEY (`id_video`) REFERENCES `videos`(`id_video`),
        FOREIGN KEY (`id_usuari`) REFERENCES `usuari`(`id_usuari`)
    );

DROP TABLE IF EXISTS `historial_videos`;

CREATE TABLE
    `historial_videos` (
        `id_historial_video` int NOT NULL AUTO_INCREMENT,
        `id_video` int DEFAULT NULL,
        `id_usuari` int DEFAULT NULL,
        `estat` varchar(20) DEFAULT NULL,
        `data` datetime DEFAULT NULL,
        PRIMARY KEY (`id_historial_video`),
        FOREIGN KEY (`id_video`) REFERENCES `videos`(`id_video`),
        FOREIGN KEY (`id_usuari`) REFERENCES `usuari`(`id_usuari`)
    );

DROP TABLE IF EXISTS `like_dislike_comentaris`;

CREATE TABLE
    `like_dislike_comentaris` (
        `id_like_dislike_comentari` int NOT NULL,
        `id_usuari` int DEFAULT NULL,
        `id_comentari` int DEFAULT NULL,
        `like_o_dislike_comentari` enum('like', 'dislike') DEFAULT NULL,
        `date` datetime DEFAULT NULL,
        PRIMARY KEY (`id_like_dislike_comentari`),
        FOREIGN KEY (`id_usuari`) REFERENCES `usuari`(`id_usuari`),
        FOREIGN KEY (`id_comentari`) REFERENCES `comentaris`(`id_comentari`)
    );

DROP TABLE IF EXISTS `playlist`;

CREATE TABLE
    `playlist` (
        `id_playlist` int NOT NULL AUTO_INCREMENT,
        `id_video` int DEFAULT NULL,
        `id_usuari` int DEFAULT NULL,
        `nom` varchar(45) DEFAULT NULL,
        `data` datetime DEFAULT NULL,
        `estat` varchar(12) DEFAULT NULL,
        PRIMARY KEY (`id_playlist`),
        FOREIGN KEY (`id_video`) REFERENCES `videos`(`id_video`),
        FOREIGN KEY (`id_usuari`) REFERENCES `usuari`(`id_usuari`)
    );

DROP TABLE IF EXISTS `usuari_suscripcions`;

CREATE TABLE
    `usuari_suscripcions` (
        `id_usuari_suscripcions` int NOT NULL AUTO_INCREMENT,
        `id_usuari` int DEFAULT NULL,
        `id_canal` int DEFAULT NULL,
        PRIMARY KEY (`id_usuari_suscripcions`),
        FOREIGN KEY (`id_usuari`) REFERENCES `usuari`(`id_usuari`),
        FOREIGN KEY (`id_canal`) REFERENCES `canal`(`id_canal`)
    );

INSERT INTO `usuari`
VALUES (
        1,
        'Tomas',
        '123456',
        'tomas@gmail.com',
        '1988-10-20',
        'Home',
        '08012',
        'España'
    ), (
        2,
        'Maria',
        '654321',
        'maria@gmail.com',
        '1999-09-12',
        'Dona',
        '28809',
        'España'
    ), (
        3,
        'Carlos',
        'a1s2d3',
        'carlos@gmail.com',
        '2000-06-04',
        'Home',
        '19273',
        'España'
    );

INSERT INTO `videos`
VALUES (
        1,
        1,
        'video_gos',
        'gos.avi',
        'gos corrent per el camp',
        20,
        400,
        '2022-10-20 12:05:02',
        'gos.thumb',
        5,
        1
    ), (
        2,
        1,
        'video_gat',
        'gat.vi',
        'gat corrent per casa',
        14,
        300,
        '2022-10-16 15:02:05',
        'gat.thumb',
        8,
        1
    ), (
        3,
        2,
        'video_coche ',
        'cotxe.avi',
        'cotxe demostracio',
        21,
        450,
        '2021-09-06 18:42:15',
        'cotxe.thumb',
        2,
        1
    );

INSERT INTO `historial_videos`
VALUES (
        1,
        1,
        1,
        '1',
        '2022-10-09 00:00:00'
    );

INSERT INTO `canal`
VALUES (
        1,
        1,
        1,
        'Canal d\'Animals',
        'Animals corrents',
        '2022-10-11 00:00:00'
    ), (
        2,
        2,
        3,
        'Canal Cotxes',
        'videos de cotxes',
        '2022-10-09 00:00:00'
    );

INSERT INTO `playlist`
VALUES (
        1,
        1,
        1,
        'Animals',
        '2022-10-10 00:00:00',
        '1'
    ), (
        2,
        3,
        2,
        'Cotxes',
        '2022-10-09 00:00:00',
        NULL
    );

INSERT INTO `etiquetas`
VALUES (
        1,
        1,
        1,
        'Primera etiqueta',
        '2022-10-10 00:00:00'
    ), (
        2,
        3,
        2,
        'Etiquetan video',
        '2022-10-09 00:00:00'
    );

INSERT INTO `comentaris`
VALUES (
        1,
        2,
        1,
        'Aquest video m\'agrada molt',
        '2022-10-09 00:00:00'
    ), (
        2,
        1,
        2,
        'Bon video!',
        '2022-10-07 00:00:00'
    );

INSERT INTO
    `historial_comentaris`
VALUES (
        1,
        1,
        1,
        '1',
        '2022-10-09 00:00:00'
    );

INSERT INTO
    `like_dislike_comentaris`
VALUES (
        1,
        1,
        1,
        'like',
        '2022-10-10 00:00:00'
    );

INSERT INTO `usuari_suscripcions` VALUES (1,2,1);