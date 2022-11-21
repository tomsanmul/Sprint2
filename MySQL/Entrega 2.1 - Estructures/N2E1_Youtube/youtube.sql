DROP DATABASE IF EXISTS YOUTUBE;

CREATE DATABASE
    IF NOT EXISTS `youtube`
    /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */
    /*!80016 DEFAULT ENCRYPTION='N' */
;

USE `youtube`;

DROP TABLE IF EXISTS `usuari`;

CREATE TABLE
    `usuari` (
        `ID_Usuari` int NOT NULL AUTO_INCREMENT,
        `NomUsuari` varchar(45) DEFAULT NULL,
        `Password` varchar(45) DEFAULT NULL,
        `E-mail` varchar(100) DEFAULT NULL,
        `DataNaixament` date DEFAULT NULL,
        `Sexe` varchar(25) DEFAULT NULL,
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
        `estat` varchar(15) DEFAULT NULL,
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