<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
            <div class="container">
                <!-- NIVOSLIDER -->
                <div class="slider_wrap">
                    <div class="nivoSlider">

                        <a href="/collections/antiques">
                            <img src="js/slide1_image.jpg" alt="" title="#htmlcaption-1" />
                        </a>
                        <a href="/collections/blanks">
                            <img src="js/slide2_image.jpg" alt="" title="#htmlcaption-2" />
                        </a>
                        <a href="/collections/frontpage">
                            <img src="js/slide3_image.jpg" alt="" title="#htmlcaption-3" />
                        </a>
                    </div>
                </div>

                <div class="caption_hidden">
                    <div id="htmlcaption-1">
                        <a href="/collections/antiques">
                            <div class="caption__1 caption_wrap">
                                <h2>Excepteur sint occaecat</h2>
                                <h3>Lorem ipsum dolor sit amet conse ctetur adipisicing</h3>
                                <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>
                                <span class="btn">Shop now!</span>
                            </div>
                        </a>
                    </div>

                    <div id="htmlcaption-2">
                        <a href="/collections/blanks">
                            <div class="caption__2 caption_wrap">
                                <h2>Lorem ipsum dolor sit amet</h2>
                                <h3>Praesentium, id sed et consequuntur magni iste</h3>
                                <p>Deserunt sit deleniti eos aut accusamus nostrum iusto alias nobis doloribus placeat nihil cumque eligendi obcaecati aliquam cupiditate enim nisi amet</p>
                                <span class="btn">Shop now!</span>
                            </div>
                        </a>
                    </div>

                    <div id="htmlcaption-3">
                        <a href="/collections/frontpage">
                            <div class="caption__3 caption_wrap">
                                <h2>Consectetur adipisicing</h2>
                                <h3>Laudantium ab facere repudiandae corporis itaque</h3>
                                <p>Delectus, nihil, sunt deleniti incidunt odit architecto sit mollitia error assumenda veniam culpa iste eveniet magnam doloremque deserunt velit</p>
                                <span class="btn">Shop now!</span>
                            </div>
                        </a>
                    </div>

                    <div id="htmlcaption-4">

                        <div class="caption__4 caption_wrap">

                        </div>

                    </div>

                    <div id="htmlcaption-5">

                        <div class="caption__5 caption_wrap">

                        </div>

                    </div>

                </div>

                <script type="text/javascript">
                    $(document).ready(function() {
                        $('.nivoSlider').nivoSlider({
                            effect: 'fade',
                            animSpeed: 500,
                            pauseTime: 7000,
                            startSlide: 0,
                            pauseOnHover: true,
                            directionNav: false,
                            controlNav: true
                        });
                    });
                </script>

                <!-- SHOWCASE CUSTOM BLOCKS -->
                <div id="showcase">
                    <h2 class="page_heading">Featured Collections</h2>

                    <div class="row">

                        <div class="col-xs-4">
                            <div class="wow custom_showcase custom_showcase__1">
                                <img src="//cdn.shopify.com/s/files/1/0752/1473/collections/Antiques_large.png?v=1422268491" alt="Antiques" />
                                <div class="custom_showcase__content">
                                    <h3><a href="/collections/antiques">Antiques</a></h3>
                                    <p>We have tremendous variety of products; here yo...</p>
                                    <a class="btn" href="/collections/antiques">See collection</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-xs-4">
                            <div class="wow custom_showcase custom_showcase__2">
                                <img src="//cdn.shopify.com/s/files/1/0752/1473/collections/Writing-materials_large.png?v=1422268504" alt="Writing materials" />
                                <div class="custom_showcase__content">
                                    <h3><a href="/collections/writing-materials">Writing materials</a></h3>
                                    <p>It is a great pleasure to give people the knowl...</p>
                                    <a class="btn" href="/collections/writing-materials">See collection</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-xs-4">
                            <div class="wow custom_showcase custom_showcase__3">
                                <img src="//cdn.shopify.com/s/files/1/0752/1473/collections/Magazines_large.png?v=1422268514" alt="Magazines" />
                                <div class="custom_showcase__content">
                                    <h3><a href="/collections/magazines">Magazines</a></h3>
                                    <p>Just remember that special atmosphere of solitu...</p>
                                    <a class="btn" href="/collections/magazines">See collection</a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <!-- MAIN CONTENT -->
            <div id="main" role="main">
                <div class="container">
                    <div class="row sidebar_left sidebar_off">

                        <div class="column_center">
                            <div id="main_content" class="col-sm-12">

                                <div class="index-scope">

                                    <!--

