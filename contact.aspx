<%@ Page Title="" Language="C#" MasterPageFile="~/ananyafashion.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="banner-wrapper has_background">
    <img src="assets/images/banner-for-all2.jpg"
         class="img-responsive attachment-1920x447 size-1920x447" alt="img">
    <div class="banner-wrapper-inner">
        <h1 class="page-title">Contact</h1>
        <div role="navigation" aria-label="Breadcrumbs" class="breadcrumb-trail breadcrumbs">
            <ul class="trail-items breadcrumb">
                <li class="trail-item trail-begin"><a href="index.aspx"><span>Home</span></a></li>
                <li class="trail-item trail-end active"><span>Contact</span>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="site-main main-container no-sidebar">
    <div class="section-041">
        <div class="container">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3557.607313113091!2d75.82033655992701!3d26.91595500985573!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396db78455a8ba81%3A0x2b1c46fc6a49214e!2sANANYA%20FASHION!5e0!3m2!1sen!2sin!4v1683974077473!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
    <div class="section-042">
        <div class="container">
            <div class="row">
                <div class="col-md-12 offset-xl-1 col-xl-10 col-lg-12">
                    <div class="row">
                        <div class="col-md-6">
                            <h4 class="az_custom_heading">Address</h4>
                            <p>SHOP NO 323/324 4TH, Navjeevan Plaza, SHOP NO 323/324 4TH FLOOR NAVJEEVAN MI ROAD JAIPUR PLAZA, Mirza Ismail Rd, PLAZA, Jaipur, Rajasthan 302004</p>
                            <h4 class="az_custom_heading">Store Hours</h4>
                            <p>Monday-Saturday 11am-7pm ET<br>
                                Sunday 11am-7pm IST</p>
                        </div>
                        <div class="col-md-6">
                            <div role="form" class="wpcf7">
                                <div class="wpcf7-form">
                                    <p><label> Name *<br>
                                        <span class="wpcf7-form-control-wrap your-name">
                                            <asp:TextBox ID="username" runat="server" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required"></asp:TextBox>
                                            </span>
                                    </label></p>
                                    <p><label> Email *<br>
                                        <span class="wpcf7-form-control-wrap your-email">
                                            <asp:TextBox ID="useremail" runat="server" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email"
                                                   type="email"></asp:TextBox>
                                                  </span>
                                    </label></p>
                                    <p><label> Your Message *<br>
                                        <span class="wpcf7-form-control-wrap your-message">
                                            <asp:TextBox ID="usermsg" runat="server" cols="40" rows="10"
                                                      class="wpcf7-form-control wpcf7-textarea"></asp:TextBox>
                                            </span>
                                    </label></p>
                                    <p>
                                        <asp:Button ID="btnContact" OnClick="btnContact_Click" runat="server" class="wpcf7-form-control wpcf7-submit" type="submit" Text="Send" />
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>

