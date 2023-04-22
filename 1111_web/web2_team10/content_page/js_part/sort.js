function sortlike(type) {

    $.get("sort.php", { type: type, by: "good" }, function(data) {
        $("#intro").html(data);
    });

    let b = document.getElementById("sort2");
    b.style.backgroundColor = "#B3DEE5";
    let a = document.getElementById("sort1");
    a.style.backgroundColor = "rgb(240, 240, 240)";
}

function defaultsort(type) {

    $.get("sort.php", { type: type, by: "def" }, function(data) {
        $("#intro").html(data);
    });
    let c = document.getElementById("sort1");
    c.style.backgroundColor = "#B3DEE5";
    let d = document.getElementById("sort2");
    d.style.backgroundColor = "rgb(240, 240, 240)";

}