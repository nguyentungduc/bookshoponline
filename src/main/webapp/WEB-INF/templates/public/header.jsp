<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
<!doctype html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <title>BOOKS | Welcome to our store</title>
    <link rel="canonical" href="https://theme133-books.myshopify.com/" />
    <link href="images/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <meta id="shopify-digital-wallet" name="shopify-digital-wallet" content="/7521473/digital_wallets/dialog">
    <style>
        .shopify-payment-button__button--hidden {
            visibility: hidden;
        }  
        .shopify-payment-button__button {
            border-radius: 4px;
            border: none;
            box-shadow: 0 0 0 0 transparent;
            color: white;
            cursor: pointer;
            display: block;
            font-size: 1em;
            font-weight: 500;
            line-height: 1;
            text-align: center;
            width: 100%;
            transition: background 0.2s ease-in-out;
        }
        
        .shopify-payment-button__button[disabled] {
            opacity: 0.6;
            cursor: default;
        }
        
        .shopify-payment-button__button--unbranded {
            background-color: #1990c6;
            padding: 1em 2em;
        }
        
        .shopify-payment-button__button--unbranded:hover:not([disabled]) {
            background-color: #136f99;
        }
        
        .shopify-payment-button__more-options {
            background: transparent;
            border: 0 none;
            cursor: pointer;
            display: block;
            font-size: 1em;
            margin-top: 1em;
            text-align: center;
            width: 100%;
        }
        
        .shopify-payment-button__more-options:hover:not([disabled]) {
            text-decoration: underline;
        }
        
        .shopify-payment-button__more-options[disabled] {
            opacity: 0.6;
            cursor: default;
        }
        
        .shopify-payment-button__button--branded {
            display: flex;
            flex-direction: column;
            min-height: 44px;
            position: relative;
            z-index: 1;
        }
        
        .shopify-payment-button__button--branded .shopify-cleanslate {
            flex: 1 !important;
            display: flex !important;
            flex-direction: column !important;
        }
        .tab-content>.tab-pane {
            display: none
        }

        .tab-content>.active {
            display: block
        }
    </style>
    <script id="shopify-features" type="application/json">{"accessToken":"4fbc9ea753a7528dccd0ba88dd2d3a6e","betas":[],"domain":"theme133-books.myshopify.com","shopId":7521473,"smart_payment_buttons_url":"https:\/\/cdn.shopifycloud.com\/payment-sheet\/assets\/latest\/spb.js"}</script>
    <script>
        var Shopify = Shopify || {};
        Shopify.shop = "theme133-books.myshopify.com";
        Shopify.currency = {
            "active": "USD"
        };
        Shopify.theme = {
            "name": "theme133",
            "id": 9589309,
            "theme_store_id": null,
            "role": "main"
        };
        Shopify.theme.handle = "null";
        Shopify.theme.style = {
            "id": null,
            "handle": null
        };
    </script>
    <script id="__st">
        var __st = {
            "a": 7521473,
            "offset": -14400,
            "reqid": "de9bdb3e-af33-4c27-92b3-a6f3cc8b20b1",
            "pageurl": "theme133-books.myshopify.com\/",
            "t": "prospect",
            "u": "9562a986e6aa",
            "p": "home"
        };
    </script>
    <script>
        window.ShopifyPaypalV4VisibilityTracking = true;
    </script>
    <script>
        window.Shopify = window.Shopify || {};
        window.Shopify.Checkout = window.Shopify.Checkout || {};
        window.Shopify.Checkout.apiHost = "theme133-books.myshopify.com";
    </script>
    <script>
        window.ShopifyAnalytics = window.ShopifyAnalytics || {};
        window.ShopifyAnalytics.meta = window.ShopifyAnalytics.meta || {};
        window.ShopifyAnalytics.meta.currency = 'USD';
        var meta = {
            "page": {
                "pageType": "home"
            }
        };
        for (var attr in meta) {
            window.ShopifyAnalytics.meta[attr] = meta[attr];
        }
    </script>
    <script>
        window.ShopifyAnalytics.merchantGoogleAnalytics = function() {

        };
    </script>
    <script class="analytics">
        (function() {
            var customDocumentWrite = function(content) {
                var jquery = null;

                if (window.jQuery) {
                    jquery = window.jQuery;
                } else if (window.Checkout && window.Checkout.$) {
                    jquery = window.Checkout.$;
                }

                if (jquery) {
                    jquery('body').append(content);
                }
            };

            var trekkie = window.ShopifyAnalytics.lib = window.trekkie = window.trekkie || [];
            if (trekkie.integrations) {
                return;
            }
            trekkie.methods = [
                'identify',
                'page',
                'ready',
                'track',
                'trackForm',
                'trackLink'
            ];
            trekkie.factory = function(method) {
                return function() {
                    var args = Array.prototype.slice.call(arguments);
                    args.unshift(method);
                    trekkie.push(args);
                    return trekkie;
                };
            };
            for (var i = 0; i < trekkie.methods.length; i++) {
                var key = trekkie.methods[i];
                trekkie[key] = trekkie.factory(key);
            }
            trekkie.load = function(config) {
                trekkie.config = config;
                var script = document.createElement('script');
                script.type = 'text/javascript';
                script.onerror = function(e) {
                    (new Image()).src = '//v.shopify.com/internal_errors/track?error=trekkie_load';
                };
                script.async = true;
                script.src = 'https://cdn.shopify.com/s/javascripts/tricorder/trekkie.storefront.min.js?v=2017.09.05.1';
                var first = document.getElementsByTagName('script')[0];
                first.parentNode.insertBefore(script, first);
            };
            trekkie.load({
                "Trekkie": {
                    "appName": "storefront",
                    "development": false,
                    "defaultAttributes": {
                        "shopId": 7521473,
                        "isMerchantRequest": null,
                        "themeId": 9589309,
                        "themeCityHash": 12738314529773455162
                    }
                },
                "Performance": {
                    "navigationTimingApiMeasurementsEnabled": true,
                    "navigationTimingApiMeasurementsSampleRate": 1.0
                },
                "Session Attribution": {}
            });

            var loaded = false;
            trekkie.ready(function() {
                if (loaded) return;
                loaded = true;

                window.ShopifyAnalytics.lib = window.trekkie;

                var originalDocumentWrite = document.write;
                document.write = customDocumentWrite;
                try {
                    window.ShopifyAnalytics.merchantGoogleAnalytics.call(this);
                } catch (error) {};
                document.write = originalDocumentWrite;

                window.ShopifyAnalytics.lib.page(
                    null, {
                        "pageType": "home"
                    }
                );

            });

            var eventsListenerScript = document.createElement('script');
            eventsListenerScript.async = true;
            eventsListenerScript.src = "//cdn.shopify.com/s/assets/shop_events_listener-76ce6d7f3e50d4b8c05874c34d2ea1340c45e5babba61276dadcaeed488ca16a.js";
            document.getElementsByTagName('head')[0].appendChild(eventsListenerScript);

        })();
    </script>
    <script integrity="sha256-tktEFIGLNKynPir1LpzrxF6FtKdUgas1Q0dwY8CRLfs=" defer="defer" src="${pageContext.request.contextPath}/templates/public/js/express_buttons-b64b4414818b34aca73e2af52e9cebc45e85b4a75481ab3543477063c0912dfb.js" crossorigin="anonymous"></script>
    <script integrity="sha256-NfqRkSQwKw0JfNupCky6Zxtoijw8YUA8km/3gYu7kY8=" defer="defer" src="${pageContext.request.contextPath}/templates/public/js/features-35fa919124302b0d097cdba90a4cba671b688a3c3c61403c926ff7818bbb918f.js" crossorigin="anonymous"></script>

    <link href='//fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Lora:400,700' rel='stylesheet' type='text/css'>

    <!--[if lt IE 9]>
    <script src="//html5shiv.googlecode.com/svn/trunk/html5.js" type="text/javascript"></script>
    <link href="js/ie8.css" rel="stylesheet" type="text/css" media="all" />
    <![endif]-->

    <!--[if IE 9]>
    <link href="js/ie9.css" rel="stylesheet" type="text/css" media="all" />
    <![endif]-->

    <link href="${pageContext.request.contextPath}/templates/public/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="${pageContext.request.contextPath}/templates/public/css/assets.css" rel="stylesheet" type="text/css" media="all" />
    <link href="${pageContext.request.contextPath}/templates/public/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="${pageContext.request.contextPath}/templates/public/css/responsive.css" rel="stylesheet" type="text/css" media="all" />
    <link href="${pageContext.request.contextPath}/templates/public/css/font-awesome.css" rel="stylesheet" type="text/css" media="all" />
    <script src="${pageContext.request.contextPath}/templates/public/js/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/templates/public/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/templates/public/js/api.jquery.js" type="text/javascript"></script>

    <script type="text/javascript">
        function preloadImages() {
            for (var i = 0; i < arguments.length; i++)
                $("<img />").attr("src", arguments[i]);
        }

        preloadImages("js/bx_loader.gif");

        (function($) {
            $(document).ready(function() {
                $('.page_preloader').delay(600).fadeOut('fast');
            });
        })(jQuery);
    </script>

    <script src="${pageContext.request.contextPath}/templates/public/js/option_selection-ea4f4a242e299f2227b2b8038152223f741e90780c0c766883939e8902542bda.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/templates/public/js/device.min.js" type="text/javascript"></script>

    <script src="${pageContext.request.contextPath}/templates/public/js/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/templates/public/js/ajaxify-shop.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/templates/public/js/hoverIntent.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/templates/public/js/superfish.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/templates/public/js/sftouchscreen.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/templates/public/js/tm-stick-up.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/templates/public/js/jquery.formstyler.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/templates/public/js/wow.min.js" type="text/javascript"></script>

    <script src="${pageContext.request.contextPath}/templates/public/js/jquery.nivoslider.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/templates/public/js/jquery.bxslider.min.js" type="text/javascript"></script>

