function sortlike(type) {

    $.get("sort.php", { type: type, by: "good" }, function(data) {
        $("#intro").html(data);
    });

}

function defaultsort(type) {

    $.get("sort.php", { type: type, by: "def" }, function(data) {
        $("#intro").html(data);
    });
}