<?php
session_start();

unset($_SESSION["web_project"]);
    echo "<script>";
    echo "alert('登出成功!');";
    echo "location.href='../index.php';";
    echo "</script>";
?>  