$(document).ready(function () {
    // Setup picturebox
    var pictureBoxConfig = {
        over: ShowPictureBoxDescription,
        timeout: 200, // number = milliseconds delay before onMouseOut    
        interval: 200,
        out: HidePictureBoxDescription
    };

    // Apply hoverIntent config to pictureBox
    $(".pictureBox").hoverIntent(pictureBoxConfig);

    /*********************************
        Set up stories section
    *********************************/

    // Create bullets for each story
    UpdateStoryNavigation($("#storyBox a").length, 1);

    // Toggle cover stories
    var toggleStoryInterval = SetStoryToggleInterval();

    // Disable story toggle on mouse over, enable on mouse out
    $("#storyBox").hover(
        function () { // Cancel toggle interval
            clearInterval(toggleStoryInterval);
        },
        function () {
            toggleStoryInterval = SetStoryToggleInterval();
        }
    );

    // Handle anchor clicks inside storyBoxCount
    $(document).on("click", "#storyBoxCount a", function (e) {
        e.preventDefault();

        // Reset interval
        clearInterval(toggleStoryInterval);
        toggleStoryInterval = SetStoryToggleInterval();

        // Toggle Story
        ToggleStory($(this).index(), toggleStoryInterval);
    });
});

/*********************************
        Helper Methods
*********************************/

function UpdateStoryNavigation(numberOfStories, selectedStory) {
    var toAppend = "";

    for (var i = 1; i <= numberOfStories; i++) {
        var bullet = (i == selectedStory) ? "&#9679;" : "&#9675;";
        var title = $("#storyBox a span").eq(i - 1).text().replace(/\s+/g, " ");
        toAppend += "<a href='#' title='" + title + "' name='" + i + "'><span>" + bullet + "&nbsp;</span></a>";
    }

    $("#storyBoxCount").html(toAppend);
}

function ToggleStory(storyToSelect, intervalToRestart) {
    storyToSelect == (storyToSelect === "undefined") ? null : storyToSelect;

    // Get visible story
    var $visibleStory = $("#storyBox a:visible");

    // Fade out visible story
    $visibleStory.fadeOut(600, function () {
        // Cache $(this)
        $this = $(this);

        // Get next story, start from the beginning, or choose selected story
        var $nextStory = 0;

        if (storyToSelect != null)
            $nextStory = $visibleStory.parent().children().eq(storyToSelect);
        else
            $nextStory = ($this.siblings().eq($this.index()).length > 0) ? $this.siblings().eq($this.index()) : $("#storyBox a:first");

        // Fade in next story
        $nextStory.fadeIn(600);

        // Update bullet
        UpdateStoryNavigation($this.siblings().length + 1, ($nextStory.index() + 1));
    });
}

function SetStoryToggleInterval() {
    var interval = setInterval(ToggleStory, 7000);
    return interval;
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