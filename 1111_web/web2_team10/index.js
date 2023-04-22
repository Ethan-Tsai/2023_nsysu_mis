function WinOnResize() { // 以 function 的方式來寫
    if (document.body.clientWidth > 990) // 當瀏覽器寬度 > 1500px 例如 Full-HD
    {
        document.getElementById("img1").src = "./pic/index_pic/Home5.jpg" // 左
        document.getElementById("img2").style.display = "None";
    } else {
        document.getElementById("img1").src = "./pic/index_pic/Home6.jpg" // 左
        document.getElementById("img2").style.display = "None";
    }
}
window.onresize = WinOnResize
window.onload = WinOnResize