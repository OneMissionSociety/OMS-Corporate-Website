<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterSideNav.master" AutoEventWireup="true" CodeFile="ArticlesOfFaith.aspx.cs" Inherits="ArticlesOfFaith" %>
<%@ MasterType VirtualPath="~/SiteMasterSideNav.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link rel="stylesheet" type="text/css" href="<%: ResolveUrl(MyStyleBundler.RenderPageSpecificStyle(Page.AppRelativeVirtualPath)) %>" />
    <script src="<%: ResolveUrl(MyScriptBundler.RenderPageSpecificScript(Page.AppRelativeVirtualPath)) %>"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" Runat="Server">
    <h2>Articles of Faith</h2>
    <p>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eros magna, sodales a malesuada vel, aliquet vitae libero. Duis ut nisi nisi. Sed sollicitudin felis sed nibh rhoncus ut eleifend odio feugiat. Etiam eu massa mi, sed bibendum eros. Curabitur lectus sapien, feugiat vel sodales quis, mattis sed lorem. Sed mattis lectus id enim sagittis posuere.
    </p>
    <ul>
        <li>
            <span>
                <strong>Scripture</strong> - The Bible is the fully and uniquely inspired, written Word of God. Without error in the original documents, it is our sufficient and final authority for faith and practice.
            </span>
        </li>
        <li>
            <span>
                <strong>God</strong> - The one true and living God is the Creator, sovereign ruler and preserver of all things, whether visible or invisible.
            </span>
        </li>
        <li>
            <span>
                <strong>Jesus Christ</strong> - Jesus Christ is the second person of the triune godhead. Conceived by the Holy Spirit and born of the virgin Mary, Jesus was fully God and fully man. His sinless life and death on the cross paid the penalty for our sins. He arose bodily from the grave and is now enthroned at the right hand of the Father in heaven.
            </span>
        </li>
        <li>
            <span>
                <strong>Holy Spirit</strong> - The Holy Spirit is the third person of the triune godhead, equal in substance with the Father and the Son, whose ministry is to glorify Jesus Christ, convict the world of sin, regenerate those who repent and believe, sanctify and empower true believers for godly living and service.
            </span>
        </li>
        <li>
            <span>
                <strong>Man, Free-will and Sin</strong> - God created man in His own image with the ability to choose between right and wrong. By his free choice, Adam rebelled against God, fell from his original state and received a sinful nature that each succeeding generation has inherited. Through Jesus Christ, God freely offers grace to all mankind, enabling all who turn to Him to receive pardon and cleansing from sin.
            </span>
        </li>
        <li>
            <span>
                <strong>Atonement</strong> - Jesus Christ made a full payment for the sins of the whole world by shedding His own blood upon the cross as a perfect and sufficient sacrifice.
            </span>
        </li>
        <li>
            <span>
                <strong>New Birth</strong> - When a  person responds to the convicting work of the Holy Spirit and trusts in Christ for salvation, that person experiences spiritual rebirth.
            </span>
        </li>
        <li>
            <span>
                <strong>Fullness of the Spirit</strong> - The fullness of the Spirit is a biblical term used to describe that work of grace in the heart of the believer subsequent to the new birth. This infilling of the Spirit is a definite experience of cleansing and empowering, which is referred to as sanctification. The progressive aspect of sanctification is that process of growth in Christian maturity, Christlikeness and practical godliness which result from walking obediently.
            </span>
        </li>
        <li>
            <span>
                <strong>Resurrection, Heaven and Hell</strong> - There will be a resurrection of the body for both the saved and unsaved dead. For those who are saved, they will be in the immediate presence of God. For those who are not saved, they will be cast into the lake of fire or hell.
            </span>
        </li>
        <li>
            <span>
                <strong>The Church and its Unity</strong> - The Church is the universal body of Christ composed of all true believers in Christ, with Christ as its head. All true Christians are members of one another and should love one another, build each other up in the faith and obey Christ’s Great Commission by reaching the whole world with the Gospel of Jesus Christ.
            </span>
        </li>
    </ul>
</asp:Content>