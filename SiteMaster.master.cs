using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Disable viewstate - experimental
        Page.ViewStateMode = System.Web.UI.ViewStateMode.Disabled;
        ucSiteNavigation.SetTopLevelNavigation(this.TopLevelNavigation);

        // Set top level navigation
        ucSiteNavigation.SetTopLevelNavigation(this.TopLevelNavigation);
    }

    public ApplicationLogic.TopLevelNavigation TopLevelNavigation { get; set; }
}