-->

                                    <h2 class="page_heading">Featured Products</h2>

                                    <div class="product_listing_main homepage_carousel row">

                                        <div class="wow col-sm-2 product product__1">
                                            <div>
                                                <div class="product_img">
                                                    <a class="img_change" href="/products/american-gods-by-neil-gaiman">
                                                        <img src="//cdn.shopify.com/s/files/1/0752/1473/products/american_gods_by_neil_gaiman_1_large.png?v=1422032887" alt="American Gods by Neil Gaiman" />
                                                        <img class="img__2" src="//cdn.shopify.com/s/files/1/0752/1473/products/american_gods_by_neil_gaiman_2_large.png?v=1422032887" alt="American Gods by Neil Gaiman" />
                                                    </a>
                                                    <span class="product_badge sale"><span>Sale</span></span>
                                                    <span class="product_badge new"><span>New</span></span>
                                                </div>

                                                <div class="product_info">
                                                    <div class="product_name">
                                                        <a href="/products/american-gods-by-neil-gaiman">American Gods by Neil Gaiman</a>
                                                    </div>

                                                    <div class="product_desc">Well, reading ...</div>

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

                                                        <div class="clearfix"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="wow col-sm-2 product product__2">
                                            <div>
                                                <div class="product_img">
                                                    <a class="img_change" href="/products/amusing-ourselves-to-death-public-discourse-in-the-age-of-show-business-by-neil-postman">
                                                        <img src="//cdn.shopify.com/s/files/1/0752/1473/products/amusing_ourselves_to_death_public_discourse_in_the_age_of_show_business_by_neil_postman_1_large.png?v=1422032897" alt="Amusing Ourselves to Death Public Discourse in the Age of Show Business by Neil Postman" />
                                                        <img class="img__2" src="//cdn.shopify.com/s/files/1/0752/1473/products/amusing_ourselves_to_death_public_discourse_in_the_age_of_show_business_by_neil_postman_2_large.png?v=1422032897" alt="Amusing Ourselves to Death Public Discourse in the Age of Show Business by Neil Postman" />
                                                    </a>

                                                    <span class="product_badge new"><span>New</span></span>
                                                </div>

                                                <div class="product_info">
                                                    <div class="product_name">
                                                        <a href="/products/amusing-ourselves-to-death-public-discourse-in-the-age-of-show-business-by-neil-postman">Amusing Ourselves to Death ...</a>
                                                    </div>

                                                    <div class="product_desc">It gives knowl...</div>

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

                                                        <div class="clearfix"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="wow col-sm-2 product product__3">
                                            <div>
                                                <div class="product_img">
                                                    <a class="img_change" href="/products/an-army-at-dawn-the-war-in-north-africa-1942-1943-volume-one-of-the-liberation-trilogy-by-rick-atkinson">
                                                        <img src="//cdn.shopify.com/s/files/1/0752/1473/products/an_army_at_dawn_the_war_in_north_africa_19421943_volume_one_of_the_liberation_trilogy_by_rick_atkinson_1_large.png?v=1422032906" alt="An Army at Dawn- The War in North Africa 1942-1943 Volume One of the Liberation Trilogy by Rick Atkinson" />
                                                        <img class="img__2" src="//cdn.shopify.com/s/files/1/0752/1473/products/an_army_at_dawn_the_war_in_north_africa_19421943_volume_one_of_the_liberation_trilogy_by_rick_atkinson_2_large.png?v=1422032907" alt="An Army at Dawn- The War in North Africa 1942-1943 Volume One of the Liberation Trilogy by Rick Atkinson" />
                                                    </a>

                                                    <span class="product_badge new"><span>New</span></span>
                                                </div>

                                                <div class="product_info">
                                                    <div class="product_name">
                                                        <a href="/products/an-army-at-dawn-the-war-in-north-africa-1942-1943-volume-one-of-the-liberation-trilogy-by-rick-atkinson">An Army at Dawn- The War in...</a>
                                                    </div>

                                                    <div class="product_desc">For a long per...</div>

                                                    <div class="product_price">

                                                        <span class="money ">$10</span>

                                                        <!-- 
    This is just a regular add product form. 
    You should be able to add any valid input fields to it 
