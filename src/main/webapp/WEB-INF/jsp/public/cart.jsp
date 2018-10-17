  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/templates/taglib.jsp" %>
<!-- MAIN CONTENT -->
<div id="main" role="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="/" class="homepage-link" title="Back to the frontpage">Home</a></li>
            <li><span class="page-title">Your Shopping Cart</span></li>
        </ul>
        <div class="row sidebar_left ">
            <div class="column_center">
                <div id="main_content" class="col-sm-9">

                    <div class="cart-scope">

                        <div class="page_header">
                            <h1 class="page_heading">Shopping Cart</h1>
                        </div>

                        <div class="page_content">

                            <form action="/cart" method="post" class="" class="form-inline">
                                <div class="cart-list">

                                    <div class="row cart-item">

                                        <div class="col-lg-3 col-md-3 col-sm-3">
                                            <div class="item_image">
                                                <a href="/products/amusing-ourselves-to-death-public-discourse-in-the-age-of-show-business-by-neil-postman">
                                                    <img src="//cdn.shopify.com/s/files/1/0752/1473/products/amusing_ourselves_to_death_public_discourse_in_the_age_of_show_business_by_neil_postman_1_medium.png?v=1422032897" alt="Amusing Ourselves to Death Public Discourse in the Age of Show Business by Neil Postman" />
                                                </a>
                                            </div>
                                        </div>

                                        <div class="col-lg-9 col-md-9 col-sm-9">

                                            <div class="item_remove pull-right">
                                                <a href="/cart/change?line=1&quantity=0"><i class="fa fa-times"></i></a>
                                            </div>

                                            <div class="product_name">
                                                <a href="/products/amusing-ourselves-to-death-public-discourse-in-the-age-of-show-business-by-neil-postman">
            Amusing Ourselves to Death Public Discourse in the Age of Show Business by Neil Postman

            </a>
                                            </div>

                                            <h3 class="item_vendor">BOOKS</h3>

                                            <div class="item_price">
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="price"><span class="money">$20</span></div>
                                                    </div>
                                                    <div class="col-sm-8">
                                                        <div class="qty">
                                                            <label for="updates[]">Qty:
                                                                <input type="number" name="updates[]" id="updates_1050534177" value="1" class="input-small form-control" />
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="total col-sm-12">
                                                        <h3>Total: <span class="money">$20</span></h3></div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="row cart-item">

                                        <div class="col-lg-3 col-md-3 col-sm-3">
                                            <div class="item_image">
                                                <a href="/products/an-army-at-dawn-the-war-in-north-africa-1942-1943-volume-one-of-the-liberation-trilogy-by-rick-atkinson">
                                                    <img src="//cdn.shopify.com/s/files/1/0752/1473/products/an_army_at_dawn_the_war_in_north_africa_19421943_volume_one_of_the_liberation_trilogy_by_rick_atkinson_1_medium.png?v=1422032906" alt="An Army at Dawn- The War in North Africa 1942-1943 Volume One of the Liberation Trilogy by Rick Atkinson" />
                                                </a>
                                            </div>
                                        </div>

                                        <div class="col-lg-9 col-md-9 col-sm-9">

                                            <div class="item_remove pull-right">
                                                <a href="/cart/change?line=2&quantity=0"><i class="fa fa-times"></i></a>
                                            </div>

                                            <div class="product_name">
                                                <a href="/products/an-army-at-dawn-the-war-in-north-africa-1942-1943-volume-one-of-the-liberation-trilogy-by-rick-atkinson">
            An Army at Dawn- The War in North Africa 1942-1943 Volume One of the Liberation Trilogy by Rick Atkinson

            </a>
                                            </div>

                                            <h3 class="item_vendor">BOOKS</h3>

                                            <div class="item_price">
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="price"><span class="money">$10</span></div>
                                                    </div>
                                                    <div class="col-sm-8">
                                                        <div class="qty">
                                                            <label for="updates[]">Qty:
                                                                <input type="number" name="updates[]" id="updates_1050534353" value="1" class="input-small form-control" />
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="total col-sm-12">
                                                        <h3>Total: <span class="money">$10</span></h3></div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                </div>

                                <div class="cart_subtotal">
                                    <h3>Subtotal <span class="money">$30</span></h3>
                                </div>

                                <div class="cart_buttons">
                                    <a href="/collections/all">Continue shopping</a>
                                    <span class="or">or</span>
                                    <input type="submit" name="update" value="Update cart" class="btn btn-primary" />
                                    <span class="or">or</span>
                                    <input type="submit" name="checkout" value="Check out" class="btn btn-primary" />

                                </div>

                                <p class="alert alert-warning">
                                    <b>BOOKS</b> process all orders in USD. While the content of your cart is currently displayed in
                                    <span class="selected-currency"></span>, you will checkout using USD at the most current exchange rate.
                                </p>

                                <div class="cart_instructions">
                                    <label>Special instructions for seller</label>
                                    <textarea class="form-control" name="note"></textarea>
                                </div>

                            </form>

                        </div>
                        <div id="payment-methods">
                            <ul>
                                <li> <img src="//cdn.shopify.com/s/files/1/0752/1473/t/2/assets/cc-amex.png?7672275102811569986" alt="" /> </li>
                                <li> <img src="//cdn.shopify.com/s/files/1/0752/1473/t/2/assets/cc-discover.png?7672275102811569986" alt="" /> </li>
                                <li> <img src="//cdn.shopify.com/s/files/1/0752/1473/t/2/assets/cc-visa.png?7672275102811569986" alt="" /> </li>
                                <li> <img src="//cdn.shopify.com/s/files/1/0752/1473/t/2/assets/cc-mastercard.png?7672275102811569986" alt="" /> </li>
                                <li> <img src="//cdn.shopify.com/s/files/1/0752/1473/t/2/assets/cc-maestro.png?7672275102811569986" alt="" /> </li>
                                <li> <img src="//cdn.shopify.com/s/files/1/0752/1473/t/2/assets/cc-cirrus.png?7672275102811569986" alt="" /> </li>
                                <li> <img src="//cdn.shopify.com/s/files/1/0752/1473/t/2/assets/cc-paypal.png?7672275102811569986" alt="" /> </li>
                                <li> <img src="//cdn.shopify.com/s/files/1/0752/1473/t/2/assets/cc-google.png?7672275102811569986" alt="" /> </li>
                            </ul>
                        </div>

                    </div>

                </div>
            </div>

            <div class="column_left column col-sm-3">
                <div class="wow widget widget__collections">
                    <h3 class="widget_header">Collections</h3>
                    <div class="widget_content">
                        <ul class="list">

                            <li class="antiques">
                                <a href="/collections/antiques" title="Antiques">Antiques</a>
                            </li>

                            <li class="blanks">
                                <a href="/collections/blanks" title="Blanks">Blanks</a>
                            </li>

                            <li class="frontpage">
                                <a href="/collections/frontpage" title="Books">Books</a>
                            </li>

                            <li class="calendars">
                                <a href="/collections/calendars" title="Calendars">Calendars</a>
                            </li>

                            <li class="cards">
                                <a href="/collections/cards" title="Cards">Cards</a>
                            </li>

                            <li class="cd-dvd">
                                <a href="/collections/cd-dvd" title="CD/DVD">CD/DVD</a>
                            </li>

                            <li class="comics">
                                <a href="/collections/comics" title="Comics">Comics</a>
                            </li>

                            <li class="magazines">
                                <a href="/collections/magazines" title="Magazines">Magazines</a>
                            </li>

                            <li class="rarity">
                                <a href="/collections/rarity" title="Rarity">Rarity</a>
                            </li>

                            <li class="writing-materials">
                                <a href="/collections/writing-materials" title="Writing materials">Writing materials</a>
                            </li>

                        </ul>
                    </div>
                </div>
                <div class="wow widget widget__types">
                    <h3 class="widget_header">Product Types</h3>
                    <div class="widget_content">
                        <ul class="list">

                            <li class="">Unknown Type</li>

                            <li class="Belles-lettres"><a href="/collections/types?q=Belles-lettres" title="Belles-lettres">Belles-lettres</a></li>

                            <li class="Children's books"><a href="/collections/types?q=Children%27s%20books" title="Children&#39;s books">Children's books</a></li>

                            <li class="Classic"><a href="/collections/types?q=Classic" title="Classic">Classic</a></li>

                            <li class="Detective stories"><a href="/collections/types?q=Detective%20stories" title="Detective stories">Detective stories</a></li>

                            <li class="Poetry"><a href="/collections/types?q=Poetry" title="Poetry">Poetry</a></li>

                            <li class="Romance"><a href="/collections/types?q=Romance" title="Romance">Romance</a></li>

                            <li class="Science fiction"><a href="/collections/types?q=Science%20fiction" title="Science fiction">Science fiction</a></li>

                        </ul>
                    </div>
                </div>
                <div class="wow widget widget_best_sellers">
                    <h3 class="widget_header">Best Sellers</h3>
                    <div class="widget_content">
                        <div class="product_listing_sidebar">

                            <div class="wow product">

                                <div class="product_img">
                                    <a href="/products/american-gods-by-neil-gaiman">
                                        <img src="//cdn.shopify.com/s/files/1/0752/1473/products/american_gods_by_neil_gaiman_1_medium.png?v=1422032887" alt="American Gods by Neil Gaiman" />
                                    </a>
                                </div>

                                <div class="product_info">
                                    <div class="product_name">
                                        <a href="/products/american-gods-by-neil-gaiman">American Gods by Neil Gaiman</a>
                                    </div>

                                    <div class="product_price">

                                        <span class="money money-sale">$16</span>

                                        <span class="money compare-at-price">$22</span>

                                        <!-- 
    This is just a regular add product form. 
    You should be able to add any valid input fields to it 
