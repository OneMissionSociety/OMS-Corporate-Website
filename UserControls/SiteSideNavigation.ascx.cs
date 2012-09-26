using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_SiteSideNavigation : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        rptSideNavigation.DataSource = (List<BusinessLogic.SideNavigationItem>)Session["SideNavigationItems"];
        rptSideNavigation.DataBind();
    }

    protected string SetActiveClass(string isActive)
    {
        if (Boolean.Parse(isActive))
        {
            return "sideNavigationActive";
        }
        else
        {
            return String.Empty;
        }
    }

    public void LoadSideNavigationItems(ApplicationLogic.TopLevelNavigation pageParent, string url)
    {
        // Create generic list to house side nav items
        List<BusinessLogic.SideNavigationItem> sideNavItems = new List<BusinessLogic.SideNavigationItem>();

        switch (pageParent)
        {
            case ApplicationLogic.TopLevelNavigation.AboutUs:
                sideNavItems.Add(new BusinessLogic.SideNavigationItem("navWhoIsOMS", "aboutus.aspx", "Who is OMS", false));
                sideNavItems.Add(new BusinessLogic.SideNavigationItem("navWhereWeServe", "#", "Where we Serve", false));
                sideNavItems.Add(new BusinessLogic.SideNavigationItem("navOmsHistory", "#", "OMS History", false));
                sideNavItems.Add(new BusinessLogic.SideNavigationItem("navArticlesOfFaith", "articlesoffaith.aspx", "Articles of Faith", false));
                sideNavItems.Add(new BusinessLogic.SideNavigationItem("BoardOfTrustees", "#", "Board of Trustees", false));

                sideNavItems.First(x => x.URL == url).IsActive = true;
                break;
        }

        HttpContext.Current.Session.Add("SideNavigationItems", sideNavItems);
    }
}