-->
                                                        <form method="post" action="/cart/add">
                                                            <!-- We can leave this in, since the select comes later, 
        so it will override if user picks something different. -->

                                                            <input type="hidden" name="id" value="1050534353" />

                                                            <!-- START BUY -->

                                                            <button class="btn btn-cart" type="submit"><i class="fa fa-shopping-cart"></i></button>

                                                            <!-- END BUY -->
                                                        </form>

                                                        <div class="clearfix"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="wow col-sm-2 product product__4">
                                            <div>
                                                <div class="product_img">
                                                    <a class="img_change" href="/products/elder-scrolls-v-skyrim-legendary-standard-edition-prima-official-game-guide-prima-official-game-guides-by-david-hodgson">
                                                        <img src="//cdn.shopify.com/s/files/1/0752/1473/products/elder_scrolls_v_skyrim_legendary_standard_edition_prima_official_game_guide_prima_official_game_guides_by_david_hodgson_1_large.png?v=1422032925" alt="Elder Scrolls V- Skyrim Legendary Standard Edition- Prima Official Game Guide (Prima Official Game Guides) by David Hodgson" />
                                                        <img class="img__2" src="//cdn.shopify.com/s/files/1/0752/1473/products/elder_scrolls_v_skyrim_legendary_standard_edition_prima_official_game_guide_prima_official_game_guides_by_david_hodgson_2_large.png?v=1422032925" alt="Elder Scrolls V- Skyrim Legendary Standard Edition- Prima Official Game Guide (Prima Official Game Guides) by David Hodgson" />
                                                    </a>

                                                    <span class="product_badge new"><span>New</span></span>
                                                </div>

                                                <div class="product_info">
                                                    <div class="product_name">
                                                        <a href="/products/elder-scrolls-v-skyrim-legendary-standard-edition-prima-official-game-guide-prima-official-game-guides-by-david-hodgson">Elder Scrolls V- Skyrim Leg...</a>
                                                    </div>

                                                    <div class="product_desc">Just remember ...</div>

                                                    <div class="product_price">

                                                        <span class="money ">$25</span>

                                                        <!-- 
    This is just a regular add product form. 
    You should be able to add any valid input fields to it 
-->
                                                        <form method="post" action="/cart/add">
                                                            <!-- We can leave this in, since the select comes later, 
        so it will override if user picks something different. -->

                                                            <input type="hidden" name="id" value="1050534553" />

                                                            <!-- START BUY -->

                                                            <button class="btn btn-cart" type="submit"><i class="fa fa-shopping-cart"></i></button>

                                                            <!-- END BUY -->
                                                        </form>

                                                        <div class="clearfix"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="wow col-sm-2 product product__5">
                                            <div>
                                                <div class="product_img">
                                                    <a class="img_change" href="/products/fahrenheit-451-a-novel-by-ray-bradbury">
                                                        <img src="//cdn.shopify.com/s/files/1/0752/1473/products/fahrenheit_451_a_novel_by_ray_bradbury_1_large.png?v=1422032941" alt="Fahrenheit 451- A Novel by Ray Bradbury" />
                                                        <img class="img__2" src="//cdn.shopify.com/s/files/1/0752/1473/products/fahrenheit_451_a_novel_by_ray_bradbury_2_large.png?v=1422032941" alt="Fahrenheit 451- A Novel by Ray Bradbury" />
                                                    </a>
                                                    <span class="product_badge sale"><span>Sale</span></span>
                                                    <span class="product_badge new"><span>New</span></span>
                                                </div>

                                                <div class="product_info">
                                                    <div class="product_name">
                                                        <a href="/products/fahrenheit-451-a-novel-by-ray-bradbury">Fahrenheit 451- A Novel by ...</a>
                                                    </div>

                                                    <div class="product_desc">Yeah, they are...</div>

                                                    <div class="product_price">

                                                        <span class="money money-sale">$9</span>

                                                        <span class="money compare-at-price">$12</span>

                                                        <!-- 
    This is just a regular add product form. 
    You should be able to add any valid input fields to it 
