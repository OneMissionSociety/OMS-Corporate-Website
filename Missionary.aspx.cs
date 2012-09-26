using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Missionary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Set top level active nav
        //ApplicationLogic.SetTopLevelNavigation(ApplicationLogic.TopLevelNavigation.Give);

        var missionaryPURL = Page.RouteData.Values["missionaryPURL"];
        missionary.Text = "Requested missionary: " + missionaryPURL;
    }
}