<?php
session_start();
include('./config.php');

?>
<!DOCTYPE html>
<html lang="en">

<head>
<link rel="stylesheet" href="https://pyscript.net/alpha/pyscript.css" />
<script defer src="https://pyscript.net/alpha/pyscript.js"></script>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge IE=chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Gloria+Hallelujah&display=swap" rel="stylesheet">
  <!-- bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <!-- biitstrap js  -->
  <!-- JavaScript Bundle with Popper -->
  <link rel="icon" href="./pic/index_pic/Home5.jpg">
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
      <a href="./content_page/php_part/Introduction.php" id="ent">Click here!</a>
      </div>
    </div>
  </div>
  
  <!--Home_img_end-->

</body>
<py-script>

import pygame as pg, random, math, time


import pygame
from pygame.locals import *
from sys import exit
RED = (255, 0, 0)
GREEN = (0, 255, 0)
class Bg(pygame.sprite.Sprite):
    def __init__(self):
        super(Bg, self).__init__()
        bg_small = pygame.image.load('背景2.png').convert_alpha()
        grass_land = bg_small.subsurface((0, 0, 128, 128))
        self.surf = pygame.transform.scale(grass_land, (800, 600))
        self.rect = self.surf.get_rect(left=0, top=0)  # 左上角定位
        


class Pig(pygame.sprite.Sprite):
    def __init__(self):
        super(Pig, self).__init__()
        self.surf = pygame.image.load('白笨笨.png').convert_alpha()
        self.surf = pygame.transform.scale(self.surf, (150, 100))
        self.rect = self.surf.get_rect(center=(400, 300))  # 中心定位

    def update(self, keys):
        if keys[pygame.K_LEFT]:
            self.rect.move_ip((-5, 0))
        elif keys[pygame.K_RIGHT]:
            self.rect.move_ip((5, 0))
        elif keys[pygame.K_UP]:
            self.rect.move_ip((0, -5))
        elif keys[pygame.K_DOWN]:
            self.rect.move_ip((0, 5))

        # 防止小豬跑到屏幕外面
        if self.rect.left < 0:
            self.rect.left = 0
        if self.rect.right > 800:
            self.rect.right = 800
        if self.rect.top < 0:
            self.rect.top = 0
        if self.rect.bottom > 600:
            self.rect.bottom = 600



def main():
    pygame.init()
    pygame.display.set_caption('笨笨游泳')  # 遊戲標題
    win = pygame.display.set_mode((800, 600))  # 窗口尺寸
    bg = Bg()
    pig = Pig()
    all_sprites = [bg, pig]  # 注意添加順序，後添加的對象圖層在先添加的對象的圖層上面

    running = True
    while running:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:  # 點擊左上角或者右上角的x關閉窗口時，停止程序
                running = False

        keys = pygame.key.get_pressed()
        pig.update(keys)
        for sprite in all_sprites:
            win.blit(sprite.surf, sprite.rect)
        pygame.display.flip()


if __name__ == '__main__':
    main()
<py-script>


</html>