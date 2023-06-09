# MEMO - PHP/BDD

> Réponses aux questions du module PHP/BDD

## 1.1 MCD et MLD

**De manière général :**

**- Qu’est ce qu’un SGBD ?**

Un système de gestion de base de données (SGBD) est le logiciel qui permet à un ordinateur de stocker, récupérer, ajouter, supprimer et modifier des données.

**- Qu’est-ce qu’un système d’information ?**

Ce sont l'ensemble des ressources et des moyens mis à disposition pour la collecte, le stockage, le traitement et la diffusion de la globalité des informations au sein d'une organisation, entre les différents acteurs concernés.

**- Qu’est-ce qu’une base de données ?**

Une base de données, BDD ou encore database en anglais, regroupe un ensemble d'informations qui est organisé pour être accessible, géré et mis à jour facilement par ses utilisateurs.

**- Citez les différences entre ces éléments.**

Un **système d'information** est un ensemble d'outils, de méthodes et de pratiques qui permettent de collecter, stocker, traiter et analyser des données pour fournir des informations utiles à des utilisateurs. Une **base de données**, quant à elle, est un ensemble organisé de données qui sont stockées sur un support de stockage.

Pour un MCD (Modèle Conceptuel de Données) :

**- Qu’est ce qu’un MCD et pourquoi est-ce que cela existe ?**

Un MCD (Modèle Conceptuel des Données) est un modèle de données qui représente les entités, les relations et les attributs d'un système. Il est utilisé pour décrire les données d'un système d'information et faciliter la compréhension des relations entre les différentes entités.

**- Comment représenter une entité ?**

Rectangle avec un titre en haut de la forme

**- Comment représenter une liaison entre des entités ?**

Pareil qu'une entité mais avec des bords arrondi, liant (sans flêcher) des entités entre-elles

**- Où mettre les données qui composent nos entités ?**

Dans le rectangle fait pour l'entité

**- Quels sont les différents types de cardinalité possibles ? Où les placer dans notre schéma ?**

Les nombres minimums et maximums associés aux rélations. On les place dans la liaison.

Ex.:
(0, N) = genre contient au min. 0 films et au max. illimité de films
(1,1) = film a min 1 genre et max 1 genre (si on suppose que le fils est unigenre)

**[ GENRE ] --- (O, N) ---( CONTIENT ) --- (1,1) --- [ FILM ]**

**- Citer quelques bonnes pratiques de normalisation.**
-- Deux entités homogènes peuvent être fusionnées
-- Les attributs d'une association doivent dépendre directement des identifiants de **toutes** les entités en association
-- Une cardinalité minimale est toujours 0 ou 1 (et pas 2, 3 ou n) et une cardinalité maximale est toujours 1 ou n (et pas 2, 3, ..)

**- A quoi servent les clés primaires ?**

Les clés primaires dans un modèle de données relationnel (MCD) sont des colonnes ou des groupe de colonnes qui identifient de manière unique chaque enregistrement dans une table. Elles sont utilisées pour lier les données entre elles et pour garantir l'intégrité des données.

**Pour un MLD (Modèle Logique de Données) :**

**- Comment passer d'un MCD au MLD ? Que deviennent les associations ?**

Toutes les entités vont devenir une table

**Propriété**: Une propriété devient un attribut.

**Individu**: Un individu devient une relation (minimum en 3ème forme normale).

**Identifiant**: L'identifiant d'un individu devient la clé primaire de la relation correspondante.

**Association sans propriétés propres**

    Cardinalités (0,1) ou (1,1) vers (0,n) ou (1,n) : L'association disparaît et la clé de la relation relative à la cardinalité (0,n) ou (1,n) migre vers la relation relative à la cardinalité (0,1) ou (1,1). Cette clé est appelé "clé étrangère". La clé étrangère va se situer du côté de (0,1) ou (1,1), fait une réferencé à l'entité lié.

    Cardinalités (n) vers (n) = création de table intermédiaire

## 1.2 - Mise en pratique MCD et MLD

**MCD Twitter**

![MCD Twitter](./twitter_drawio_mcd.png)

