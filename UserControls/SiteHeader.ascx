<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SiteHeader.ascx.cs" Inherits="UserControls_SiteHeader" %>

<div id="headerContent">
    <%-- OMS Logo --%>
    <a href="default.aspx" rel="One Mission Soceity homepage">
        <img src="<%= ResolveClientUrl("~/Images/One-Mission-Society-Logo.png") %>" alt="One Mission Society Logo" />
    </a>
    <div id="headerRight">
        <div id="quickLinks">
            <a href="#">Sign In</a>&nbsp;&nbsp;<a href="#">Find a Missionary</a>
        </div>
        <div id="soulCount">
            <asp:Literal ID="SoulCount" runat="server" ClientIDMode="Static"></asp:Literal>
            <p>
                On average, one person comes to Christ every 47 seconds through the ministries of One Mission Society
            </p>
        </div>
    </div>
</div>
