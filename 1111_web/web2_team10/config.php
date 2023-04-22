<?php

$db = new PDO("mysql:dbname=web_project_1111;host=localhost", "root", "");

    if(!$db){
        printf("connect db failed");
        exit();
    }

?>