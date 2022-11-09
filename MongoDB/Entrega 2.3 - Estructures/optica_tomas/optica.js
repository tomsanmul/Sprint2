db.client.drop();
db.client.insertMany(
    [{
        "_id": {
          "$oid": "6367bbe9f2c58dc3f508617b"
        },
        "Nom": "Javier Ramirez",
        "Adreça": "Sicilia 320, Pral 2",
        "Ciutat": "Barcelona",
        "Pais": "España",
        "Telefon": "684563574",
        "Fax": "",
        "NIF": "46247583T",
        "Referit": "",
        "Compres": [
          {
            "data": {
              "date": {
                "$date": {
                  "$numberLong": "1666031454000"
                }
              }
            },
            "ulleres_id": [
              {
                "id_ulleres": {
                  "$oid": "100000000000000000000002"
                },
                "Quantitat": 1
              }
            ],
            "Empleat": "Laia Vivies",
            "PreuTotal": 75
          },
          {
            "data": {
              "date": {
                "$date": {
                  "$numberLong": "1666182866000"
                }
              }
            },
            "ulleres_id": [
              {
                "id_ulleres": {
                  "$oid": "100000000000000000000004"
                },
                "Quantitat": 1
              }
            ],
            "Empleat": "Alicia Sanchez",
            "PreuTotal": 90.45
          }
        ]
      },{
        "_id": {
          "$oid": "6368c66e5527b3f54e2e5dc8"
        },
        "Nom": "Daniel Roura",
        "Adreça": "Napoles 44, 5 - 3 Esc A",
        "Ciutat": "Badalona",
        "Pais": "España",
        "Telefon": "723473754",
        "Fax": "",
        "NIF": "29457345R",
        "Referit": "1",
        "Compres": [
          {
            "data": {
              "date": {
                "$date": {
                  "$numberLong": "1666099333000"
                }
              }
            },
            "ulleres_id": [
              {
                "id_ulleres": {
                  "$oid": "100000000000000000000004"
                },
                "Quantitat": 1
              }
            ],
            "Empleat": "Laia Vivies",
            "PreuTotal": 90.45
          }
        ]
      },{
        "_id": {
          "$oid": "6368ccdf5527b3f54e2e5ddf"
        },
        "Nom": "Tomas Sans",
        "Adreça": "Roger de Flor 88, 3-3A",
        "Ciutat": "Barcelona",
        "Pais": "España",
        "Telefon": "683658642",
        "Fax": "",
        "NIF": "42374375A",
        "Referit": "",
        "Compres": [
          {
            "data": {
              "date": {
                "$date": {
                  "$numberLong": "1666027824000"
                }
              }
            },
            "ulleres_id": [
              {
                "id_ulleres": {
                  "$oid": "100000000000000000000001"
                },
                "Quantitat": 1
              }
            ],
            "Empleat": "Alicia Sanchez",
            "PreuTotal": 60.5
          }
        ]
      },{
        "_id": {
          "$oid": "6368cdcc5527b3f54e2e5de1"
        },
        "Nom": "Jaime Gómez",
        "Adreça": "Independcia 323, 2-2",
        "Ciutat": "Barcelona",
        "Pais": "España",
        "Telefon": "673744327",
        "Fax": "",
        "NIF": "39654876D",
        "Referit": "",
        "Compres": [
          {
            "data": {
              "date": {
                "$date": {
                  "$numberLong": "1666091426000"
                }
              }
            },
            "ulleres_id": [
              {
                "id_ulleres": {
                  "$oid": "100000000000000000000003"
                },
                "Quantitat": 1
              }
            ],
            "Empleat": "Carlos Martinez",
            "PreuTotal": 80
          }
        ]
      },{
        "_id": {
          "$oid": "6368cf995527b3f54e2e5def"
        },
        "Nom": "Nuria Casas",
        "Adreça": "Roma 24, 1-1 ",
        "Ciutat": "Santa Coloma de Gramanet",
        "Pais": "España",
        "Telefon": "687345221",
        "Fax": "",
        "NIF": "32764567C",
        "Referit": "",
        "Compres": []
      }]
);


db.proveidor.drop();
db.proveidor.insertMany(
    [{
        "_id": {
          "$oid": "6368c88d5527b3f54e2e5dd4"
        },
        "Nom": "Solvia S.L.",
        "Adreça": "c/ Mart 34, Bj",
        "CP": "0802",
        "Ciutat": "Barcelona",
        "Teleon": "937365467",
        "Fax": "687353276",
        "Nif": "56436532T",
        "ulleres": [
          {
            "id": {
              "$oid": "100000000000000000000001"
            },
            "Marca": "Ray-ban",
            "GraduacioVidreDret": "2",
            "GraduacioVidreEsquerre": "2",
            "Montura": "flotant",
            "ColorMontura": "blau",
            "ColorVidreDret": "verd",
            "ColorVidreEsquerra": "verd",
            "Preu": 60.5
          },
          {
            "id": {
              "$oid": "100000000000000000000003"
            },
            "Marca": "Ray-ban",
            "GraduacioVidreDret": "2",
            "GraduacioVidreEsquerre": "2",
            "Montura": "Metàl.lica",
            "ColorMontura": "vermell",
            "ColorVidreDret": "blau",
            "ColorVidreEsquerra": "blau",
            "Preu": 80
          }
        ]
      },{
        "_id": {
          "$oid": "6368ca625527b3f54e2e5dd9"
        },
        "Nom": "MaxiGafas S.L.",
        "Adreça": "c/ Maresme 22, (Local)",
        "CP": "08019",
        "Ciutat": "Barcelona",
        "Teleon": "938354678",
        "Fax": "667884332",
        "Nif": "58336543R",
        "ulleres": [
          {
            "id": {
              "$oid": "100000000000000000000004"
            },
            "Marca": "Polaroid",
            "GraduacioVidreDret": "1",
            "GraduacioVidreEsquerre": "1",
            "Montura": "flotant",
            "ColorMontura": "negre",
            "ColorVidreDret": "groc",
            "ColorVidreEsquerra": "groc",
            "Preu": 90.45
          },
          {
            "id": {
              "$oid": "100000000000000000000005"
            },
            "Marca": "Polaro",
            "GraduacioVidreDret": "2",
            "GraduacioVidreEsquerre": "2",
            "Montura": "pasta",
            "ColorMontura": "blanc",
            "ColorVidreDret": "lila",
            "ColorVidreEsquerra": "lila",
            "Preu": 70.25
          }
        ]
      },{
        "_id": {
          "$oid": "6368cbca5527b3f54e2e5ddb"
        },
        "Nom": "TodoGafas S.L.",
        "Adreça": "c/ Girona 34, Bj",
        "CP": "08013",
        "Ciutat": "Barcelona",
        "Teleon": "938674632",
        "Fax": "937785343",
        "Nif": "46376557A",
        "ulleres": [
          {
            "id": {
              "$oid": "100000000000000000000002"
            },
            "Marca": "Oakley",
            "GraduacioVidreDret": "1",
            "GraduacioVidreEsquerre": "1",
            "Montura": "pasta",
            "ColorMontura": "negre",
            "ColorVidreDret": "vermell",
            "ColorVidreEsquerra": "vermell",
            "Preu": 75
          }
        ]
      }]
);
