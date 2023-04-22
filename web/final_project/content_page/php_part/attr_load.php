<?php
session_start();
if (isset($_GET["times"])) {
    $time = $_GET["times"];
}
sleep(3);
?>






<?php

$start = 5 + 3 * ($time - 1);
$post_num = 3;
$db = new PDO("mysql:dbname=web_project_1111;host=localhost", "root", "");
$sql = $db->query("SELECT *FROM`attr` ORDER BY `upload_time`DESC LIMIT $start,$post_num");
$sql2 = $db->query("SELECT *FROM`attr`");
$num = $sql2->rowCount();


$time2 = $start;
foreach ($sql as $row) {
    

    if ((isset($_SESSION["web_project"]))) {
?>

        <form action="../add_remove/Edit.php" method="post">
            <input type="hidden" value="attr" name="type">
            <input type="hidden" value="<?= $row["title"] ?>" name="post_title">
            <button type="submit">
                <img src="../../pic/Edit_pic/Edit.png" alt="" width="20px">
            </button>
        </form>

        <form action="../add_remove/dele.php" method="post" id="dele" onsubmit="return realy(this)">
            <input type="hidden" value="attr" name="type">
            <input type="hidden" value="<?= $row["title"] ?> " name="post_title">
            <button type="submit">
                <img src="../../pic/Edit_pic/dele.png" alt="" width="20px">
            </button>
        </form>

    <?php
    }
    ?>
    <div>
        <h2>
            <?= $row['title'] ?>
        </h2>
    </div>

    <div id="brief">
        <p>
            <?= $row['content'] ?>

        </p>
        <p>
            <img src="<?= $row['pic_route'] ?>" alt="pic" width="300px">
        </p>
        <p>
            <?= $row['tips'] ?>
        </p>
    </div>
    <div>
    
    <?php
$type = "'attr'";
$title = $row["id"];
$now = $row["good"];
?>
<button type="submit" onclick="add_like(<?=$type?>,<?=$title?>,<?=$now?>,<?=$time2?>)" id="like-btn<?=$time2?>"><?=$row["good"]?> like</button>

</div>
    <hr>

<?php
    $time2++;
}
if ($num - ($start+$post_num )> 0) {
?>
<a href="#wait_pic<?=$time+1?>">
    <button class="load-btn" onclick="load()">load</button>
    </a>
<?php
} else {
?>
    <h3>
        There is no more contents!
    </h3>
<?php

}

echo "<script>";
echo "var dele=document.getElementById(\"wait_pic".$time."\");";
echo "dele.innerHTML=\"\";";
echo "</script>";

?>
<script>

// var dele=document.getElementById("wait_pic"+1);
// dele.innerHTML="";

var area = document.createElement("div");
    area.id="wait_pic"+$time;
    document.getElementById("infor").appendChild(area);

</script>
