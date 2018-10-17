  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- Breadcrumbs -->
  <!-- MAIN CONTENT -->
<div id="main" role="main">
    <div class="container">

        <ul class="breadcrumb">
            <li><a href="/" class="homepage-link" title="Back to the frontpage">Home</a></li>

            <li><span class="page-title">Contact us</span></li>

        </ul>

        <div class="row sidebar_left ">

            <div class="column_center">
                <div id="main_content" class="col-sm-9">

                    <div class="contact-scope">

                        <h1 class="page_heading">Contact us</h1>

                        <!--  GOOGLE MAP -->
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
                                    '//cdn.shopify.com/s/files/1/0752/1473/t/2/assets/marker.png?7672275102811569986',
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

                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, maxime, molestias odit assumenda quia non voluptas ducimus adipisci praesentium veritatis rerum soluta ad amet possimus labore minus quibusdam nobis deserunt fuga nihil! Nam, consectetur, harum enim laboriosam neque exercitationem consequatur quia qui reiciendis culpa. Labore consequuntur at quasi cum itaque!</p>

                        <form method="post" action="/contact#contact_form" id="contact_form" accept-charset="UTF-8" class="contact-form">
                            <input type="hidden" name="form_type" value="contact" />
                            <input type="hidden" name="utf8" value="✓" />

                            <div id="contactFormWrapper">

                                <div class="row">
                                    <div class="col-sm-4 form-group">
                                        <label class="sr-only">Your Name:</label>
                                        <input type="text" class="form-control" id="contactFormName" name="contact[name]" placeholder="Your name..." />
                                    </div>
                                    <div class="col-sm-4 form-group">
                                        <label class="sr-only">Email:</label>
                                        <input type="email" class="form-control" id="contactFormEmail" name="contact[email]" placeholder="Your email..." />
                                    </div>
                                    <div class="col-sm-4 form-group">
                                        <label class="sr-only">Phone Number:</label>
                                        <input type="telephone" class="form-control" id="contactFormTelephone" name="contact[phone]" placeholder="Your phone number..." />
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12 form-group">
                                        <label class="sr-only">Message:</label>
                                        <textarea class="form-control" rows="5" cols="75" id="contactFormMessage" name="contact[body]" placeholder="Your Message..."></textarea>
                                    </div>
                                </div>

                                <div class="btn-toolbar form-group">
                                    <input type="submit" id="contactFormSubmit" value="Send" class="btn btn-primary" />
                                    <input type="reset" value="Clear" class="btn btn-info">
                                </div>

                            </div>
                            <!-- contactFormWrapper -->

                        </form>

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
-->
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