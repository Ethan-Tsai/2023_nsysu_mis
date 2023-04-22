<?php
include("./config.php");

$rows = $db->query("SELECT * FROM `posts` WHERE `Id`=1 ");
foreach ($rows as $row) {
    echo "test";
    
    ?>
   <img src="<?=$row['route']?>" alt="">
    <?php


}

?>
