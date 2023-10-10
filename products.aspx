<%@ Page Title="" Language="C#" MasterPageFile="~/ananyafashion.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner-wrapper has_background">
        <img src="assets/images/banner-for-all2.jpg"
            class="img-responsive attachment-1920x447 size-1920x447" alt="img">
        <div class="banner-wrapper-inner">
            <h1 class="page-title">Product Layout</h1>
            <div role="navigation" aria-label="Breadcrumbs" class="breadcrumb-trail breadcrumbs">
                <ul class="trail-items breadcrumb">
                    <li class="trail-item trail-begin"><a href="index.aspx"><span>Home</span></a></li>
                    <li class="trail-item trail-end active"><span>Product Layout</span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <section class="site-main main-container no-sidebar">

        <div class="section-001">
            <div class="container">
                <div class="akasha-heading style-01">
                    <div class="heading-inner">
                        <h3 class="title">OUR TAKE ON COLLECTIONS </h3>
                        <div class="subtitle">
                            From handblock printing to screen printing, we have evolved with time and market preferences. Printing and designs also evolved to provide a plethora of varieties in terms of material, fabric and what not.
                        </div>
                    </div>
                </div>
                <div class="akasha-products style-04">
                    <div class="response-product product-list-grid row auto-clear equal-container better-height ">
                        <asp:ListView ID="lv_ptab2" runat="server">
                            <ItemTemplate>
                                <div class="product-item best-selling style-04 rows-space-30 col-bg-3 col-xl-3 col-lg-4 col-md-4 col-sm-6 col-ts-6 post-25 product type-product productStatus-publish has-post-thumbnail product_cat-light product_cat-chair product_cat-specials product_tag-light product_tag-sock first instock sale featured shipping-taxable purchasable product-type-simple">
                                    <div class="product-inner tooltip-top tooltip-all-top">
                                        <div class="product-thumb">
                                            <a class="thumb-link" href="product-details.aspx?product-search=<%#Eval("Id") %>">
                                                <img class="img-responsive"
                                                    src="images/products/<%#Eval("productImage1") %>"
                                                    alt="<%#Eval("productImage1") %>" width="270" height="350">
                                            </a>
                                            <div class="flash">
                                                <span class="onnew"><span class="text">New</span></span>
                                            </div>
                                            <div class="group-button">
                                                <div class="add-to-cart">
                                                    <a href="product-details.aspx?product-search=<%#Eval("Id") %>"
                                                        class="button product_type_simple add_to_cart_button ajax_add_to_cart">Add to
                                            cart</a>
                                                </div>
                                                <a href="#" class="button yith-wcqv-button">Quick View</a>
                                                <div class="akasha product compare-button">
                                                    <a href="#" class="compare button">Compare</a>
                                                </div>
                                                <div class="yith-wcwl-add-to-wishlist">
                                                    <div class="yith-wcwl-add-button show">
                                                        <a href="product-details.aspx?product-search=<%#Eval("Id") %>" class="add_to_wishlist">Add to Wishlist</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h3 class="product-name product_title">
                                                <a href="product-details.aspx?product-search=<%#Eval("Id") %>"><%#Eval("productName") %></a>
                                            </h3>
                                            <span class="price">
                                                <ins>
                                                    <span class="akasha-Price-amount amount">
                                                        <span class="akasha-Price-currencySymbol">Rs </span><%#Eval("productPrice") %></span></ins></span>
                                            <div class="rating-wapper nostar">
                                                <div class="star-rating">
                                                    <span style="width: 0%">Rated <strong
                                                        class="rating">5</strong> out of 5</span>
                                                </div>
                                                <span class="review">(0)</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:ListView>
                    </div>
                    <!-- OWL Products -->
                    <div class="shop-all">
                        <a target=" _blank" href="#">Shop All</a>
                    </div>
                </div>
            </div>
        </div>

    </section>
</asp:Content>

