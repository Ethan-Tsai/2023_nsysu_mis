
<?php
    $db = new PDO("mysql:dbname=web_project_1111;host=localhost", "root", "");
    $type = $_POST["type"];
    $post = $_POST["post_title"];
    $post = $db->quote($post);
    $dele = "DELETE FROM `$type` WHERE `title`=$post";
    $db->exec($dele);

    echo "<script>";
    echo "alert('Delete success!');";
    echo "location.href='javascript:history.back()';";
    echo "</script>";
    exit();
?>
