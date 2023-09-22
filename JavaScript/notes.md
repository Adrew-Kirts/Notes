# JavaScript

### Compétences visé

Langage ES6+

● Connaître la différence entre 'let' et 'const'

● Connaissance du rôle de 'this'

● Importer et exporter des modules

● Utilisation du "destructuring"

● Utilisation des promesses

● Utilisation de l’API fetch

● Utilisation d’async/await


Environnement NodeJS/NPM

● Créer script NPM

● Lancer un script avec npm

● Installer un package npm

● Créer un programme en Node.js


### Glossaire

***let*** - permet de déclarer une variable dont la portée est celle du bloc courant, éventuellement en initialisant sa valeur.

**const** - 

**fonctions flechées** - les fonctions flechées sont une syntaxe plus concise pour définir des fonctions. Elles sont souvent utilisées en JavaScript pour définir des fonctions anonymes.

*Classique*:
```
const sayHello = function() {
     console.log('Hello')
};
```

*Fonction fléchée*:
```
const sayHello = () =>  console.log('Hello');
```

**object.keys** - envoie un tableau contenant les noms de toutes les propriétés d'un objet. Elle peut être utilisée pour itérer sur les propriétés d'un objet.

**object.values** - renvoie un tableau contenant les valeurs de toutes les propriétés d'un objet. Elle peut être utilisée pour itérer sur les valeurs d'un objet.

```
const bus = {
    vehicle: 'Urbanway CNG 12',
    id: 3221,
    line: 'C6',
    paint: 'chrono',
    garage: {
        name: 'Sassenage',
        place: '47'
    },
    equipments: ['sae', 'tft', 'speech']
};

//Afficher les caractéristiques du véhicule sours la forme `clé : valeur`
for (let i=0; i < Object.keys(bus).length; i++){
    console.log(Object.keys(bus)[i], ": ", Object.values(bus)[i]);
}
```

**destructuring** - Cette fonctionnalité de JavaScript permet de décomposer des objets ou des tableaux en variables distinctes. Elle peut être utilisée pour simplifier le code et rendre le code plus lisible.

```
function addDisruption({type, id, dateDebut, dateFin, texte = "no text here",...rest }) {

   data["SEM_8888"] = {type, id, dateDebut, dateFin, texte,...rest };
}
addDisruption(perturbationData);
```
### Import/export

*Export*

Afin d'utiliser les fonctionnalités d'un module, on devra les exporter.
La méthode la plus simple consiste à placer cette instruction devant chaque valeur qu'on souhaite exporter

Une méthode plus concise consiste à exporter l'ensemble des valeurs grâce à une seule instruction située à la fin du fichier

```
syntax: export { hello, showError, nyan };
```

*Import*

Lorsque des fonctionnalités sont exportées par un premier module, on peut les importer dans un script afin de les utiliser

```
syntax: import {name of function/variable/..} from './scriptName.js (or.mjs)'
```

*Importer une fonction anonyme*

Fonction anonyme:
```
export default () => console.log('Hello world!');
```
Nommé à l'import:

```
import helloWord from './my/path';
```
Ceci est possible pour qu'une seule fonction anonyme


### Promises 

Promises can be in one of three possible states. These states indicate the progress of the promise. They are:

    pending: This is the default state of a defined promise

    fulfilled:  This is the state of a successful promise

    rejected: This is the state of a failed promise

Example: 

```
const promise = new Promise((resolve, reject) => {
  const num = Math.random();
  if (num >= 0.5) {
    resolve("Promise is fulfilled!");
  } else {
    reject("Promise failed!");
  }
});
```

