db.botigues.drop();
db.botigues.insertMany(
    [
        {
          "_id": {
            "$oid": "300000000000000000000001"
          },
          "Nom": "Pi",
          "Adreça": "Pi i Maragall 34",
          "CP": "08012",
          "Localitat": "Barcelona",
          "Provincia": "Barcelona",
          "Empleats": [
            {
              "empleat_id": {
                "$oid": "400000000000000000000001"
              },
              "Nom": "Javier",
              "Cognmos": "Miranda Vives",
              "NIF": "34675887E",
              "Telefon": "674476632",
              "Tipus": "PersonaldeBotiga"
            },
            {
              "empleat_id": {
                "$oid": "400000000000000000000002"
              },
              "Nom": "Jordi",
              "Cognmos": "Giralt Franc",
              "NIF": "43675476R",
              "Telefon": "675887434",
              "Tipus": "GerentBotiga"
            },
            {
              "empleat_id": {
                "$oid": "400000000000000000000003"
              },
              "Nom": "Tomas",
              "Cognmos": "Sanchez Martinez",
              "NIF": "46757445A",
              "Telefon": "756574463",
              "Tipus": "Cuiner"
            },
            {
              "empleat_id": {
                "$oid": "400000000000000000000004"
              },
              "Nom": "Toni",
              "Cognmos": "Setmenat Turró",
              "NIF": "37645647Y",
              "Telefon": "668754733",
              "Tipus": "Repartidor"
            },
            {
              "empleat_id": {
                "$oid": "400000000000000000000005"
              },
              "Nom": "Miquel",
              "Cognmos": "Serrat Galdós",
              "NIF": "475665745F",
              "Telefon": "678677867",
              "Tipus": "Repartidor"
            }
          ]
        },
        {
          "_id": {
            "$oid": "300000000000000000000002"
          },
          "Nom": "Sardenya",
          "Adreça": "Sardenya 234",
          "CP": "08013",
          "Localitat": "Barcelona",
          "Provincia": "Barcelona",
          "Empleats": [
            {
              "empleat_id": {
                "$oid": "400000000000000000000006"
              },
              "Nom": "Santi",
              "Cognmos": "Santillana Mir",
              "NIF": "12653465D",
              "Telefon": "667785544",
              "Tipus": "PersonaldeBotiga"
            },
            {
              "empleat_id": {
                "$oid": "400000000000000000000007"
              },
              "Nom": "Marc",
              "Cognmos": "Sans Baró",
              "NIF": "276t64577A",
              "Telefon": "644789435",
              "Tipus": "PersonaldeBotiga"
            },
            {
              "empleat_id": {
                "$oid": "400000000000000000000008"
              },
              "Nom": "Ramon",
              "Cognmos": "Fernandez Pena",
              "NIF": "463766332K",
              "Telefon": "714367587",
              "Tipus": "GerentBotiga"
            },
            {
              "empleat_id": {
                "$oid": "400000000000000000000009"
              },
              "Nom": "Merche",
              "Cognmos": "Ruiz Mesa",
              "NIF": "346856574F",
              "Telefon": "678456767",
              "Tipus": "Cuiner"
            },
            {
              "empleat_id": {
                "$oid": "400000000000000000000010"
              },
              "Nom": "David",
              "Cognmos": "Rodriguez Perez",
              "NIF": "374576547D",
              "Telefon": "666777444",
              "Tipus": "Repartidor"
            }
          ]
        },
        {
          "_id": {
            "$oid": "300000000000000000000003"
          },
          "Nom": "Paris",
          "Adreça": "Paris 102",
          "CP": "08014",
          "Localitat": "Barcelona",
          "Provincia": "Barcelona",
          "Empleats": []
        },
        {
          "_id": {
            "$oid": "300000000000000000000004"
          },
          "Nom": "Rambla",
          "Adreça": "Rambla de Catalunya 4",
          "CP": "08009",
          "Localitat": "Barcelona",
          "Provincia": "Barcelona",
          "Empleats": []
        },
        {
          "_id": {
            "$oid": "300000000000000000000005"
          },
          "Nom": "Gran",
          "Adreça": "Gran de Gracia 45",
          "CP": "08011",
          "Localitat": "Badalona",
          "Provincia": "Barcelona",
          "Empleats": []
        },
        {
          "_id": {
            "$oid": "300000000000000000000006"
          },
          "Nom": "Napols",
          "Adreça": "Napols 86",
          "CP": "08028",
          "Localitat": "SantaColoma",
          "Provincia": "Barcelona",
          "Empleats": []
        },
        {
          "_id": {
            "$oid": "300000000000000000000007"
          },
          "Nom": "Carrilet",
          "Adreça": "Av. Carrilet 44",
          "CP": "08032",
          "Localitat": "Hospitalet",
          "Provincia": "Barcelona",
          "Empleats": []
        },
        {
          "_id": {
            "$oid": "300000000000000000000008"
          },
          "Nom": "Cerdanyola",
          "Adreça": "Altimira 34",
          "CP": "08044",
          "Localitat": "Cerdanyola del Valles ",
          "Provincia": "Barcelona",
          "Empleats": []
        }
      ]      
)


