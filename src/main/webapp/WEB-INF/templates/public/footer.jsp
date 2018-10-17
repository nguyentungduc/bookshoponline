<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
            <!-- FOOTER -->
            <footer>
                <div class="container footer_content">
                    <div class="row">
                        <div class="col-sm-3 footer_block footer_block__1 wow">
                            <h3>Information</h3>
                            <ul>

                                <li class="active"><a href="/" title="">Home</a></li>

                                <li><a href="/search" title="">Search</a></li>

                                <li><a href="/blogs/blog" title="">Blog</a></li>

                                <li><a href="/pages/about-us" title="">About Us</a></li>

                                <li><a href="/pages/contact-us" title="">Contact us</a></li>

                            </ul>
                        </div>

                        <div class="col-sm-3 footer_block footer_block__2 wow">
                            <h3>Collections</h3>
                            <ul>

                                <li><a href="/collections/antiques" title="">Antiques</a></li>

                                <li><a href="/collections/blanks" title="">Blanks</a></li>

                                <li><a href="/collections/frontpage" title="">Books</a></li>

                                <li><a href="/collections/calendars" title="">Calendars</a></li>

                                <li><a href="/collections/cards" title="">Cards</a></li>

                                <li><a href="/collections/cd-dvd" title="">CD/DVD</a></li>

                                <li><a href="/collections/comics" title="">Comics</a></li>

                            </ul>
                        </div>

                        <div class="col-sm-3 footer_block footer_block__3 wow">
                            <h3>My account</h3>
                            <ul>

                                <li><a href="/account" title="">My account</a></li>

                                <li><a href="/account/addresses" title="">My addresses</a></li>

                                <li><a href="/cart" title="">My cart</a></li>

                            </ul>
                        </div>
                    </div>
                </div>

                <div class="copyright">
                    <div class="container">
                        <p role="contentinfo">&copy; 2018 BOOKS. All Rights Reserved. Design by <a href="//templatemonster.com">TemplateMonster.com</a>. <a target="_blank" rel="nofollow" href="https://www.shopify.com?utm_campaign=poweredby&amp;utm_medium=shopify&amp;utm_source=onlinestore">Powered by Shopify</a>.</p>
                        <!-- Design by templatemonster.com -->
                    </div>
                </div>
            </footer>

        </div>
        <!-- / #wrapper2 -->
    </div>
    <!-- / #wrapper -->

    <div class="cart_popup">Product Added to Cart</div>

    <!-- currencies selector -->

    <script src="${pageContext.request.contextPath}/templates/public/js/currencies.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/templates/public/js/jquery.currencies.min.js" type="text/javascript"></script>

    <script>
        Currency.format = 'money_format';

        var shopCurrency = 'USD';

        /* Sometimes merchants change their shop currency, let's tell our JavaScript file */
        Currency.money_with_currency_format[shopCurrency] = "${{amount_no_decimals}} USD";
        Currency.money_format[shopCurrency] = "${{amount_no_decimals}}";

        /* Default currency */
        var defaultCurrency = 'USD' || shopCurrency;

        /* Cookie currency */
        var cookieCurrency = Currency.cookie.read();

        /* Fix for customer account pages */
        jQuery('span.money span.money').each(function() {
            jQuery(this).parents('span.money').removeClass('money');
        });

        /* Saving the current price */
        jQuery('span.money').each(function() {
            jQuery(this).attr('data-currency-USD', jQuery(this).html());
        });

        // If there's no cookie.
        if (cookieCurrency == null) {
            if (shopCurrency !== defaultCurrency) {
                Currency.convertAll(shopCurrency, defaultCurrency);
            } else {
                Currency.currentCurrency = defaultCurrency;
            }
        }
        // If the cookie value does not correspond to any value in the currency dropdown.
        else if (jQuery('[name=currencies]').size() && jQuery('[name=currencies] option[value=' + cookieCurrency + ']').size() === 0) {
            Currency.currentCurrency = shopCurrency;
            Currency.cookie.write(shopCurrency);
        } else if (cookieCurrency === shopCurrency) {
            Currency.currentCurrency = shopCurrency;
        } else {
            Currency.convertAll(shopCurrency, cookieCurrency);
        }

        jQuery('[name=currencies]').val(Currency.currentCurrency).change(function() {
            var newCurrency = jQuery(this).val();
            Currency.convertAll(Currency.currentCurrency, newCurrency);
            jQuery('.selected-currency').text(Currency.currentCurrency);
        });

        var original_selectCallback = window.selectCallback;
        var selectCallback = function(variant, selector) {
            original_selectCallback(variant, selector);
            Currency.convertAll(shopCurrency, jQuery('[name=currencies]').val());
            jQuery('.selected-currency').text(Currency.currentCurrency);
        };

        jQuery('.selected-currency').text(Currency.currentCurrency);
    </script>

    <!-- olark chat -->

    <!-- olark code -->
    <script type="text/javascript" data-cfasync="false">
        // <![CDATA[
        /*<![CDATA[*/
        window.olark || (function(c) {
            var f = window,
                d = document,
                l = f.location.protocol == "https:" ? "https:" : "http:",
                z = c.name,
                r = "load";
            var nt = function() {
                f[z] = function() {
                    (a.s = a.s || []).push(arguments)
                };
                var a = f[z]._ = {},
                    q = c.methods.length;
                while (q--) {
                    (function(n) {
                        f[z][n] = function() {
                            f[z]("call", n, arguments)
                        }
                    })(c.methods[q])
                }
                a.l = c.loader;
                a.i = nt;
                a.p = {
                    0: +new Date
                };
                a.P = function(u) {
                    a.p[u] = new Date - a.p[0]
                };

                function s() {
                    a.P(r);
                    f[z](r)
                }
                f.addEventListener ? f.addEventListener(r, s, false) : f.attachEvent("on" + r, s);
                var ld = function() {
                    function p(hd) {
                        hd = "head";
                        return ["<", hd, "></", hd, "><", i, ' onl' + 'oad="var d=', g, ";d.getElementsByTagName('head')[0].", j, "(d.", h, "('script')).", k, "='", l, "//", a.l, "'", '"', "></", i, ">"].join("")
                    }
                    var i = "body",
                        m = d[i];
                    if (!m) {
                        return setTimeout(ld, 100)
                    }
                    a.P(1);
                    var j = "appendChild",
                        h = "createElement",
                        k = "src",
                        n = d[h]("div"),
                        v = n[j](d[h](z)),
                        b = d[h]("iframe"),
                        g = "document",
                        e = "domain",
                        o;
                    n.style.display = "none";
                    m.insertBefore(n, m.firstChild).id = z;
                    b.frameBorder = "0";
                    b.id = z + "-loader";
                    if (/MSIE[ ]+6/.test(navigator.userAgent)) {
                        b.src = "javascript:false"
                    }
                    b.allowTransparency = "true";
                    v[j](b);
                    try {
                        b.contentWindow[g].open()
                    } catch (w) {
                        c[e] = d[e];
                        o = "javascript:var d=" + g + ".open();d.domain='" + d.domain + "';";
                        b[k] = o + "void(0);"
                    }
                    try {
                        var t = b.contentWindow[g];
                        t.write(p());
                        t.close()
                    } catch (x) {
                        b[k] = o + 'd.write("' + p().replace(/"/g, String.fromCharCode(92) + '"') + '");d.close();'
                    }
                    a.P(2)
                };
                ld()
            };
            nt()
        })({
            loader: "static.olark.com/jsclient/loader0.js",
            name: "olark",
            methods: ["configure", "extend", "declare", "identify"]
        });
        /* custom configuration goes here (www.olark.com/documentation) */
        olark.identify('7830-582-10-3714'); /*]]>*/
        // ]]>
    </script>
    <noscript><pre><a href="https://www.olark.com/site/7830-582-10-3714/contact" title="Contact us" target="_blank">Questions? Feedback?</a> powered by <a href="http://www.olark.com?welcome" title="Olark live chat software">Olark live chat software</a></pre></noscript>
    <!-- end olark code -->

    <script src="${pageContext.request.contextPath}/templates/public/js/shop.js" type="text/javascript"></script>
</body>
</html>