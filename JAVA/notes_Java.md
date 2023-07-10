# Notes JAVA

## Objectif Global

Le but de ce module est la découverte du langage orienté Java et d’aller plus loin dans les concepts
concernant la programmation orientée objet.

Objectifs pédagogiques
- Découverte d’un nouveau langage objet
- Renforcer et développer vos connaissances en programmation orientée objet
- Consolider les connaissances vues lors des précédents modules (algo, base de données)
- Un premier pas dans le développement d'applications bureau.

---

### Infos générales sur Java:

>Java est un langage statiquement typé et compilé :

● les variables sont définies avec un type de données (une variable “String” ne pourra contenir
que des valeurs de type "String")

● les fichiers sources devront être compilés (sorte de traduction) en fichiers “classes” avant
d’être exécutés
 
>Cela oblige à bien définir les types des variables et à subir l’étape supplémentaire de compilation,
mais apporte plusieurs avantages :

● Certaines erreurs sont détectées lors de la compilation et non lors de l’exécution (le code
n'est plus “sûr”).

● Des optimisations plus poussées peuvent être mises en œuvre

● les classes générées sont indépendantes du système.

---

### Compiler

Un fichier Nom.java peut être compilé dans le terminal en faisant: 

```
javac Nom.java
```

Une fois compilé on peut executer en faisant: 

```
java Nom
```

---

### Classe

Les classes représentent les patrons de construction des objets de votre programme.


Une classe est un ensemble :

    de variables, nommées attributs ;

    et de comportements, nommés méthodes.


### Fonction 

Une fonction peut être considérée comme un bloc de code avec un nom, qui exécute un service. Quand il s'agit d'une fonction   main  , le service effectué est en fait le programme lui-même.

Lorsqu'une fonction est située à l'intérieur d'une classe, elle s'appelle une méthode. Puisque tout le code est situé à l'intérieur de classes, vous pouvez utiliser les deux termes (fonctions et méthodes) de manière interchangeable.

### Variables

Une déclaration de variable est composée de trois éléments : type, nom, et valeur.


Pour déclarer une constante en Java, vous devez utiliser le mot clé final :

```
final int NUMBEROFWEEKDAYS = 7;
```

```
final String MYFAVOURITEFOOD = "Icecream";
```

---

Pour une précision jusqu'à 2 décimales après la virgule, vous pouvez utiliser float  .  Au-delà, ce sera  double.

```
float length = 1876.79;
```

```
double width = 1876.79797657;
```

Autres data types:
* int, which stores whole numbers.
* double, which stores bigger whole numbers and decimal numbers.
* boolean, which stores true and false.
* char, which stores single characters using single quotes.
* String, which stores multiple characters using double quotes.

---

### Portée (scope)

![](https://user.oc-static.com/upload/2021/12/02/16384488903952_p1c5-2.png)




### Divers: 

"sout" (enter) = System.put.println();



