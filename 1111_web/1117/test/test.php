<script src="./jquery-3.6.1.js"></script>
<script src="./infite.js"></script>
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
                $content = substr($row['content'], 0, 1000000);
                ?>
        <div class="post-item" id="<?php echo $row['id']; ?>">
            <p class="post-title">
                <?php echo $row['title']; ?>
                <hr>
                <hr>
                <hr>
                <div>
                    <p><p><p><p></p></p></p></p>
                </div>
            </p>
            <p>
                <?php echo $content; ?>
            </p>
        </div>
        <?php
            }
        ?>
    </div>
    <div class="ajax-loader text-center">
        <img src="LoaderIcon.gif"> Loading more posts...
    </div>
</div>