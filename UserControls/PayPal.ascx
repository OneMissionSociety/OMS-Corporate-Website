<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PayPal.ascx.cs" Inherits="UserControls_PayPal" %>

<link rel="stylesheet" type="text/css" href="<%# ResolveUrl("~/Styles/PayPalUC.css") %>" />
<script type="text/javascript" src="<%# ResolveUrl("~/Scripts/PayPalUC.js") %>"></script>

<div id="donationForm" runat="server">
    <%-- User visible elements --%>
    Give a <asp:DropDownList ID="ddlGiftType" runat="server" ClientIDMode="Static"></asp:DropDownList> gift of $ <asp:TextBox TextMode="Number" ID="txtGiftAmount" step="10" runat="server" ClientIDMode="Static"></asp:TextBox>   
      
    <%-- Buttons/user actions --%>
    <asp:Button ID="btnGive" runat="server" Text="Give Now" CssClass="hoverAnimationBackground" ClientIDMode="Static" OnClick="btnGive_Click" />
    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="hoverAnimationBackground" OnClick="btnSave_Click" ClientIDMode="Static" />
</div>

<div id="preExistingDonation" runat="server">
    A <b><%= (Donation != null) ? Donation.DonationType.ToLower() : String.Empty  %></b> of $<b><%= (Donation != null) ? Donation.DonationAmount : String.Empty  %></b> has already been saved. <asp:Button ID="btnRemoveGift" runat="server" Text="Remove Gift" CssClass="hoverAnimationBackground" OnClick="btnRemoveGift_Click" />
</div>

<%-- Used for scroll to project/missionary --%>
<div id="scrollToAnchor"></div>