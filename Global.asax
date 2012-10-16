<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Enable routing
        RegisterRoutes(RouteTable.Routes);
        BundleTable.Bundles.Clear();

        // Create custom bundle for JS so that the order of bundling can be controlled
        Bundle myJSBundle = new Bundle("~/ScriptsBundle");
        myJSBundle.Include("~/Scripts/hoverIntent.js");
        myJSBundle.Include("~/Scripts/Site.js");

        BundleTable.Bundles.Add(myJSBundle);
    }

    void RegisterRoutes(RouteCollection routes)
    {
        routes.Add(new Route("Images/", new StopRoutingHandler()));   
        routes.Add("PrayRoute", new Route("pray-for-missions", new PageRouteHandler("~/pray.aspx")));
        routes.Add("GiveRoute", new Route("give", new PageRouteHandler("~/give.aspx")));
        routes.Add("AboutUsRoute", new Route("about-us", new PageRouteHandler("~/aboutus.aspx")));
        routes.Add("WhereWeServeRoute", new Route("where-we-serve", new PageRouteHandler("~/whereweserve.aspx")));
        routes.Add("ArticlesOfFaith", new Route("articles-of-faith", new PageRouteHandler("~/articlesoffaith.aspx")));
        routes.Add("ContactUsRoute", new Route("contact-us", new PageRouteHandler("~/contactus.aspx")));
        routes.Add("ProjectRoute", new Route("give/projects", new PageRouteHandler("~/project.aspx")));
        routes.Add("SpecificProjectRoute", new Route("give/projects/{ID}", new PageRouteHandler("~/project.aspx")));
        
    }
    
    void Application_End(object sender, EventArgs e) { //  Code that runs on application shutdown
    }
        
    void Application_Error(object sender, EventArgs e) { // Code that runs when an unhandled error occurs
    }

    void Session_Start(object sender, EventArgs e) { // Code that runs when a new session is started
    }

    void Session_End(object sender, EventArgs e) {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.
    }
       
</script>
