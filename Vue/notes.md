# Vue.js

 ## Compétences visées

 ● Découverte de l’architecture SPA, de ses principaux frameworks et de ses champs
d’application, pour le développement mobile notamment

● Création et utilisation d’un composant Vue.js

● Utilisation des instructions Vue.js pour mettre en oeuvre le data binding

● Mise en place du routeur Vue.js

● Intégration d’une API distante pour récupérer et afficher des données

● Utilisation des outils de développement Vue.js

----

# SPA 


* Quand et pourquoi ce type d'applications a vu le jour ?

Les applications en temps réel ont vu le jour grâce au développement des applications web en utilisant des
technologies telles que Node.js et JavaScript. Les applications en temps réel nécessitent une communication
rapide entre le client et le serveur pour mettre à jour les données en temps réel.

* Quels sont les avantages et inconvénients de cette approche ?

*Les avantages* de cette approche sont notamment la rapidité de communication entre le client et le serveur,
la possibilité de mettre à jour les données en temps réel, la flexibilité et la légerité de l'architecture.

*Les inconvénients* sont notamment la complexité de la mise en place de la communication en temps réel,
la nécessité de gérer les événements de manière efficace et la possibilité de rencontrer des problèmes de
performances en raison de la single thread.


* Quels sont les principaux frameworks utilisés pour développer des "SPA" de nos jours ?

Les principaux frameworks utilisés pour développer des "SPA" de nos jours sont React, Angular et Vue.js.
React est un framework JavaScript populaire pour le développement d'interfaces utilisateur,
tandis que Angular et Vue.js sont des frameworks JavaScript plus avancés pour le développement d'applications web.
Les frameworks Angular et Vue.js offrent des fonctionnalités avancées telles que la gestion des événements,
la liaison de données et la gestion de l'état de l'application. Les frameworks React sont souvent utilisés
pour développer des applications à page unique (SPA) pour des raisons de rapidité de chargement et de facilité de
développement.

Un schéma simplifié illustrant le fonctionnement d'une SPA

![SPA schema](https://docs.ifs.com/techdocs/Foundation1/050_development/022_user_interface/030_aurena_dev/099_concepts/images/single-page-application-20190515.png)


Des principaux frameworks 

| Framework          | Date de création | Communauté / Entreprise | Licence     | Points forts              | Points faibles          |
|--------------------|-------------------|--------------------------|-------------|---------------------------|-------------------------|
| Angular            | 2010              | Google                   | MIT         | - Forte structure MVVM    | - Courbe d'apprentissage élevée |
| React              | 2013              | Facebook                 | MIT         | - Virtual DOM efficace   | - Requiert l'apprentissage d'autres bibliothèques pour un développement complet |
| Vue.js             | 2014              | Evan You                 | MIT         | - Facilité d'apprentissage | - Moins de ressources disponibles par rapport à Angular et React |
| Ember.js           | 2011              | Ember.js Core Team       | MIT         | - Conventions fortes     | - Lourdeur pour les petites applications |
| Svelte             | 2016              | Svelte Core Team         | MIT         | - Compilateur de code    | - Moins mature que les autres options |
| Backbone.js        | 2010              | Jeremy Ashkenas           | MIT         | - Léger et flexible      | - Moins d'opinions et de fonctionnalités que d'autres frameworks |


---

# Initialiser un projet Vue


La commande pour initialiser un nouveau proijet Vue: 

```
$ npm init vue@latest
```


```
Vue_project
    |-vue-project (code source du projet)
    |    |.vscode (configurations de l'environnement dans vscode)
    |    |    |extensions.json 
    |    |node_modules (les modules Node.js nécedssaires pour le projet)
    |    |    |- .bin
    |    |    |- ...
    |    |public (fichiers statiques tels que les images, les styles et les scripts)
    |    |    |favicon.ico
    |    |src (code source du projet Vue)
    |         |-assets (fichiers d'assets tels que les images, les styles et les scripts)
    |         |-components (blocs de construction réutilisables pour la création d'interface utilisateur)
    |         |-router (responsable de la gestion des routes de l'application. Il mappe les URL aux composants correspondants et les affiche à l'utilisateur)
    |         |-stores (les stores Vuex sont des modules qui gèrent l'état de l'application)
    |         |-views (Les view .vue: des composants qui représentent une page de l'application)           
    |         |App.vue (contient le composant principal de l'application, qui est responsable de l'affichage de la page initiale de l'application)
    |         |main.js (contient la configuration de l'application, telles que la configuration du routeur, des stores Vuex et des plugins)
    |
    |.gitignore (fichier pour exclure certains fichiers ou dossiers de Git)
    |package.json (fichier de configuration pour le projet Node.js)                                    
    |package-lock.json (fichier de configuration pour les dépendances Node.js)
    |README.md
    |vite.config.js (configuration pour Vite, le serveur de développement pour les projets Vue)
    
```

App Vue.js:

| Serveur web | Navigateur web | 
| --- | --- | 
| Router les requêtes HTTP | Afficher les pages web | 
| Stocker les données de l’application | Effectuer le rendu des pages web |
Exécuter le code métier de l’application | ...


* Le serveur web traite les requêtes HTTP et les route vers les fichiers d'application.
* Le navigateur web affiche les pages web
* Le serveur web stocke les données de l'application, telles que les fichiers d'application, les bases de données, etc. 
* Le serveur web peut être utilisé pour exécuter du code métier de l'application, tel que la gestion des requêtes HTTP et la gestion des données de l'application.