-->
                                        <form method="post" action="/cart/add">
                                            <!-- We can leave this in, since the select comes later, 
        so it will override if user picks something different. -->

                                            <input type="hidden" name="id" value="1050534057" />

                                            <!-- START BUY -->

                                            <button class="btn btn-cart" type="submit"><i class="fa fa-shopping-cart"></i></button>

                                            <!-- END BUY -->
                                        </form>
                                    </div>
                                </div>

                            </div>

                            <div class="wow product">

                                <div class="product_img">
                                    <a href="/products/amusing-ourselves-to-death-public-discourse-in-the-age-of-show-business-by-neil-postman">
                                        <img src="//cdn.shopify.com/s/files/1/0752/1473/products/amusing_ourselves_to_death_public_discourse_in_the_age_of_show_business_by_neil_postman_1_medium.png?v=1422032897" alt="Amusing Ourselves to Death Public Discourse in the Age of Show Business by Neil Postman" />
                                    </a>
                                </div>

                                <div class="product_info">
                                    <div class="product_name">
                                        <a href="/products/amusing-ourselves-to-death-public-discourse-in-the-age-of-show-business-by-neil-postman">Amusing Ourselves to Death ...</a>
                                    </div>

                                    <div class="product_price">

                                        <span class="money ">$20</span>

                                        <!-- 
    This is just a regular add product form. 
    You should be able to add any valid input fields to it 
