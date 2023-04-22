<?php
session_start();
if (isset($_GET["times"])) {
    $time = $_GET["times"];
}
sleep(3);
?>

<?php
$type = $_GET["type"];
$link = $_GET["type"];
$typebtn = "'$type'";
$start = 5 + 5* ($time-1);
$post_num = 5;
echo "<span class=\"blo\">Experience" . $time + 1 ."</span>";

$pos = $start;

$db = new PDO("mysql:dbname=web_project_1111;host=localhost", "root", "");

//echo $type;
$sortway = $_GET["sortway"];

if($sortway=="good"){
    $sql = $db->query("SELECT *FROM`$type` ORDER BY `good`DESC LIMIT $start,$post_num");
}else if($sortway=="def"){
    $sql = $db->query("SELECT *FROM`$type` ORDER BY `id` LIMIT $start,5");
}




$sql2 = $db->query("SELECT *FROM`$type`");
$num = $sql2->rowCount();



foreach ($sql as $row) {

    if ((isset($_SESSION["web_project"]))) {
?>

        <!-- <form action="../add_remove/Edit.php" method="post">
            <input type="hidden" value="$type" name="type">
            <input type="hidden" value="<?= $row["title"] ?>" name="post_title">
            <button type="submit">
                <img src="../../pic/Edit_pic/Edit.png" alt="" width="20px">
            </button>
        </form>

        <form action="../add_remove/dele.php" method="post" id="dele" onsubmit="return realy(this)">
            <input type="hidden" value="type" name="type">
            <input type="hidden" value="<?= $row["title"] ?> " name="post_title">
            <button type="submit">
                <img src="../../pic/Edit_pic/dele.png" alt="" width="20px">
            </button>
        </form> -->

    <?php
    }
    ?>
    <div>
        <h2>
            <?= $row['title'] ?>
        </h2>
    </div>

    <div id="brief">
                    <div id="f1">
                        <p>
                            <?= $row['content'] ?>

                        </p>
                        <div>
                            <p>
                                <img src="<?=$row['pic_route']?>" alt="pic" width="300px">
                            </p>
                            <p>
                                <?=$row['tips']?>
                            </p>
                        </div>
                    </div>
                </div>
    <div id="likebutton">
    
    <?php

$title = $row["id"];
$now = $row["good"];
$sortwayarg = "'$sortway'";
    $pos = $pos + 1;
    $type = "'$type'";
?>
<button type="submit" onclick="add_like('blog',<?=$title?>,<?=$now?>,<?=$pos?>)" id="like-btn<?=$pos?>"><?=$row["good"]?> like</button>

</div>
    <hr>

<?php
    
}
if ($num - ($start+$post_num )>0) {
    if($num - ($start+2*$post_num )<=0){
        ?>
            <a href="#wait_pic<?=$time+1?>">
                <button class="load-btn" onclick="load(<?=$typebtn?>,<?=$sortwayarg?>,2)">load</button>
                </a>
        <?php 
        }else{
            ?>
            <a href="#wait_pic<?=$time+1?>">
            <button class="load-btn" onclick="load(<?=$typebtn?>,<?=$sortwayarg?>,0)">load</button>
            </a>
            <?php
        }
}else{
    ?>
    <h3>
        There is no more contents!
    </h3>
    
    <a href="./<?=$link?>.php">back top</a>
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
