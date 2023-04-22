<?php
$type = $_GET["type"];
?>
<div>
              
                <?php
if ((isset($_SESSION["web_project"]))) {
                ?>
                <form action="../add_remove/Add_index.php" method="post">
                    <input type="hidden" value="attr" name="type">
                    <button type="submit">Add post</button>
                </form>

                <?php
}
?>
<!-- <button onclick="defaultsort(<?=$type?>)">latest</button>
<button onclick="sortlike(<?=$type?>)">most favorite</button> -->
            </div>
<!--brief content-->
            <div id="infor">
<div id="sort">
                <?php
                $db = new PDO("mysql:dbname=web_project_1111;host=localhost", "root", "");
                
                $by=$_GET["by"];
                if ($by == "good") {

                    $sql = $db->query("SELECT *FROM`$type` ORDER BY `good`DESC LIMIT 5");
                }else if($by=="def"){
                    $sql = $db->query("SELECT *FROM`$type` ORDER BY `upload_time`DESC LIMIT 5");
                }
?>
</div>
<?php
$num = $sql->rowCount();
                $time = 1;
                foreach ($sql as $row) {
                    
                    if ((isset($_SESSION["web_project"]))) {
                        ?>

                <form action="../add_remove/Edit.php" method="post">
                    <input type="hidden" value="attr" name="type">
                    <input type="hidden" value="<?=$row["title"]?>" name="post_title">
                    <button type="submit">
                        <img src="../../pic/Edit_pic/Edit.png" alt="" width="20px">
                    </button>
                </form>

                <form action="../add_remove/dele.php" method="post" id="dele" onsubmit="return realy(this)">
                    <input type="hidden" value="attr" name="type">
                    <input type="hidden" value="<?=$row["title"]?> " name="post_title">
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
                        <img src="<?=$row['pic_route']?>" alt="pic" width="300px">
                    </p>
                    <p>
                        <?=$row['tips']?>
                    </p>
                    
                </div>
                <div>
    
                        <?php
                    $type = "'attr'";
                    $title = $row["id"];
                    $now = $row["good"];
                ?>
                    <button type="submit" onclick="add_like(<?=$type?>,<?=$title?>,<?=$now?>,<?=$time?>)" id="like-btn<?=$time?>"><?=$row["good"]?> like</button>
                    
                </div>
                <hr>
                <?php
                    $time++;
                }
                $sortway="'$by'"
?>
<a href="#wait_pic1">
<button class="load-btn" onclick="load(<?=$type?>,<?=$sortway?>)">load</button>
</a>
    <div id="wait_pic1">

    </div>

                <!--brief content_end-->


            </div>


