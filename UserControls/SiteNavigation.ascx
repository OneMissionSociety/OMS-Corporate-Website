<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SiteNavigation.ascx.cs" Inherits="UserControls_SiteNavigation" %>

<ul id="menu">
    <li class="hoverAnimationBackground" id="navHome" runat="server"><a href="/default.aspx">Home</a></li>
    <li class="hoverAnimationBackground" id="navGive" runat="server"><a href="/give">Give</a></li>
    <li class="hoverAnimationBackground" id="navGo" runat="server"><a href="#">Go</a></li>
    <li class="hoverAnimationBackground" id="navPray" runat="server"><a href="/pray-for-missions">Pray</a></li>

    <li>
        <a href="#">Ministries</a>
        <ul>
            <li class="hoverAnimationBackground">
                <a href="#" id="eccNavItem">
                    <p style="line-height: 22px; overflow: hidden;">
                        <strong>Every Community for Christ</strong> is the <strong><em>church multiplication</em></strong> catalyst for One Mission Society.
                    </p>
                </a>
            </li>
            <li class="hoverAnimationBackground">
                <a href="#" id="menForMissionNavItem">
                    <p style="line-height: 22px; overflow: hidden;">
                        Maecenas eget eros lorem, nec pellentesque lacus. Aenean dui orci, rhoncus sit amet tristique eu.
                    </p>
                </a>
            </li>
            <li class="hoverAnimationBackground">
                <a href="#" id="hope61NavItem">
                    <p style="line-height: 22px; overflow: hidden;">
                        Maecenas eget eros lorem, nec pellentesque lacus. Aenean dui orci, rhoncus sit amet tristique eu.
                    </p>
                </a>
            </li>
        </ul>
    </li>

    <li class="hoverAnimationBackground" id="navAboutUs" runat="server">
        <a href="/about-us">About Us</a>
        <ul>
            <li class="hoverAnimationBackground"><a href="about-us">WHO IS OMS</a></li>
            <li class="hoverAnimationBackground"><a href="where-we-serve">WHERE WE SERVE</a></li>
            <li class="hoverAnimationBackground"><a href="#">OMS HISTORY</a></li>
            <li class="hoverAnimationBackground"><a href="articles-of-faith">ARTICLES OF FAITH</a></li>
            <li class="hoverAnimationBackground"><a href="#">BOARD OF TRUSTEES</a></li>
        </ul>
    </li>
    <li class="hoverAnimationBackground" id="navContactUs" runat="server"><a href="contact-us">Contact Us</a></li>
</ul>