-->
                                        <form method="post" action="/cart/add">
                                            <!-- We can leave this in, since the select comes later, 
        so it will override if user picks something different. -->

                                            <input type="hidden" name="id" value="1050534177" />

                                            <!-- START BUY -->

                                            <button class="btn btn-cart" type="submit"><i class="fa fa-shopping-cart"></i></button>

                                            <!-- END BUY -->
                                        </form>
                                    </div>
                                </div>

                            </div>

                            <div class="wow product">

                                <div class="product_img">
                                    <a href="/products/an-army-at-dawn-the-war-in-north-africa-1942-1943-volume-one-of-the-liberation-trilogy-by-rick-atkinson">
                                        <img src="//cdn.shopify.com/s/files/1/0752/1473/products/an_army_at_dawn_the_war_in_north_africa_19421943_volume_one_of_the_liberation_trilogy_by_rick_atkinson_1_medium.png?v=1422032906" alt="An Army at Dawn- The War in North Africa 1942-1943 Volume One of the Liberation Trilogy by Rick Atkinson" />
                                    </a>
                                </div>
                                <div class="product_info">
                                    <div class="product_name">
                                        <a href="/products/an-army-at-dawn-the-war-in-north-africa-1942-1943-volume-one-of-the-liberation-trilogy-by-rick-atkinson">An Army at Dawn- The War in...</a>
                                    </div>
                                    <div class="product_price">
                                        <span class="money ">$10</span>
                                        <!-- 
    This is just a regular add product form. 
    You should be able to add any valid input fields to it 
                                        <form method="post" action="/cart/add">
                                            <!-- We can leave this in, since the select comes later, 
        so it will override if user picks something different. -->
                                            <input type="hidden" name="id" value="1050534353" />
                                            <!-- START BUY -->
                                            <button class="btn btn-cart" type="submit"><i class="fa fa-shopping-cart"></i></button>
                                            <!-- END BUY -->
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

