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
(0, N)  = genre contient au min. 0 films et au max. illimité de films
(1,1)   = film a min 1 genre et max 1 genre (si on suppose que le fils est unigenre)

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





