<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@include file="/templates/taglib.jsp" %>
 <!-- MAIN CONTENT -->
<div id="main" role="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="/" class="homepage-link" title="Back to the frontpage">Home</a></li>

            <li><span class="page-title">Account</span></li>
        </ul>
        <div class="row sidebar_left sidebar_off">
            <div class="column_center">
                <div id="main_content" class="col-sm-12">

                    <div id="template" class="customer customer__login">

                        <div id="customer">

                            <h2 class="page_heading">Customer Login</h2>

                            <div class="form-horizontal">
                                <form method="post" action="/account/login" id="customer_login" accept-charset="UTF-8">
                                    <input type="hidden" name="form_type" value="customer_login" />
                                    <input type="hidden" name="utf8" value="✓" />

                                    <div id="login_email" class="clearfix large_form form-group">
                                        <label for="customer_email" class="login control-label col-sm-4">Email Address</label>
                                        <div class="col-sm-4">
                                            <input type="email" value="" name="customer[email]" id="customer_email" class="form-control" size="30" />
                                        </div>
                                    </div>

                                    <!-- Customer Account Login -->
                                    <div id="login_password" class="clearfix large_form form-group">
                                        <label for="customer_password" class="login control-label col-sm-4">Password</label>
                                        <div class="col-sm-4">
                                            <input type="password" value="" name="customer[password]" id="customer_password" class="form-control" size="16" />
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div id="forgot_password">
                                            <div class="col-sm-4 col-sm-offset-4">
                                                <a href="#" onclick="showRecoverPasswordForm();return false;">Forgot your password?</a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="action_bottom col-sm-offset-4 col-sm-4">
                                            <input class="btn btn-primary" type="submit" value="Sign In" />
                                            <span class="note">or <a href="https://theme133-books.myshopify.com">Return to Store</a></span>
                                        </div>
                                    </div>

                                </form>
                            </div>

                        </div>

                        <!-- Recover Password Form -->
                        <div id="recover-password" style='display:none' class="customer customer__recover">
                            <h2 class="page_heading">Reset Password</h2>
                            <p class="note">We will send you an email to reset your password.</p>
                            <form method="post" action="/account/recover" accept-charset="UTF-8">
                                <input type="hidden" name="form_type" value="recover_customer_password" />
                                <input type="hidden" name="utf8" value="✓" />

                                <div id="recover_email" class="clearfix form-horizontal">
                                    <div class="form-group">
                                        <label for="email" class="large col-sm-4">Email</label>
                                        <div class="col-sm-4">
                                            <input class="form-control" type="email" value="" size="30" name="email" id="recover-email" />
                                        </div>
                                    </div>
                                    <div class="form-group action_bottom ">
                                        <div class="col-sm-4 col-sm-offset-4">
                                            <input class="btn btn-primary" type="submit" value="Submit" />
                                            <span class="note">or <a href="#" onclick="hideRecoverPasswordForm();return false;">Cancel</a></span>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>

                        <!-- Guest Login form for shops with optional customer accounts. This form is displayed only when users click on the checkout link on the cart page. -->

                    </div>

                    <script type="text/javascript">
                        function showRecoverPasswordForm() {
                            document.getElementById('recover-password').style.display = 'block';
                            document.getElementById('customer').style.display = 'none';
                        }

                        function hideRecoverPasswordForm() {
                            document.getElementById('recover-password').style.display = 'none';
                            document.getElementById('customer').style.display = 'block';
                        }

                        if (window.location.hash == '#recover') {
                            showRecoverPasswordForm()
                        }
                    </script>

                </div>
            </div>

        </div>

    </div>
</div>
