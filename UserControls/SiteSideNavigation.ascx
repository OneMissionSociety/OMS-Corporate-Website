<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SiteSideNavigation.ascx.cs" Inherits="UserControls_SiteSideNavigation" %>

<div id="sideNavWrapper" >
    <div id="sideNavigation">
        <asp:Repeater ID="rptSideNavigation" runat="server">
            <ItemTemplate>
                <div class="<%# SetActiveClass(Eval("IsActive").ToString()) %> <%# SetContextualClass(Eval("IsContextualLink").ToString()) %> hoverAnimationText" id="<%# DataBinder.Eval(Container.DataItem, "NavNodeID") %>">
                    <a onclick="<%# Eval("OnClickJS") %>" class="hoverAnimationText" href="<%# Eval("SeoAlias") %>">
                        <%# Eval("NavNodeText") %>
                    </a>
                </div>
                <br style="clear: both" />
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
