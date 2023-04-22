<?php
session_start();
if (!(isset($_SESSION["web_project"]))) {
    echo "<script>";
    echo "alert('請先登入');";
    echo "location.href='../../login/login_index.php';";
    echo "</script>";
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge IE=chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"></script>
  <link rel="stylesheet" href="../css_part/Add.css">
  <title>Add_post</title>
</head>

<body>
<?php
$type=$_POST['type'];
?>
  <div id="content">
    <div>
      <h1>Add post</h1>
    </div>
    <div class="row justify-content-center">
            <div class="col-sm-5">
                <form action="./add_post.php" method="post" id="add_form"  enctype="multipart/form-data">
  
                    <div class="mb-3">
                        <label for="title" class="form-label">Title:</label>
                        <input type="text" class="form-control" id="title" name="title">
                    </div>
                    <textarea name="con" id="con" cols="30" rows="8">Enter your content in here...</textarea>
                    <textarea name="tip" id="tip" cols="30" rows="8">Other tips?</textarea>
                    <div>
                      <label for="post_pic" class="form-label">Upload your picture!</label>
                      <input type="file" name="avatar"/>
                    </div>
                    <input type="hidden" value="<?=$type?>" name="type">
                    <button type="submit">Add!</button>
                </form>
                <p></p>
              

            </div>

        </div>
  </div>

</body>

</html>