-->
                                                        <form method="post" action="/cart/add">
                                                            <!-- We can leave this in, since the select comes later, 
        so it will override if user picks something different. -->

                                                            <input type="hidden" name="id" value="1050534817" />

                                                            <!-- START BUY -->

                                                            <button class="btn btn-cart" type="submit"><i class="fa fa-shopping-cart"></i></button>

                                                            <!-- END BUY -->
                                                        </form>

                                                        <div class="clearfix"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="wow col-sm-2 product product__6">
                                            <div>
                                                <div class="product_img">
                                                    <a class="img_change" href="/products/eleanor-park-by-rainbow-rowell">
                                                        <img src="//cdn.shopify.com/s/files/1/0752/1473/products/eleanor_and_park_by_rainbow_rowell_1_large.png?v=1422032933" alt="Eleanor &amp; Park by Rainbow Rowell" />
                                                        <img class="img__2" src="//cdn.shopify.com/s/files/1/0752/1473/products/eleanor_and_park_by_rainbow_rowell_2_large.png?v=1422032933" alt="Eleanor &amp; Park by Rainbow Rowell" />
                                                    </a>

                                                    <span class="product_badge new"><span>New</span></span>
                                                </div>

                                                <div class="product_info">
                                                    <div class="product_name">
                                                        <a href="/products/eleanor-park-by-rainbow-rowell">Eleanor & Park by Rainbow R...</a>
                                                    </div>

                                                    <div class="product_desc">The unique sme...</div>

                                                    <div class="product_price">

                                                        <span class="money ">$40</span>

                                                        <!-- 
    This is just a regular add product form. 
    You should be able to add any valid input fields to it 
-->
                                                        <form method="post" action="/cart/add">
                                                            <!-- We can leave this in, since the select comes later, 
        so it will override if user picks something different. -->

                                                            <input type="hidden" name="id" value="1050534753" />

                                                            <!-- START BUY -->

                                                            <button class="btn btn-cart" type="submit"><i class="fa fa-shopping-cart"></i></button>

                                                            <!-- END BUY -->
                                                        </form>

                                                        <div class="clearfix"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="wow col-sm-2 product product__1">
                                            <div>
                                                <div class="product_img">
                                                    <a class="img_change" href="/products/fifty-shades-trilogy-fifty-shades-of-grey-fifty-shades-darker-fifty-shades-freed-3-volume-boxed-set-by-e-l-james">
                                                        <img src="//cdn.shopify.com/s/files/1/0752/1473/products/fifty_shades_trilogy_fifty_shades_of_grey_fifty_shades_darker_fifty_shades_freed_3volume_boxed_set_by_e_l_james_1_large.png?v=1422032953" alt="Fifty Shades Trilogy- Fifty Shades of Grey Fifty Shades Darker Fifty Shades Freed 3-volume Boxed Set by E L James" />
                                                        <img class="img__2" src="//cdn.shopify.com/s/files/1/0752/1473/products/fifty_shades_trilogy_fifty_shades_of_grey_fifty_shades_darker_fifty_shades_freed_3volume_boxed_set_by_e_l_james_2_large.png?v=1422032953" alt="Fifty Shades Trilogy- Fifty Shades of Grey Fifty Shades Darker Fifty Shades Freed 3-volume Boxed Set by E L James" />
                                                    </a>

                                                    <span class="product_badge new"><span>New</span></span>
                                                </div>

                                                <div class="product_info">
                                                    <div class="product_name">
                                                        <a href="/products/fifty-shades-trilogy-fifty-shades-of-grey-fifty-shades-darker-fifty-shades-freed-3-volume-boxed-set-by-e-l-james">Fifty Shades Trilogy- Fifty...</a>
                                                    </div>

                                                    <div class="product_desc">But those time...</div>

                                                    <div class="product_price">

                                                        <span class="money ">$35</span>

                                                        <!-- 
    This is just a regular add product form. 
    You should be able to add any valid input fields to it 
