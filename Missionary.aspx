<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Missionary.aspx.cs" Inherits="Missionary" %>

<%-- Head Content --%>
<asp:Content ID="contentHead" ContentPlaceHolderID="HeadContent" runat="Server">
    <meta name="description" content="This will be a description that contains keywords about stuff. This description will show up in the search results." />
    <link rel="stylesheet" type="text/css" href="<%: ResolveUrl(MyStyleBundler.RenderPageSpecificStyle(Page.AppRelativeVirtualPath)) %>" />
    <script src="<%: ResolveUrl(MyScriptBundler.RenderPageSpecificScript(Page.AppRelativeVirtualPath)) %>"></script>
</asp:Content>

<%-- Page Content --%>
<asp:Content ID="contentContent" ContentPlaceHolderID="PageContent" runat="Server">
    <asp:Literal ID="missionary" runat="server"></asp:Literal>
</asp:Content>