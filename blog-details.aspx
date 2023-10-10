<%@ Page Title="" Language="C#" MasterPageFile="~/ananyafashion.master" AutoEventWireup="true" CodeFile="blog-details.aspx.cs" Inherits="blog_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner-wrapper no_background">
        <div class="banner-wrapper-inner">
            <div class="breadcrumb-trail breadcrumbs">
                <ul class="trail-items breadcrumb">
                    <li class="trail-item trail-begin"><a href="index.html"><span>Home</span></a></li>
                    <li class="trail-item"><a href="#"><span>Blog</span></a></li>
                    <li class="trail-item trail-end active"><span>Blog Details.</span></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="main-container left-sidebar has-sidebar">
        <!-- POST LAYOUT -->
        <div class="container">
            <div class="row">
                <div class="main-content col-xl-9 col-lg-8 col-md-12 col-sm-12">
                    <article
                        class="post-item post-single post-195 post type-post status-publish format-standard has-post-thumbnail hentry category-light category-table category-life-style tag-light tag-life-style">
                        <div class="single-post-thumb">
                            <div class="post-thumb">
                                <div class="owl-slick"
                                    data-slick="{&quot;arrows&quot;: true, &quot;dots&quot;: false, &quot;infinite&quot;: false, &quot;slidesToShow&quot;: 1}">
                                    <asp:ListView ID="lv_blogs_images" runat="server">
                                        <ItemTemplate>
                                            <figure>
                                                <img src="images/blog/<%#Eval("blogImage") %>"
                                                    class="img-responsive attachment-1170x768 size-1170x768" alt="img"
                                                    width="1170" height="768">
                                            </figure>
                                            <figure>
                                                <img src="images/blog/<%#Eval("blogImage") %>"
                                                    class="img-responsive attachment-1170x768 size-1170x768" alt="img"
                                                    width="1170" height="768">
                                            </figure>
                                            <figure>
                                                <img src="images/blog/<%#Eval("blogImage") %>"
                                                    class="img-responsive attachment-1170x768 size-1170x768" alt="img"
                                                    width="1170" height="768">
                                            </figure>
                                            <figure>
                                                <img src="images/blog/<%#Eval("blogImage") %>"
                                                    class="img-responsive attachment-1170x768 size-1170x768" alt="img"
                                                    width="1170" height="768">
                                            </figure>
                                            <figure>
                                                <img src="images/blog/<%#Eval("blogImage") %>"
                                                    class="img-responsive attachment-1170x768 size-1170x768" alt="img"
                                                    width="1170" height="768">
                                            </figure>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>
                            </div>
                        </div>
                        <asp:ListView ID="lv_blog" runat="server">
                            <ItemTemplate>
                                <div class="single-post-info">
                                    <h2 class="post-title"><a href="#"><%#Eval("blogTitle") %></a></h2>
                                    <div class="post-meta">
                                        <div class="date">
                                            <a href="#"><%#Eval("blogDate") %> </a>
                                        </div>
                                        <div class="post-author">
                                            By:<a href="#"> admin </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="post-content">
                                    <div id="output">
                                        <blockquote>
                                            <p><%#Eval("blogDetail") %></p>
                                        </blockquote>
                                    </div>
                                    <p>&nbsp;</p>

                                </div>
                            </ItemTemplate>
                        </asp:ListView>
                        <div class="tags">
                            <a href="#" rel="tag">Blog</a>, <a
                                href="#" rel="tag">Ethenic Wear</a>
                        </div>
                        <div class="post-footer">
                            <div class="akasha-share-socials">
                                <h5 class="social-heading">Share: </h5>
                                <a target="_blank" class="facebook" href="#"><i class="fa fa-facebook-f"></i></a>
                                <a target="_blank" class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                <a target="_blank" class="pinterest" href="#"><i class="fa fa-pinterest"></i></a>
                                <a target="_blank" class="googleplus" href="#"><i class="fa fa-google-plus"></i></a>
                            </div>
                            <div class="categories">
                                <span>Categories: </span>
                                <a href="#">Blogs</a>,
                            <a href="#">Ethenic Wear</a>,
                            <a href="#">Life Style</a>
                            </div>
                        </div>
                    </article>
                    <!-- #comments -->
                </div>
                <div class="sidebar akasha_sidebar col-xl-3 col-lg-4 col-md-12 col-sm-12">
                    <div id="widget-area" class="widget-area sidebar-blog">
                        <div id="widget_akasha_post-2" class="widget widget-akasha-post">
                            <h2 class="widgettitle">Recent
                        Post<span class="arrow"></span></h2>
                            <div class="akasha-posts">
                                <asp:ListView ID="lv_recentblogs" runat="server">
                                        <ItemTemplate>
                                <article
                                    class="post-195 post type-post status-publish format-standard has-post-thumbnail hentry category-light category-table category-life-style tag-light tag-life-style">
                                    <div class="post-item-inner">
                                        <div class="post-thumb">
                                            <a href="blog-details.aspx?blog-search=<%#Eval("Id") %>">
                                                <img src="images/blog/<%#Eval("blogImage") %>"
                                                    class="img-responsive attachment-83x83 size-83x83" alt="img" width="83"
                                                    height="83">
                                            </a>
                                        </div>
                                        <div class="post-info">
                                            <div class="block-title">
                                                <h2 class="post-title"><a
                                                    href="blog-details.aspx?blog-search=<%#Eval("Id") %>"><%#Eval("blogTitle") %></a></h2>
                                            </div>
                                            <div class="date"><%#Eval("blogDate") %></div>
                                        </div>
                                    </div>
                                </article>
                            </ItemTemplate>
                        </asp:ListView>
                            </div>
                        </div>
                        <div id="widget_akasha_socials-2" class="widget widget-akasha-socials">
                            <h2 class="widgettitle">Follow us<span class="arrow"></span></h2>
                            <div class="content-socials">
                                <ul class="socials-list">
                                    <li>
                                        <a href="https://facebook.com/" target="_blank">
                                            <span class="fa fa-facebook"></span>
                                            Facebook </a>
                                    </li>
                                    <li>
                                        <a href="https://www.instagram.com/" target="_blank">
                                            <span class="fa fa-instagram"></span>
                                            Instagram </a>
                                    </li>
                                    <li>
                                        <a href="https://twitter.com/" target="_blank">
                                            <span class="fa fa-twitter"></span>
                                            Twitter </a>
                                    </li>
                                    <li>
                                        <a href="https://www.pinterest.com/" target="_blank">
                                            <span class="fa fa-pinterest-p"></span>
                                            Pinterest </a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div id="tag_cloud-3" class="widget widget_tag_cloud">
                            <h2 class="widgettitle">Tags<span
                                class="arrow"></span></h2>
                            <div class="tagcloud">
                                <a href="#" class="tag-cloud-link tag-link-46 tag-link-position-1"
                                    aria-label="Shoes (4 items)">Shoes</a>
                                <a href="#"
                                    class="tag-cloud-link tag-link-43 tag-link-position-2"
                                    aria-label="Fashion (5 items)">Fashion</a>
                                <a href="#"
                                    class="tag-cloud-link tag-link-47 tag-link-position-3"
                                    aria-label="Bags (4 items)">Bags</a>
                                <a href="#"
                                    class="tag-cloud-link tag-link-48 tag-link-position-4"
                                    aria-label="Collection (4 items)">Collection</a>
                                <a href="#"
                                    class="tag-cloud-link tag-link-45 tag-link-position-5"
                                    aria-label="Life Style (7 items)">Life Style</a>
                            </div>
                        </div>
                    </div>
                    <!-- .widget-area -->
                </div>
            </div>
        </div>
    </div>
</asp:Content>

