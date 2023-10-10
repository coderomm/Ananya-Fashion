<%@ Page Title="" Language="C#" MasterPageFile="~/ananyafashion.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner-wrapper has_background">
        <img src="assets/images/banner-for-all2.jpg"
            class="img-responsive attachment-1920x447 size-1920x447" alt="img">
        <div class="banner-wrapper-inner">
            <h1 class="page-title">About</h1>
            <div role="navigation" aria-label="Breadcrumbs" class="breadcrumb-trail breadcrumbs">
                <ul class="trail-items breadcrumb">
                    <li class="trail-item trail-begin"><a href="index.aspx"><span>Home</span></a></li>
                    <li class="trail-item trail-end active"><span>About</span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="site-main  main-container no-sidebar">
        <div class="section-037">
            <div class="container">
                <div class="akasha-popupvideo style-01">
                    <div class="popupvideo-inner">
                        <div class="icon">
                            <img src="images/about%20image/aboutimage.jpg"
                                class="attachment-full size-full" alt="img">
                            <div class="product-video-button">
                                <a class="buttonvideo" href="#" data-videosite="vimeo" data-videoid="158800043" tabindex="0">
                                    <div class="videobox_animation circle_1"></div>
                                    <div class="videobox_animation circle_2"></div>
                                    <div class="videobox_animation circle_3"></div>
                                </a>
                            </div>
                        </div>
                        <div class="popupvideo-wrap">
                            <h4 class="title">OUR STORY</h4>
                            <p class="desc"><%=aboutDetails %></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
</asp:Content>

