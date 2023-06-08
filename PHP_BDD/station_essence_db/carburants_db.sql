-- SQLite
--PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS rupture;
DROP TABLE IF EXISTS prix;
DROP TABLE IF EXISTS carburant;
DROP TABLE IF EXISTS point_de_vente_service;
DROP TABLE IF EXISTS service;
DROP TABLE IF EXISTS horaires;
DROP TABLE IF EXISTS fermeture;
DROP TABLE IF EXISTS point_de_vente;


CREATE TABLE point_de_vente (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    latitude INTEGER(150),
    longitude INTEGER(150),
    cp INTEGER(10),
    type TEXT(150),
    adresse TEXT(150),
    ville TEXT(150),
    automate_24_24 INTEGER(150)
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

CREATE TABLE carburant (
    nom TEXT(150)
);

CREATE TABLE prix (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    point_de_vente_id INTEGER NOT NULL,
    carburant_nom TEXT(150),
    valeur REAL,
    date TEXT,
    FOREIGN KEY (point_de_vente_id) REFERENCES point_de_vente(id),
    FOREIGN KEY (carburant_nom) REFERENCES carburant(nom)
);

CREATE TABLE rupture (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    point_de_vente_id INTEGER NOT NULL,
    carburant_nom TEXT(150),
    debut TEXT(150),
    fin TEXT(150),
    FOREIGN KEY (point_de_vente_id) REFERENCES point_de_vente(id),
    FOREIGN KEY (carburant_nom) REFERENCES carburant(nom)
);

INSERT INTO point_de_vente (latitude, longitude, cp, type, adresse, ville, automate_24_24) VALUES
    (4620100, 519800, 01000, "R", "596 AVENUE DE TREVOUX", "SAINT-DENIS-LèS-BOURG", ""),
    (4621842, 522767, 01000, "R", "16 Avenue de Marboz", "BOURG-EN-BRESSE", ""),
    (4618800, 524500, 01000, "R", "20 Avenue du Maréchal Juin", "Bourg-en-Bresse", 1),
    (4622100, 524500, 01000, "R", "AVENUE FRANCOIS PIGNIER", "Bourg-en-Bresse", 1),
    (4619900, 524100, 01000, "R", "Bd Charles de Gaulle", "BOURG-EN-BRESSE", 1),
    (4619600, 522900, 01000, "R", "56 Rue du Stand", "Bourg-en-Bresse", 1),
    (4620100, 520000, 01000, "R", "642 AVENUE DE TREVOUX", "SAINT DENIS LES BOURG", 1),
    (4615500, 339400, 03110, "R", "19 Route de Saint-Pourçain", "CHARMEIL", 1),
    (4619200, 326500, 03110, "R", "24 Village Des Combes", "Broût-Vernet", 1),
    (4624800, 363000, 03120, "R", "94 RUE PRESIDENT ROOSEVELT", "LAPALISSE", 1),
    (4625560.73783, 362323.336311, 03120, "R", "RUE DE VERDUN", "LAPALISSE", ""),
    (4624944, 362760, 03120, "R", "AVENUE JEAN MASSE", "Lapalisse", ""),
    (4624552.2061353, 361156.8909912, 03120, "R", "zac les pres de la grand route", "Lapalisse", ""),
    (4624800, 362900, 03120, "R", "1 Avenue du 8 Mai 1945", "Lapalisse", "");

INSERT INTO carburant (nom) VALUES
    ("Gazole"),
    ("SP95"),
    ("SP98"),
    ("GPLc"),
    ("E10");

INSERT INTO service (nom) VALUES
    ("Relais colis"),
    ("Boutique alimentaire"),
    ("Gonflage pneus"),
    ("Vente de gaz"),
    ("DAB"),
    ("Boutique non-alimentaire");


INSERT INTO prix (point_de_vente_id, carburant_nom, valeur, date) VALUES
    (1, "Gazole", 1.699, "2023-05-25T08:14:47"),
    (1, "SP95", 1.299, "2023-05-25T08:14:47"),
    (1, "SP98", 1.399, "2023-05-25T08:14:47"),
    (1, "GPLc", 1.099, "2023-05-25T08:14:47"),
    (1, "E10", 1.899, "2023-05-25T08:14:47"),
    (2, "Gazole", 1.499, "2023-05-25T08:14:47"),
    (2, "SP95", 1.599, "2023-05-25T08:14:47"),
    (2, "SP98", 1.699, "2023-05-25T08:14:47"),
    (2, "GPLc", 1.199, "2023-05-25T08:14:47"),
    (2, "E10", 1.799, "2023-05-25T08:14:47"),
    (3, "Gazole", 1.299, "2023-05-25T08:14:47"),
    (3, "SP95", 1.699, "2023-05-25T08:14:47"),
    (3, "SP98", 1.799, "2023-05-25T08:14:47"),
    (3, "GPLc", 1.299, "2023-05-25T08:14:47"),
    (3, "E10", 1.899, "2023-05-25T08:14:47"),
    (4, "Gazole", 1.399, "2023-05-25T08:14:47"),
    (4, "SP95", 1.799, "2023-05-25T08:14:47"),
    (4, "SP98", 1.899, "2023-05-25T08:14:47"),
    (4, "GPLc", 1.399, "2023-05-25T08:14:47"),
    (4, "E10", 1.999, "2023-05-25T08:14:47"),
    (5, "Gazole", 1.499, "2023-05-25T08:14:47"),
    (5, "SP95", 1.899, "2023-05-25T08:14:47"),
    (5, "SP98", 1.999, "2023-05-25T08:14:47"),
    (5, "GPLc", 1.499, "2023-05-25T08:14:47"),
    (5, "E10", 1.099, "2023-05-25T08:14:47"),
    (6, "Gazole", 1.599, "2023-05-25T08:14:47"),
    (6, "SP95", 1.099, "2023-05-25T08:14:47"),
    (6, "SP98", 1.199, "2023-05-25T08:14:47"),
    (6, "GPLc", 1.599, "2023-05-25T08:14:47"),
    (6, "E10", 1.199, "2023-05-25T08:14:47"),
    (7, "Gazole", 1.699, "2023-05-25T08:14:47"),
    (7, "SP95", 1.199, "2023-05-25T08:14:47"),
    (7, "SP98", 1.299, "2023-05-25T08:14:47"),
    (7, "GPLc", 1.699, "2023-05-25T08:14:47"),
    (7, "E10", 1.299, "2023-05-25T08:14:47"),
    (8, "Gazole", 1.799, "2023-05-25T08:14:47"),
    (8, "SP95", 1.299, "2023-05-25T08:14:47"),
    (8, "SP98", 1.399, "2023-05-25T08:14:47"),
    (8, "GPLc", 1.799, "2023-05-25T08:14:47"),
    (8, "E10", 1.399, "2023-05-25T08:14:47"),
    (9, "Gazole", 1.899, "2023-05-25T08:14:47"),
    (9, "SP95", 1.399, "2023-05-25T08:14:47"),
    (9, "SP98", 1.499, "2023-05-25T08:14:47"),
    (9, "GPLc", 1.899, "2023-05-25T08:14:47"),
    (9, "E10", 1.499, "2023-05-25T08:14:47"),
    (10, "Gazole", 1.099, "2023-05-25T08:14:47"),
    (10, "SP95", 1.499, "2023-05-25T08:14:47"),
    (10, "SP98", 1.599, "2023-05-25T08:14:47"),
    (10, "GPLc", 1.099, "2023-05-25T08:14:47"),
    (10, "E10", 1.599, "2023-05-25T08:14:47"),
    (11, "Gazole", 1.199, "2023-05-25T08:14:47"),
    (11, "SP95", 1.599, "2023-05-25T08:14:47"),
    (11, "SP98", 1.699, "2023-05-25T08:14:47"),
    (11, "GPLc", 1.199, "2023-05-25T08:14:47"),
    (11, "E10", 1.699, "2023-05-25T08:14:47"),
    (12, "Gazole", 1.299, "2023-05-25T08:14:47"),
    (12, "SP95", 1.699, "2023-05-25T08:14:47"),
    (12, "SP98", 1.799, "2023-05-25T08:14:47"),
    (12, "GPLc", 1.299, "2023-05-25T08:14:47"),
    (12, "E10", 1.799, "2023-05-25T08:14:47"),
    (13, "Gazole", 1.399, "2023-05-25T08:14:47"),
    (13, "SP95", 1.799, "2023-05-25T08:14:47"),
    (13, "SP98", 1.899, "2023-05-25T08:14:47"),
    (13, "GPLc", 1.399, "2023-05-25T08:14:47"),
    (13, "E10", 1.899, "2023-05-25T08:14:47"),
    (14, "Gazole", 1.499, "2023-05-25T08:14:47"),
    (14, "SP95", 1.899, "2023-05-25T08:14:47"),
    (14, "SP98", 1.999, "2023-05-25T08:14:47"),
    (14, "GPLc", 1.499, "2023-05-25T08:14:47"),
    (14, "E10", 1.099, "2023-05-25T08:14:47");

INSERT INTO rupture (point_de_vente_id, carburant_nom, debut, fin) VALUES
    ("1", "Gazole", "2014-04-16T00:00:00", "");

INSERT INTO fermeture (point_de_vente_id, type, debut, fin) VALUES
    ("1", "permanent", "2014-04-16T00:00:00", ""),
    ("4", "temporaire", "2023-04-16T00:00:00", "");

INSERT INTO horaires (point_de_vente_id, jour, ferme, horaire_ouverture, horaire_fermeture) VALUES
    (1, "Lundi", "", "06.00", "20.00"),
    (1, "Mardi", "", "06.00", "20.00"),
    (1, "Mercredi", "", "06.00", "20.00"),
    (1, "Jeudi", "", "06.00", "20.00"),
    (1, "Vendredi", "", "06.00", "20.00"),
    (1, "Samedi", "1", "", ""),
    (1, "Dimanche", "1", "", ""),
    (2, "Lundi", "", "06.00", "19.00"),
    (2, "Mardi", "", "06.00", "19.00"),
    (2, "Mercredi", "", "06.00", "19.00"),
    (2, "Jeudi", "", "06.00", "19.00"),
    (2, "Vendredi", "", "06.00", "19.00"),
    (2, "Samedi", "1", "", ""),
    (2, "Dimanche", "1", "", ""),
    (3, "Lundi", "", "06.00", "19.00"),
    (3, "Mardi", "", "06.00", "19.00"),
    (3, "Mercredi", "", "06.00", "19.00"),
    (3, "Jeudi", "", "06.00", "19.00"),
    (3, "Vendredi", "", "06.00", "19.00"),
    (3, "Samedi", "", "06.00", "19.00"),
    (3, "Dimanche", "", "06.00", "19.00"),
    (4, "Lundi", "", "06.00", "23.00"),
    (4, "Mardi", "", "06.00", "23.00"),
    (4, "Mercredi", "", "06.00", "23.00"),
    (4, "Jeudi", "", "06.00", "23.00"),
    (4, "Vendredi", "", "06.00", "23.00"),
    (4, "Samedi", "", "06.00", "23.00"),
    (4, "Dimanche", "", "06.00", "23.00");

