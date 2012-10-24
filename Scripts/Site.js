$(document).ready(function () {
    // Update soul count after 5 seconds
    setTimeout(UpdateSoulCount, 5000);

    // Update soul count every 47 seconds
    setInterval(UpdateSoulCount, 47000);

    // Setup sticky footer - call every second HACK
    // TODO: Find better solution
    positionFooter();
    setTimeout(positionFooter, 100);
    setInterval(positionFooter, 1000);
    $(window).bind("resize", positionFooter);

    // Setup fixed side navigation (http://labs.anthonygarand.com/sticky)
    var $sideNavigation = $("#sideNavWrapper");

    if ($sideNavigation.length > 0) {
        $sideNavigation.sticky({ className: 'stickyMenu' });
    }

    // Set donation bubble color when give is active
    if (IsGive()) {
        $("#donationCountBubble").addClass("donationCountBubbleBrown");
    }

    // Set donation bubble color when give is hovered over
    $("#navGive").hover(function () {
        $("#donationCountBubble").removeClass("donationCountBubbleRed").addClass("donationCountBubbleBrown");
    },
    function () {
        if (IsGive()) {
            $("#donationCountBubble").addClass("donationCountBubbleBrown");
        }
        else {
            $("#donationCountBubble").removeClass("donationCountBubbleBrown").addClass("donationCountBubbleRed");
        }
    });
});

/*********************************
        Helper Methods
*********************************/

function IsGive() {
    return $("#navGive").hasClass("navigationNodeActive");
}
function RgbToHex(rgbString) {
    try {
        var parts = rgbString.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
        delete (parts[0]);

        for (var i = 1; i <= 3; ++i) {
            parts[i] = parseInt(parts[i]).toString(16);
            if (parts[i].length == 1) parts[i] = '0' + parts[i];
        }
        return hexString = '#' + parts.join('').toUpperCase(); // "#0070FF"
    }
    catch (ex) {
        return "#000000";
    }
}
function UpdateSoulCount() {
    // Retrieve soul count value
    $soulCount = $("#soulCountValue");

    // Pulsate to draw attention to number
    $soulCount.effect("pulsate", "slow");

    // Update soul count
    soulCount = parseInt($soulCount.text().replace(/,/g, ""));
    $soulCount.text(addCommas(soulCount + 1));
}
// Format numbers with commas (used for soul count in header)
function addCommas(nStr) {
    nStr += '';
    var x = nStr.split('.');
    var x1 = x[0];
    var x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{3})/;

    while (rgx.test(x1))
        x1 = x1.replace(rgx, '$1' + ',' + '$2');

    return x1 + x2;
}
function positionFooter() {
    var mFoo = $("#footerContent");

    if ((($(document.body).height() + mFoo.height()) < $(window).height() && mFoo.css("position") == "fixed") || ($(document.body).height() < $(window).height() && mFoo.css("position") != "fixed")) {
        mFoo.css({ position: "fixed", bottom: "0px" });
    }
    else {
        mFoo.css({
            position: "static"
        });
    }
}
function ShowPictureBoxDescription(target) {
    // If being invoked from hoverIntent, set target
    if (target.target)
        target = target.target;

    // Fade in all wrappers before fading out the next one
    $(".wrapper").fadeIn("slow");

    // Target
    var $target = $(target);

    // Fade out target wrapper
    $target.closest(".wrapper").fadeOut("slow");
}
function HidePictureBoxDescription(args) {
    //if($(args.target).hasClass("pictureBoxDescription"))
    $(".wrapper").fadeIn("slow");
}
function ScrollTo(targetID, highlightID) {
    $('html, body').animate({
        scrollTop: $('#' + targetID).offset().top
    }, 2000);

    $('#' + highlightID).effect('highlight', {}, 5000);
}