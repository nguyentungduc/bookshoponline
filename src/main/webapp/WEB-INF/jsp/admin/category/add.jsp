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
                        <h4 class="page-title">Category</h4>
                        <ol class="breadcrumb p-0 m-0">
                            <li>
                                <a href="#">Category</a>
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
                                <form id="addCat" enctype="multipart/form-data" action="${pageContext.request.contextPath}/admincp/category/add" method="post" >
                                    <div class="card-box">
                                        <h4 class="m-t-0 header-title"><b>Category</b></h4>
                                        <div class="form-group">
                                            <label for="name">Name</label>
                                            <input type="name" class="form-control" id="name" value="${nameCat}" name="name" placeholder="Enter Name">
                                            <c:if test="${nameCat != null}">
                                            <label id="name-error" class="error" for="name">This name is exist.</label>
                                            </c:if>
                                        </div>
                                        <input type="submit" class="btn btn-primary icon-save" value="Add">
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
<script>
    $( document ).ready( function () {
        $( "#addCat" ).validate( {
            rules: {
                name: {
                    required: true,
                    minlength: 5,
                    maxlength: 100,
                },
            },
        });
    });
</script>