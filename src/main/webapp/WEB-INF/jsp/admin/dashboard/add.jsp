<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
<!-- ============================================================== -->
<!-- Start right Content here -->
<!-- ============================================================== -->
<div class="content-page">
    <!-- Start content -->
    <div class="content">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="page-title-box">
                        <h4 class="page-title">Supplier</h4>
                        <ol class="breadcrumb p-0 m-0">
                            <li>
                                <a href="#">Supplier</a>
                            </li>
                            <li>
                                <a href="#">Add</a>
                            </li>
                        </ol>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <!-- end row -->

            <div class="row">
                <div class="col-sm-12">
                    <div class="card-box">
                        <div class="row">
                            <div class="col-md-12">
                                <form enctype="multipart/form-data" action="${pageContext.request.contextPath}/admincp/supplier/add" method="post" >
                                    <div class="card-box">
                                        <h4 class="m-t-0 header-title"><b>Supplier</b></h4>
                                            <div class="form-group">
                                                <label for="name">Name</label>
                                                <input type="name" class="form-control" id="name" name="name" placeholder="Enter Name">
                                            </div>
                                            <div class="form-group">
                                                <label for="phone">Phone</label>
                                                <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone">
                                            </div>
                                            <div class="form-group">
                                                <label for="phone">representative</label>
                                                <input type="text" class="form-control" id="representative" name="representative" placeholder="representative">
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-2 control-label">Address</label>
                                                <div class="col-md-10">
                                                    <textarea class="form-control" rows="5" name="address"></textarea>
                                                </div>
                                            </div>
                                            <input type="submit" class="btn btn-primary icon-save" value="Submit">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div> <!-- end card-box -->
                </div><!-- end col -->
            </div>
            <!-- end row -->
        </div> <!-- container -->
    </div> <!-- content -->

    <footer class="footer text-right">
        2016 - 2017 © Codefox. - Coderthemes.com
    </footer>

</div>