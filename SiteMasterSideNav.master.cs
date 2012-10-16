using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMasterSideNav : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Disable viewstate - experimental
        Page.ViewStateMode = System.Web.UI.ViewStateMode.Disabled;

        // Set top level navigation
        ucSiteNavigation.SetTopLevelNavigation(this.TopLevelNavigation);
        ucSideSiteNavigation.LoadSideNavigationItems(this.TopLevelNavigation, Request.Path.Replace("/OmsCorporate/", String.Empty));
    }

    public ApplicationLogic.TopLevelNavigation TopLevelNavigation { get; set; }
}
