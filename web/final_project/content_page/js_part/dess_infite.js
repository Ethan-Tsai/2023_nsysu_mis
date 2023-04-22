// window.onload = aaa;

// function aaa() {
//     var documentHeight = document.body.clientHeight;
//     var windowHeight = window.innerHeight;
//     window.addEventListener("scroll", function() {
//         var scorllPercent = this.scrollY / (documentHeight - windowHeight)
//         console.log(scorllPercent);
//         console.log(this.scrollY);
//         console.log(documentHeight);
//         console.log(windowHeight);

//         if ((scorllPercent > 0.98) && (scorllPercent < 1)) {
//             $.get("acco_load.php", function(data) {
//                 $("#infor").append(data);
//             });

//         }


//     });
// }
// window.onload = function() {

//     $(".load-btn").click(function() {
//         alert("aaa");
//         $(".load-btn").css("display", "none");
//         $.get("acco_load.php", function(data) {
//             $("#infor").append(data);
//         });

//     });

// }

// window.addEventListener("click", function() {

//     $(".load-btn").click(function() {
//         $(".load-btn").css("display", "none");
//         $.get("acco_load.php", { times: $time }, function(data) {
//             $("#infor").append(data);
//         });
//         console.log($time);
//         $time++;
//     });
// })


var $time = 1;

function load() {

    var wait = document.createElement("div");
    wait.id = "wait"
    wait.innerHTML = "<img src=\"../../pic/InternetSlowdown_Day.gif\" alt=\"\">";
    document.getElementById("wait_pic" + $time).appendChild(wait);


    //$(".load-btn").click(function() {
    $(".load-btn").css("display", "none");

    $.get("dess_load.php", { times: $time }, function(data) {
        $("#infor").append(data);
    });
    console.log($time);
    $time++;


    //});
}

// window.onload = function() {

//         $(".load-btn").click(function() {

//             alert("aaa");
//             $(".load-btn").css("display", "none");
//             $.get("acco_load.php", { times: $time }, function(data) {
//                 $("#infor").append(data);
//             });
//             console.log($time);
//             $time++;
//         });

//     }
// window.onload = function() {
//     $(".load-btn").click(function() {
//         $(".load-btn").css("display", "none");
//         $.get("acco_load.php", { times: $time }, function(data) {
//             $("#infor").append(data);
//         });
//         console.log($time);
//         $time++;
//     });
// }