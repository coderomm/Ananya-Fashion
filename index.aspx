<%@ Page Title="" Language="C#" MasterPageFile="~/ananyafashion.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="fullwidth-template">
        <div class="slide-home-04">
            <div class="response-product product-list-owl owl-slick equal-container better-height"
                data-slick="{&quot;arrows&quot;:false,&quot;slidesMargin&quot;:0,&quot;dots&quot;:true,&quot;infinite&quot;:false,&quot;speed&quot;:300,&quot;slidesToShow&quot;:1,&quot;rows&quot;:1}"
                data-responsive="[{&quot;breakpoint&quot;:480,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;0&quot;}},{&quot;breakpoint&quot;:768,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;0&quot;}},{&quot;breakpoint&quot;:992,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;0&quot;}},{&quot;breakpoint&quot;:1200,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;0&quot;}},{&quot;breakpoint&quot;:1500,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;0&quot;}}]">

                <asp:ListView ID="lv_slider" runat="server">
                    <ItemTemplate>
                        <div class="slide-wrap">
                            <img src="images/slider/<%#Eval("sliderImg1") %>" alt="image">
                            <div class="slide-info">
                                <div class="container">
                                    <div class="slide-inner">
                                        <h1 style="">SHOP FOR TRENDY WOMEN ETHNIC WEAR IN BULK</h1>
                                        <h2 style="">Wholesale Supplier of Premium Quality Kurti | Pant Suit | Anarkali Suits</h2>
                                        <a href="products.aspx">Shop now</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="slide-wrap">
                            <img src="images/slider/<%#Eval("sliderImg2") %>" alt="image">
                            <div class="slide-info">
                                <div class="container">
                                    <div class="slide-inner">
                                        <h1>Deal Of The Day</h1>
                                        <h5>Hot Clothes</h5>
                                        <h2>Get Extra <span>25%</span> Off</h2>
                                        <a href="#">Shop now</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="slide-wrap">
                            <img src="images/slider/<%#Eval("sliderImg3") %>" alt="image">
                            <div class="slide-info">
                                <div class="container">
                                    <div class="slide-inner">
                                        <h1>Try It On Now</h1>
                                        <h5>Best Selling</h5>
                                        <h2>Sale Flat <span>60%</span> Off</h2>
                                        <a href="#">Shop now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>

        <div class="section-022">
            <div class="container">
                <div class="akasha-tabs style-01">
                    <div class="akasha-heading style-01">
                        <div class="heading-inner">
                            <h3 class="title">OUR TAKE ON FABRICS </h3>
                            <div class="subtitle">
                                Wholesale Supplier of Premium Quality Kurti | Pant Suit | Anarkali Suits
                            </div>
                        </div>
                    </div>
                    <div class="tab-head">
                        <ul class="tab-link equal-container " data-loop="1">
                            <li class="active">
                                <a class="loaded" data-ajax="0" data-animate="" data-section="1547652538969-4e9e849f-123a"
                                    data-id="330" href="#001">
                                    <span>New Arrival</span>
                                </a>
                            </li>

                            <li class="">
                                <a class="" data-ajax="0" data-animate="" data-section="1547652725565-7e88bea3-ede2"
                                    data-id="330" href="#002">
                                    <span>Featured</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="tab-container">
                        <div class="tab-panel active" id="001">
                            <div class="akasha-products style-01">
                                <div class="response-product product-list-grid row auto-clear equal-container better-height ">
                                    <asp:ListView ID="lv_ptab1" runat="server">
                                        <ItemTemplate>
                                            <div class="product-item recent-product style-01 rows-space-30 col-bg-3 col-xl-3 col-lg-4 col-md-4 col-sm-6 col-ts-6 post-93 product type-product productStatus-publish has-post-thumbnail product_cat-light product_cat-table product_cat-new-arrivals product_tag-table product_tag-sock first instock shipping-taxable purchasable product-type-simple">
                                                <div class="product-inner tooltip-left">
                                                    <div class="product-thumb">
                                                        <a class="thumb-link"
                                                            href="product-details.aspx?product-search=<%#Eval("Id") %>">
                                                            <img class="img-responsive"
                                                                src="images/products/<%#Eval("productImage1") %>"
                                                                alt="Black Shirt" width="270" height="350">
                                                        </a>
                                                        <div class="flash">
                                                            <span class="onnew"><span class="text">New</span></span>
                                                        </div>
                                                        <div class="group-button">
                                                            <div class="yith-wcwl-add-to-wishlist">
                                                                <div class="yith-wcwl-add-button show">
                                                                    <a href="#" class="add_to_wishlist">Add to Wishlist</a>
                                                                </div>
                                                            </div>
                                                            <div class="akasha product compare-button">
                                                                <a href="#" class="compare button">Compare</a>
                                                            </div>
                                                            <a href="#" class="button yith-wcqv-button">Quick View</a>
                                                            <div class="add-to-cart">
                                                                <a href="product-details.aspx?product-search=<%#Eval("Id") %>"
                                                                    class="button product_type_simple add_to_cart_button ajax_add_to_cart">Add
                                                        to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-info equal-elem">
                                                        <h3 class="product-name product_title">
                                                            <a href="product-details.aspx?product-search=<%#Eval("Id") %>"><%#Eval("productName") %></a>
                                                        </h3>

                                                        <span class="price"><span class="akasha-Price-amount amount"><span
                                                            class="akasha-Price-currencySymbol">Rs</span> <%#Eval("productPrice") %></span></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>
                                <!-- OWL Products -->
                            </div>
                        </div>

                        <div class="tab-panel " id="002">
                            <div class="akasha-products style-01   akasha_custom_5d67efefee7c9 ">
                                <div class="response-product product-list-grid row auto-clear equal-container better-height ">
                                    <asp:ListView ID="lv_ptab2" runat="server">
                                        <ItemTemplate>
                                            <div class="product-item featured_products style-01 rows-space-30 col-bg-3 col-xl-3 col-lg-4 col-md-4 col-sm-6 col-ts-6 post-34 product type-product productStatus-publish has-post-thumbnail product_cat-light product_cat-new-arrivals product_tag-light product_tag-hat product_tag-sock  instock sale featured shipping-taxable product-type-grouped">
                                                <div class="product-inner tooltip-left">
                                                    <div class="product-thumb">
                                                        <a class="thumb-link"
                                                            href="#">
                                                            <img class="img-responsive"
                                                                src="images/products/<%#Eval("productImage1") %>"
                                                                alt="Maternity Shoulder" width="270" height="350">
                                                        </a>
                                                        <div class="flash">
                                                            <span class="onnew"><span class="text">New</span></span>
                                                        </div>
                                                        <div class="group-button">
                                                            <div class="yith-wcwl-add-to-wishlist">
                                                                <div class="yith-wcwl-add-button show">
                                                                    <a href="#" class="add_to_wishlist">Add to Wishlist</a>
                                                                </div>
                                                            </div>
                                                            <div class="akasha product compare-button">
                                                                <a href="#" class="compare button">Compare</a>
                                                            </div>
                                                            <a href="#" class="button yith-wcqv-button">Quick View</a>
                                                            <div class="add-to-cart">
                                                                <a href="#"
                                                                    class="button product_type_simple add_to_cart_button ajax_add_to_cart">Add
                                                        to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-info equal-elem">
                                                        <h3 class="product-name product_title">
                                                            <a href="#"><%#Eval("productName") %></a>
                                                        </h3>

                                                        <span class="price"><span class="akasha-Price-amount amount"><span
                                                            class="akasha-Price-currencySymbol">Rs</span><%#Eval("productPrice") %></span> – <span
                                                                class="akasha-Price-amount amount"><span
                                                                    class="akasha-Price-currencySymbol">Rs</span> <%#Eval("productPrice") %></span></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>
                                <!-- OWL Products -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section-023">
            <div class="akasha-banner style-11 left-center">
                <div class="banner-inner">
                    <figure class="banner-thumb">
                        <img src="assets/images/banner4-41.jpg"
                            class="attachment-full size-full" alt="img">
                    </figure>
                    <div class="banner-info container">
                        <div class="banner-content">
                            <div class="title-wrap">
                                <h6 class="title">Our Story</h6>

                            </div>
                            <div class="button-wrap">
                                <p class="subtitle" style="line-height:normal;">
                                    Just like our clothes, our story is woven with our love for culture and vibrant hues! We are the weavers of Jaipuri Print that speak of the Pink City’s cultural heritage.

                                </p>
                                <a class="button" target=" _blank" href="products.aspx"><span>Shop now</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section-001">
            <div class="container">
                <div class="akasha-heading style-01">
                    <div class="heading-inner">
                        <h3 class="title">Explore Our Collection and Start Reselling</h3>
                        <div class="subtitle">
                            From handblock printing to screen printing, we have evolved with time and market preferences. Printing and designs also evolved to provide a plethora of varieties in terms of material, fabric and what not.
                        </div>
                    </div>
                </div>
                <div class="akasha-instagram style-01">
                    <div class="instagram-owl owl-slick"
                        data-slick="{&quot;arrows&quot;:true,&quot;slidesMargin&quot;:10,&quot;dots&quot;:true,&quot;infinite&quot;:false,&quot;speed&quot;:300,&quot;slidesToShow&quot;:4,&quot;rows&quot;:1}"
                        data-responsive="[{&quot;breakpoint&quot;:480,&quot;settings&quot;:{&quot;slidesToShow&quot;:2,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:768,&quot;settings&quot;:{&quot;slidesToShow&quot;:2,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:992,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:1200,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:1500,&quot;settings&quot;:{&quot;slidesToShow&quot;:4,&quot;slidesMargin&quot;:&quot;10&quot;}}]">
                        <asp:ListView ID="lv_gallery" runat="server">
                            <ItemTemplate>
                                <div class="rows-space-0">
                                    <a target="_blank" href="#" class="item" tabindex="0">
                                        <img class="img-responsive lazy" src="images/gallery/<%#Eval("galleryImage") %>" alt="OUR SPECIALITY">
                                    </a>
                                </div>
                            </ItemTemplate>
                        </asp:ListView>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="border-top-1"></div>
        </div>
       
        <div class="section-001">
            <div class="container">
                <div class="akasha-heading style-01">
                    <div class="heading-inner">
                        <h3 class="title">From Our Blog</h3>
                        <div class="subtitle">
                            EXCLUSIVE AND WIDE VARIETIES | STRONG QUALITY ASSURANCE | ADVANCED CUSTOMER SERVICE | HEFTY CASH DISCOUNTS
                        </div>
                    </div>
                </div>
                <div class="akasha-blog style-01">
                    <div class="blog-list-owl owl-slick equal-container better-height"
                        data-slick="{&quot;arrows&quot;:false,&quot;slidesMargin&quot;:30,&quot;dots&quot;:true,&quot;infinite&quot;:false,&quot;speed&quot;:300,&quot;slidesToShow&quot;:3,&quot;rows&quot;:1}"
                        data-responsive="[{&quot;breakpoint&quot;:480,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:768,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:992,&quot;settings&quot;:{&quot;slidesToShow&quot;:2,&quot;slidesMargin&quot;:&quot;20&quot;}},{&quot;breakpoint&quot;:1200,&quot;settings&quot;:{&quot;slidesToShow&quot;:2,&quot;slidesMargin&quot;:&quot;20&quot;}},{&quot;breakpoint&quot;:1500,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesMargin&quot;:&quot;30&quot;}}]">
                        <asp:ListView ID="lv_blogs" runat="server">
                            <ItemTemplate>
                                <article
                                    class="post-item post-grid rows-space-0 post-195 post type-post productStatus-publish format-standard has-post-thumbnail hentry category-light category-table category-life-style tag-light tag-life-style">
                                    <div class="post-inner blog-grid">
                                        <div class="post-thumb">
                                            <a href="blog-details.aspx?blog-search=<%#Eval("Id") %>" tabindex="0">
                                                <img src="images/blog/<%#Eval("blogImage") %>"
                                                    class="img-responsive attachment-370x330 size-370x330" alt="img" width="370" height="330">
                                            </a>
                                            <a class="datebox" href="#" tabindex="0">
                                                <span><%#Eval("blogDate") %></span>
                                            </a>
                                        </div>
                                        <div class="post-content">
                                            <div class="post-meta">
                                                <div class="post-author">
                                                    By:<a href="blog-details.aspx?blog-search=<%#Eval("Id") %>" tabindex="0"> admin </a>
                                                </div>
                                                <div class="post-comment-icon">
                                                    <a href="blog-details.aspx?blog-search=<%#Eval("Id") %>" tabindex="0">0 </a>
                                                </div>
                                            </div>
                                            <div class="post-info equal-elem">
                                                <h2 class="post-title"><a href="blog-details.aspx?blog-search=<%#Eval("Id") %>" tabindex="0"><%#Eval("blogTitle") %></a></h2>
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

         <div class="container">
            <div class="border-top-1"></div>
        </div>

        <div class="section-001">
            <div class="container">
                <div class="akasha-heading style-01">
                    <div class="heading-inner">
                        <h3 class="title">Retailer Partnership</h3>
                        <div class="subtitle">
                            With high profit margins and long term association, we are delighted to invite you to be a part of our strong channel of dealers and wholesalers. We invite you to visit our store and explore business opportunities with us.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

