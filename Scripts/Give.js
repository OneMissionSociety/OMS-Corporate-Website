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
});