-->
                                                        <form method="post" action="/cart/add">
                                                            <!-- We can leave this in, since the select comes later, 
        so it will override if user picks something different. -->

                                                            <input type="hidden" name="id" value="1050534925" />

                                                            <!-- START BUY -->

                                                            <button class="btn btn-cart" type="submit"><i class="fa fa-shopping-cart"></i></button>

                                                            <!-- END BUY -->
                                                        </form>

                                                        <div class="clearfix"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="wow col-sm-2 product product__2">
                                            <div>
                                                <div class="product_img">
                                                    <a class="img_change" href="/products/gilead-a-novel-by-marilynne-robinson">
                                                        <img src="//cdn.shopify.com/s/files/1/0752/1473/products/gilead_a_novel_by_marilynne_robinson_1_large.png?v=1422032962" alt="Gilead- A Novel by Marilynne Robinson" />
                                                        <img class="img__2" src="//cdn.shopify.com/s/files/1/0752/1473/products/gilead_a_novel_by_marilynne_robinson_2_large.png?v=1422032962" alt="Gilead- A Novel by Marilynne Robinson" />
                                                    </a>

                                                    <span class="product_badge new"><span>New</span></span>
                                                </div>

                                                <div class="product_info">
                                                    <div class="product_name">
                                                        <a href="/products/gilead-a-novel-by-marilynne-robinson">Gilead- A Novel by Marilynn...</a>
                                                    </div>

                                                    <div class="product_desc">Books became m...</div>

                                                    <div class="product_price">

                                                        <span class="money ">$5</span>

                                                        <!-- 
    This is just a regular add product form. 
    You should be able to add any valid input fields to it 
-->
                                                        <form method="post" action="/cart/add">
                                                            <!-- We can leave this in, since the select comes later, 
        so it will override if user picks something different. -->

                                                            <input type="hidden" name="id" value="1050534977" />

                                                            <!-- START BUY -->

                                                            <button class="btn btn-cart" type="submit"><i class="fa fa-shopping-cart"></i></button>

                                                            <!-- END BUY -->
                                                        </form>

                                                        <div class="clearfix"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="wow col-sm-2 product product__3">
                                            <div>
                                                <div class="product_img">
                                                    <a class="img_change" href="/products/growing-up-duggar-its-all-about-relationships-by-jana-duggar">
                                                        <img src="//cdn.shopify.com/s/files/1/0752/1473/products/growing_up_duggar_its_all_about_relationships_by_jana_duggar_1_large.png?v=1422032971" alt="Growing Up Duggar- It&#39;s All About Relationships by Jana Duggar" />
                                                        <img class="img__2" src="//cdn.shopify.com/s/files/1/0752/1473/products/growing_up_duggar_its_all_about_relationships_by_jana_duggar_2_large.png?v=1422032971" alt="Growing Up Duggar- It&#39;s All About Relationships by Jana Duggar" />
                                                    </a>

                                                    <span class="product_badge new"><span>New</span></span>
                                                </div>

                                                <div class="product_info">
                                                    <div class="product_name">
                                                        <a href="/products/growing-up-duggar-its-all-about-relationships-by-jana-duggar">Growing Up Duggar- It's All...</a>
                                                    </div>

                                                    <div class="product_desc">On-line book s...</div>

                                                    <div class="product_price">

                                                        <span class="money ">$16</span>

                                                        <!-- 
    This is just a regular add product form. 
    You should be able to add any valid input fields to it 
