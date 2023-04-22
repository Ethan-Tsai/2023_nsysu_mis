<!DOCTYPE html>
<html>
<head>
<title>How to Create Facebook Like Infinite Scroll Pagination using PHP
    and jQuery</title>
<script type="text/javascript" src="jquery-3.2.1.min.js"></script>
<script src="./in.js"></script>
<style type="text/css">
body {
    font-family: Arial;
    background: #e9ebee;
    font-size: 0.9em;
}

.post-wall {
    background: #FFF;
    border: #e0dfdf 1px solid;
    padding: 20px;
    border-radius: 5px;
    margin: 0 auto;
    width: 500px;
}

.post-item {
    padding: 10px;
    border: #f3f3f3 1px solid;
    border-radius: 5px;
    margin-bottom: 30px;
}

.post-title {
    color: #4faae6;
}

.ajax-loader {
    display: block;
    text-align: center;
}
.ajax-loader img {
    width: 50px;
    vertical-align: middle;
}
</style>
</head>
<body>
    <div class="post-wall">
        <div id="post-list">
            <?php
            include('db.php');
            $sqlQuery = "SELECT * FROM tbl_posts";
            $result = mysqli_query($conn, $sqlQuery);
            $total_count = mysqli_num_rows($result);
            
            $sqlQuery = "SELECT * FROM tbl_posts ORDER BY id DESC LIMIT 7";
            $result = mysqli_query($conn, $sqlQuery);
            ?>
            <input type="hidden" name="total_count" id="total_count"
            value="<?php echo $total_count; ?>" />

            <?php
            while ($row = mysqli_fetch_assoc($result)) {
                $content = substr($row['content'], 0, 1000);
                ?>
                <div class="post-item" id="<?php echo $row['id']; ?>">
                    <p class="post-title"><?php echo $row['title']; ?></p>
                    <p><?php echo $content; ?></p>
                </div>
                <?php
                }
                ?>
            </div>
            <div class="ajax-loader text-center">
                <img src="LoaderIcon.gif"> Loading more posts...
            </div>
    </div>


</body>
</html>