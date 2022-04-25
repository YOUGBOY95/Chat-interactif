<?php
session_start();
if(isset($_POST["bout"]))
{
    $pseudo = $_POST["pseudo"];
    $mdp = $_POST["mdp"];
    $id = mysqli_connect("127.0.0.1", "root", "", "chatF2iV2"); 
    $req = "select * from users 
            where pseudo = '$pseudo'
            and mdp = '$mdp'";
    $resultat = mysqli_query($id, $req);
    if(mysqli_num_rows($resultat)>0)
    {
        $_SESSION["pseudo"] = $pseudo;
        header("location:chatV2.php");
    }else{
        $erreur = "Erreur de pseudo ou de mot de passe.";
    }
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Formulaire de connexion</h1><hr>
    <form action="" method="post"> 
         <?php if(isset($erreur)) echo "<h3>$erreur</h3>";?>
        <input type="text" name="pseudo" placeholder="Pseudo :" required><br><br>
        <input type="password" name="mdp" placeholder="Mot de passe :" required><br><br>
        <input type="submit" value="Connexion" name="bout"><hr>
    </form>
</body>
</html>