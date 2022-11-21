DROP DATABASE IF EXISTS `pizzeria`;

CREATE DATABASE
    IF NOT EXISTS `pizzeria`
    /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */
    /*!80016 DEFAULT ENCRYPTION='N' */
;

USE `pizzeria`;

DROP TABLE IF EXISTS `botiga`;

CREATE TABLE
    `botiga` (
        `ID_Botiga` int NOT NULL AUTO_INCREMENT,
        `Nom` varchar(45) DEFAULT NULL,
        `Adreça` varchar(128) DEFAULT NULL,
        `CP` varchar(20) DEFAULT NULL,
        `Localitat` varchar(60) DEFAULT NULL,
        `Província` varchar(45) DEFAULT NULL,
        PRIMARY KEY (`ID_Botiga`)
    ) ENGINE = InnoDB AUTO_INCREMENT = 9 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `categoriapizza`;

CREATE TABLE
    `categoriapizza` (
        `ID_CategoriaPizza` int NOT NULL AUTO_INCREMENT,
        `Categoria` varchar(45) DEFAULT NULL,
        PRIMARY KEY (`ID_CategoriaPizza`)
    ) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `client`;

CREATE TABLE
    `client` (
        `ID_Client` int NOT NULL AUTO_INCREMENT,
        `Nom` varchar(45) DEFAULT NULL,
        `Cognoms` varchar(45) DEFAULT NULL,
        `Adreça` varchar(128) DEFAULT NULL,
        `CP` varchar(12) DEFAULT NULL,
        `Localitat` varchar(90) DEFAULT NULL,
        `Provincia` varchar(45) DEFAULT NULL,
        `Telefon` varchar(20) DEFAULT NULL,
        PRIMARY KEY (`ID_Client`)
    ) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `comanda`;

CREATE TABLE
    `comanda` (
        `ID_Comanda` int NOT NULL AUTO_INCREMENT,
        `ID_Client` int DEFAULT NULL,
        `ID_Botiga` int DEFAULT NULL,
        `ID_Empleat` int DEFAULT NULL,
        `TipusEntrega` varchar(25) DEFAULT NULL,
        `DataComanda` datetime DEFAULT NULL,
        `PreuTotal` float DEFAULT NULL,
        PRIMARY KEY (`ID_Comanda`)
    ) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `detallcomanda`;

CREATE TABLE
    `detallcomanda` (
        `ID_DetallComanda` int NOT NULL AUTO_INCREMENT,
        `ID_Comanda` int DEFAULT NULL,
        `ID_Producte` int DEFAULT NULL,
        `Quantitat` int DEFAULT NULL,
        `Preu` float DEFAULT NULL,
        PRIMARY KEY (`ID_DetallComanda`)
    ) ENGINE = InnoDB AUTO_INCREMENT = 12 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `empleat`;

CREATE TABLE
    `empleat` (
        `ID_Empleat` int NOT NULL AUTO_INCREMENT,
        `ID_Botiga` int DEFAULT NULL,
        `TipusEmpleat` enum(
            'PersonaldeBotiga',
            'GerentBotiga',
            'Cuiner',
            'Repartidor'
        ) DEFAULT NULL,
        `Nom` varchar(45) DEFAULT NULL,
        `Cognoms` varchar(45) DEFAULT NULL,
        `NIF` varchar(12) DEFAULT NULL,
        `Telefon` varchar(20) DEFAULT NULL,
        PRIMARY KEY (`ID_Empleat`)
    ) ENGINE = InnoDB AUTO_INCREMENT = 11 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `producte`;

