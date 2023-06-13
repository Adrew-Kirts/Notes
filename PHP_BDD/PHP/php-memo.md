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

## 3.4 - Calculatrice

<details>
  <summary>Code pour calculatrice</summary>

```php

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculator</title>
</head>
<body>

    <form action="" method="get">
        <input type="number" name="num1" placeholder="Number 1">
        <br>
        <input type="number" name="num2" placeholder="Number 2">
        <br>
        <select name="operator">
            <option>Choose operator:</option>
            <option>Add</option>
            <option>Substract</option>
            <option>Multiply</option>
            <option>Divide</option>
        </select>
        <button type="submit" name= "submit" value="submit">Calculate</button>
<p>
    </form>

    <?php

if (isset($_GET['submit'])) {
    $result1 = $_GET['num1'];
    $result2 = $_GET['num2'];
    $operator = $_GET['operator'];


    switch ($operator) {

        case "Add":
            echo "You calculated ",$result1, "+", $result2, "<br><br>";
            echo "Answer: ", $result1 + $result2;
        break;

        case "Substract":
            echo "You calculated ",$result1, "-", $result2, "<br><br>";
            echo "Answer: ", $result1 - $result2;
        break;

        case "Multiply":
            echo "You calculated ",$result1, "*", $result2, "<br><br>";
            echo "Answer: ", $result1 * $result2;
        break;

        case "Divide":
            echo "You calculated ",$result1, "/", $result2, "<br><br>";
            echo "Answer: ", $result1 / $result2;
        break;

        default:
            die("You need to select an operator!");

    }
}

?>
</p>
</body>
</html>

```

</details>

## 3.5 - Devine le nombre

<details>
  <summary>Code pour devine le nombre</summary>

```php


  <?php

$number  = rand(1, 100);
      $guesses = 0;
      $didIWinYet = false;
      $handle  = fopen('php://stdin', 'r');

      echo "\nGuess a number between 1 and 100..\n";

      while (!$didIWinYet)
      {
          $guesses++;
          echo 'What is your guess? ';

          $guess = fgets($handle);

              if ($guess > $number)
              {
                  echo "Too high...\n";
              }
              elseif ($guess < $number)
              {
                  echo "Too low...\n";
              }
              elseif ($guess == $number)
              {
                  echo "\nYou guessed it in ", "$guesses", " times!\n\n";
                  exit;
              }
          }
  ?>

```

  </details>

## 3.5 - Devine le nombre (2)

<details>
  <summary>Code pour devine le nombre - partie 2</summary>

```php


    <?php

playGame();

function playGame(){
        $guesses = 1;
        $didIWinYet = false;
        $handle  = fopen('php://stdin', 'r');
        $maxRandom = (int)readline('Choose the max value for the number to find: ');
        define('MIN_NUMBER', 1);
        $number  = rand(MIN_NUMBER, $maxRandom);
        
        echo "\nGuess a number between ", MIN_NUMBER," and ", "$maxRandom", "..\n";
        
        while (!$didIWinYet)
        {
            echo 'What is your guess? ';
        
            $guess = fgets($handle);
            $lastGuess = $guess;

            if($guesses == 1 && $guess !== $number){
                $old_gap = abs($number-$guess);
                echo "Try again...\n";
        
            } else if($guess != $number){
                $gap = abs($number-$guess);
                if($gap < $old_gap){
                    echo "getting closer...\n";
                }else{
                    echo "moving away...\n";
                }
                $old_gap = $gap;
        
            }else{
                echo "\nYou guessed it in $guesses times!\n\n";
                exit();
            }
                    $guesses++;
            }
        }
    ?>

```

## 3.6 - Création d'un template

<details>
  <summary>Code pour template</summary>

```php



```



