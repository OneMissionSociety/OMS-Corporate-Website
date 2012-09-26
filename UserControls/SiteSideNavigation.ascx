<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SiteSideNavigation.ascx.cs" Inherits="UserControls_SiteSideNavigation" %>

<div id="sideNavWrapper" >
    <div id="sideNavigation">
        <asp:Repeater ID="rptSideNavigation" runat="server">
            <ItemTemplate>
                <div class="<%# SetActiveClass(Eval("IsActive").ToString()) %> hoverAnimationText" id="<%# DataBinder.Eval(Container.DataItem, "NavNodeID") %>">
                    <a class="hoverAnimationText" href="<%# DataBinder.Eval(Container.DataItem, "URL") %>"><%# DataBinder.Eval(Container.DataItem, "NavNodeText") %></a>
                </div>
                <br style="clear: both" />
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
