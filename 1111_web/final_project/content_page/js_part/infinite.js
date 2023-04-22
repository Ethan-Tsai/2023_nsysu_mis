var $time = 1;

function load(type, sortway, reset) {

    if (reset == 2) {
        var set = 1;
        //alert(reset);
        var wait = document.createElement("div");
        wait.id = "wait"
        wait.innerHTML = "<img src=\"../../pic/InternetSlowdown_Day.gif\" alt=\"\">";
        document.getElementById("wait_pic" + $time).appendChild(wait);
        console.log($time);

        $(".load-btn").css("display", "none");

        $.get("load_more.php", { times: $time, type: type, sortway: sortway }, function(data) {
            $("#infor").append(data);
        });
        console.log($time);
        $time++;

    }
    if (reset != 1) {

        //alert(reset);
        var wait = document.createElement("div");
        wait.id = "wait"
        wait.innerHTML = "<img src=\"../../pic/InternetSlowdown_Day.gif\" alt=\"\">";
        document.getElementById("wait_pic" + $time).appendChild(wait);
        console.log($time);

        $(".load-btn").css("display", "none");

        $.get("load_more.php", { times: $time, type: type, sortway: sortway }, function(data) {
            $("#infor").append(data);
        });
        console.log($time);
        $time++;
    } else if (set == 1) {
        //alert("reset");
        $time = 1;
    }

}