<%@ Page Title="" Language="C#" MasterPageFile="~/ananyafashion.master" AutoEventWireup="true" CodeFile="testimonials.aspx.cs" Inherits="testimonials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner-wrapper has_background">
        <img src="assets/images/banner-for-all2.jpg"
            class="img-responsive attachment-1920x447 size-1920x447" alt="img">
        <div class="banner-wrapper-inner">
            <h1 class="page-title">Testimonials</h1>
            <div role="navigation" aria-label="Breadcrumbs" class="breadcrumb-trail breadcrumbs">
                <ul class="trail-items breadcrumb">
                    <li class="trail-item trail-begin"><a href="index.aspx"><span>Home</span></a></li>
                    <li class="trail-item trail-end active"><span>Testimonials</span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <main class="site-main main-container no-sidebar">
    <div class="section-043">
        <div class="container">
            <div class="akasha-heading style-01">
                <div class="heading-inner">
                    <h3 class="title">
                        Testimonials & Reviews </h3>
                    <div class="subtitle">
                        With 22 years of experience we have become the leaders in the market.
                    </div>
                </div>
            </div>
        </div>
        <div class="section-033">
            <div class="container">
                <div class="section-034">
                    <div class="row">
                        <div class="col-xs-12 col-sm-10 col-md-6 offset-sm-1 col-xl-5 col-lg-5">
                            <div class="akasha-slide">
                                <div class="owl-slick equal-container better-height"
                                     data-slick="{&quot;arrows&quot;:false,&quot;slidesMargin&quot;:0,&quot;dots&quot;:true,&quot;infinite&quot;:false,&quot;speed&quot;:300,&quot;slidesToShow&quot;:1,&quot;rows&quot;:1}"
                                     data-responsive="[{&quot;breakpoint&quot;:480,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;0&quot;}},{&quot;breakpoint&quot;:768,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;0&quot;}},{&quot;breakpoint&quot;:992,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;0&quot;}},{&quot;breakpoint&quot;:1200,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;0&quot;}},{&quot;breakpoint&quot;:1500,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;0&quot;}}]">
                                     
                    <asp:ListView ID="lv_testimonials" runat="server">
                        <ItemTemplate>
                                    <div class="akasha-testimonial style-02">
                                        <div class="testimonial-inner">
                                            <div class="testimonial-info">
                                                <div class="intro">
                                            <p class="desc"><%#Eval("t_review") %></p>
                                                    <h3 class="name"><a href="#" target="_self" tabindex="-1"><%#Eval("t_username") %> </a></h3>
                                                    <div class="position">Anonymous</div>
                                                </div>
                                                <div class="thumb">
                                                    <img src="images/about%20image/dummy-user.jpeg"
                                                         class="attachment-full size-full" alt="img" width="97"
                                                         height="97">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                   </ItemTemplate>
                </asp:ListView> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
</asp:Content>