**MLD Twitter**

![MCD Twitter](./twitter_MLD.png)

## 1.3 - Mise en pratique avec le dataset du module : le prix des stations essence

![MCD et MLD Station Essence](./station_essence_mld_and_mcd.png)

## 2.1 Initiation au SQL

**- Comment créer une base de données ?**

Dans le terminal:

```sql
CREATE DATABASE nom_de_la_base_de_données;
```

Remplacez "nom_de_la_base_de_données" par le nom que vous souhaitez donner à votre base de données.

**- Comment faire un commentaire ?**

```sql
-- Ceci est un commentaire en SQL
```

Vous pouvez également utiliser la syntaxe des commentaires multi-lignes en fonction de votre système de gestion de base de données. Par exemple :

```sql
/* Ceci est un commentaire
sur plusieurs lignes */
```

**- Comment créer une table et des colonnes ?**

Pour créer une table avec des colonnes, vous pouvez utiliser la commande CREATE TABLE suivie du nom de la table et de la liste des colonnes avec leurs types de données. Voici un exemple générique :

```sql
CREATE TABLE nom_de_la_table (
    nom_colonne1 type_de_données,
    nom_colonne2 type_de_données,
    ...
);
```

Voici un exemple concret de création d'une table "utilisateurs" avec les colonnes "id", "nom" et "email" :

```sql
CREATE TABLE utilisateurs (
    id INT,
    nom VARCHAR(50),
    email VARCHAR(100)
);
```

Dans cet exemple, "id" est une colonne de type INTEGER, "nom" est une colonne de type VARCHAR avec une longueur maximale de 50 caractères, et "email" est une colonne de type VARCHAR avec une longueur maximale de 100 caractères.

**- Listez les types de données que vous utiliserez le plus souvent.**

Les types de données couramment utilisés sont :
NULL (pour la valeur NULL)
INTEGER (pour les nombres entiers)
REAL (pour les nombres décimaux)
TEXT (pour les textes de longueur variable)
BLOB (pour un blob de data pure)

**- Listez des contraintes utiles pour vos colonnes :**

