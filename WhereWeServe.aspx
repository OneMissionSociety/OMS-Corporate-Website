<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterSideNav.master" AutoEventWireup="true" CodeFile="WhereWeServe.aspx.cs" Inherits="WhereWeServe" %>
<%@ MasterType VirtualPath="~/SiteMasterSideNav.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link rel="stylesheet" type="text/css" href="<%: ResolveUrl(MyStyleBundler.RenderPageSpecificStyle(Page.AppRelativeVirtualPath)) %>" />
    <script src="<%: ResolveUrl(MyScriptBundler.RenderPageSpecificScript(Page.AppRelativeVirtualPath)) %>"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" Runat="Server">
</asp:Content>