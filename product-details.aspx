<%@ Page Title="" Language="C#" MasterPageFile="~/ananyafashion.master" AutoEventWireup="true" CodeFile="product-details.aspx.cs" Inherits="product_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner-wrapper no_background">
        <div class="banner-wrapper-inner">
            <nav class="akasha-breadcrumb">
                <a href="index.aspx">Home</a><i class="fa fa-angle-right"></i><a href="products.aspx">Products</a>
                <i class="fa fa-angle-right"></i>Product Details
            </nav>
        </div>
    </div>
    <div class="single-thumb-vertical main-container shop-page no-sidContact.htmlebar">
        <div class="container">
            <div class="row">
                <div class="main-content col-md-12">
                    <div class="akasha-notices-wrapper"></div>
                    <div id="product-27"
                        class="post-27 product type-product productStatus-publish has-post-thumbnail product_cat-table product_cat-new-arrivals product_cat-lamp product_tag-table product_tag-sock first instock shipping-taxable purchasable product-type-variable has-default-attributes">
                        <div class="main-contain-summary">
                            <div class="contain-left has-gallery">
                                <div class="single-left">
                                    <asp:ListView ID="lv_pdetails" runat="server">
                                        <ItemTemplate>
                                            <div class="akasha-product-gallery akasha-product-gallery--with-images akasha-product-gallery--columns-4 images">
                                                <a href="#" class="akasha-product-gallery__trigger">
                                                    <img draggable="false" class="emoji" alt="🔍"
                                                        src="https://s.w.org/images/core/emoji/11/svg/1f50d.svg"></a>
                                                <div class="flex-viewport">
                                                    <figure class="akasha-product-gallery__wrapper">
                                                        <div class="akasha-product-gallery__image">
                                                            <img alt="img"
                                                                src="images/products/<%#Eval("productImage1") %>">
                                                        </div>
                                                        <div class="akasha-product-gallery__image">
                                                            <img src="images/products/<%#Eval("productImage2") %>"
                                                                alt="img">
                                                        </div>
                                                        <div class="akasha-product-gallery__image">
                                                            <img src="images/products/<%#Eval("productImage3") %>"
                                                                class="" alt="img">
                                                        </div>
                                                        <div class="akasha-product-gallery__image">
                                                            <img src="images/products/<%#Eval("productImage4") %>"
                                                                class="" alt="img">
                                                        </div>
                                                    </figure>
                                                </div>
                                                <ol class="flex-control-nav flex-control-thumbs">
                                                    <li>
                                                        <img
                                                            src="images/products/<%#Eval("productImage1") %>"
                                                            alt="img">
                                                    </li>
                                                    <li>
                                                        <img
                                                            src="images/products/<%#Eval("productImage2") %>"
                                                            alt="img">
                                                    </li>
                                                    <li>
                                                        <img
                                                            src="images/products/<%#Eval("productImage3") %>"
                                                            alt="img">
                                                    </li>
                                                    <li>
                                                        <img
                                                            src="images/products/<%#Eval("productImage4") %>"
                                                            alt="img">
                                                    </li>
                                                </ol>
                                            </div>
                                        </ItemTemplate>
                                    </asp:ListView>

                                </div>
                                <div class="summary entry-summary">
                                    <asp:ListView ID="lv_pdetails2" runat="server">
                                        <ItemTemplate>
                                            <div class="flash">
                                                <span class="onnew"><span class="text">New</span></span>
                                            </div>
                                            <h1 class="product_title entry-title"><%#Eval("productName") %></h1>
                                            <p class="price">
                                                <span class="akasha-Price-amount amount"><span
                                                            class="akasha-Price-currencySymbol">Rs</span> <%#Eval("productPrice") %></span>
                                            </p>
                                            <p class="stock in-stock">
                                                Availability: <span>In stock</span>
                                            </p>
                                        </ItemTemplate>
                                    </asp:ListView>
                                    <div class="variations_form cart">
                                        <table class="variations">
                                            <tbody>
                                                <tr>
                                                    <td class="label">
                                                        <label>Color</label></td>
                                                    <td class="value">
                                                        <select title="box_style" data-attributetype="box_style"
                                                            data-id="pa_color"
                                                            class="attribute-select " name="attribute_pa_color"
                                                            data-attribute_name="attribute_pa_color"
                                                            data-show_option_none="yes">
                                                            <option data-type="" data-pa_color="" value="">Choose an option
                                                            </option>
                                                            <option data-width="30" data-height="30" data-type="color"
                                                                data-pa_color="#3155e2" value="blue"
                                                                class="attached enabled">Blue
                                                            </option>
                                                            <option data-width="30" data-height="30" data-type="color"
                                                                data-pa_color="#ff63cb" value="pink"
                                                                class="attached enabled">Pink
                                                            </option>
                                                            <option data-width="30" data-height="30" data-type="color"
                                                                data-pa_color="#db2b00" value="red"
                                                                class="attached enabled">Red
                                                            </option>
                                                            <option data-width="30" data-height="30" data-type="color"
                                                                data-pa_color="#e8e120" value="yellow"
                                                                class="attached enabled">Yellow
                                                            </option>
                                                        </select>
                                                        <div class="data-val attribute-pa_color" data-attributetype="box_style">
                                                            <a class="change-value color" href="#" style="background: #3155e2;"
                                                                data-value="blue"></a><a class="change-value color" href="#"
                                                                    style="background: #ff63cb;"
                                                                    data-value="pink"></a><a
                                                                        class="change-value color" href="#" style="background: #db2b00;"
                                                                        data-value="red"></a><a class="change-value color" href="#"
                                                                            style="background: #e8e120;"
                                                                            data-value="yellow"></a>
                                                        </div>
                                                        <a class="reset_variations" href="#"
                                                            style="visibility: hidden;">Clear</a></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div class="single_variation_wrap">
                                            <div class="akasha-variation single_variation"></div>
                                            <div class="akasha-variation-add-to-cart variations_button akasha-variation-add-to-cart-disabled">
                                                <div class="quantity">
                                                    <span class="qty-label">Quantiy:</span>
                                                    <div class="control">
                                                        <a class="btn-number qtyminus quantity-minus" href="#">-</a>
                                                        <input type="text" data-step="1" min="0" max="" name="quantity[25]" value="0" title="Qty" class="input-qty input-text qty text" size="4" pattern="[0-9]*" inputmode="numeric">
                                                        <a class="btn-number qtyplus quantity-plus" href="#">+</a>
                                                    </div>
                                                </div>
                                                <button type="submit"
                                                    class="single_add_to_cart_button button alt disabled akasha-variation-selection-needed">
                                                    Add to cart
                                                </button>
                                                <input name="add-to-cart" value="27" type="hidden">
                                                <input name="product_id" value="27" type="hidden">
                                                <input name="variation_id" class="variation_id" value="0" type="hidden">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="yith-wcwl-add-to-wishlist">
                                        <div class="yith-wcwl-add-button show">
                                            <a href="#" rel="nofollow"
                                                data-product-id="27" data-product-type="variable" class="add_to_wishlist">Add to Wishlist</a>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                    <a href="#"
                                        class="compare button" data-product_id="27" rel="nofollow">Compare</a>
                                    <div class="product_meta">
                                        <div class="wcml-dropdown product wcml_currency_switcher">
                                            <ul>
                                                <li class="wcml-cs-active-currency">
                                                    <a class="wcml-cs-item-toggle">USD</a>
                                                    <ul class="wcml-cs-submenu">
                                                        <li>
                                                            <a>EUR</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                        <span class="sku_wrapper">SKU: <span class="sku">885B712</span></span>
                                        <span class="posted_in">Categories: <a
                                            href="#"
                                            rel="tag">Bags</a>, <a
                                                href="#" rel="tag">New arrivals</a>, <a
                                                    href="#" rel="tag">Summer Sale</a></span>
                                        <span class="tagged_as">Tags: <a href="#"
                                            rel="tag">Bags</a>, <a
                                                href="#" rel="tag">Sock</a></span>
                                    </div>
                                    <div class="akasha-share-socials">
                                        <h5 class="social-heading">Share: </h5>
                                        <a target="_blank" class="facebook" href="#">
                                            <i class="fa fa-facebook-f"></i>
                                        </a>
                                        <a target="_blank" class="twitter"
                                            href="#"><i class="fa fa-twitter"></i>
                                        </a>
                                        <a target="_blank" class="pinterest"
                                            href="#"><i class="fa fa-pinterest"></i>
                                        </a>
                                        <a target="_blank" class="googleplus"
                                            href="#"><i class="fa fa-google-plus"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="akasha-tabs akasha-tabs-wrapper">
                            <ul class="tabs dreaming-tabs" role="tablist">
                                <li class="blogDetail_tab active" id="tab-title-blogDetail" role="tab"
                                    aria-controls="tab-blogDetail">
                                    <a href="#tab-blogDetail">Description</a>
                                </li>
                            </ul>
                            <div class="akasha-Tabs-panel akasha-Tabs-panel--blogDetail panel entry-content akasha-tab"
                                id="tab-blogDetail" role="tabpanel" aria-labelledby="tab-title-blogDetail">
                                <asp:ListView ID="lv_pdetails3" runat="server">
                                        <ItemTemplate><h2>Description</h2>
                                <div class="container-table">
                                    <div class="container-cell">
                                        <h2 class="az_custom_heading"><%#Eval("productName") %></h2>
                                        <p><%#Eval("productDetails") %></p>
                                    </div>
                                    <div class="container-cell">
                                        <div class="az_single_image-wrapper az_box_border_grey">
                                            <img src="images/products/<%#Eval("productImage1") %>"
                                                class="az_single_image-img attachment-full" alt="img">
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
</asp:Content>

