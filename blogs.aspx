<%@ Page Title="" Language="C#" MasterPageFile="~/ananyafashion.master" AutoEventWireup="true" CodeFile="blogs.aspx.cs" Inherits="blogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="banner-wrapper has_background">
    <img src="assets/images/banner-for-all2.jpg"
         class="img-responsive attachment-1920x447 size-1920x447" alt="img">
    <div class="banner-wrapper-inner">
        <h1 class="page-title">Blog</h1>
        <div role="navigation" aria-label="Breadcrumbs" class="breadcrumb-trail breadcrumbs">
            <ul class="trail-items breadcrumb">
                <li class="trail-item trail-begin"><a href="index.aspx"><span>Home</span></a></li>
                <li class="trail-item trail-end active"><span>Blog</span>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="main-container no-sidebar">
    <!-- POST LAYOUT -->
    <div class="container">
        <div class="row">
            <div class="main-content col-md-12 col-sm-12">
                <div class="blog-grid auto-clear content-post row">
                   <asp:ListView ID="lv_blogs" runat="server">
                            <ItemTemplate>
                     <article
                            class="post-item post-grid col-bg-4 col-xl-4 col-lg-4 col-md-4 col-sm-6 col-ts-12 post-171 post type-post productStatus-publish format-standard has-post-thumbnail hentry category-fashion category-table category-multi tag-fashion tag-table">
                        <div class="post-inner">
                            <div class="post-thumb">
                                <a href="blog-details.aspx?blog-search=<%#Eval("Id") %>">
                                    <img src="images/blog/<%#Eval("blogImage") %>"
                                         class="img-responsive attachment-370x330 size-370x330" alt="img" width="370"
                                         height="330"> </a>
                                <a class="datebox" href="blog-details.aspx?blog-search=<%#Eval("Id") %>">
                                    <span><span><%#Eval("blogDate") %></span></span>
                                   
                                </a>
                            </div>
                            <div class="post-content">
                                <div class="post-meta">
                                    <div class="post-author">
                                        By:<a href="blog-details.aspx?blog-search=<%#Eval("Id") %>">
                                        admin </a>
                                    </div>
                                    <div class="post-comment-icon">
                                        <a href="#">
                                            0 </a>
                                    </div>
                                </div>
                                <div class="post-info equal-elem">
                                    <h2 class="post-title"><a href="blog-details.aspx?blog-search=<%#Eval("Id") %>"><%#Eval("blogTitle") %></a></h2>
                                    <%# GetFirstWords(Eval("blogDetail")) %>
                                </div>
                            </div>
                        </div>
                    </article>
                </ItemTemplate>
                        </asp:ListView>
                </div>
                
            </div>
        </div>
    </div>
</div>
</asp:Content>

