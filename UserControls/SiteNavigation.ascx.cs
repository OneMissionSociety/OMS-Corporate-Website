using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class UserControls_SiteNavigation : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e) { }

    public void SetTopLevelNavigation(ApplicationLogic.TopLevelNavigation topLevelNavigation)
    {
        HtmlGenericControl link = (HtmlGenericControl)this.FindControl("nav" + topLevelNavigation.ToString());
        link.Attributes["class"] += " navigationNodeActive";
    }
}