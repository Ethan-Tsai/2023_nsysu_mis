<?php

$type = $_GET["type"];
$title = $_GET["title"];

$db = new PDO("mysql:dbname=web_project_1111;host=localhost", "root", "");
$sql = $db->query("SELECT *FROM `$type` WHERE `id`=$title");
foreach($sql as $row){
    $num = $row["good"] + 1;
}
$addgood = "UPDATE `$type` SET `good`=$num WHERE `id`='$title'";
$db->exec($addgood);
$sql = $db->query("SELECT *FROM `$type` WHERE `id`=$title");
foreach($sql as $row){
    ?>
        <?=$row["good"]?> like
    
    <?php
}


?>
