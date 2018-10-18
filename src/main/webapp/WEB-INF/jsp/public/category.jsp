<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>

        <!-- MAIN CONTENT -->
        <div id="main" role="main">
            <div class="container">

                <ul class="breadcrumb">
                    <li><a href="/" class="homepage-link" title="Back to the frontpage">Home</a></li>

                    <li><span class="page-title">Products</span></li>

                </ul>

                <div class="row sidebar_left ">

                    <div class="column_center">
                        <div id="main_content" class="col-sm-9">

                            <div class="collection-scope">

                                <div class="page_header">
                                    <h1 class="page_heading">Products</h1>
                                </div>

                                <div class="page_content">

                                    <ul class="tags clearfix">
                                        <li class="active">

                                            <a href="/collections/all">All</a>

                                        </li>

                                        <li><a href="/collections/all/dolor?sort_by=price-ascending" title="Show products matching tag Dolor">Dolor</a></li>

                                        <li><a href="/collections/all/lorem-ipsum?sort_by=price-ascending" title="Show products matching tag Lorem ipsum">Lorem ipsum</a></li>

                                        <li><a href="/collections/all/sit-amet?sort_by=price-ascending" title="Show products matching tag Sit amet">Sit amet</a></li>

                                    </ul>

                                    <!-- collection image & description -->

                                    <!-- products sorting -->
                                    <div class="sort_by">
                                        <label>Sort by</label>
                                        <select class="sort-by form-control">
                                            <option value="manual">Featured</option>
                                            <option value="best-selling">Best Selling</option>
                                            <option value="title-ascending">Name: A-Z</option>
                                            <option value="title-descending">Name: Z-A</option>
                                            <option value="price-ascending">Price: Low to High</option>
                                            <option value="price-descending">Price: High to Low</option>
                                            <option value="created-ascending">Oldest to Newest</option>
                                            <option value="created-descending">Newest to Oldest</option>
                                        </select>
                                    </div>
                                    <script>
                                        Shopify.queryParams = {};
                                        if (location.search.length) {
                                            for (var aKeyValue, i = 0, aCouples = location.search.substr(1).split('&'); i < aCouples.length; i++) {
                                                aKeyValue = aCouples[i].split('=');
                                                if (aKeyValue.length > 1) {
                                                    Shopify.queryParams[decodeURIComponent(aKeyValue[0])] = decodeURIComponent(aKeyValue[1]);
                                                }
                                            }
                                        }
                                        jQuery('.sort-by')
                                            .val('price-ascending')
                                            .on('change', function() {
                                                Shopify.queryParams.sort_by = jQuery(this).val();
                                                location.search = jQuery.param(Shopify.queryParams);
                                            });
                                    </script>

                                    <!-- products listing -->
                                    <div class="product-listing__collection">
                                        <div class="product_listing_main">

                                            <div class="row">

                                                <div class="wow col-sm-4 product product__1">
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

                                                <div class="wow col-sm-4 product product__2">
                                                    <div>
                                                        <div class="product_img">
                                                            <a class="img_change" href="/products/lulus-mysterious-mission-by-judith-viorst">
                                                                <img src="//cdn.shopify.com/s/files/1/0752/1473/products/lulus_mysterious_mission_by_judith_viorst_1_large.png?v=1422033046" alt="Lulu&#39;s Mysterious Mission by Judith Viorst" />
                                                                <img class="img__2" src="//cdn.shopify.com/s/files/1/0752/1473/products/lulus_mysterious_mission_by_judith_viorst_2_large.png?v=1422033046" alt="Lulu&#39;s Mysterious Mission by Judith Viorst" />
                                                            </a>

                                                            <span class="product_badge new"><span>New</span></span>
                                                        </div>

                                                        <div class="product_info">
                                                            <div class="product_name">
                                                                <a href="/products/lulus-mysterious-mission-by-judith-viorst">Lulu's Mysterious Mission b...</a>
                                                            </div>

                                                            <div class="product_desc">The diversity ...</div>

                                                            <div class="product_price">

                                                                <span class="money ">$5</span>

                                                                <!--
