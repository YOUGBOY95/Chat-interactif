<?php
session_start();
session_destroy();
echo "Vous êtes deconnecté.....<br>Redirection en cours...";
header("refresh:3;url=connexion.php");
//header("location:connexion.php");

?>