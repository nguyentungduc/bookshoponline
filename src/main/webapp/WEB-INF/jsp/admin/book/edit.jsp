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
                        <h4 class="page-title">Book</h4>
                        <ol class="breadcrumb p-0 m-0">
                            <li>
                                <a href="#">Book</a>
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
                                <form enctype="multipart/form-data" action="${pageContext.request.contextPath}/admincp/book/edit" method="post" >
                                    <div class="card-box">
                                        <h4 class="m-t-0 header-title"><b>Book</b></h4>
                                        <div class="form-group">
                                            <label for="name">Name</label>
                                            <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name" value="${book.name}">
                                        </div>
                                        <div class="form-group">
                                            <label for="name">Price</label>
                                            <input type="text" class="form-control" id="price" name="price" placeholder="Enter Price" value="${book.price} ${book.currency}">
                                        </div>
                                        <div class="form-group">
                                            <label for="name">Price Sale</label>
                                            <input type="text" class="form-control" id="priceSale" name="priceSale" placeholder="Enter Price Sale" value="${book.priceSale} ${book.currency}">
                                        </div>
                                        <div class="form-group">
                                            <label for="name">Quantity</label>
                                            <input type="text" class="form-control" id="quantity" name="priceSale" placeholder="Enter Quantity" value="${book.quantity}">
                                        </div>
                                        <div class="form-group">
                                            <label for="name">Author</label>
                                            <input type="text" class="form-control" id="author" name="author" placeholder="Enter Author" value="${book.author}">
                                        </div>
                                        <div class="form-group">
                                            <label for="name">Code Book</label>
                                            <input type="text" class="form-control" id="codebook" name="author" placeholder="Enter Code Book" value="${book.codeBook}">
                                        </div>
                                        <div class="form-group">
                                            <label for="name">Edition</label>
                                            <input type="text" class="form-control" id="edition" name="author" placeholder="Enter Edition" value="${book.edition}">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Summary</label>
                                            <div class="col-md-12">
                                                <textarea class="form-control" rows="5">${book.summary}</textarea>
                                            </div>
                                        </div>
                                        <c:forEach var="picture" items="${pictures}">
                                        <div class="fileupload fileupload-new" data-provides="fileupload">
                                            <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                                                <img src="${picture.url}" alt="image">
                                            </div>
                                            <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                                            <div>
                                                <button type="button" class="btn btn-default btn-file">
                                                    <span class="fileupload-new"><i class="fa fa-paper-clip"></i> Select image</span>
                                                    <span class="fileupload-exists"><i class="fa fa-undo"></i> Change</span>
                                                    <input type="file" class="btn-default">
                                                </button>
                                            </div>
                                        </div>
                                        </c:forEach>
                                        <input type="hidden" name="id"  value="${book.id}">
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