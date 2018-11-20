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
                        <h4 class="page-title">Dashboard</h4>
                        <ol class="breadcrumb p-0 m-0">
                            <li>
                                <a href="#">Dashboard</a>
                            </li>
                        </ol>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <!-- end row -->

            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="card-box widget-box-two widget-two-inverse">
                        <i class="dripicons-broadcast widget-two-icon"></i>
                        <div class="wigdet-two-content">
                            <p class="m-0 text-uppercase text-white font-600 text-overflow" title="Statistics">Total Language</p>
                            <h2 class="text-white"><span data-plugin="counterup">${totalLanguage}</span><small></small></h2>
                            <p class="text-white m-0"><b><a href="${pageContext.request.contextPath}/admincp/language">View detail</a></b></p>
                        </div>
                    </div>
                </div><!-- end col -->

                <div class="col-lg-3 col-md-6">
                    <div class="card-box widget-box-two widget-two-info">
                        <i class="dripicons-basket widget-two-icon"></i>
                        <div class="wigdet-two-content">
                            <p class="m-0 text-white text-uppercase font-600 text-overflow" title="Total language">Total book</p>
                            <h2 class="text-white"><span data-plugin="counterup">${totalBook}</span> <small></small></h2>
                            <p class="text-white m-0"><b><a href="${pageContext.request.contextPath}/admincp/book">View detail</a></b></p>
                        </div>
                    </div>
                </div><!-- end col -->

                <div class="col-lg-3 col-md-6">
                    <div class="card-box widget-box-two widget-two-purple">
                        <i class="dripicons-briefcase widget-two-icon"></i>
                        <div class="wigdet-two-content">
                            <p class="m-0 text-uppercase text-white font-600 text-overflow" title="User This Month">Total Publisher</p>
                            <h2 class="text-white"><span data-plugin="counterup">${totalPublisher}</span> <small></small></h2>
                            <p class="text-white m-0"><b><a href="${pageContext.request.contextPath}/admincp/publisher">View detail</a></b></p>
                        </div>
                    </div>
                </div><!-- end col -->

                <div class="col-lg-3 col-md-6">
                    <div class="card-box widget-box-two widget-two-custom">
                        <i class="dripicons-user-group widget-two-icon"></i>
                        <div class="wigdet-two-content">
                            <p class="m-0 text-white text-uppercase font-600 text-overflow" title="Total Uer">Total User</p>
                            <h2 class="text-white"><span data-plugin="counterup">${totalUser}</span> <small></small></h2>
                            <p class="text-white m-0"><b><a href="${pageContext.request.contextPath}/admincp/user">View detail</a></b></p>
                        </div>
                    </div>
                </div><!-- end col -->

            </div>
            <!-- end row -->
        </div> <!-- container -->

    </div> <!-- content -->

    <footer class="footer text-right">
        2016 - 2017 © Codefox. - Coderthemes.com
    </footer>

</div>.