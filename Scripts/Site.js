$(document).ready(function () {
    // Update soul count after 5 seconds
    setTimeout(UpdateSoulCount, 5000);

    // Update soul count every 47 seconds
    setInterval(UpdateSoulCount, 47000);

    // Setup sticky footer
    positionFooter();
    $(window).bind("resize", positionFooter);

    // Setup fixed side navigation (http://labs.anthonygarand.com/sticky)
    var $sideNavigation = $("#sideNavWrapper");

    if ($sideNavigation.length > 0) {
        $sideNavigation.sticky({ className: 'stickyMenu' });
    }
});

/*********************************
        Helper Methods
*********************************/

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