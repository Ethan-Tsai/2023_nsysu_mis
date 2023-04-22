$(document).ready(function() {
    windowOnScroll();
});

function windowOnScroll() {
    $(window).on("scroll", function(e) {
        if ($(window).scrollTop() == $(document).height() - $(window).height()) {
            if ($(".post-item").length < $("#total_count").val()) {
                var lastId = $(".post-item:last").attr("id");
                //getMoreData(lastId);
            }
        }
    });
}

function getMoreData(lastId) {
    $(window).off("scroll");
    $.ajax({
        url: 'getMoreData.php?lastId=' + lastId,
        type: "get",
        beforeSend: function() {
            $('.ajax-loader').show();
        },
        success: function(data) {
            setTimeout(function() {
                $('.ajax-loader').hide();
                $("#post-list").append(data);
                windowOnScroll();
            }, 1000);
        }
    });
}