CREATE TABLE
    `producte` (
        `ID_Producte` int NOT NULL,
        `TipusProducte` enum(
            'Pizza',
            'Beguda',
            'Hamburguesa'
        ) DEFAULT NULL,
        `ID_CategoriaPizza` int DEFAULT NULL,
        `Nom` varchar(45) DEFAULT NULL,
        `Descripcio` varchar(256) DEFAULT NULL,
        `Imatge` varchar(45) DEFAULT NULL,
        `Preu` float DEFAULT NULL,
        PRIMARY KEY (`ID_Producte`)
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

LOCK TABLES `botiga` WRITE;

INSERT INTO `botiga`
VALUES (
        1,
        'Pi',
        'Pi i Maragall 34',
        '08017',
        'Barcelona',
        'Barcelona'
    ), (
        2,
        'Sardenya',
        'Sardenya 234',
        '08013',
        'Barcelona',
        'Barcelona'
    ), (
        3,
        'Paris',
        'Paris 102',
        '08014',
        'Barcelona',
        'Barcelona'
    ), (
        4,
        'Rambla',
        'Rambla de Catalunya 4',
        '08009',
        'Barcelona',
        'Barcelona'
    ), (
        5,
        'Gran',
        'Gran de Gracia 45',
        '08011',
        'Badalona',
        'Barcelona'
    ), (
        6,
        'Napols',
        'Napols 86',
        '08028',
        'SantaColoma',
        'Barcelona'
    ), (
        7,
        'Carrilet',
        'Av. Carrilet 44',
        '08032',
        'Hospitalet',
        'Barcelona'
    ), (
        8,
        'Cerdanyola',
        'Altimira 34',
        '08044',
        'Cerdanyola del Valles ',
        'Barcelona'
    );

UNLOCK TABLES;

LOCK TABLES `client` WRITE;

INSERT INTO `client`
VALUES (
        1,
        'Tomas',
        'Sans Mulero',
        'Gran Via 435, 2-2',
        '08010',
        'Barcelona',
        'Barcelona',
        '678564221'
    ), (
        2,
        'Marta',
        'Valdesca Perez',
        'Sicilia 89, Pral 2',
        '08013',
        'Barcelona',
        'Barcelona',
        '687698766'
    ), (
        3,
        'Agata',
        'Ruiz Prada',
        'Bruc 45, 4-5',
        '08014',
        'Barcelona',
        'Barcelona',
        '666777888'
    ), (
        4,
        'Angel',
        'Galera Fernandez',
        'Girona 34, 4-5',
        '08015',
        'Barcelona',
        'Barcelona',
        '756999787'
    ), (
        5,
        'Sonia',
        'Vazquez',
        'Napoles 33, 2-1',
        '08029',
        'Santa Coloma de Gramanet',
        'Barcelona',
        '648111222'
    ), (
        6,
        'Ramon',
        'Turró Santana',
        'Foc 45, 1-1',
        '08033',
        'Hospitalet',
        'Barcelona',
        '677446553'
    );

UNLOCK TABLES;

LOCK TABLES `categoriapizza` WRITE;

INSERT INTO `categoriapizza`
VALUES (1, 'Petita'), (2, 'Mitjana'), (3, 'Gran'), (4, 'Superior'), (5, 'Supreme');

UNLOCK TABLES;

LOCK TABLES `comanda` WRITE;

INSERT INTO `comanda`
VALUES (
        1,
        1,
        1,
        1,
        'botiga',
        '2022-10-19 17:45:13',
        22
    ), (
        2,
        2,
        1,
        4,
        'repartiment',
        '2022-10-21 19:34:11',
        13
    ), (
        3,
        5,
        1,
        4,
        'repartiment',
        '2022-10-20 12:05:02',
        31
    ), (
        4,
        3,
        2,
        6,
        'botiga',
        '2022-10-22 14:23:12',
        11
    ), (
        5,
        4,
        1,
        1,
        'botiga',
        '2022-10-20 12:34:23',
        10
    ), (
        6,
        6,
        2,
        10,
        'repartiment',
        '2022-10-19 18:44:37',
        6
    );

UNLOCK TABLES;

LOCK TABLES `detallcomanda` WRITE;

INSERT INTO `detallcomanda`
VALUES (1, 1, 1, 1, 10), (2, 1, 4, 2, 6), (3, 1, 6, 1, 6), (4, 2, 3, 1, 10), (5, 2, 4, 1, 3), (6, 3, 2, 1, 11), (7, 3, 5, 1, 4), (8, 3, 7, 2, 16), (9, 4, 2, 1, 11), (10, 5, 1, 1, 10), (11, 6, 6, 1, 6);

UNLOCK TABLES;

LOCK TABLES `empleat` WRITE;

INSERT INTO `empleat`
VALUES (
        1,
        1,
        'PersonaldeBotiga',
        'Javier',
        'Miranda Vives',
        '34675887E',
        '674476632'
    ), (
        2,
        1,
        'GerentBotiga',
        'Jordi',
        'Giralt Franc',
        '43675476R',
        '675887434'
    ), (
        3,
        1,
        'Cuiner',
        'Tomas',
        'Sanchez Martinez',
        '46757445A',
        '756574463'
    ), (
        4,
        1,
        'Repartidor',
        'Toni',
        'Setmenat Turró',
        '37645647Y',
        '668754733'
    ), (
        5,
        1,
        'Repartidor',
        'Miquel',
        'Serrat Galdós',
        '475665745F',
        '678677867'
    ), (
        6,
        2,
        'PersonaldeBotiga',
        'Santi',
        'Santillana Mir',
        '12653465D',
        '667785544'
    ), (
        7,
        2,
        'PersonaldeBotiga',
        'Marc',
        'Sans Baró',
        '276t64577A',
        '644789435'
    ), (
        8,
        2,
        'GerentBotiga',
        'Ramon',
        'Fernandez Pena',
        '463766332K',
        '714367587'
    ), (
        9,
        2,
        'Cuiner',
        'Merche',
        'Ruiz Mesa',
        '346856574F',
        '678456767'
    ), (
        10,
        2,
        'Repartidor',
        'David',
        'Rodriguez Perez',
        '374576547D',
        '666777444'
    );

UNLOCK TABLES;

LOCK TABLES `producte` WRITE;

INSERT INTO `producte`
VALUES (
        1,
        'Pizza',
        1,
        'Pizza 4  formatges',
        'Pizza cremosa i molt bona',
        'pizza1.jpg',
        10
    ), (
        2,
        'Pizza',
        2,
        'Pizza 4 estacions',
        'Pizza cremosa i molt bona',
        'pizza2.jpg',
        11
    ), (
        3,
        'Pizza',
        3,
        'Pizza Barbacoa',
        'Pizza cremosa i molt bona',
        'pizza3.jpg',
        12
    ), (
        4,
        'Beguda',
        NULL,
        'CocaCola Botella 2L',
        'Beguda ensucrada de cola gran',
        'cola1.jpg',
        3
    ), (
        5,
        'Beguda',
        NULL,
        'CocaCola Llauna',
        'Beguda ensucrada de col',
        'cola2.jpg',
        4
    ), (
        6,
        'Hamburguesa',
        NULL,
        'Hamburguesa Divina',
        'Hamburguesa  deliciosa per lleparse els dits',
        'burguer1.jpg',
        6
    ), (
        7,
        'Hamburguesa',
        NULL,
        'Hamburguesa ExtraChilli',
        'Hamburguesa molt picant',
        'burguer2.jpg',
        8
    );

UNLOCK TABLES;