-->
                                                        <form method="post" action="/cart/add">
                                                            <!-- We can leave this in, since the select comes later, 
        so it will override if user picks something different. -->

                                                            <input type="hidden" name="id" value="1050535189" />

                                                            <!-- START BUY -->

                                                            <button class="btn btn-cart" type="submit"><i class="fa fa-shopping-cart"></i></button>

                                                            <!-- END BUY -->
                                                        </form>

                                                        <div class="clearfix"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="wow col-sm-2 product product__4">
                                            <div>
                                                <div class="product_img">
                                                    <a class="img_change" href="/products/hardwired-by-meredith-wild">
                                                        <img src="//cdn.shopify.com/s/files/1/0752/1473/products/hardwired_by_meredith_wild_1_large.png?v=1422032989" alt="Hardwired by Meredith Wild" />
                                                        <img class="img__2" src="//cdn.shopify.com/s/files/1/0752/1473/products/hardwired_by_meredith_wild_2_large.png?v=1422032989" alt="Hardwired by Meredith Wild" />
                                                    </a>
                                                    <span class="product_badge sale"><span>Sale</span></span>
                                                    <span class="product_badge new"><span>New</span></span>
                                                </div>

                                                <div class="product_info">
                                                    <div class="product_name">
                                                        <a href="/products/hardwired-by-meredith-wild">Hardwired by Meredith Wild</a>
                                                    </div>

                                                    <div class="product_desc">We have tremen...</div>

                                                    <div class="product_price">

                                                        <span class="money money-sale">$10</span>

                                                        <span class="money compare-at-price">$20</span>

                                                        <!-- 
    This is just a regular add product form. 
    You should be able to add any valid input fields to it 
-->
                                                        <form method="post" action="/cart/add">
                                                            <!-- We can leave this in, since the select comes later, 
        so it will override if user picks something different. -->

                                                            <input type="hidden" name="id" value="1050535473" />

                                                            <!-- START BUY -->

                                                            <button class="btn btn-cart" type="submit"><i class="fa fa-shopping-cart"></i></button>

                                                            <!-- END BUY -->
                                                        </form>

                                                        <div class="clearfix"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="wow col-sm-2 product product__5">
                                            <div>
                                                <div class="product_img">
                                                    <a class="img_change" href="/products/heaven-is-for-real-a-little-boys-astounding-story-of-his-trip-to-heaven-and-back-by-todd-burpo">
                                                        <img src="//cdn.shopify.com/s/files/1/0752/1473/products/heaven_is_for_real_a_little_boys_astounding_story_of_his_trip_to_heaven_and_back_by_todd_burpo_1_large.png?v=1422032999" alt="Heaven is for Real- A Little Boy&#39;s Astounding Story of His Trip to Heaven and Back by Todd Burpo" />
                                                        <img class="img__2" src="//cdn.shopify.com/s/files/1/0752/1473/products/heaven_is_for_real_a_little_boys_astounding_story_of_his_trip_to_heaven_and_back_by_todd_burpo_2_large.png?v=1422032999" alt="Heaven is for Real- A Little Boy&#39;s Astounding Story of His Trip to Heaven and Back by Todd Burpo" />
                                                    </a>

                                                    <span class="product_badge new"><span>New</span></span>
                                                </div>

                                                <div class="product_info">
                                                    <div class="product_name">
                                                        <a href="/products/heaven-is-for-real-a-little-boys-astounding-story-of-his-trip-to-heaven-and-back-by-todd-burpo">Heaven is for Real- A Littl...</a>
                                                    </div>

                                                    <div class="product_desc">Actually we do...</div>

                                                    <div class="product_price">

                                                        <span class="money ">$7</span>

                                                        <!-- 
    This is just a regular add product form. 
    You should be able to add any valid input fields to it 
