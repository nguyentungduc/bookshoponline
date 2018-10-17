  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@include file="/templates/taglib.jsp" %> 
<!-- MAIN CONTENT -->
<div id="main" role="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="/" class="homepage-link" title="Back to the frontpage">Home</a></li>
            <li><span class="page-title">Create Account</span></li>
        </ul>
        <div class="row sidebar_left sidebar_off">
            <div class="column_center">
                <div id="main_content" class="col-sm-12">
                    <div id="template" class="customer customer__register">
                        <div id="customer">
                            <!-- Create Customer -->
                            <div id="create-customer">
                                <div class="template_header">
                                    <h2 class="page_heading">Create Account</h2>
                                </div>
                                <div class="template_content">
                                    <div class="form-horizontal">
                                        <form method="post" action="/account" id="create_customer" accept-charset="UTF-8">
                                            <input type="hidden" name="form_type" value="create_customer" />
                                            <input type="hidden" name="utf8" value="✓" />

                                            <div id="first_name" class="clearfix form-group">
                                                <label for="first_name" class="login control-label col-sm-4">First Name</label>
                                                <div class="col-sm-4">
                                                    <input type="text" value="" name="customer[first_name]" id="first_name" class="form-control" size="30" />
                                                </div>
                                            </div>

                                            <div id="last_name" class="clearfix form-group">
                                                <label for="last_name" class="login control-label col-sm-4">Last Name</label>
                                                <div class="col-sm-4">
                                                    <input type="text" value="" name="customer[last_name]" id="last_name" class="form-control" size="30" />
                                                </div>
                                            </div>

                                            <div id="email" class="clearfix form-group">
                                                <label for="email" class="login control-label col-sm-4">Email Address</label>
                                                <div class="col-sm-4">
                                                    <input type="email" value="" name="customer[email]" id="email" class="form-control" size="30" />
                                                </div>
                                            </div>

                                            <div id="password" class="clearfix form-group">
                                                <label for="password" class="login control-label col-sm-4">Password</label>
                                                <div class="col-sm-4">
                                                    <input type="password" value="" name="customer[password]" id="password" class="form-control password" size="30" />
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-sm-offset-4 col-sm-4">
                                                    <input class="btn btn-primary" type="submit" value="Create" />
                                                    <span class="note">or <a href="https://theme133-books.myshopify.com">Return to Store</a></span>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- /#create-customer -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
