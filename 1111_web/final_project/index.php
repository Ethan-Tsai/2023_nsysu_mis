<?php
session_start();
include('./config.php');

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge IE=chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <!-- biitstrap js  -->
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="./content_page/css_part/index.css">
  <script src="./index.js"></script>
  <title>Travel_nearby-nsysu</title>
</head>

<body>
  <!--header-->
  <div id="header">

    <!--head_bar-->
    <div id="head_bar">

      <!--navbar-->
      <div id="navbar">
        <nav class="navbar navbar-expand-lg bg-light">
          <div class="container-fluid">
            <a class="navbar-brand" href="./index.php">Travel_nearby-nsysu</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link " href="./content_page/php_part/Introduction.php">Introduction</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="./content_page/php_part/Blog.php">Blog</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Features</a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Category
                  </a>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="./content_page/php_part/attr.php">Attractions</a></li>
                    <li><a class="dropdown-item" href="./content_page/php_part/rest.php">restaurants</a></li>
                    <li><a class="dropdown-item" href="./content_page/php_part/dess.php">Desserts</a></li>
                    <li><a class="dropdown-item" href="./content_page/php_part/acco.php">Accommodation & Transportation</a></li>
                  </ul>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="./content_page/php_part/photo.php">Photo</a>
                </li>
                <li class="nav-item">
                  <?php
                  if (!(isset($_SESSION["web_project"]))) {
                  ?>
                    <a class="nav-link" href="./login/login_index.php">Sign in</a>
                  <?php
                  } else {
                  ?>
                    <a class="nav-link" href="./login/logout.php">Sign out</a>
                  <?php
                  }
                  ?>
                </li>
              </ul>
            </div>
          </div>
        </nav>
      </div>
      <!--navbar_end-->
    </div>
    <!--head_bar_end-->
  </div>
  <!--header_end-->

  <!--Home_img-->
  
  <div class="home_img">
      <img src="./pic/index_pic/Home5.jpg" id="img1" width="100%">
      <img src="./pic/index_pic/Home6.jpg" id="img2" width="100%">
    <div class="enter">
      
      <h1><span>S</span><span>E</span><span>E</span><span> </span><span>O</span><span>U</span><span>R<span> </span><span>W</span><span>E</span><span>B</span><span>S</span><span>I</span><span>T</span><span>E</span><span>!</span></h1>
      <div>
      <a href="./content_page/php_part/Introduction.php">Enter→</a>
      </div>
    </div>
  </div>
  
  <!--Home_img_end-->

</body>

</html>