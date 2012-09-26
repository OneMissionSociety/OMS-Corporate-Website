<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>
<%@ MasterType VirtualPath="~/SiteMaster.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link rel="stylesheet" type="text/css" href="<%: ResolveUrl(MyStyleBundler.RenderPageSpecificStyle(Page.AppRelativeVirtualPath)) %>" />
    <script src="<%: ResolveUrl(MyScriptBundler.RenderPageSpecificScript(Page.AppRelativeVirtualPath)) %>"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" Runat="Server">
    <div style="float:left; width:50%">
        <h2>General Contact</h2><br />
        <strong>One Mission Society</strong><br /><br />
        941 Fry Road<br />
        Greenwood, IN 46142<br /><br />
        <table>
            <tr>
                <td>
                    Tel
                </td>
                <td>
                    317-888-3333
                </td>
            </tr>
            <tr>
                <td>
                    Fax
                </td>
                <td>
                    317-888-4354
                </td>
            </tr>
            <tr>
                <td style="width:50px;">
                    Email
                </td>
                <td>
                    <a href="mailto:info@onemissionsociety.org">info@onemissionsociety.org</a>
                </td>
            </tr>
        </table>
    </div>
    <div style="float:left;">
        <h2>Email Us</h2>
        <br />
        <table>
            <tr>
                <td>
                    Name:
                </td>
                <td>
                    <input type="text" />
                </td>
            </tr>
            <tr>
                <td>
                    Email:
                </td>
                <td>
                    <input type="text" />
                </td>
            </tr>
            <tr>
                <td>
                    Inquiry type:
                </td>
                <td>
                    <select>
                        <option>General Information</option>
                        <option>Something Else</option>
                        <option>Still something else</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <textarea rows="6" cols="30"></textarea>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:right">
                    <input type="button" class="omsButton hoverAnimationBackground" value="Submit" />
                </td>
            </tr>
        </table>
    </div>
    <br style="clear:both" />
    <br />
    <br />
    <iframe width="950" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=One+Mission+Society+(OMS)&amp;aq=0&amp;oq=one+mission&amp;sll=39.604141,-86.102377&amp;sspn=0.134243,0.264187&amp;t=m&amp;ie=UTF8&amp;hq=One+Mission+Society&amp;hnear=&amp;ll=39.670992,-86.129036&amp;spn=0.092492,0.326157&amp;z=12&amp;iwloc=A&amp;output=embed"></iframe>
</asp:Content>