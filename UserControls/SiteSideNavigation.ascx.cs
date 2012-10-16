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
                sideNavItems.Add(new BusinessLogic.SideNavigationItem("navWhoIsOMS", "aboutus.aspx", "Who is OMS", "/about-us", false));
                sideNavItems.Add(new BusinessLogic.SideNavigationItem("navWhereWeServe", "whereweserve.aspx", "Where we Serve", "/where-we-serve", false));
                sideNavItems.Add(new BusinessLogic.SideNavigationItem("navOmsHistory", "#", "OMS History", "/one-mission-society-history", false));
                sideNavItems.Add(new BusinessLogic.SideNavigationItem("navArticlesOfFaith", "articlesoffaith.aspx", "Articles of Faith", "/articles-of-faith", false));
                sideNavItems.Add(new BusinessLogic.SideNavigationItem("BoardOfTrustees", "#", "Board of Trustees", "/board-of-trustees", false));

                sideNavItems.First(x => x.URL == url || x.SeoAlias == url).IsActive = true;
                break;
            case ApplicationLogic.TopLevelNavigation.Give:
                sideNavItems.Add(new BusinessLogic.SideNavigationItem("navGiveToOMS", "Give.aspx", "Give to OMS", "/give", false));
                sideNavItems.Add(new BusinessLogic.SideNavigationItem("navGiveToAProject", "project.aspx", "Give to a Project", "/give/projects", false));
                sideNavItems.Add(new BusinessLogic.SideNavigationItem("navGiveToAMissionary", "#", "Give to a Missionary", "/give/missionary", false));

                var activeNode = sideNavItems.FirstOrDefault(x => x.URL == url || x.SeoAlias == url);
                if (activeNode != null) activeNode.IsActive = true;
                break;
        }

        HttpContext.Current.Session.Add("SideNavigationItems", sideNavItems);
    }
}