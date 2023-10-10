<%@ Page Title="" Language="C#" MasterPageFile="~/ananyafashion.master" AutoEventWireup="true" CodeFile="newsletter.aspx.cs" Inherits="newsletter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #home-newsletter {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="banner-wrapper has_background">
    <img src="assets/images/banner-for-all2.jpg"
         class="img-responsive attachment-1920x447 size-1920x447" alt="img">
    <div class="banner-wrapper-inner">
        <h1 class="page-title">Newsletter</h1>
        <div role="navigation" aria-label="Breadcrumbs" class="breadcrumb-trail breadcrumbs">
            <ul class="trail-items breadcrumb">
                <li class="trail-item trail-begin"><a href="index.aspx"><span>Home</span></a></li>
                <li class="trail-item trail-end active"><span>Newsletter</span>
                </li>
            </ul>
        </div>
    </div>
</div>
<main class="site-main main-container no-sidebar">
    
    <div>
        <div class="container">
            <div class="akasha-heading style-01">
                <div class="heading-inner">
                    <h3 class="title">
                        Contact Us to Get Exclusive Wholesale Deals</h3>
                    <div class="subtitle">
                        Become a Retail Partner 
                    </div>
                </div>
            </div>
        </div>
        <div class="section-001">
            <div class="container">
                <div class="akasha-newsletter style-03">
                    <div class="newsletter-inner">
                        
                        <div class="newsletter-form-wrap">
                            <div class="newsletter-form-inner">
                                    <asp:TextBox ID="txtNewsletter" runat="server" class="email email-newsletter" placeholder="Enter your email ..." type="email"></asp:TextBox>
                                    <asp:Button ID="btnNewsletter" OnClick="btnNewsletter_Click" runat="server" class="button btn-submit submit-newsletter" Text="Subscribe" />

                            </div>
                        </div>
                    </div>
                </div>
                <div class="akasha-socials style-02" style="text-align:center;">
                    <div class="content-socials">
                        <ul class="socials-list">
                            <li>
                                <a href="https://facebook.com/" target="_blank">
                                    <i class="fa fa-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/" target="_blank">
                                    <i class="fa fa-instagram"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://twitter.com/" target="_blank">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.pinterest.com/" target="_blank">
                                    <i class="fa fa-pinterest-p"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
</asp:Content>

