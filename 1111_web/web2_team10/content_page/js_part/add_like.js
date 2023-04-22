function add_like(type, title, nowgood, time) {
    console.log(title);
    $.get("../add_remove/like.php", { type: type, title: title, now: nowgood, time: time }, function(data) {
        $("#like-btn" + time).html(data);
        $("#like-btn" + time).css("color", "red");
        $("#like-btn" + time).attr("disabled", "disabled");
    });

}