<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="./jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-infinitescroll/3.0.3/infinite-scroll.pkgd.min.js"></script>
    <title>Document</title>
</head>

<body>
<style>
  	.article {
  		/* 排版用，不影響功能，*/
  		height: 300px;
  		margin: 50px;
  		background: #ccc;
  		font-size: 50px;
  		line-height: 300px;
  		text-align: center;
  	}
  </style>
  <div class="example">
  	<div class="article">1</div>
  	<div class="article">2</div>
  	<div class="article">3</div>
  	<div class="article">4</div>
	<!-- <button id="next">next?</button> -->
  	<!-- 捲軸狀態 -->
  	<div class="scroller-status">
  		<div class="infinite-scroll-request loader-ellips"></div>
  		<p class="infinite-scroll-last">開始加載</p>
  		<p class="infinite-scroll-error">沒有頁面可以讀取了</p>
  	</div>
  </div>
  <script>

// window.onload=function(){
// 	$("#next").click(function(){
// var infScroll = new InfiniteScroll( ".example", {
//   		path: function() {
//   			// 頁面路徑
  			
//   				// 只讀取前兩頁資料
//   				var nextIndex = this.loadCount + 2; // 2
//   				return "page" + nextIndex + ".html"; // page2.html
  			
//   		},
//   		append: ".article", // 匯入物件類別
//   		status: ".scroller-status" // 捲軸狀態類別
//   	})

// 	alert("aaa");
// })
// }
var infScroll = new InfiniteScroll( ".example", {
  		path: function() {
  			// 頁面路徑
  			if ( this.loadCount >2 ) {
  				// 只讀取前兩頁資料
  				var nextIndex = this.loadCount + 2; // 2
  				return "page" + nextIndex + ".html"; // page2.html
  			}
  		},
  		append: ".article", // 匯入物件類別
  		status: function(){
			$(".scroller-status").find("infinite-scroll-error").css("display","none") // 捲軸狀態類別
		}
  	})
  </script>
</body>

</html>