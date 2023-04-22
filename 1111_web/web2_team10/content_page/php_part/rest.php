<?php
 $type = "'rest'";

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge IE=chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css_part/Attractions.css">
    <link rel="icon" href="../../pic/index_pic/Home5.jpg">
    <script src="../js_part/jquery-3.6.1.js"></script>
    <script src="../js_part/realy.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Patrick+Hand&display=swap" rel="stylesheet">
    <!-- <script src="../js_part/attr_infite.js"></script>
 -->
 
    <script src="../js_part/add_like.js"></script>
    <script src="../js_part/sort.js"></script>
    <script src="../js_part/infinite.js"></script>
    <title>Restaurants</title>
</head>

<body>
    
    <div id="content">
        <?php
       
        
        
    include("./nav_bartest.php");
?>
        <style>
            a {
                text-decoration: none;
            }
        </style>
        <div>
        <h1>
                Restaurants
                <hr>
                <img src="../../pic/new_pic/rest/Taitai I Want.jpg" alt="" width="65%">
                <hr>
                </h1>
        </div>
        <div id="sobtn">
            <div>
<button id="sort1"  onclick="defaultsort(<?=$type?>)"><?php $reset=1?>latest<?php $sortway="'def'"?></button>
            </div>
            <div>
<button  id="sort2" onclick="sortlike(<?=$type?>)"><?php $reset=1?>most favorite<?php $sortway="'good'"?></button>
            </div>
<div id="add_bt">

<?php
if ((isset($_SESSION["web_project"]))) {
?>
<form action="../add_remove/Add_index.php" method="post">
    <input type="hidden" value="rest" name="type">
    <button type="submit">Add post</button>
</form>

<?php
}
?>

</div>
</div>
        <div id="intro">

            <!--brief content-->
            <div id="infor">
<div id="sort">
                <?php
$db = new PDO("mysql:dbname=web_project_1111;host=localhost", "root", "");
$sql = $db->query("SELECT *FROM`rest` ORDER BY `upload_time`DESC LIMIT 5");
?>
</div>
<?php
$num = $sql->rowCount();
                $time = 1;

                foreach ($sql as $row) {
                    
          ?>
                <div>
                    <h2>
                        <?= $row['title'] ?>
                        <?php
                        if ((isset($_SESSION["web_project"]))) {
                        ?>

                        <div id="ed-btn">
                <form action="../add_remove/Edit.php" method="post">
                    <input type="hidden" value="rest" name="type">
                    <input type="hidden" value="<?=$row["title"]?>" name="post_title">
                    <button type="submit">
                        <img src="../../pic/Edit_pic/Edit.png" alt="" width="20px">
                    </button>
                </form>

                <form action="../add_remove/dele.php" method="post" id="dele" onsubmit="return realy(this)">
                    <input type="hidden" value="rest" name="type">
                    <input type="hidden" value="<?=$row["title"]?> " name="post_title">
                    <button type="submit">
                        <img src="../../pic/Edit_pic/dele.png" alt="" width="20px">
                    </button>
                </form>
                </div>
                <?php
                        }
                ?>

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
                    $type = "'rest'";
                    $title = $row["id"];
                    $now = $row["good"];
                ?>
                    <button type="submit" onclick="add_like(<?=$type?>,<?=$title?>,<?=$now?>,<?=$time?>)" id="like-btn<?=$time?>"><?=$row["good"]?> like</button>
                    
                </div>
                <hr>
                <?php
                    $time++;
                    
                }
                $sortway = "'def'";
$reset = 0;

?>

<a href="#wait_pic1">
<button class="load-btn" onclick="load('rest',<?=$sortway?>,<?=$reset?>)">load</button>
</a>
    <div id="wait_pic1">

    </div>

                <!--brief content_end-->


            </div>

        </div>

    </div>
</body>

</html>