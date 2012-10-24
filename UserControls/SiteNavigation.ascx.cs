using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class UserControls_SiteNavigation : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var donations = BusinessLogic.Donation.GetDonations();
        if (donations != null && donations.Count > 0)
        {
            donationCountBubble.InnerHtml = donations.Count().ToString();
        }
        else
        {
            donationCountBubble.Visible = false;
        }
    }

    public void SetTopLevelNavigation(Utilities.TopLevelNavigation topLevelNavigation)
    {
        HtmlGenericControl link = (HtmlGenericControl)this.FindControl("nav" + topLevelNavigation.ToString());
        link.Attributes["class"] += " navigationNodeActive";
    }
}