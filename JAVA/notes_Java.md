# Notes sur JAVA

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

---

### Constructeur

Constructors are like normal methods within the class, but are used to initialize the object of the class. 

In Java, because of constructor overloading, a class can have multiple constructors as long as they have different parameter values. The signature is useful in that it helps the compiler differentiate between the different methods. For example:

```
public class Car {
  String color;
  int mpg;
  boolean isElectric;
 
  // constructor 1
  public Car(String carColor, int milesPerGallon) {
    color = carColor;
    mpg = milesPerGallon;
  }
  // constructor 2
  public Car(boolean electricCar, int milesPerGallon) {
    isElectric = electricCar;
    mpg = milesPerGallon;
  }
}
```

The compiler will know which constructor to use because of the values we pass into it. For example, Car myCar = new Car(true, 40) will be created by the second constructor because the arguments match the type and order of the second constructor’s signature.

---

### Fonction 

Une fonction peut être considérée comme un bloc de code avec un nom, qui exécute un service. Quand il s'agit d'une fonction   main  , le service effectué est en fait le programme lui-même.

Lorsqu'une fonction est située à l'intérieur d'une classe, elle s'appelle une méthode. Puisque tout le code est situé à l'intérieur de classes, vous pouvez utiliser les deux termes (fonctions et méthodes) de manière interchangeable.

---

### Method

Methods are reusable pieces of code in classes. The difference between a method and a function is that methods are always related to a class or an object.

---

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

Pour une précision jusqu'à 2 décimales après la virgule, vous pouvez utiliser float.  Au-delà, ce sera  double.

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

### Instance variable

We add data to an object by introducing instance variables, or instance fields.

We want Car instances of different colors, so we declare a String color instance field. Often times, instance variables are described as a “has-a” relationship with the object. For example, a Car “has-a” color


```

public class Car {
  /*
  declare fields inside the class
  by specifying the type and name
  */
  String color;
 
  public Car() {
    /* 
    instance fields available in
    scope of constructor method
    */
  }
 
  public static void main(String[] args) {
    // body of main method
  }
}
```

---

### Portée (scope)

![](https://user.oc-static.com/upload/2021/12/02/16384488903952_p1c5-2.png)

---

### Getter (accessor)

To give other classes access to a private instance variable, we would write an accessor method (sometimes also known as a “getter” method).

```
public class Dog{
  private String name;
 
  //Other methods and constructors
 
  public String getName() {
    return name;
  }
}
```

---

# Setter (mutator)

Similarly, private instance variables often have mutator methods (sometimes known as “setters”). These methods allow other classes to reset the value stored in private instance variables.

```
ublic class Dog{
  private String name;
 
  //Other methods and constructors
 
  public void setName(String newName) {
    name = newName;
  }
 
```

---



### Divers: 

"sout" (enter) = System.put.println();



