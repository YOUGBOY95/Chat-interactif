<?php
session_start();
if(!isset($_SESSION["pseudo"]))
{
    header("location:connexion.php");
}
$pseudo = $_SESSION["pseudo"];
$id = mysqli_connect("127.0.0.1", "root", "", "chatF2iV2"); 
    if(isset($_POST["bouton"]))
    {
        $destinataire = $_POST["destinataire"];
        $message = $_POST["message"];
        $req = "insert into messages values (null,'$pseudo','$message',now(),'$destinataire')";
        $res = mysqli_query($id, $req);

        //print_r($_POST);
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="styleChat.css">
</head>
<body>
    <div class="container">
        <h1>Bonjour <?php echo $_SESSION["pseudo"];?> Chattez'en direct! Chatbox</h1>
        <div class="messages">
            <ul>
             <?php
              
             $resultat = mysqli_query($id, "select * from messages 
                                            where destinataire='$pseudo'
                                            or destinataire='tous' order by date desc"); 
             while($ligne = mysqli_fetch_assoc($resultat))
             { ?>
            
             <li class="message"><?php echo $ligne["date"]?> - <?=$ligne["pseudo"]?>: <?=$ligne["message"]?></li>           
               
             <?php
             }
             ?>
            </ul>
        </div>
        <div class="formulaire">
            <form action="" method="post">
                <!-- <input type="text" name="pseudo" placeholder="Pseudo :"> -->
                <input type="text" name="message" placeholder="Message :">
                Destinataire : <select name="destinataire">
                    <option value="tous"> Tous </option>
                    <?php
                    $req = "select * from users order by pseudo";
                    $res = mysqli_query($id, $req);
                    while($ligne = mysqli_fetch_assoc($res))
                    {
                        echo "<option>".$ligne["pseudo"]."</option>";
                    }
                    ?>
                </select>
                <input type="submit" value="Envoyer" name="bouton">
            </form>
        </div>
        <a href="deconnexion.php">Déconnexion</a>
    </div>
</body>
</html>