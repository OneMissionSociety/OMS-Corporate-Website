<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ MasterType VirtualPath="~/SiteMaster.master" %>

<%-- Head Content --%>
<asp:Content ID="contentHead" ContentPlaceHolderID="HeadContent" runat="Server">
    <meta name="description" content="This will be a description that contains keywords about stuff. This description will show up in the search results." />
    <link rel="stylesheet" type="text/css" href="<%: ResolveUrl(MyStyleBundler.RenderPageSpecificStyle(Page.AppRelativeVirtualPath)) %>" />
    <script src="<%: ResolveUrl(MyScriptBundler.RenderPageSpecificScript(Page.AppRelativeVirtualPath)) %>"></script>
</asp:Content>

<%-- Page Content --%>
<asp:Content ID="contentContent" ContentPlaceHolderID="PageContent" runat="Server">
    <%-- Give --%>
    <div class="pictureBox shadow">
        <a href="#">
            <div class="pictureBoxDescription nextArrow">
                <h2>GIVE</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae mauris at 
                mauris condimentum semper eget sit amet ligula. Ut et dui vitae arcu tincidunt 
                pellentesque et vel lectus. Phasellus sollicitudin, tellus ac rutrum elementum, 
                neque nisl tempor libero, sed. 
                </p>
            </div>
            <div class='wrapper'>
                <img src="Images/Give.jpg" alt="Support world missions by giving image" />
                <div class='description'>
                    <p class='description_content'>GIVE</p>
                </div>
            </div>
        </a>
    </div>

    <%-- Go --%>
    <div class="pictureBox shadow">
        <a href="#">
            <div class="pictureBoxDescription nextArrow">
                <h2 class="test">GO</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae mauris at 
                mauris condimentum semper eget sit amet ligula. Ut et dui vitae arcu tincidunt 
                pellentesque et vel lectus. Phasellus sollicitudin, tellus ac rutrum elementum, 
                neque nisl tempor libero, sed. 
                </p>
            </div>
            <div class='wrapper'>
                <img src="Images/Go.jpg" alt="Support world missions by going image" />
                <div class='description'>
                    <p class='description_content'>GO</p>
                </div>
            </div>
        </a>
    </div>  

    <%-- Pray --%>
    <div id="pbPray" class="pictureBox shadow">
        <a href="Pray.aspx">
            <div class="pictureBoxDescription nextArrow">
                <h2>PRAY</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum eros in 
                urna pretium nec laoreet ligula lacinia. Nunc pretium erat ut sapien luctus hendrerit. 
                Nullam nec massa nibh, eu hendrerit mi. Quisque cursus magna at nibh laoreet sed commodo. 
                </p>
            </div>

            <div class='wrapper'>
                <img src="Images/Pray.jpg" alt="Support world missions by praying image" />
                <div class='description'>
                    <p class='description_content'>PRAY</p>
                </div>
            </div>
        </a>
    </div>
    <br style="clear: both" />
    <br />

    <div id="introContainer">
        <h1>Ut porttitor venenatis</h1>
        <p id="introParagraph">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut porttitor venenatis fringilla. Nam pellentesque convallis 
            lacus, eu rutrum arcu dapibus ac. Ut quis nunc ac erat <b>vulputate fringilla</b>. Praesent pretium, urna ac laoreet sagittis, 
            enim justo sagittis massa, at euismod risus lectus quis est. Nam eu urna urna. Vivamus at velit leo. Donec quis nulla ut 
            ligula <b>pulvinar rutrum</b>. Suspendisse et leo arcu. Suspendisse scelerisque consectetur justo, vitae ornare lectus vehicula in. 
            Duis consectetur, lacus.
        </p>
    </div>
    <div id="storyBox" class="metroBox hoverAnimationBackground shadow">
        <%-- Slide 1 --%>
        <a href="#" class="nextArrow">
            <img src="Images/Preraying.jpg" height="125" alt="Thumbnail of a missionary" />
            <span>
                <strong><em>Called</em></strong> by <b>God</b>?
            </span>
            How can I <strong><em>get involved in missions</em></strong>? What does Scripture say about <strong><em>my role in missions</em></strong>?
            <br /><br /><br />
            <i>Check out <b>One Weekend.</b></i>
        </a>

        <%-- Slide 2 --%>
        <a href="#" class="nextArrow displayNone">
            <img src="Images/AlJohansen.jpg" height="90" alt="Thumbnail of a missionary" /><span>George <strong><em>went</em></strong>...</span>
            <em>I was first introduced to Men for Missions in the summer of 1972, and in 1973, Dwight Ferguson came to our church for a missions emphasis weekend.  I felt the...</em>
        </a>

        <%-- Slide 3 --%>
        <a href="#" class="nextArrow displayNone">
            <img src="Images/James.jpg" height="90" alt="Thumbnail of a missionary" /><span>James <strong><em>gave</em></strong>...</span>
            <em>I was first introduced to Men for Missions in the summer of 1972, and in 1973, Dwight Ferguson came to our church for a missions emphasis weekend.  I felt the...</em>
        </a>
    </div>
    <div id="storyBoxCount">
    </div>
    <br />
    <br />
    <br />
</asp:Content>