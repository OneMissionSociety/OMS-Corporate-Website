<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterSideNav.master" AutoEventWireup="true" CodeFile="Project.aspx.cs" Inherits="Project" %>
<%@ MasterType VirtualPath="~/SiteMasterSideNav.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <link rel="stylesheet" type="text/css" href="<%: ResolveUrl(MyStyleBundler.RenderPageSpecificStyle(Page.AppRelativeVirtualPath)) %>" />
    <script src="<%: ResolveUrl(MyScriptBundler.RenderPageSpecificScript(Page.AppRelativeVirtualPath)) %>"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="Server">
    <%-- Project List Container (shown when project ID is not specified --%>
    <div id="projectListContainer" runat="server">
        <h1>Give to a Project
        </h1>
        <p id="test" runat="server">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et dapibus lectus. Ut ipsum dolor, volutpat sit amet laoreet in, cursus in dui. 
        Curabitur quis tempor lectus. Vivamus congue lorem a odio laoreet consectetur. Nulla facilisi. Aliquam erat volutpat. Aenean id sapien ipsum, id pharetra massa. 
        Quisque eget risus vitae nisl hendrerit pulvinar vel nec nisi. Aliquam sed tincidunt magna. Etiam rutrum, est vitae bibendum imperdiet, massa eros venenatis ipsum, 
        eget lobortis nunc massa non urna.
        </p>
        <asp:Repeater ID="projectRepeater" runat="server">
            <ItemTemplate>
                <div class="project">
                    <div id="imgContainer" runat="server" class="projectImageHolder">
                    </div>
                    <div class="projectDescription">
                        <h2>
                            <%# Eval("ProjectName").ToString() %>
                        </h2>
                        <p>
                            <%# Eval("ShortDescription").ToString() %>&nbsp;<a href="/give/projects/<%# Eval("SeoURL").ToString() %>">Read more...</a>
                        </p>
                    </div>
                </div>
                <br style="clear: both" />
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <%-- Project Information --%>
    <div id="fullProjectInformation" runat="server">
        <h1 id="projectName" runat="server"></h1>
        <p id="projectDescription" runat="server"></p>
    </div>
</asp:Content>
