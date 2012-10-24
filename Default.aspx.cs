using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Set page title
        Page.Title = "One Mission Society | Keywords go here | Keywords go here";

        // Set top level navigation
        Master.TopLevelNavigation = Utilities.TopLevelNavigation.Home;
    }
}