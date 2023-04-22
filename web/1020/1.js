function okayClick() {
    data: {}
}
$(document).ready(function() {
    $("h1").html("Anonymous Function Run");
    $("#ok").click(function(event) {
        $("h1").addClass("yellowTitle");
        $("h1").fadeOut();

    });
});

// place in $(document).ready() or window.onload
$(document).ready(function() {
    $("#sliderDemo").slider({
        min: 0,
        max: 200,
        value: 50,
        slide: function(event, ui) {
            $("#sliderValue").html(ui.value);
        }
    });
});

window.onload = function() {
    // place in window.onload
    var vue_app_2 = new Vue({
        el: "#vue_app_2",
        data: {}
    })

}