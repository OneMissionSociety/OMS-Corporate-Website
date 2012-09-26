$(document).ready(function () {
    $(".omsButton").on("click", function () {
        var prayedCount = parseInt($(this).parent().parent().find(".prayerCount").text().replace(/[A-Za-z$-]/g, ""));
        $(this).parent().parent().find(".prayerCount").html("Prayed for " + ++prayedCount + " times").effect("pulsate", "slow");
    });
});