</head>

<body onload="initialize()" id="welcome-to-our-store" class="template-index">

    <div class="page_preloader"></div>

    <!--[if lt IE 7]>
<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
<![endif]-->

    <div id="wrapper">
        <div id="wrapper2">

            <!-- HEADER -->
            <header id="header">
                <div class="header_row__1">
                    <div class="container">
                        <a href="/" class="header_link__home"><i class="fa fa-home"></i></a>

                        <!-- CURRENCIES -->

                        <div class="header_currency">
                            <select id="currencies" name="currencies">

                                <option value="USD" selected="selected">USD</option>

                                <option value="EUR">EUR</option>

                                <option value="GBP">GBP</option>

                            </select>
                        </div>

                        <!-- USER MENU -->
                        <ul class="header_user">

                            <li class="icon_lock"><a href="/account/login" id="customer_login_link">Log in</a></li>

                            <li class="icon_user"><a href="/account/register" id="customer_register_link">Create an account</a></li>

                        </ul>

                    </div>
                </div>

                <div class="header_row__2">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-4 col-lg-3">
                                <!-- LOGO -->
                                <div id="logo">
                                    <a href="/"><b>BOOKS</b><span>Online store</span></a>
                                </div>
                            </div>

                            <div class="col-sm-6 col-md-4 col-lg-6">
                                <!-- HEADER SEARCH -->
                                <div class="header_search">
                                    <form action="/search" method="get" class="search-form" role="search">
                                        <input id="search-field" name="q" placeholder=" " type="text" class="hint" />
                                        <button id="search-submit" type="submit"><span>Search</span></button>
                                    </form>
                                </div>
                            </div>

                            <div class="col-sm-6 col-md-4 col-lg-3">
                                <!-- HEADER CART -->
                                <div class="header_cart">
                                    <a href="/cart"><i class="fa fa-shopping-cart"></i><div><b>Shopping cart:</b><span class="cart-total-items"><span class="count">3</span></span><span class="checkout">Checkout</span></div></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- MEGAMENU -->
                <div id="megamenu">
                    <div class="container">
                        <ul class="sf-menu megamenu_desktop visible-md visible-lg">
                            <li class="megamenu__1 ">
                                <a href="/">Home</a>
                            </li>

                            <li class="megamenu__2 ">
                                <a href="/collections/all">Products<span class="menu_badge">hot deals</span></a>

                                <ul>
                                    <li>
                                        <div class="submenu">
                                            <div class="row">
                                                <div class="column__1 col-sm-3">
                                                    <h3><a href="/collections/antiques">Antiques</a></h3>
                                                    <ul>

                                                        <li><a href="/products/hardline-hacker-by-meredith-wild">Hardline (Hacker) by Meredi...</a></li>

                                                        <li><a href="/products/hardwired-by-meredith-wild">Hardwired by Meredith Wild</a></li>

                                                        <li><a href="/products/heaven-is-for-real-a-little-boys-astounding-story-of-his-trip-to-heaven-and-back-by-todd-burpo">Heaven is for Real- A Littl...</a></li>

                                                        <li><a href="/products/insurgent-divergent-by-veronica-roth">Insurgent (Divergent) by Ve...</a></li>

                                                        <li><a href="/products/interpreter-of-maladies-by-jhumpa-lahiri">Interpreter of Maladies by ...</a></li>

                                                        <li><a href="/products/jesus-a-pilgrimage-by-james-martin">Jesus- A Pilgrimage by Jame...</a></li>

                                                        <li><a href="/products/lord-of-the-flies-by-william-golding">Lord of the Flies by Willia...</a></li>

                                                    </ul>
                                                </div>

                                                <div class="column__2 col-sm-3">
                                                    <h3><a href="/collections/frontpage">Books</a></h3>
                                                    <ul>

                                                        <li><a href="/products/american-gods-by-neil-gaiman">American Gods by Neil Gaiman</a></li>

                                                        <li><a href="/products/amusing-ourselves-to-death-public-discourse-in-the-age-of-show-business-by-neil-postman">Amusing Ourselves to Death ...</a></li>

                                                        <li><a href="/products/an-army-at-dawn-the-war-in-north-africa-1942-1943-volume-one-of-the-liberation-trilogy-by-rick-atkinson">An Army at Dawn- The War in...</a></li>

                                                        <li><a href="/products/elder-scrolls-v-skyrim-legendary-standard-edition-prima-official-game-guide-prima-official-game-guides-by-david-hodgson">Elder Scrolls V- Skyrim Leg...</a></li>

                                                        <li><a href="/products/fahrenheit-451-a-novel-by-ray-bradbury">Fahrenheit 451- A Novel by ...</a></li>

                                                        <li><a href="/products/eleanor-park-by-rainbow-rowell">Eleanor & Park by Rainbow R...</a></li>

                                                        <li><a href="/products/fifty-shades-trilogy-fifty-shades-of-grey-fifty-shades-darker-fifty-shades-freed-3-volume-boxed-set-by-e-l-james">Fifty Shades Trilogy- Fifty...</a></li>

                                                    </ul>
                                                </div>

                                                <div class="column__3 col-sm-3">
                                                    <h3><a href="/collections/cards">Cards</a></h3>
                                                    <ul>

                                                        <li><a href="/products/hardline-hacker-by-meredith-wild">Hardline (Hacker) by Meredi...</a></li>

                                                        <li><a href="/products/hardwired-by-meredith-wild">Hardwired by Meredith Wild</a></li>

                                                        <li><a href="/products/heaven-is-for-real-a-little-boys-astounding-story-of-his-trip-to-heaven-and-back-by-todd-burpo">Heaven is for Real- A Littl...</a></li>

                                                        <li><a href="/products/insurgent-divergent-by-veronica-roth">Insurgent (Divergent) by Ve...</a></li>

                                                        <li><a href="/products/interpreter-of-maladies-by-jhumpa-lahiri">Interpreter of Maladies by ...</a></li>

                                                        <li><a href="/products/jesus-a-pilgrimage-by-james-martin">Jesus- A Pilgrimage by Jame...</a></li>

                                                        <li><a href="/products/lord-of-the-flies-by-william-golding">Lord of the Flies by Willia...</a></li>

                                                    </ul>
                                                </div>

                                                <div class="column__4 col-sm-3">
                                                    <h3><a href="/collections/magazines">Magazines</a></h3>
                                                    <ul>

                                                        <li><a href="/products/american-gods-by-neil-gaiman">American Gods by Neil Gaiman</a></li>

                                                        <li><a href="/products/amusing-ourselves-to-death-public-discourse-in-the-age-of-show-business-by-neil-postman">Amusing Ourselves to Death ...</a></li>

                                                        <li><a href="/products/an-army-at-dawn-the-war-in-north-africa-1942-1943-volume-one-of-the-liberation-trilogy-by-rick-atkinson">An Army at Dawn- The War in...</a></li>

                                                        <li><a href="/products/catch-22-50th-anniversary-edition-by-joseph-heller">Catch-22 50th Anniversary E...</a></li>

                                                        <li><a href="/products/elder-scrolls-v-skyrim-legendary-standard-edition-prima-official-game-guide-prima-official-game-guides-by-david-hodgson">Elder Scrolls V- Skyrim Leg...</a></li>

                                                        <li><a href="/products/eleanor-park-by-rainbow-rowell">Eleanor & Park by Rainbow R...</a></li>

                                                        <li><a href="/products/fahrenheit-451-a-novel-by-ray-bradbury">Fahrenheit 451- A Novel by ...</a></li>

                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>

                            </li>

                            <li class="megamenu__3 ">
                                <a href="/blogs/blog">Blog</a>

                                <ul>
                                    <li>
                                        <div class="submenu">
                                            <div class="row">

                                                <div class="col-sm-4">
                                                    <span class="blog_date">Monday, January 26, 2015</span>
                                                    <h3 class="blog_title"><a href="/blogs/blog/16655461-autem-recusandae-accusamus-sunt">Autem recusandae accus...</a></h3>
                                                    <div class="blog_content">
                                                        <p><img src="https://cdn.shopify.com/s/files/1/0752/1473/files/blog3.jpg?53"></p>
                                                        <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.</p>
                                                    </div>
                                                    <a class="btn" href="/blogs/blog/16655461-autem-recusandae-accusamus-sunt">Read more</a>
                                                </div>

                                                <div class="col-sm-4">
                                                    <span class="blog_date">Monday, January 26, 2015</span>
                                                    <h3 class="blog_title"><a href="/blogs/blog/16655453-sit-fugit-qui-quaerat-quas-natus">Sit, fugit, qui quaera...</a></h3>
                                                    <div class="blog_content">
                                                        <p><img src="//cdn.shopify.com/s/files/1/0752/1473/files/blog2.jpg?52"></p>
                                                        <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.</p>
                                                    </div>
                                                    <a class="btn" href="/blogs/blog/16655453-sit-fugit-qui-quaerat-quas-natus">Read more</a>
                                                </div>

                                                <div class="col-sm-4">
                                                    <span class="blog_date">Friday, January 23, 2015</span>
                                                    <h3 class="blog_title"><a href="/blogs/blog/16628617-lorem-ipsum-dolor-sit-amet-conse">Lorem ipsum dolor sit ...</a></h3>
                                                    <div class="blog_content">
                                                        <p><img src="//cdn.shopify.com/s/files/1/0752/1473/files/blog1.jpg?51"></p>
                                                        <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.</p>
                                                    </div>
                                                    <a class="btn" href="/blogs/blog/16628617-lorem-ipsum-dolor-sit-amet-conse">Read more</a>
                                                </div>

                                            </div>
                                        </div>
                                    </li>
                                </ul>

                            </li>

                            <li class="megamenu__4 ">
                                <a href="/collections/cards">Sale</a>

                                <ul>
                                    <li>
                                        <div class="submenu">
                                            <div class="row">

                                                <div class="col-sm-2">
                                                    <div class="product_img">
                                                        <a href="/products/hardline-hacker-by-meredith-wild">
                                                            <img src="//cdn.shopify.com/s/files/1/0752/1473/products/hardline_hacker_by_meredith_wild_1_large.png?v=1422032979" alt="Hardline (Hacker) by Meredith Wild" />
                                                        </a>
                                                    </div>

                                                    <div class="product_name">
                                                        <a href="/products/hardline-hacker-by-meredith-wild">Hardline (Hacker) by M...</a>
                                                    </div>

                                                    <div class="product_price">

                                                        <span class="money money-sale">$20</span>

                                                        <span class="money compare-at-price">$25</span>

                                                    </div>
                                                </div>

                                                <div class="col-sm-2">
                                                    <div class="product_img">
                                                        <a href="/products/hardwired-by-meredith-wild">
                                                            <img src="//cdn.shopify.com/s/files/1/0752/1473/products/hardwired_by_meredith_wild_1_large.png?v=1422032989" alt="Hardwired by Meredith Wild" />
                                                        </a>
                                                    </div>

                                                    <div class="product_name">
                                                        <a href="/products/hardwired-by-meredith-wild">Hardwired by Meredith ...</a>
                                                    </div>

                                                    <div class="product_price">

                                                        <span class="money money-sale">$10</span>

                                                        <span class="money compare-at-price">$20</span>

                                                    </div>
                                                </div>

                                                <div class="col-sm-2">
                                                    <div class="product_img">
                                                        <a href="/products/heaven-is-for-real-a-little-boys-astounding-story-of-his-trip-to-heaven-and-back-by-todd-burpo">
                                                            <img src="//cdn.shopify.com/s/files/1/0752/1473/products/heaven_is_for_real_a_little_boys_astounding_story_of_his_trip_to_heaven_and_back_by_todd_burpo_1_large.png?v=1422032999" alt="Heaven is for Real- A Little Boy&#39;s Astounding Story of His Trip to Heaven and Back by Todd Burpo" />
                                                        </a>
                                                    </div>

                                                    <div class="product_name">
                                                        <a href="/products/heaven-is-for-real-a-little-boys-astounding-story-of-his-trip-to-heaven-and-back-by-todd-burpo">Heaven is for Real- A ...</a>
                                                    </div>

                                                    <div class="product_price">

                                                        <span class="money ">$7</span>

                                                    </div>
                                                </div>

                                                <div class="col-sm-2">
                                                    <div class="product_img">
                                                        <a href="/products/insurgent-divergent-by-veronica-roth">
                                                            <img src="//cdn.shopify.com/s/files/1/0752/1473/products/insurgent_divergent_by_veronica_roth_1_large.png?v=1422033007" alt="Insurgent (Divergent) by Veronica Roth" />
                                                        </a>
                                                    </div>

                                                    <div class="product_name">
                                                        <a href="/products/insurgent-divergent-by-veronica-roth">Insurgent (Divergent) ...</a>
                                                    </div>

                                                    <div class="product_price">

                                                        <span class="money ">$25</span>

                                                    </div>
                                                </div>

                                                <div class="col-sm-2">
                                                    <div class="product_img">
                                                        <a href="/products/interpreter-of-maladies-by-jhumpa-lahiri">
                                                            <img src="//cdn.shopify.com/s/files/1/0752/1473/products/interpreter_of_maladies_by_jhumpa_lahiri_1_large.png?v=1422033017" alt="Interpreter of Maladies by Jhumpa Lahiri" />
                                                        </a>
                                                    </div>

                                                    <div class="product_name">
                                                        <a href="/products/interpreter-of-maladies-by-jhumpa-lahiri">Interpreter of Maladie...</a>
                                                    </div>

                                                    <div class="product_price">

                                                        <span class="money ">$40</span>

                                                    </div>
                                                </div>

                                                <div class="col-sm-2">
                                                    <div class="product_img">
                                                        <a href="/products/jesus-a-pilgrimage-by-james-martin">
                                                            <img src="//cdn.shopify.com/s/files/1/0752/1473/products/jesus_a_pilgrimage_by_james_martin_1_large.png?v=1422033027" alt="Jesus- A Pilgrimage by James Martin" />
                                                        </a>
                                                    </div>

                                                    <div class="product_name">
                                                        <a href="/products/jesus-a-pilgrimage-by-james-martin">Jesus- A Pilgrimage by...</a>
                                                    </div>

                                                    <div class="product_price">

                                                        <span class="money ">$9</span>

                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </li>
                                </ul>

                            </li>

                            <li class="megamenu__5 ">
                                <a href="/pages/about-us">About us<span class="menu_badge">our team</span></a>
                            </li>

                            <li class="megamenu__6 ">
                                <a href="/pages/contact-us">Contact us</a>
                            </li>
                        </ul>

                        <div class="megamenu_mobile visible-xs visible-sm">
                            <h2>Welcome to our store<i></i></h2>
                            <ul class="submenu__1">
                                <li class="megamenu__1">
                                    <a href="/">Home</a>
                                </li>

                                <li class="megamenu__2 ">
                                    <a href="/collections/all">Products<i></i></a>

                                    <ul class="submenu__2">
                                        <li>
                                            <a href="/collections/antiques">Antiques<i></i></a>
                                            <ul class="submenu__3">

                                                <li><a href="/products/hardline-hacker-by-meredith-wild">Hardline (Hacker)...</a></li>

                                                <li><a href="/products/hardwired-by-meredith-wild">Hardwired by Mere...</a></li>

                                                <li><a href="/products/heaven-is-for-real-a-little-boys-astounding-story-of-his-trip-to-heaven-and-back-by-todd-burpo">Heaven is for Rea...</a></li>

                                                <li><a href="/products/insurgent-divergent-by-veronica-roth">Insurgent (Diverg...</a></li>

                                                <li><a href="/products/interpreter-of-maladies-by-jhumpa-lahiri">Interpreter of Ma...</a></li>

                                                <li><a href="/products/jesus-a-pilgrimage-by-james-martin">Jesus- A Pilgrima...</a></li>

                                                <li><a href="/products/lord-of-the-flies-by-william-golding">Lord of the Flies...</a></li>

                                            </ul>
                                        </li>
                                        <li>
                                            <a href="/collections/frontpage">Books<i></i></a>
                                            <ul class="submenu__3">

                                                <li><a href="/products/american-gods-by-neil-gaiman">American Gods by ...</a></li>

                                                <li><a href="/products/amusing-ourselves-to-death-public-discourse-in-the-age-of-show-business-by-neil-postman">Amusing Ourselves...</a></li>

                                                <li><a href="/products/an-army-at-dawn-the-war-in-north-africa-1942-1943-volume-one-of-the-liberation-trilogy-by-rick-atkinson">An Army at Dawn- ...</a></li>

                                                <li><a href="/products/elder-scrolls-v-skyrim-legendary-standard-edition-prima-official-game-guide-prima-official-game-guides-by-david-hodgson">Elder Scrolls V- ...</a></li>

                                                <li><a href="/products/fahrenheit-451-a-novel-by-ray-bradbury">Fahrenheit 451- A...</a></li>

                                                <li><a href="/products/eleanor-park-by-rainbow-rowell">Eleanor & Park by...</a></li>

                                                <li><a href="/products/fifty-shades-trilogy-fifty-shades-of-grey-fifty-shades-darker-fifty-shades-freed-3-volume-boxed-set-by-e-l-james">Fifty Shades Tril...</a></li>

                                            </ul>
                                        </li>
                                        <li>
                                            <a href="/collections/cards">Cards<i></i></a>
                                            <ul class="submenu__3">

                                                <li><a href="/products/hardline-hacker-by-meredith-wild">Hardline (Hacker)...</a></li>

                                                <li><a href="/products/hardwired-by-meredith-wild">Hardwired by Mere...</a></li>

                                                <li><a href="/products/heaven-is-for-real-a-little-boys-astounding-story-of-his-trip-to-heaven-and-back-by-todd-burpo">Heaven is for Rea...</a></li>

                                                <li><a href="/products/insurgent-divergent-by-veronica-roth">Insurgent (Diverg...</a></li>

                                                <li><a href="/products/interpreter-of-maladies-by-jhumpa-lahiri">Interpreter of Ma...</a></li>

                                                <li><a href="/products/jesus-a-pilgrimage-by-james-martin">Jesus- A Pilgrima...</a></li>

                                                <li><a href="/products/lord-of-the-flies-by-william-golding">Lord of the Flies...</a></li>

                                            </ul>
                                        </li>
                                        <li>
                                            <a href="/collections/magazines">Magazines<i></i></a>
                                            <ul class="submenu__3">

                                                <li><a href="/products/american-gods-by-neil-gaiman">American Gods by ...</a></li>

                                                <li><a href="/products/amusing-ourselves-to-death-public-discourse-in-the-age-of-show-business-by-neil-postman">Amusing Ourselves...</a></li>

                                                <li><a href="/products/an-army-at-dawn-the-war-in-north-africa-1942-1943-volume-one-of-the-liberation-trilogy-by-rick-atkinson">An Army at Dawn- ...</a></li>

                                                <li><a href="/products/catch-22-50th-anniversary-edition-by-joseph-heller">Catch-22 50th Ann...</a></li>

                                                <li><a href="/products/elder-scrolls-v-skyrim-legendary-standard-edition-prima-official-game-guide-prima-official-game-guides-by-david-hodgson">Elder Scrolls V- ...</a></li>

                                                <li><a href="/products/eleanor-park-by-rainbow-rowell">Eleanor & Park by...</a></li>

                                                <li><a href="/products/fahrenheit-451-a-novel-by-ray-bradbury">Fahrenheit 451- A...</a></li>

                                            </ul>
                                        </li>
                                    </ul>

                                </li>

                                <li class="megamenu__3">
                                    <a href="/blogs/blog">Blog</a>
                                </li>

                                <li class="megamenu__4">
                                    <a href="/collections/cards">Sale</a>
                                </li>

                                <li class="megamenu__5">
                                    <a href="/pages/about-us">About us</a>
                                </li>

                                <li class="megamenu__6">
                                    <a href="/pages/contact-us">Contact us</a>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>

            </header>