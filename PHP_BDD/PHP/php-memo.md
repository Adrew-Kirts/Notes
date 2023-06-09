# MEMO - PHP

> Réponses aux questions du module PHP

## 3.1 - Installation

Installation de PHP sur Linux - fait

## 3.2 - Présentation du langage

Expliquez l'intérêt des éléments cités ci-dessous et leur relation :

- Apache
  Apache est un serveur web open source qui permet de servir des pages web statiques et dynamiques. Il est souvent utilisé en conjonction avec PHP pour créer des sites web dynamiques.

- Navigateur
  Le navigateur est un logiciel qui permet d'afficher des pages web à partir d'un serveur web. Il est responsable de la récupération des pages web à partir du serveur web et de l'affichage à l'utilisateur.

- PHP
  PHP est un langage de programmation côté serveur qui est souvent utilisé en conjonction avec le serveur web Apache pour créer des sites web dynamiques. Il permet de générer du contenu dynamique sur le serveur web, comme des pages web interactives et des bases de données.

- Langage Client
  Le langage client est le langage de programmation utilisé dans le navigateur pour communiquer avec le serveur web.

- Langage Serveur
  Le langage serveur est le langage de programmation utilisé sur le serveur web pour communiquer avec le navigateur.

- Protocole HTTP
  Le protocole HTTP est un protocole de communication utilisé pour transférer des données entre le navigateur et le serveur web. Il est utilisé pour transférer des pages web statiques et dynamiques entre le navigateur et le serveur web.

- Serveur WEB
  Le serveur WEB est un ordinateur qui héberge des sites web et des applications web. Il est responsable de la gestion des requêtes HTTP entrantes et de la réponse HTTP sortante pour les clients connectés.

## 3.3 - Hello world!

La variable $argv est un tableau contenant tous les arguments passés à la ligne de commande, y compris le nom du script. Par exemple, si vous exécutez le script PHP en utilisant la commande suivante :

```php
php mon_script.php arg1 arg2 arg3
```

La variable $argv contiendra le tableau suivant :

```php
array(
    'on_script.php',
    'arg1',
    'arg2',
    'arg3'
)
```

La variable $argc contient le nombre d'arguments passés à la ligne de commande, y compris le nom du script. Par exemple, si vous exécutez le script PHP en utilisant la commande suivante :

Copy codephp mon_script.php arg1 arg2 arg3
La variable $argc contiendra la valeur 4.

## 3.4
