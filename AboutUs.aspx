<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterSideNav.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>
<%@ MasterType VirtualPath="~/SiteMasterSideNav.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link rel="stylesheet" type="text/css" href="<%: ResolveUrl(MyStyleBundler.RenderPageSpecificStyle(Page.AppRelativeVirtualPath)) %>" />
    <script src="<%: ResolveUrl(MyScriptBundler.RenderPageSpecificScript(Page.AppRelativeVirtualPath)) %>"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" Runat="Server">
    <h2>Our One Mission</h2>
    <img src="Images/Pray.jpg" class="shadow" style="float:right; width:175px; margin-left:15px;" />
    <p>
        One Mission Society unites in partnership with more than 180 organizations and denominations for one purpose: 
        to see the Gospel of Jesus Christ spread throughout the world, with the greatest number of disciples made, and to see
        God glorified in all that we say and do &#8212; to Fulfill the great Commission. This has been, is and always will be our One Mission.
    </p>
    <p>
        Here's a look at One Mission Society by the numbers:
    </p>
    <ul>
        <li>
            <span><strong>Every 47 seconds</strong>, on average, someone comes to know the Lord through the ministries of One Mission Society.</span>
        </li>
        <li>
            <span>OMS-related ministries are carried out in more than <strong>45 languages around the world.</strong></span>
        </li>
        <li>
            <span>OMS ministry includes more than <strong>13,000 indignous coworkers.</strong></span>
        </li>
        <li>
            <span>OMS plants more than <strong>4,000 churches every year.</strong></span>
        </li>
        <li>
            <span>OMS in an interdenominational faith mission that has <strong>30+ denominations</strong> represented within its missionary membership.</span>
        </li>
    </ul>
    <p>
        Our mission is sussinctly defined by our mission statement:
    </p>
    <blockquote>
        <em>
            By God's grace, One Mission Society unites, inspires and equips Christians to make disciples of Jesus Christ, multiplying dynamic communities of blievers around the world.
        </em>
    </blockquote>
    <br />
    <h2>Our One Calling</h2>
    <p>
        One Mission Society, an evangelical, interdenominational faith mission, was founded on the principle 
        that the most effective way to share Christ is by training a nation's people to lead and multiply their 
        churches. These principles, along with enabling ministries and compassion ministry, are the basis of our dynamic four-fold focus:
    </p>
    <ul>
        <li>
            <span><strong>Intentional Evangelism:</strong> We become vessels of Christ, leading people to a life-changing relationship with Jesus.</span>
        </li>
        <li>
            <span><strong>Church Planting:</strong> We encourage, empower and support new believers to form vital, thriving and life-changing churches.</span>
        </li>
        <li>
            <span><strong>Training Leaders:</strong> We quip leaders in our training centers and seminaries worldwide so the future leaders of the national churches will be from within that country.</span>
        </li>
        <li>
            <span><strong>Strategic Partnerships:</strong> We show the world that Christians are united to spread the Gospel by working together with other mission organizations, ministries and churches in the countries we serve.</span>
        </li>
    </ul>
</asp:Content>