db.clients.drop();
db.clients.insertMany(
    [
        {
          "_id": {
            "$oid": "100000000000000000000001"
          },
          "Nom": "Tomas",
          "Cognoms": "Sans Mulero",
          "Adreça": "Gran Via 435, 2-2",
          "CP": "08012",
          "Localitat": "Barcelona",
          "Provincia": "Barcelona",
          "Telefon": "684563574",
          "Comandes": [
            {
              "comanda_id": {
                "$oid": "200000000000000000000001"
              },
              "botiga_id": {
                "$oid": "300000000000000000000001"
              },
              "Data": {
                "$date": {
                  "$numberLong": "1666201513000"
                }
              },
              "PreuTotal": 22,
              "empleat_id": {
                "$oid": "400000000000000000000001"
              },
              "TipusEntrega": "botiga",
              "DetallComanda": [
                {
                  "producte_id": {
                    "$oid": "500000000000000000000001"
                  },
                  "Quantitat": 1
                },
                {
                  "producte_id": {
                    "$oid": "500000000000000000000004"
                  },
                  "Quantitat": 2
                },
                {
                  "producte_id": {
                    "$oid": "500000000000000000000006"
                  },
                  "Quantitat": 1
                }
              ]
            }
          ]
        },
        {
          "_id": {
            "$oid": "100000000000000000000002"
          },
          "Nom": "Marta",
          "Cognoms": "Valdesca Perez",
          "Adreça": "Sicilia 89, Pral 2",
          "CP": "08013",
          "Localitat": "Barcelona",
          "Provincia": "Barcelona",
          "Telefon": "687698766",
          "Comandes": [
            {
              "comanda_id": {
                "$oid": "200000000000000000000002"
              },
              "botiga_id": {
                "$oid": "300000000000000000000001"
              },
              "Data": {
                "$date": {
                  "$numberLong": "1666380851000"
                }
              },
              "PreuTotal": 13,
              "empleat_id": {
                "$oid": "400000000000000000000004"
              },
              "TipusEntrega": "repartiment",
              "Productes": [
                {
                  "producte_id": {
                    "$oid": "500000000000000000000003"
                  },
                  "Quantitat": 1
                },
                {
                  "producte_id": {
                    "$oid": "500000000000000000000004"
                  },
                  "Quantitat": 1
                }
              ]
            }
          ]
        },
        {
          "_id": {
            "$oid": "100000000000000000000003"
          },
          "Nom": "Agata",
          "Cognoms": "Ruiz Prada",
          "Adreça": "Bruc 45, 4-5",
          "CP": "08014",
          "Localitat": "Barcelona",
          "Provincia": "Barcelona",
          "Telefon": "666777888",
          "Comandes": [
            {
              "comanda_id": {
                "$oid": "200000000000000000000004"
              },
              "botiga_id": {
                "$oid": "300000000000000000000002"
              },
              "Data": {
                "$date": {
                  "$numberLong": "1666448592000"
                }
              },
              "PreuTotal": 11,
              "empleat_id": {
                "$oid": "400000000000000000000006"
              },
              "TipusEntrega": "botiga",
              "Productes": [
                {
                  "producte_id": {
                    "$oid": "500000000000000000000002"
                  },
                  "Quantitat": 1
                }
              ]
            }
          ]
        },
        {
          "_id": {
            "$oid": "100000000000000000000004"
          },
          "Nom": "Angel",
          "Cognoms": "Galera Fernandez",
          "Adreça": "Girona 34, 4-5",
          "CP": "08015",
          "Localitat": "Barcelona",
          "Provincia": "Barcelona",
          "Telefon": "756999787",
          "Comandes": [
            {
              "comanda_id": {
                "$oid": "200000000000000000000005"
              },
              "botiga_id": {
                "$oid": "300000000000000000000001"
              },
              "Data": {
                "$date": {
                  "$numberLong": "1666269263000"
                }
              },
              "PreuTotal": 10,
              "empleat_id": {
                "$oid": "400000000000000000000001"
              },
              "TipusEntrega": "botiga",
              "Productes": [
                {
                  "producte_id": {
                    "$oid": "500000000000000000000001"
                  },
                  "Quantitat": 1
                }
              ]
            }
          ]
        },
        {
          "_id": {
            "$oid": "100000000000000000000005"
          },
          "Nom": "Sonia",
          "Cognoms": "Vazquez",
          "Adreça": "Napoles 33, 2-1",
          "CP": "08029",
          "Localitat": "Santa Coloma de Gramanet",
          "Provincia": "Barcelona",
          "Telefon": "648111222",
          "Comandes": [
            {
              "comanda_id": {
                "$oid": "200000000000000000000003"
              },
              "botiga_id": {
                "$oid": "300000000000000000000001"
              },
              "Data": {
                "$date": {
                  "$numberLong": "1666267502000"
                }
              },
              "PreuTotal": 31,
              "empleat_id": {
                "$oid": "400000000000000000000004"
              },
              "TipusEntrega": "repartiment",
              "Productes": [
                {
                  "producte_id": {
                    "$oid": "500000000000000000000002"
                  },
                  "Quantitat": 1
                },
                {
                  "producte_id": {
                    "$oid": "500000000000000000000005"
                  },
                  "Quantitat": 1
                },
                {
                  "producte_id": {
                    "$oid": "500000000000000000000007"
                  },
                  "Quantitat": 2
                }
              ]
            }
          ]
        },
        {
          "_id": {
            "$oid": "100000000000000000000006"
          },
          "Nom": "Ramon",
          "Cognoms": "Turró Santana",
          "Adreça": "Foc 45, 1-1",
          "CP": "08033",
          "Localitat": "Hospitalet",
          "Provincia": "Barcelona",
          "Telefon": "677446553",
          "Comandes": [
            {
              "comanda_id": {
                "$oid": "200000000000000000000006"
              },
              "botiga_id": {
                "$oid": "300000000000000000000002"
              },
              "Data": {
                "$date": {
                  "$numberLong": "1666205077000"
                }
              },
              "PreuTotal": 6,
              "empleat_id": {
                "$oid": "400000000000000000000010"
              },
              "TipusEntrega": "repartiment",
              "Productes": [
                {
                  "producte_id": {
                    "$oid": "500000000000000000000006"
                  },
                  "Quantitat": 1
                }
              ]
            }
          ]
        }
      ]
)