-->
                                                        <form method="post" action="/cart/add">
                                                            <!-- We can leave this in, since the select comes later, 
        so it will override if user picks something different. -->

                                                            <input type="hidden" name="id" value="1050535585" />

                                                            <!-- START BUY -->

                                                            <button class="btn btn-cart" type="submit"><i class="fa fa-shopping-cart"></i></button>

                                                            <!-- END BUY -->
                                                        </form>

                                                        <div class="clearfix"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="wow col-sm-2 product product__6">
                                            <div>
                                                <div class="product_img">
                                                    <a class="img_change" href="/products/insurgent-divergent-by-veronica-roth">
                                                        <img src="//cdn.shopify.com/s/files/1/0752/1473/products/insurgent_divergent_by_veronica_roth_1_large.png?v=1422033007" alt="Insurgent (Divergent) by Veronica Roth" />
                                                        <img class="img__2" src="//cdn.shopify.com/s/files/1/0752/1473/products/insurgent_divergent_by_veronica_roth_2_large.png?v=1422033007" alt="Insurgent (Divergent) by Veronica Roth" />
                                                    </a>

                                                    <span class="product_badge new"><span>New</span></span>
                                                </div>

                                                <div class="product_info">
                                                    <div class="product_name">
                                                        <a href="/products/insurgent-divergent-by-veronica-roth">Insurgent (Divergent) by Ve...</a>
                                                    </div>

                                                    <div class="product_desc">Our business i...</div>

                                                    <div class="product_price">

                                                        <span class="money ">$25</span>

                                                        <!-- 
    This is just a regular add product form. 
    You should be able to add any valid input fields to it 
