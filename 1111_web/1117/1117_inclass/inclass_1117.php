
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,IE=chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./inclass_1117.css">
    <title>1117_inclass_practice</title>


</head>

<body>

<form action="upload.php" method="post" enctype="multipart/form-data">

    <input type="file" name="avatar" />
    <input type="submit" value="Upload Image" name="submit">
</form>
<?php
$POS="post1";
?>
<img src="./pic/".$POS alt="pic">



    <?php


if (isset($_COOKIE["ifin"])) {
       ?>
       <div class="login">
<p>
       <?php
       $user=$_COOKIE["ifin"];
           echo "web logged in";
       ?>
</p>
</div>

<?php
   
}
?>
    <h1>Ethan Tsai</h1>
    <div>
        <!--
            <img src="./111.jpg" width="300" alt="headshot in same folder(with related path)">
    -->
        <?php

        if($_SERVER["REQUEST_METHOD"] == "GET"&&!(isset($_COOKIE["ifin"]))) {
            
            ?>

            <form action="./inclass_1117.php" method="post" class="login">
        Username: <input type="text" name="Username"/> <br><br>
        Password: <input type="password" name="Password" /> <br><br>
        <input type="submit" value="Submit">
        </form>
        <?php
} elseif ($_SERVER["REQUEST_METHOD"] == "POST"&&!(isset($_COOKIE["ifin"]))) {
    if (isset($_COOKIE["ifin"])) {

            ?>
            <div class="login">
<p>
            <?php
                echo "web logged in";
            ?>
</p>
</div>
<?php
        
    }else{

    $user=$_POST["Username"];
    $pass=$_POST["Password"];

if ($user=="web"&&$pass=="programming") {
    $ti=60*60*24;
    setcookie("ifin","web",time()+3600);


?>
<div class="login">
<p>
            <?php
                echo "web logged in";
            ?>
</p>
</div>
<?php
}
else{
?>
        <form action="./inclass_1117.php" method="post" class="login">
        <p id="red">Incorrect login information</p><br>
        Username: <input type="text" name="Username"/> <br><br>
        Password: <input type="password" name="Password" /> <br><br>
        <input type="submit" value="Submit">
<?php
}
}
}



?>
    </div>
</body>
</html>