Quelques contraintes utiles pour les colonnes sont :

    PRIMARY KEY (pour définir une clé primaire)
    FOREIGN KEY (pour définir une clé étrangère)
    UNIQUE (pour spécifier que la valeur d'une colonne doit être unique)
    NOT NULL (pour indiquer que la valeur ne peut pas être nulle)
    DEFAULT (pour spécifier une valeur par défaut)
    CHECK (pour définir une condition de vérification)

**- comment préciser qu'une valeur est obligatoire pour une colonne ?**

Pour préciser qu'une valeur est obligatoire pour une colonne, vous pouvez utiliser la contrainte NOT NULL lors de la création de la table. Par exemple :

```sql
CREATE TABLE my_table (
    column_name INT NOT NULL,
    ...
);
```

**- comment définir l'id d'une table ?**

Pour définir l'id d'une table, vous pouvez utiliser le type de données INTEGER et la contrainte PRIMARY KEY lors de la création de la table. Par exemple :

```sql
CREATE TABLE my_table (
    id INT PRIMARY KEY,
    ...
);
```

Il faut que l'id soit unique et pas null et il est courant d'utiliser un id auto-incrémenté pour assurer l'unicité des valeurs. ->
id INT PRIMARY KEY AUTO_INCREMENT,

**- Comment préciser que la valeur d'une colonne doit être unique ?(pour une adresse email par exemple)**

Pour préciser que la valeur d'une colonne doit être unique, vous pouvez utiliser la contrainte UNIQUE lors de la création de la table. Par exemple, pour une colonne "email" contenant des adresses email :

```sql
CREATE TABLE my_table (
    email VARCHAR(255) UNIQUE,
    ...
);
```

Cela garantit que chaque adresse email dans la colonne "email" sera unique.

**- Comment insérer des données dans une table ?**

Pour insérer des données dans une table, vous pouvez utiliser la commande INSERT INTO suivie du nom de la table et des valeurs à insérer. Par exemple :

```sql
INSERT INTO my_table (column1, column2, ...)
VALUES (
    value1,
    value2, ...);
```

Vous devez spécifier les noms des colonnes et les valeurs correspondantes dans l'ordre approprié.

**- Comment récupérer les données insérées ?**

Pour récupérer les données insérées, vous pouvez utiliser la commande SELECT avec la clause FROM pour spécifier la table à interroger. Par exemple :

```sql
SELECT * FROM my_table;
```

Cela récupérera toutes les lignes et colonnes de la table "my_table". Vous pouvez également spécifier des conditions et des colonnes spécifiques pour affiner votre sélection.

```sql
SELECT email, id, country FROM my_table;
-- Retourne que les résultâts ou country = US
WHERE country = 'US';
-- Retourne les résultâts en ordre ascendant
ORDER BY id ASC;
-- Retourne une limite de 4 lignes
LIMIT 4;
```

**- Comment ne sélectionner qu'un certain nombre de résultats ?**

Pour sélectionner un certain nombre de résultats, vous pouvez utiliser la clause LIMIT dans votre requête SELECT. Par exemple :

```sql
SELECT * FROM my_table LIMIT 10;
```

Cela retournera les 10 premières lignes de la table "my_table". Vous pouvez modifier le nombre pour obtenir le nombre de résultats souhaité.

**- Comment trier les résultats ?**

Pour trier les résultats, vous pouvez utiliser la clause ORDER BY suivie du nom de la colonne par laquelle vous souhaitez trier. Par exemple :

```sql
SELECT * FROM my_table ORDER BY column_name;
```

Cela triera les résultats de la table "my_table" en fonction des valeurs de la colonne "column_name" par ordre croissant. Vous pouvez également spécifier l'ordre décroissant en utilisant "DESC" après le nom de la colonne.

**- Comment filtrer les données et chaîner les conditions de filtres ?**

Pour filtrer les données, vous pouvez utiliser la clause WHERE dans votre requête SELECT. Par exemple :

```sql
SELECT * FROM my_table WHERE column_name = value;
```

Cela retournera uniquement les lignes où la valeur de la colonne "column_name" correspond à "value". Vous pouvez également chaîner plusieurs conditions en utilisant les opérateurs logiques "AND" et "OR".

**- Comment filtrer une colonne avec une valeur commençant par un certain caractère ?**

Pour filtrer une colonne avec une valeur commençant par un certain caractère, vous pouvez utiliser l'opérateur "LIKE" avec le caractère joker "%" dans votre clause WHERE. Par exemple :

```sql
SELECT * FROM my_table WHERE column_name LIKE 'prefix%';
```

Cela retournera les lignes où la valeur de la colonne "column_name" commence par "prefix".

**- A quoi servent les INDEX ? Comment en créer ?**

Les INDEX servent à accélérer les opérations de recherche dans une table. Ils permettent de créer des structures de données optimisées pour un accès plus rapide aux enregistrements. Pour créer un INDEX, vous pouvez utiliser la commande CREATE INDEX suivie du nom de l'index et du nom de la table ainsi que des colonnes sur lesquelles vous souhaitez créer l'index. Par exemple :

```sql
CREATE INDEX index_name ON my_table (column1, column2, ...);
```

Cela créera un index nommé "index_name" sur les colonnes spécifiées de la table "my_table". Les INDEX peuvent être créés sur une ou plusieurs colonnes.

**- Comment créer une relation entre 2 tables ?**

Pour créer une relation entre deux tables, vous pouvez utiliser les clés primaires et les clés étrangères. Une clé étrangère dans une table fait référence à la clé primaire d'une autre table. Par exemple, pour créer une relation entre une table "orders" et une table "customers" où chaque commande est liée à un client, vous pouvez ajouter une colonne "customer_id" dans la table "orders" qui fait référence à la clé primaire "id" de la table "customers".

**- Comment sélectionner les données de plusieurs tables ?**

Pour sélectionner les données de plusieurs tables, vous pouvez utiliser la clause JOIN dans votre requête SELECT. La clause JOIN permet de combiner les lignes de deux ou plusieurs tables en fonction de leurs relations. Par exemple :

```sql
SELECT * FROM table1 JOIN table2 ON table1.column_name = table2.column_name;
```

Cela sélectionnera les données des tables "table1" et "table2" en combinant les lignes où les valeurs de la colonne "column_name" sont égales dans les deux tables.

    INNER JOIN: An INNER JOIN returns only the rows where there is a match between the columns being joined in both tables. It combines the matching rows from both tables into a result set. Here's an example:

```sql
SELECT *
FROM table1
INNER JOIN table2 ON table1.column_name = table2.column_name;
```

In this case, only the rows with matching values in the column_name between table1 and table2 will be included in the result set. Rows from either table that don't have a match will be excluded.

    OUTER JOIN: An OUTER JOIN includes the matching rows from the tables being joined and also includes the unmatched rows from one or both tables. There are three types of outer joins: LEFT OUTER JOIN, RIGHT OUTER JOIN, and FULL OUTER JOIN.

    LEFT OUTER JOIN: Returns all the rows from the left (first) table and the matching rows from the right (second) table. If there is no match, NULL values are included for the columns of the right table. Example:

```sql
SELECT *
FROM table1
LEFT OUTER JOIN table2 ON table1.column_name = table2.column_name;
```

    RIGHT OUTER JOIN: Returns all the rows from the right (second) table and the matching rows from the left (first) table. If there is no match, NULL values are included for the columns of the left table. Example:

```sql
SELECT *
FROM table1
RIGHT OUTER JOIN table2 ON table1.column_name = table2.column_name;
```

    FULL OUTER JOIN: Returns all the rows from both tables, including the matching and unmatched rows. If there is no match, NULL values are included for the columns of the table without a match. Example:

```sql
SELECT *
FROM table1
FULL OUTER JOIN table2 ON table1.column_name = table2.column_name;
```

It's important to note that the specific syntax and support for these join types may vary depending on the database management system (DBMS) you are using.

**- Comment ne sélectionner que certaines colonnes et les renommer dans la liste de résultats ?**

Pour ne sélectionner que certaines colonnes et les renommer dans la liste de résultats, vous pouvez spécifier les noms des colonnes séparés par des virgules dans votre requête SELECT. Vous pouvez également utiliser l'opérateur "AS" pour renommer les colonnes. Par exemple :

```sql
SELECT column1 AS new_name1, column2 AS new_name2 FROM my_table;
```

Cela sélectionnera uniquement les colonnes "column1" et "column2" de la table "my_table" et les renommera respectivement en "new_name1" et "new_name2" dans la liste de résultats.

**- Comment supprimer une table et une base de données ?**

Pour supprimer une table, vous pouvez utiliser la commande DROP TABLE suivie du nom de la table. Par exemple :

```sql
DROP TABLE my_table;
```

Cela supprimera complètement la table "my_table" de la base de données.

Pour supprimer une base de données, vous pouvez utiliser la commande DROP DATABASE suivie du nom de la base de données. Par exemple :

```sql
DROP DATABASE my_database;
```

Cela supprimera complètement la base de données "my_database" et toutes les tables qui y sont associées.

## 2.2

**- Qu’est-ce SQLite et ses avantages.**

SQLite est une base de données relationnelle de type SQL (Structured Query Language) qui est souvent utilisée pour stocker et récupérer des données de manière efficace. Elle est souvent utilisée dans les applications mobiles, les applications web et les applications de bureau.

Les avantage de SQLite:

- Facilité d'utilisation
- Grande flexibilité
- Sécurité
- Performance
- Portabilité

## 2.3 - Création de la base de données de Twitter

<details>
  <summary>Code pour BDD Twitter</summary>

### Twitter Database Code

```sql
-- SQLite
--PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS tweets;
DROP TABLE IF EXISTS hashtags;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS tweets_users;
DROP TABLE IF EXISTS hashtags_tweets;
DROP TABLE IF EXISTS users_users;

CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  username VARCHAR(150) NOT NULL UNIQUE,
  email TEXT(150) NOT NULL,
  address VARCHAR(200),
  postal_code INTEGER(10),
  city VARCHAR(150),
  country VARCHAR(150)
);

CREATE TABLE tweets (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  -- limite de char 4000 pour des users payant
  content TEXT(4000),
  created_at DATE DEFAULT (datetime('now','localtime')),
  user_id INTEGER NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE hashtags (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  -- limite de char pour un #
  name VARCHAR(255)
);

CREATE TABLE users_users (
  user1_id INTEGER NOT NULL,
  user2_id INTEGER NOT NULL,
  PRIMARY KEY (user1_id, user2_id),
  FOREIGN KEY (user1_id) REFERENCES users(id),
  FOREIGN KEY (user2_id) REFERENCES users(id)
);

CREATE TABLE tweets_users (
  user_id INTEGER NOT NULL,
  tweet_id INTEGER NOT NULL,
  created_at DATE DEFAULT (datetime('now','localtime')),
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (tweet_id) REFERENCES tweets(id),
  PRIMARY KEY (user_id, tweet_id),
  UNIQUE (user_id, tweet_id)
);

CREATE TABLE hashtags_tweets (
  hashtag_name INTEGER NOT NULL,
  tweet_id INTEGER NOT NULL,
  FOREIGN KEY (hashtag_name) REFERENCES hashtags(id),
  FOREIGN KEY (tweet_id) REFERENCES tweets(id),
  PRIMARY KEY (hashtag_name, tweet_id),
  UNIQUE (hashtag_name, tweet_id)
);

INSERT INTO users (username, email, address, postal_code, city, country) VALUES
  ('Adrew88', 'adrewk@mysql.org', '6543 stairway to heaven', 34060, 'LA', 'USA'),
  ('BillyBob', 'billybob@example.com', '123 Main St', 10001, 'New York', 'USA'),
  ('CharlieChap', 'charliechap@gmail.com', '456 Oak Ave', 98765, 'Los Angeles', 'USA');


INSERT INTO tweets (content, user_id) VALUES
  ('I just learned how to make a pie out regularly to stay healthy and fit!', 3),
  ('I am a music lover and I enjoy listening to music all day long!', 1),
  ('I am a book lover and I love reading books all the time!', 2),
  ('I am a travel enthusiast and I love exploring new places and cultures!', 3),
  ('I am a foodie and I love trying new foods and experimenting with different cuisines!', 1),
  ('I am a sports enthusiast and I love watching sports and playing games!', 2),
  ('I am a fashion enthusiast and I love shopping for clothes and accessories!', 3);


INSERT INTO tweets_users (user_id, tweet_id) VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (1, 4),
  (2, 5),
  (3, 6),
  (1, 7),
  (2, 8),
  (3, 9);
```

</details>

## 2.4 - Création de la base de données des stations essences

<details>
  <summary>Code pour BDD station d'essence</summary>

### Service station Database Code

```sql

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

```

  </details>

## 2.5 - Pour aller plus loin: les différents SGBD

Types de bases de données:

1. Key-value
   redis, mcache

> Fast and efficient data retrieval. Good for small to medium-sized datasets.

2. Wide column
   cassandra, hbase

> Scalable and flexible for storing large amounts of structured data. Good for handling large datasets.

3. Document
   mongodb, firestorm, couchdb

> Easy to use and integrate with other technologies. Good for storing and retrieving unstructured data.

4. Relational
   MySQL, postgres

> Provides a structured way to store and retrieve data. Good for handling complex queries and transactions.

5. Graph
   neo4j

> Good for modeling complex relationships between data.

6. Search engine
   elastic, lucene, meilisearch

> Provides fast and efficient searching capabilities. Good for handling large amounts of text data.

7. Multi-model
   faunadb

> Provides a flexible and scalable approach to storing and retrieving data from multiple data models.

## 2.6 TP Requêtes SQL

<details>
  <summary>Requetes carburants</summary>

### requetes-carburants.sql

```sql

/*
 1. Récupérez les stations qui possèdent le service "Vente de gaz domestique"
a. Affichez uniquement le code postal de ces stations
b. Retirez les doublons -> "DISTINCT"
 */

SELECT DISTINCT code_postal
FROM point_de_vente
JOIN service_point_de_vente spdv ON spdv.point_de_vente_id = point_de_vente.id
JOIN service sv ON sv.id = spdv.service_id
WHERE sv.nom = 'Vente de gaz domestique';

-- OU

SELECT DISTINCT code_postal
FROM point_de_vente pdv, service_point_de_vente spdv, service
WHERE spdv.point_de_vente_id = pdv.id
AND service.id = spdv.service_id
AND service.nom = 'Vente de gaz domestique';

/*
 2. Sélectionner le nombre de stations se trouvant à Annecy
a. Affichez les stations qui sont ouvertes 24h/24
 */

SELECT *
FROM point_de_vente pdv
WHERE pdv.automate_24_24 = true
AND pdv.ville = 'ANNECY';

/*
 3. Récupérez le nombre total de stations en France
 a. Filtrez pour afficher le nombre de stations se trouvant dans le département 29, 23 et 69
 */

SELECT count(*)
FROM point_de_vente pdv
WHERE pdv.code_postal LIKE '29%'
OR pdv.code_postal LIKE '23%'
OR pdv.code_postal LIKE '69%';

/*
4. Calculez la moyenne des prix du Gazole en France :
a. En 2007
b. En 2014
c. En 2023
    */

SELECT AVG(valeur)
FROM prix
JOIN carburant c on prix.carburant_id = c.id
WHERE c.nom = 'Gazole'
AND prix.date::text LIKE '2007%';

SELECT AVG(valeur)
FROM prix
JOIN carburant c on prix.carburant_id = c.id
WHERE c.nom = 'Gazole'
AND prix.date::text LIKE '2014%';

SELECT AVG(valeur)
FROM prix
JOIN carburant c on prix.carburant_id = c.id
WHERE c.nom = 'Gazole'
AND prix.date::text LIKE '2023%';


/*
 5. Calculez la moyenne des prix du Gazole par département (on nommera bien la colonne
“departement” dans les résultats). Trier les résultats par département croissant (01, 02...)
a. Affichez le département où la moyenne du prix du Gazole est la moins cher
 */

SELECT LEFT(code_postal, 2) AS departement, AVG(valeur) AS avg_price
FROM point_de_vente pdv
JOIN prix ON pdv.id = prix.point_de_vente_id
JOIN carburant c ON prix.carburant_id = c.id
WHERE c.nom = 'Gazole'
GROUP BY departement
ORDER BY departement;

/*
 6. Sélectionnez le carburant qui était le plus souvent en rupture entre le mois de Janvier 2023 et
Mars 2023
a. Sélectionnez le carburant le plus souvent en rupture entre le mois de Janvier 2023 et
Mars 2023 à ANNECY
 */

SELECT nom, count(nom) AS count
FROM carburant c
         JOIN rupture r on c.id = r.carburant_id
         JOIN point_de_vente pdv on r.point_de_vente_id = pdv.id
WHERE r.debut::text > '2023-01%' AND r.fin::text < '2023-04%'
    AND pdv.ville = 'ANNECY'
GROUP BY nom
ORDER BY count DESC
LIMIT 1;

/*
 b. Affichez le département où le plus de rupture (tout types de carburants confondus) a eu
lieu entre Février 2023 et Mars 2023
 */

SELECT LEFT(code_postal, 2) AS departement, count(nom) AS count
FROM carburant c
         JOIN rupture r on c.id = r.carburant_id
         JOIN point_de_vente pdv on r.point_de_vente_id = pdv.id
WHERE r.debut::text > '2023-02%' AND r.fin::text < '2023-04%'
GROUP BY departement
ORDER BY count DESC
LIMIT 1;

/*
 7. Sélectionnez le point de vente et la date où le prix de l’E10 était le plus élevé
 */

SELECT adresse, ville, date
FROM point_de_vente pdv
    JOIN carburant c on c.id = pdv.id
    JOIN prix p on pdv.id = p.point_de_vente_id


```

</details>