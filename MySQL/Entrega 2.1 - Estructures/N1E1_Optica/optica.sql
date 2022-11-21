DROP DATABASE IF EXISTS `optica`;

CREATE DATABASE IF NOT EXISTS `optica`;

USE `optica`;

DROP TABLE IF EXISTS `clients`;

CREATE TABLE
    `clients` (
        `ID_Client` int NOT NULL AUTO_INCREMENT,
        `Nom` varchar(45) DEFAULT NULL,
        `Adreça` varchar(120) DEFAULT NULL,
        `Ciutat` varchar(60) DEFAULT NULL,
        `Pais` varchar(50) DEFAULT NULL,
        `Telefon` varchar(25) DEFAULT NULL,
        `Fax` varchar(25) DEFAULT NULL,
        `NIF` varchar(20) DEFAULT NULL,
        `Referit` int DEFAULT NULL,
        PRIMARY KEY (`ID_Client`)
    );

DROP TABLE IF EXISTS `empleat`;

CREATE TABLE
    `empleat` (
        `ID_Empleat` int NOT NULL AUTO_INCREMENT,
        `Nom` varchar(45) DEFAULT NULL,
        PRIMARY KEY (`ID_Empleat`)
    );

DROP TABLE IF EXISTS `proveidor`;

CREATE TABLE
    `proveidor` (
        `ID_Proveidor` int NOT NULL AUTO_INCREMENT,
        `Nom` varchar(45) DEFAULT NULL,
        `Adreça` varchar(128) DEFAULT NULL,
        `CP` varchar(12) DEFAULT NULL,
        `Ciutat` varchar(60) DEFAULT NULL,
        `Telefon` varchar(20) DEFAULT NULL,
        `Fax` varchar(20) DEFAULT NULL,
        `NIF` varchar(20) DEFAULT NULL,
        PRIMARY KEY (`ID_Proveidor`)
    );

DROP TABLE IF EXISTS `ulleres`;

CREATE TABLE
    `ulleres` (
        `ID_Ulleres` int NOT NULL AUTO_INCREMENT,
        `ID_Proveidor` int NOT NULL,
        `Marca` varchar(45) DEFAULT NULL,
        `GraduacioVidreDret` float DEFAULT NULL,
        `GraduacioVidreEsquerre` float DEFAULT NULL,
        `Muntura` varchar(45) DEFAULT NULL,
        `ColorMontura` varchar(45) DEFAULT NULL,
        `ColorVidreDret` varchar(45) DEFAULT NULL,
        `ColorVidreEsquerra` varchar(45) DEFAULT NULL,
        PRIMARY KEY (`ID_Ulleres`),
        FOREIGN KEY (`ID_Proveidor`) REFERENCES `proveidor`(`ID_Proveidor`)
    );

DROP TABLE IF EXISTS `vendes`;

CREATE TABLE
    `vendes` (
        `ID_Venda` int NOT NULL AUTO_INCREMENT,
        `ID_Ulleres` int DEFAULT NULL,
        `ID_Client` int DEFAULT NULL,
        `ID_Empleat` int DEFAULT NULL,
        `DataVenda` date DEFAULT NULL,
        PRIMARY KEY (`ID_Venda`),
        FOREIGN KEY (`ID_Ulleres`) REFERENCES `ulleres`(`ID_Ulleres`),
        FOREIGN KEY (`ID_Client`) REFERENCES `clients`(`ID_Client`),
        FOREIGN KEY (`ID_Empleat`) REFERENCES `empleat`(`ID_Empleat`)
    );

INSERT INTO `clients`
VALUES (
        1,
        'Javier Ramirez',
        'Sicilia 320, Pral 2',
        'Barcelona',
        'España',
        '684563574',
        NULL,
        '46247583T',
        NULL
    ), (
        2,
        'Daniel Roura',
        'Napoles 44, 5 - 3 Esc A',
        'Badalona',
        'España',
        '723473754',
        NULL,
        '29457345R',
        1
    ), (
        3,
        'Tomas Sans',
        'Roger de Flor 88, 3-3A',
        'Barcelona',
        'España',
        '683658642',
        NULL,
        '42374375A',
        2
    ), (
        4,
        'Jaime Gómez',
        'Independcia 323, 2-2',
        'Barcelona',
        'España',
        '673744327',
        NULL,
        '39654876D',
        3
    ), (
        5,
        'Nuria Casas',
        'Roma 24, 1-1 ',
        'Santa Coloma de Gramanet',
        'España',
        '687345221',
        NULL,
        '32764567C',
        NULL
    );

INSERT INTO `empleat`
VALUES (1, 'Carlos Martinez'), (2, 'Alicia Sanchez'), (3, 'Laia Vivies'), (4, 'Ramon Cadarso');

INSERT INTO `proveidor`
VALUES (
        1,
        'Solvia S.L.',
        'c/ Mart 34, Bj',
        '08028',
        'Barcelona',
        '937365467',
        '687353276',
        '56436532T'
    ), (
        2,
        'MaxiGafas S.L.',
        'c/ Maresme 22, (Local)',
        '08019',
        'Barcelona',
        '938354678',
        '667884332',
        '58336543R'
    ), (
        3,
        'TodoGafas S.L.',
        'c/ Girona 34, Bj',
        '08013',
        'Barcelona',
        '938674632',
        '937785343',
        '46376557A'
    );

INSERT INTO `ulleres`
VALUES (
        1,
        1,
        'Ray-ban',
        2,
        2,
        'flotant',
        'blau',
        'verd',
        'verd'
    ), (
        2,
        3,
        'Oakley',
        1,
        1,
        'pasta',
        'negre',
        'vermell',
        'vermell'
    ), (
        3,
        1,
        'Ray-ban',
        2,
        2,
        'metàl·lica',
        'vermell',
        'blau ',
        'blau'
    ), (
        4,
        3,
        'Polaroid',
        1,
        1,
        'flotant',
        'negre',
        'groc',
        'groc'
    ), (
        5,
        2,
        'Polaroid',
        2,
        2,
        'pasta',
        'blanc',
        'lila',
        'lila'
    );

INSERT INTO `vendes`
VALUES (1, 2, 1, 3, '2022-10-17'), (2, 1, 3, 2, '2022-10-17'), (3, 4, 2, 3, '2022-10-18'), (4, 3, 4, 1, '2022-10-18'), (5, 4, 1, 2, '2022-10-19');