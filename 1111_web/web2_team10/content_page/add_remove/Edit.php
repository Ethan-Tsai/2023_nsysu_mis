<head>
    <link rel="stylesheet" href="./add.css">
</head>
<body>
    

<?php
$db = new PDO("mysql:dbname=web_project_1111;host=localhost", "root", "");
$type = $_POST["type"];
$post = $_POST["post_title"];
$post = $db->quote($post);

$sql = $db->query("SELECT*FROM`$type` WHERE `title`=$post");

foreach($sql as $row){
    ?>
    <div id="content">

    
    <div>
        <h1>
            title:
            <?=$row["title"]?>
        </h1>
    </div>

    <div id="fom">
        <div>
        <form action="./edit_post.php" method="post">
        <textarea name="change" id="tip" cols="40" rows="20"><?=$row["content"]?></textarea>
        <input type="hidden" value="<?=$row["title"]?> " name="post_title">
        <input type="hidden" value="<?=$type?>" name="type">
        <button type="submit">Edit!</button>
        </form>
        </div>
    </div>
    </div>
    
<?php
}
?>
</body>