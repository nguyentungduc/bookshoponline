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
                        <h4 class="page-title">User</h4>
                        <ol class="breadcrumb p-0 m-0">
                            <li>
                                <a href="#">User</a>
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
                                <form id="editUser" enctype="multipart/form-data" action="${pageContext.request.contextPath}/admincp/user/edit" method="post" >
                                    <div class="card-box">
                                        <h4 class="m-t-0 header-title"><b>User</b></h4>
                                        <div class="form-group">
                                            <label for="name">Name</label>
                                            <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name" value="${user.name}">
                                        </div>
                                        <input type="hidden" name="status"  value="${user.status}">
                                        <input type="hidden" name="id"  value="${user.id}">
                                        <input type="submit" class="btn btn-primary icon-save" value="Update">
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
        $( "#editUser" ).validate( {
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