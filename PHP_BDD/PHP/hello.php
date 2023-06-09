<?php
if(isset($_GET['prenom'])) {
    $prenom = $_GET['prenom'];
    echo "Hello $prenom";
} else {
    echo "Hello world";
}
?>