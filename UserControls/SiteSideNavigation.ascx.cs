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

    protected string SetContextualClass(string isContextual)
    {
        if (Boolean.Parse(isContextual))
        {
            return "contextualNavItem";
        }
        else
        {
            return String.Empty;
        }
    }

    public void LoadSideNavigationItems(Utilities.TopLevelNavigation pageParent, string url)
    {
        // Create generic list to house side nav items
        List<BusinessLogic.SideNavigationItem> sideNavItems = new List<BusinessLogic.SideNavigationItem>();

        switch (pageParent)
        {
            case Utilities.TopLevelNavigation.AboutUs:
                sideNavItems.Add(new BusinessLogic.SideNavigationItem("navWhoIsOMS", "aboutus.aspx", "Who is OMS", "/about-us", false, false));
                sideNavItems.Add(new BusinessLogic.SideNavigationItem("navWhereWeServe", "whereweserve.aspx", "Where we Serve", "/where-we-serve", false, false));
                sideNavItems.Add(new BusinessLogic.SideNavigationItem("navOmsHistory", "#", "OMS History", "/one-mission-society-history", false, false));
                sideNavItems.Add(new BusinessLogic.SideNavigationItem("navArticlesOfFaith", "articlesoffaith.aspx", "Articles of Faith", "/articles-of-faith", false, false));
                sideNavItems.Add(new BusinessLogic.SideNavigationItem("BoardOfTrustees", "#", "Board of Trustees", "/board-of-trustees", false, false));

                sideNavItems.First(x => x.URL == url || x.SeoAlias == url).IsActive = true;
                break;
            case Utilities.TopLevelNavigation.Give:
                sideNavItems.Add(new BusinessLogic.SideNavigationItem("navGiveToOMS", "Give.aspx", "Give to OMS", "/give", false, false));
                sideNavItems.Add(new BusinessLogic.SideNavigationItem("navGiveToAProject", "project.aspx", "Give to a Project", "/give/projects", false, false));
                sideNavItems.Add(new BusinessLogic.SideNavigationItem("navGiveToAMissionary", "#", "Give to a Missionary", "/give/missionary", false, false));

                var activeNode = sideNavItems.FirstOrDefault(x => x.URL == url || x.SeoAlias == url);
                if (activeNode != null) activeNode.IsActive = true;
                break;
        }

        // Add contextual side item
        if (this.ContextualSideNavItem != null)
        {
            sideNavItems.Add(this.ContextualSideNavItem);
        }

        HttpContext.Current.Session.Add("SideNavigationItems", sideNavItems);
    }

    public BusinessLogic.SideNavigationItem ContextualSideNavItem { get; set; }
}