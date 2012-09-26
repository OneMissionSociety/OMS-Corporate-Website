using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AboutUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Set page title
        Page.Title = "About Us";

        // Set top level navigation
        Master.TopLevelNavigation = ApplicationLogic.TopLevelNavigation.AboutUs;
    }
}