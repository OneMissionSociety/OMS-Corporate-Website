$(document).ready(function () {
    $("#btnSave").qtip({
        content: "Save current gift so that you may add another",
        show: "mouseover",
        hide: "mouseout",
        style: {
            classes: 'ui-tooltip-OMS ui-tooltip-shadow'
        },
        position: {
            my: "top center",
            at: "bottom center",
            target: $("#btnSave")
        }
    })

    $("#ddlGiftType").change(function () {
        switch (this.value) {
            case "Special":
                $("#btnSave").fadeIn("slow");
                break;
            case "Monthly":
                $("#btnSave").fadeOut("slow");
                break;
            case "Annual":
                $("#btnSave").fadeOut("slow");
                break;
        }
    });
});