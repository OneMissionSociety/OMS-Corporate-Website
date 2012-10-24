﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pray : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Set page title
        Page.Title = "Prayer Ministry | Wall of Prayer | Pray without ceasing";

        // Set top level navigation
        Master.TopLevelNavigation = Utilities.TopLevelNavigation.Pray;
    }
}