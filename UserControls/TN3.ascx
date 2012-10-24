<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TN3.ascx.cs" Inherits="UserControls_TN3" %>
<link rel="stylesheet" type="text/css" href="<%= ResolveUrl("~/Styles/TN3/skins/tn3/tn3.css") %>" />
<script type="text/javascript" src="<%= ResolveUrl("~/Scripts/jquery.tn3lite.min.js") %>"></script>
<script type="text/javascript">
    // May need to be editable at some point
    var _skinDir = "http://onemissionsociety.lan/Styles/TN3/skins";
    $(document).ready(function () {
        //Thumbnailer.config.shaderOpacity = 1;
        var tn1 = $('.mygallery').tn3({
            skinDir: "skins",
            imageClick: "fullscreen",
            skinDir: _skinDir,
            autoplay: _autoplay,
            width: "700",
            height: "347",
            image: {
                maxZoom: 2,
                crop: false,
                clickEvent: "dblclick",
                transitions: [{
                    type: "blinds"
                }, {
                    type: "grid"
                }, {
                    type: "grid",
                    duration: 460,
                    easing: "easeInQuad",
                    gridX: 1,
                    gridY: 8,
                    // flat, diagonal, circle, random
                    sort: "random",
                    sortReverse: false,
                    diagonalStart: "bl",
                    // fade, scale
                    method: "scale",
                    partDuration: 360,
                    partEasing: "easeOutSine",
                    partDirection: "left"
                }]
            }
        });
    });
</script>

<div class="mygallery">
    <div class="tn3 album">
        <h4></h4>
        <div class="tn3 description"></div>
        <div class="tn3 thumb"></div>
        <ol>
            <asp:Repeater ID="rptTN3" runat="server">
                <ItemTemplate>
                    <li>
                        <h4><%# Eval("Title") %></h4>
                        <div class="tn3 description">
                            <%# Eval("Description") %>
                        </div>
                        <a href="<%# Eval("URL") %>">
                            <img src="<%# Eval("URL") %>" alt="<%# Eval("AltText") %>" />
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ol>
    </div>
</div>
<br style="clear: both" />