-->
                                                        <form method="post" action="/cart/add">
                                                            <!-- We can leave this in, since the select comes later, 
        so it will override if user picks something different. -->

                                                            <input type="hidden" name="id" value="1050535893" />

                                                            <!-- START BUY -->

                                                            <button class="btn btn-cart" type="submit"><i class="fa fa-shopping-cart"></i></button>

                                                            <!-- END BUY -->
                                                        </form>

                                                        <div class="clearfix"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                    <script>
                                        jQuery(document).ready(function($) {
                                            if (device.desktop() || device.tablet()) {
                                                $('.homepage_carousel').bxSlider({
                                                    infiniteLoop: true,
                                                    hideControlOnEnd: true,
                                                    minSlides: 6,
                                                    maxSlides: 6,
                                                    moveSlides: 1,
                                                    slideWidth: 170,
                                                    slideMargin: 0,
                                                    pager: false,
                                                    prevText: '',
                                                    nextText: '',
                                                });
                                            };
                                        });
                                    </script>

                                </div>

                            </div>
                        </div>

                    </div>

                </div>
            </div>

            <!-- BLOG -->
            <div class="homepage_blog">
                <div class="container">
                    <h2 class="page_heading">From the blog</h2>

                    <div class="row">

                        <div class="col-sm-12 col-md-4">
                            <div class="wow homepage_blog__article homepage_blog__1">
                                <span class="homepage_blog__date">Monday, January 26, 2015</span>
                                <h3 class="homepage_blog__title"><a href="/blogs/blog/16655461-autem-recusandae-accusamus-sunt">Autem recusandae accusamus sunt</a></h3>
                                <div class="homepage_blog__content">
                                    <p><img src="https://cdn.shopify.com/s/files/1/0752/1473/files/blog3.jpg?53"></p>
                                    <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.</p>
                                </div>
                                <a class="btn" href="/blogs/blog/16655461-autem-recusandae-accusamus-sunt">Read more</a>
                                <div class="clearfix"></div>
                            </div>
                        </div>

                        <div class="col-sm-12 col-md-4">
                            <div class="wow homepage_blog__article homepage_blog__2">
                                <span class="homepage_blog__date">Monday, January 26, 2015</span>
                                <h3 class="homepage_blog__title"><a href="/blogs/blog/16655453-sit-fugit-qui-quaerat-quas-natus">Sit, fugit, qui quaerat quas natus</a></h3>
                                <div class="homepage_blog__content">
                                    <p><img src="//cdn.shopify.com/s/files/1/0752/1473/files/blog2.jpg?52"></p>
                                    <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.</p>
                                </div>
                                <a class="btn" href="/blogs/blog/16655453-sit-fugit-qui-quaerat-quas-natus">Read more</a>
                                <div class="clearfix"></div>
                            </div>
                        </div>

                        <div class="col-sm-12 col-md-4">
                            <div class="wow homepage_blog__article homepage_blog__3">
                                <span class="homepage_blog__date">Friday, January 23, 2015</span>
                                <h3 class="homepage_blog__title"><a href="/blogs/blog/16628617-lorem-ipsum-dolor-sit-amet-conse">Lorem ipsum dolor sit amet conse</a></h3>
                                <div class="homepage_blog__content">
                                    <p><img src="//cdn.shopify.com/s/files/1/0752/1473/files/blog1.jpg?51"></p>
                                    <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.</p>
                                </div>
                                <a class="btn" href="/blogs/blog/16628617-lorem-ipsum-dolor-sit-amet-conse">Read more</a>
                                <div class="clearfix"></div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <!-- CUSTOM BOTTOM -->
            <div id="bottom">
                <div class="container">
                    <h2 class="page_heading">About store</h2>

                    <div class="row">

                        <div class="col-xs-4">
                            <div class="wow custom_bottom custom_bottom__1">

                                <i class="fa fa-truck"></i>
                                <h4>Free shipping</h4>
                                <h5></h5>
                                <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nis.</p>
                            </div>
                        </div>

                        <div class="col-xs-4">
                            <div class="wow custom_bottom custom_bottom__2">

                                <i class="fa fa-thumbs-o-up"></i>
                                <h4>satisfaction</h4>
                                <h5>100% Guaranteed</h5>
                                <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nis.</p>
                            </div>
                        </div>

                        <div class="col-xs-4">
                            <div class="wow custom_bottom custom_bottom__3">

                                <i class="fa fa-refresh"></i>
                                <h4>7 Day</h4>
                                <h5>Easy return</h5>
                                <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nis.</p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <!-- GOOGLE MAP -->
            <div id="google_map"></div>

            <script src="//maps.googleapis.com/maps/api/js?v=3.exp"></script>

            <script type="text/javascript">
                var map;

                function initialize() {

                    var latlng = new google.maps.LatLng(0, 0);

                    var mapOptions = {
                        center: latlng,
                        zoom: 14,
                        mapTypeId: google.maps.MapTypeId.ROADMAP,
                        disableDefaultUI: true,
                        scrollwheel: false,
                    };

                    map = new google.maps.Map(document.getElementById('google_map'), mapOptions);

                    var geocoder = new google.maps.Geocoder();

                    var address = 'Times Square Manhattan, NY 10036';
                    geocoder.geocode({
                        'address': address
                    }, function(results, status) {
                        if (status == google.maps.GeocoderStatus.OK) {
                            map.setCenter(results[0].geometry.location);
                            var marker = new google.maps.Marker({
                                map: map,
                                position: results[0].geometry.location,
                                icon: markerImage
                            });
                        } else {
                            alert("Geocode was not successful for the following reason: " + status);
                        }
                    });

                    var markerImage = new google.maps.MarkerImage(
                        'js/marker.png',
                        new google.maps.Size(40, 61),
                        new google.maps.Point(0, 0),
                        new google.maps.Point(20, 61)
                    );

                    var styles = [{
                        "featureType": "water",
                        "elementType": "geometry.fill",
                        "stylers": [{
                            "color": "#f3f3f3"
                        }]
                    }, {
                        "featureType": "road",
                        "elementType": "geometry.fill",
                        "stylers": [{
                            "color": "#a7a7a7"
                        }]
                    }, {
                        "featureType": "road",
                        "elementType": "geometry.stroke",
                        "stylers": [{
                            "visibility": "off"
                        }]
                    }, {
                        "featureType": "landscape",
                        "elementType": "geometry.fill",
                        "stylers": [{
                            "color": "#ffffff"
                        }]
                    }, {
                        "featureType": "poi",
                        "elementType": "geometry.fill",
                        "stylers": [{
                            "color": "#ffffff"
                        }]
                    }, {}];

                    map.setOptions({
                        styles: styles
                    });
                }
            </script>