db.productes.drop();
db.productes.insertMany(
    [
        {
          "_id": {
            "$oid": "500000000000000000000001"
          },
          "Tipus": "Pizza",
          "Nom": "Pizza 4  formatges",
          "Descripcio": "Pizza cremosa i molt bona",
          "Imatge": "pizza1.jpg",
          "Preu": 10,
          "CatPizza": "Petita"
        },
        {
          "_id": {
            "$oid": "500000000000000000000002"
          },
          "Tipus": "Pizza",
          "Nom": "Pizza 4 estacions",
          "Descripcio": "Pizza cremosa i molt bona",
          "Imatge": "pizza2.jpg",
          "Preu": 11,
          "CatPizza": "Mitjana"
        },
        {
          "_id": {
            "$oid": "500000000000000000000003"
          },
          "Tipus": "Pizza",
          "Nom": "Pizza Barbacoa",
          "Descripcio": "Pizza cremosa i molt bona",
          "Imatge": "pizza3.jpg",
          "Preu": 11,
          "CatPizza": "Gran"
        },
        {
          "_id": {
            "$oid": "500000000000000000000004"
          },
          "Tipus": "Beguda",
          "Nom": "CocaCola Botella 2L",
          "Descripcio": "Beguda ensucrada de cola gran",
          "Imatge": "cola1.jpg",
          "Preu": 3,
          "CatPizza": ""
        },
        {
          "_id": {
            "$oid": "500000000000000000000005"
          },
          "Tipus": "Beguda",
          "Nom": "CocaCola Llauna",
          "Descripcio": "Llauna ensucrada de cola",
          "Imatge": "cola2.jpg",
          "Preu": 4,
          "CatPizza": ""
        },
        {
          "_id": {
            "$oid": "500000000000000000000006"
          },
          "Tipus": "Hamburguesa",
          "Nom": "Hamburguesa Divina",
          "Descripcio": "Hamburguesa  deliciosa per lleparse els dits",
          "Imatge": "burguer1.jpg",
          "Preu": 6,
          "CatPizza": ""
        },
        {
          "_id": {
            "$oid": "500000000000000000000007"
          },
          "Tipus": "Hamburguesa",
          "Nom": "Hamburguesa ExtraChilli",
          "Descripcio": "Hamburguesa molt picant",
          "Imatge": "burguer2.jpg",
          "Preu": 8,
          "CatPizza": ""
        }
      ]
)