<?php
session_start();
include('../config.php');

$acc = $_POST["acc"];
$pass = $_POST["pass"];
$method = $_POST["method"];

$resultAcc = $db->query("SELECT * FROM `login_user` WHERE `acc` = '$acc'");
$num = $resultAcc->rowCount();
if($method==1){

    if($num){
    
        foreach($resultAcc as $row){
            if($pass==$row['pass']){
                $url = '../index.php';
                $msg = "登入成功";
                $_SESSION['web_project'] = $acc;
            }
            else{
                $url = 'login_index.php';
                $msg = "密碼錯誤";
            }
        } 
    }
    else{
        $url = 'login_index.php';
        $msg = "帳號不存在";
    }
}
else{
    if($num){
        $url = 'login_index.php';
        $msg = "此帳號已被註冊";
    }
    else{
        $addacc ="INSERT INTO `login_user`(`acc`,`pass`)VALUES('$acc','$pass')";
        $db->exec($addacc);

        $url = 'login_index.php';
        $msg = "註冊完成，請重新登入";
    }




}
echo "<script>";
echo "alert('$msg');";
echo "location.href='$url';";
echo "</script>";



