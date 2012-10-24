<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Give.aspx.cs" Inherits="Give" %>

<%@ MasterType VirtualPath="~/SiteMaster.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <link rel="stylesheet" type="text/css" href="<%: ResolveUrl(MyStyleBundler.RenderPageSpecificStyle(Page.AppRelativeVirtualPath)) %>" />
    <script src="<%: ResolveUrl(MyScriptBundler.RenderPageSpecificScript(Page.AppRelativeVirtualPath)) %>"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="Server">
    <%-- Give --%>
    <div class="pictureBox shadow">
        <a href="give/projects">
            <div class="pictureBoxDescription nextArrow">
                <h2>Project</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae mauris at 
                mauris condimentum semper eget sit amet ligula. Ut et dui vitae arcu tincidunt 
                pellentesque et vel lectus. Phasellus sollicitudin, tellus ac rutrum elementum, 
                neque nisl tempor libero, sed. 
                </p>
            </div>
            <div class='wrapper dogEar'>
                <img src="Images/Give.jpg" alt="Support world missions by giving image" />
                <div class='description'>
                    <p class='description_content'>Project</p>
                </div>
            </div>
        </a>
    </div>

    <%-- Go --%>
    <div class="pictureBox shadow">
        <a href="#">
            <div class="pictureBoxDescription nextArrow">
                <h2 class="test">Missionary</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae mauris at 
                mauris condimentum semper eget sit amet ligula. Ut et dui vitae arcu tincidunt 
                pellentesque et vel lectus. Phasellus sollicitudin, tellus ac rutrum elementum, 
                neque nisl tempor libero, sed. 
                </p>
            </div>
            <div class='wrapper dogEar'>
                <img src="Images/Go.jpg" alt="Support world missions by going image" />
                <div class='description'>
                    <p class='description_content'>Missionary</p>
                </div>
            </div>
        </a>
    </div>

    <%-- Pray --%>
    <div id="pbPray" class="metroBox shadow hoverAnimationBackground">
        <h2>Quick Links</h2>
        <ul>
            <li>
                <a href="#">Find a <strong>missionary</strong></a>
            </li>
            <li>
                <a href="#">Find a <strong>project</strong></a>
            </li>
        </ul>
    </div>
    <br style="clear: both" />
    <br />
    <br />
    <h1>Giving to One Mission Society</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscin.</p>

    <blockquote class="scripture">
        <span>
            <a href="http://bible.us/2cor9.7.nkjv" target="_blank">
                So let each one give as he purposes in his heart, not grudgingly or of necessity; for God loves a cheerful giver. 2 Corinthians 9:7 (NKJV)
            </a>
        </span>
    </blockquote>
</asp:Content>