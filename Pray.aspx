<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Pray.aspx.cs" Inherits="Pray" %>
<%@ MasterType VirtualPath="~/SiteMaster.master" %>

<%-- Head Content --%>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <meta name="keywords" content="wall of prayer, prayer ministry, pray for missions, pray without ceasing" />
    <link rel="stylesheet" type="text/css" href="<%: ResolveUrl(MyStyleBundler.RenderPageSpecificStyle(Page.AppRelativeVirtualPath)) %>" />
    <script src="<%: ResolveUrl(MyScriptBundler.RenderPageSpecificScript(Page.AppRelativeVirtualPath)) %>"></script>
</asp:Content>

<%-- Page Content --%>
<asp:Content ID="Content4" ContentPlaceHolderID="PageContent" Runat="Server">
    <img src="Images/Pray.jpg" style="float:right; width:300px; margin-left:25px;" class="shadow" />
    <h1>One Mission Society Prayer Ministry</h1>
    <p>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sed purus vitae nulla auctor lobortis. 
        Aenean id mi pharetra libero tristique varius. Vivamus eu metus velit. Duis libero nisi, ornare vitae 
        lacinia in, ornare at ligula. Nullam luctus sollicitudin tortor, et laoreet odio sagittis sed. In sed 
        ipsum est. Sed dapibus consequat tellus, ac congue est vehicula et. Sed vel enim velit, sit amet tristique 
        elit. Maecenas eget enim a nisl eleifend suscipit vel id libero. Quisque rhoncus dapibus velit, quis fringilla 
        enim pellentesque et. In porta massa et elit congue eget blandit massa lobortis. Nulla eget erat in ante.
    </p>
    <blockquote class="scripture">
        <a href="http://bible.us/1thess5.16-18.nkjv" target="_blank">
            Rejoice always, <strong>pray without ceasing</strong>, in everything give thanks; for this is the will of God in Christ Jesus for you. 1 Thessalonians 5:16-18 (NKJV)
        </a>
    </blockquote>
    <br style="clear:both" />
    <br /><br />
    <h2>Wall of Prayer</h2>
    <br />

     <%-- Country --%>
    <div>
        <%-- Flag --%>
        <div class="imageWithCaption">
            <img src="Images/Flags/Flat/Brazil.png" class="shadow" />
            <h3>Brazil</h3>
        </div>

        <%-- Prayer Requests --%>
        <div class="prayerRequests">
            <div>
                <h4>Pray for This</h4>
                <div class="prayerCount">Prayed for 4 times</div>
                <br style="clear:both" />
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sed purus vitae nulla auctor lobortis.
                    Ipsum dolor sit amet, consectetur adipiscing elit. Morbi sed purus vitae nulla auctor lobortis.
                </p>
                <div class="socialDiv">
                    <img src="Images/SocialNetworkingPlaceholder.png" />
                </div>
                <div class="iPrayedDiv">
                    <input type="button" class="omsButton hoverAnimationBackground" value="I prayed!" />
                </div>
            </div>
            <div>
                <h4>Pray for This as well</h4>
                <div class="prayerCount">Prayed for 6 times</div>
                <br style="clear:both" />
                <p>Aenean id mi pharetra libero tristique varius. Vivamus eu metus velit. Duis libero nisi, ornare vitae lacinia in, ornare at ligula. Nullam luctus sollicitudin tortor, et laoreet odio sagittis sed. In sed ipsum est. Sed dapibus consequat tellus, ac congue est vehicula et.</p>
                <div class="socialDiv">
                    <img src="Images/SocialNetworkingPlaceholder.png" />
                </div>
                <div class="iPrayedDiv">
                    <input type="button" class="omsButton hoverAnimationBackground" value="I prayed!" />
                </div>
            </div>
        </div>
    </div>

    <br style="clear:both;" /><br />

    <%-- Country --%>
    <div>
        <%-- Flag --%>
        <div class="imageWithCaption">
            <img src="Images/Flags/Flat/Colombia.png" class="shadow" />
            <h3>Colombia</h3>
        </div>

        <%-- Prayer Requests --%>
        <div class="prayerRequests">
            <div>
                <h4>Pray for This</h4>
                <div class="prayerCount">Prayed for 4 times</div>
                <br style="clear:both" />
                <p>
                    Ipsum dolor sit amet, consectetur adipiscing elit. Morbi sed purus vitae nulla auctor lobortis.
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sed purus vitae nulla auctor lobortis.
                </p>
                <div class="socialDiv">
                    <img src="Images/SocialNetworkingPlaceholder.png" />
                </div>
                <div class="iPrayedDiv">
                    <input type="button" class="omsButton hoverAnimationBackground" value="I prayed!" />
                </div>
            </div>
            <div>
                <h4>Pray for This as well</h4>
                <div class="prayerCount">Prayed for 2 times</div>
                <br style="clear:both" />
                <p>
                    Aenean id mi pharetra libero tristique varius. Vivamus eu metus velit. Duis libero nisi, ornare vitae lacinia in, ornare at ligula. Nullam luctus sollicitudin tortor, et laoreet odio sagittis sed. In sed ipsum est. Sed dapibus consequat tellus, ac congue est vehicula et.
                </p>
                <div class="socialDiv">
                    <img src="Images/SocialNetworkingPlaceholder.png" />
                </div>
                <div class="iPrayedDiv">
                    <input type="button" class="omsButton hoverAnimationBackground" value="I prayed!" />
                </div>
            </div>
            <div>
                <h4>Last one to pray for</h4>
                <div class="prayerCount">Prayed for 1 times</div>
                <br style="clear:both" />
                <p>
                    Aenean id mi pharetra libero tristique varius. Vivamus eu metus velit. Duis libero nisi, ornare vitae lacinia in, ornare at ligula. Nullam luctus sollicitudin tortor, et laoreet odio sagittis sed.
                </p>
                <div class="socialDiv">
                    <img src="Images/SocialNetworkingPlaceholder.png" />
                </div>
                <div class="iPrayedDiv">
                    <input type="button" class="omsButton hoverAnimationBackground" value="I prayed!" />
                </div>
            </div>
        </div>
    </div>

    <br style="clear:both;" />

    <%-- Country --%>
    <div>
        <%-- Flag --%>
        <div class="imageWithCaption">
            <img src="Images/Flags/Flat/Israel.png" class="shadow" />
            <h3>Israel</h3>
        </div>

        <%-- Prayer Requests --%>
        <div class="prayerRequests">
            <div>
                <h4>Pray for This</h4>
                <div class="prayerCount">Prayed for 4 times</div>
                <br style="clear:both" />
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sed purus vitae nulla auctor lobortis.
                    Ipsum dolor sit amet, consectetur adipiscing elit. Morbi sed purus vitae nulla auctor lobortis.
                </p>
                <div class="socialDiv">
                    <img src="Images/SocialNetworkingPlaceholder.png" />
                </div>
                <div class="iPrayedDiv">
                    <input type="button" class="omsButton hoverAnimationBackground" value="I prayed!" />
                </div>
            </div>
            <div>
                <h4>Pray for This as well</h4>
                <div class="prayerCount">Prayed for 6 times</div>
                <br style="clear:both" />
                <p>Aenean id mi pharetra libero tristique varius. Vivamus eu metus velit. Duis libero nisi, ornare vitae lacinia in, ornare at ligula. Nullam luctus sollicitudin tortor, et laoreet odio sagittis sed. In sed ipsum est. Sed dapibus consequat tellus, ac congue est vehicula et.</p>
                <div class="socialDiv">
                    <img src="Images/SocialNetworkingPlaceholder.png" />
                </div>
                <div class="iPrayedDiv">
                    <input type="button" class="omsButton hoverAnimationBackground" value="I prayed!" />
                </div>
            </div>
        </div>
    </div>

    <br style="clear:both;" />

    <%--<div class="requestedDate">
        Requested 08/16/2012
    </div>--%>
</asp:Content>