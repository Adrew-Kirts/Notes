-- SQLite
PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS point_de_vente;
DROP TABLE IF EXISTS fermeture;
DROP TABLE IF EXISTS horaires;
DROP TABLE IF EXISTS service;
DROP TABLE IF EXISTS point_de_vente_service;
DROP TABLE IF EXISTS carburant;
DROP TABLE IF EXISTS prix;
DROP TABLE IF EXISTS rupture;


CREATE TABLE point_de_vente (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    latitude TEXT(150),
    longitude TEXT(150),
    cp INTEGER(10),
    type TEXT(150),
    adresse TEXT(150),
    ville TEXT(150),
    automate_24_24 TEXT(150)
);

CREATE TABLE fermeture (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    type TEXT(150),
    debut TEXT(150),
    fin TEXT(150),
    point_de_vente_id INTEGER NOT NULL,
    FOREIGN KEY (point_de_vente_id) REFERENCES point_de_vente(id)

);

CREATE TABLE horaires (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    jour TEXT(150),
    ferme TEXT(150),
    horaire_ouverture TEXT(150),
    horaire_fermeture  TEXT(150),
    point_de_vente_id INTEGER NOT NULL,
    FOREIGN KEY (point_de_vente_id) REFERENCES point_de_vente(id)
);


CREATE TABLE service (
    nom TEXT(150)
);

CREATE TABLE point_de_vente_service (
    point_de_vente_id INTEGER NOT NULL,
    service_nom TEXT(150),
    FOREIGN KEY (point_de_vente_id) REFERENCES point_de_vente(id),
    FOREIGN KEY (service_nom) REFERENCES service(nom)
);

CREATE TABLE service (
    nom TEXT(150)
);

CREATE TABLE carburant (
    point_de_vente_id INTEGER NOT NULL,
    service_nom TEXT(150),
    FOREIGN KEY (point_de_vente_id) REFERENCES point_de_vente(id),
    FOREIGN KEY (service_nom) REFERENCES service(nom)
);

/*

 TEXT(150),

id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,


*/