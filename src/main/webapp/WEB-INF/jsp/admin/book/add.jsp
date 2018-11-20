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
                                <form enctype="multipart/form-data" action="${pageContext.request.contextPath}/admincp/book/add" method="post" enctype="multipart/form-data">
                                    <div class="card-box">
                                        <h4 class="m-t-0 header-title"><b>Book</b></h4>
                                        <div class="form-group">
                                            <label for="name">Name</label>
                                            <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name" value="">
                                        </div>

                                        <div  class="form-group">
                                            <h6>Status</h6>
                                            <select name="enable" class="form-control">
                                                <option value="1">Active</option>
                                                <option value="0">Inactive</option>
                                            </select>
                                        </div>
                                        <div  class="form-group">
                                            <h6>Language</h6>
                                            <select name="language_id" class="form-control">
                                                <c:forEach var="language" items="${languageNames}">
                                                <option value="${language.id}">${language.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div  class="form-group">
                                            <h6>Publisher</h6>
                                            <select name="publisher_id" class="form-control">
                                                <c:forEach var="publisher" items="${publisherNames}">
                                                <option value="${publisher.id}">${publisher.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div  class="form-group">
                                            <h6>Category</h6>
                                            <select name="category_id" class="form-control">
                                                <c:forEach var="category" items="${categoryNames}">
                                                    <option value="${category.id}">${category.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="name">Price</label>
                                            <input type="text" class="form-control" id="price" name="price" placeholder="Enter Price" value="">
                                        </div>

                                        <div class="form-group">
                                            <label for="priceSale">Price Sale</label>
                                            <input type="text" class="form-control" id="priceSale" name="priceSale" placeholder="Enter Price Sale" value="">
                                        </div>
                                        <div class="form-group">
                                            <label for="quantity">Quantity</label>
                                            <input type="text" class="form-control" id="quantity" name="quantity" placeholder="Enter Quantity" value="${book.quantity}">
                                        </div>
                                        <div class="form-group">
                                            <label for="name">Author</label>
                                            <input type="text" class="form-control" id="author" name="author" placeholder="Enter Author" value="">
                                        </div>
                                        <div class="form-group">
                                            <label for="currency">Currency</label>
                                            <input type="text" class="form-control" id="currency" name="currency" placeholder="Enter Currency" value="">
                                        </div>
                                        <div class="form-group">
                                            <label for="codeBook">Code Book</label>
                                            <input type="text" class="form-control" id="codeBook" name="codeBook" placeholder="Enter Code Book" value="">
                                        </div>
                                        <div class="form-group">
                                            <label for="edition">Edition</label>
                                            <input type="text" class="form-control" id="edition" name="edition" placeholder="Enter Edition" value="">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Summary</label>
                                            <div class="col-md-12">
                                                <textarea class="form-control" rows="5" name="summary"></textarea>
                                            </div>
                                        </div>
                                        <h4 class="header-title"><b>Detail Book</b></h4>
                                        <div class="form-group">
                                            <label for="pageNumber">Page Number</label>
                                            <input type="text" class="form-control" id="pageNumber" name="pageNumber" placeholder="Enter page number" value="">
                                        </div>
                                        <div class="form-group">
                                            <label for="chapterNumber">Chapter Number</label>
                                            <input type="text" class="form-control" id="chapterNumber" name="chapterNumber" placeholder="Enter page number" value="">
                                        </div>
                                        <div class="form-group">
                                            <label for="publishingYear">Chapter Publishing Year</label>
                                            <input type="text" class="form-control" id="publishingYear" name="publishingYear" placeholder="Enter page publishingYear" value="">
                                        </div>
                                        <div class="form-group">
                                            <label for="size">Size</label>
                                            <input type="text" class="form-control" id="size" name="size" placeholder="Enter size" value="">
                                        </div>
                                        <div class="form-group">
                                            <label for="coverStyle">CoverStyle</label>
                                            <input type="text" class="form-control" id="coverStyle" name="coverStyle" placeholder="Enter Cover Style" value="">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Image Upload</label>
                                            <div class="col-md-12 fileupload-exists">
                                                <input type="file" name="files" multiple class="btn-default">
                                            </div>
                                        </div>
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