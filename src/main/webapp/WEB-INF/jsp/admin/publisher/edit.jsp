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
                        <h4 class="page-title">Publisher</h4>
                        <ol class="breadcrumb p-0 m-0">
                            <li>
                                <a href="#">Publisher</a>
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
                                <form enctype="multipart/form-data" action="${pageContext.request.contextPath}/admincp/publisher/edit" method="post" >
                                    <div class="card-box">
                                        <h4 class="m-t-0 header-title"><b>Publisher</b></h4>
                                        <div class="row">
                                            <div class="form-group col-md-6">
                                                <label for="name">Name</label>
                                                <input type="name" class="form-control" id="name" name="name" placeholder="Enter Name"  value="${publisher.name}">
                                                <c:if test="${error != null}">
                                                    <label id="name-error" class="error" for="name">This name is exist.</label>
                                                </c:if>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="phone">Phone</label>
                                                <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone" value="${publisher.phone}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Address</label>
                                            <div class="col-md-12" style="padding:0px;margin-bottom: 20px;">
                                                <textarea id="editor" class="form-control" rows="5" name="address">${publisher.address}</textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <input type="hidden" name="id"  value="${publisher.id}">
                                            <input type="submit" class="btn btn-primary icon-save" value="Edit">
                                        </div>
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
<script type="text/javascript">
    var editor = CKEDITOR.replace('editor');
    CKFinder.setupCKEditor(editor, '${pageContext.request.contextPath}/lib/ckfinder/');
</script>
<script>
    $( document ).ready( function () {
        $( "#editPublisher" ).validate( {
            ignore: [],
            rules: {
                name: {
                    required: true,
                    minlength: 5,
                    maxlength: 100,
                },
                phone: {
                    required: true,
                    minlength: 5,
                    maxlength: 20,
                },
                address: {
                    required: function(textarea) {
                        CKEDITOR.instances[textarea.id].updateElement(); // update textarea
                        var editorcontent = textarea.value.replace(/<[^>]*>/gi, ''); // strip tags
                        return editorcontent.length === 0;
                    },
                },
            },
        });
    });
</script>