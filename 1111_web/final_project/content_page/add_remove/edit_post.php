<?php
$change = $_POST["change"];
$type = $_POST["type"];
$post = $_POST["post_title"];
$db = new PDO("mysql:dbname=web_project_1111;host=localhost", "root", "");
$change = $db->quote($change);
$cha = "UPDATE `$type` SET `content`=$change WHERE `title`='$post'";
$db->exec($cha);
?>

<script>
    alert("Edit success!");
    location.href='javascript:history.go(-2)';
</script>