This is just a regular add product form.
You should be able to add any valid input fields to it
-->
                                                                <form method="post" action="/cart/add">
                                                                    <!-- We can leave this in, since the select comes later,
    so it will override if user picks something different. -->

                                                                    <input type="hidden" name="id" value="1050537229" />

                                                                    <!-- START BUY -->

                                                                    <button class="btn btn-cart" type="submit"><i class="fa fa-shopping-cart"></i></button>

                                                                    <!-- END BUY -->
                                                                </form>

                                                                <div class="clearfix"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="wow col-sm-4 product product__3">
                                                    <div>
                                                        <div class="product_img">
                                                            <a class="img_change" href="/products/catch-22-50th-anniversary-edition-by-joseph-heller">
                                                                <img src="//cdn.shopify.com/s/files/1/0752/1473/products/catch22_50th_anniversary_edition_by_joseph_heller_1_large.png?v=1422032916" alt="Catch-22 50th Anniversary Edition by Joseph Heller" />
                                                                <img class="img__2" src="//cdn.shopify.com/s/files/1/0752/1473/products/catch22_50th_anniversary_edition_by_joseph_heller_2_large.png?v=1422032916" alt="Catch-22 50th Anniversary Edition by Joseph Heller" />
                                                            </a>
                                                            <span class="product_badge sale"><span>Sale</span></span>
                                                            <span class="product_badge new"><span>New</span></span>
                                                        </div>

                                                        <div class="product_info">
                                                            <div class="product_name">
                                                                <a href="/products/catch-22-50th-anniversary-edition-by-joseph-heller">Catch-22 50th Anniversary E...</a>
                                                            </div>

                                                            <div class="product_desc">And you know w...</div>

                                                            <div class="product_price">

                                                                <span class="money money-sale">$7</span>

                                                                <span class="money compare-at-price">$10</span>

                                                                <!--
This is just a regular add product form.
You should be able to add any valid input fields to it
-->
                                                                <form method="post" action="/cart/add">
                                                                    <!-- We can leave this in, since the select comes later,
    so it will override if user picks something different. -->

                                                                    <input type="hidden" name="id" value="1050534425" />

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

                                            <div class="row">

                                                <div class="wow col-sm-4 product product__1">
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

                                                <div class="wow col-sm-4 product product__2">
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

                                                <div class="wow col-sm-4 product product__3">
                                                    <div>
                                                        <div class="product_img">
                                                            <a class="img_change" href="/products/jesus-a-pilgrimage-by-james-martin">
                                                                <img src="//cdn.shopify.com/s/files/1/0752/1473/products/jesus_a_pilgrimage_by_james_martin_1_large.png?v=1422033027" alt="Jesus- A Pilgrimage by James Martin" />
                                                                <img class="img__2" src="//cdn.shopify.com/s/files/1/0752/1473/products/jesus_a_pilgrimage_by_james_martin_2_large.png?v=1422033027" alt="Jesus- A Pilgrimage by James Martin" />
                                                            </a>

                                                            <span class="product_badge new"><span>New</span></span>
                                                        </div>

                                                        <div class="product_info">
                                                            <div class="product_name">
                                                                <a href="/products/jesus-a-pilgrimage-by-james-martin">Jesus- A Pilgrimage by Jame...</a>
                                                            </div>

                                                            <div class="product_desc">It is a great ...</div>

                                                            <div class="product_price">

                                                                <span class="money ">$9</span>

                                                                <!--
This is just a regular add product form.
You should be able to add any valid input fields to it
-->
                                                                <form method="post" action="/cart/add">
                                                                    <!-- We can leave this in, since the select comes later,
    so it will override if user picks something different. -->

                                                                    <input type="hidden" name="id" value="1050536649" />

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

                                        </div>
                                    </div>

                                    <!-- pagination -->

                                    <div id="pagination">
                                        <span class="page current">1</span> <span class="page"><a href="/collections/all?page=2&amp;sort_by=price-ascending" title="">2</a></span> <span class="page"><a href="/collections/all?page=3&amp;sort_by=price-ascending" title="">3</a></span> <span class="page"><a href="/collections/all?page=4&amp;sort_by=price-ascending" title="">4</a></span> <span class="next"><a href="/collections/all?page=2&amp;sort_by=price-ascending" title="">Next &raquo;</a></span>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                    <%@include file="/WEB-INF/templates/public/rightbar.jsp" %>
                </div>
            </div>
        </div>