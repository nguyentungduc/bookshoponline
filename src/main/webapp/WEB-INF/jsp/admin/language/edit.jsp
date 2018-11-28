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
                        <h4 class="page-title">Language</h4>
                        <ol class="breadcrumb p-0 m-0">
                            <li>
                                <a href="#">Language</a>
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
                                <form id="editLang" enctype="multipart/form-data" action="${pageContext.request.contextPath}/admincp/language/edit" method="post" >
                                    <div class="card-box">
                                        <h4 class="m-t-0 header-title"><b>Language</b></h4>
                                        <div class="form-group">
                                            <label for="name">Name</label>
                                            <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name" value="${language.name}">
                                            <c:if test="${nameLang != null}">
                                                <label id="name-error" class="error" for="name">This name is exist.</label>
                                            </c:if>
                                        </div>
                                        <input type="hidden" name="id"  value="${language.id}">
                                        <input type="submit" class="btn btn-primary icon-save" value="Edit">
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
        2018 - 2019 © CNPM. - Bookstore.com
    </footer>
</div>
<script>
    $( document ).ready( function () {
        $( "#editLang" ).validate( {
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