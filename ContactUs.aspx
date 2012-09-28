<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<%@ MasterType VirtualPath="~/SiteMaster.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <link rel="stylesheet" type="text/css" href="<%: ResolveUrl(MyStyleBundler.RenderPageSpecificStyle(Page.AppRelativeVirtualPath)) %>" />
    <script src="<%: ResolveUrl(MyScriptBundler.RenderPageSpecificScript(Page.AppRelativeVirtualPath)) %>"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="Server">
    <%-- General Contact --%>
    <div id="divGeneralContact" class="metroBox hoverAnimationBackground shadow">
        <h2>General Contact</h2>
        <strong>One Mission Society</strong><br />
        World Headquarters<br />
        941 Fry Road<br />
        Greenwood, IN 46142<br />
        <br />
        <table>
            <tr>
                <td>
                    <strong>Tel</strong>
                </td>
                <td>
                    317-888-3333
                </td>
            </tr>
            <tr>
                <td>
                    <strong>Fax</strong>
                </td>
                <td>317-888-4354
                </td>
            </tr>
            <tr>
                <td>
                    <strong>Email</strong>
                </td>
                <td>
                    <a href="mailto:info@onemissionsociety.org">info@onemissionsociety.org</a>
                </td>
            </tr>
        </table>
    </div>

    <%-- Email Us --%>
    <div id="divEmailUs" class="metroBox hoverAnimationBackground shadow">
        <h2>Email Us</h2>
        <div class="floatLeft">
            <table>
                <tr>
                    <td>
                        <label for="txtName">Name:</label>
                    </td>
                    <td>
                        <input type="text" id="txtName" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="txtEmail">Email:</label>
                    </td>
                    <td>
                        <input type="email" id="txtEmail" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="ddlInquiryType">Inquiry type:</label>
                    </td>
                    <td>
                        <select id="ddlInquiryType" runat="server">
                            <option>General Information</option>
                            <option>Something Else</option>
                            <option>Still something else</option>
                        </select>
                    </td>
                </tr>
            </table>
        </div>
        <div id="questionComments">
            Questions/Comments<br />
            <textarea rows="10" cols="30"></textarea>
        </div>
        
        <input type="button" id="submitButton" class="hoverAnimationBackground" value="Submit" />
    </div>
    <iframe width="950" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=One+Mission+Society+(OMS)&amp;aq=0&amp;oq=one+mission&amp;sll=39.604141,-86.102377&amp;sspn=0.134243,0.264187&amp;t=m&amp;ie=UTF8&amp;hq=One+Mission+Society&amp;hnear=&amp;ll=39.670992,-86.129036&amp;spn=0.092492,0.326157&amp;z=12&amp;iwloc=A&amp;output=embed"></iframe>
</asp:Content>
