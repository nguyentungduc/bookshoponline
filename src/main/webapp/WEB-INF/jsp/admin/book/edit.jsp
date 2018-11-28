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
                                <form id="addBook" enctype="multipart/form-data" action="${pageContext.request.contextPath}/admincp/book/edit" method="post" >
                                    <div class="card-box">
                                        <h4 class="m-t-0 header-title"><b>Book</b></h4>
                                        <div class="row">
                                            <div class="form-group col-md-6">
                                                <label for="name">Name</label>
                                                <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name" value="${book.name}">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="name">Price</label>
                                                <input type="text" class="form-control" id="price" name="price" placeholder="Enter Price" value="${book.price}">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div  class="form-group col-md-6">
                                                <h6>Language</h6>
                                                <select name="language_id" class="form-control">
                                                <c:forEach var="obj" items="${languageNames}">
                                                    <c:choose>
                                                        <c:when test="${language.id==obj.id}">
                                                            <option value="${obj.id}" selected="selected">${obj.name}</option>
                                                        </c:when>
                                                        <c:when test="${language.id!=obj.id}">
                                                            <option value="${obj.id}">${obj.name}</option>
                                                        </c:when>
                                                    </c:choose>
                                                </c:forEach>
                                                </select>
                                            </div>
                                            <div  class="form-group col-md-6">
                                                <h6>Publisher</h6>
                                                <select name="publisher_id" class="form-control">
                                                    <c:forEach var="obj" items="${publisherNames}">
                                                        <c:choose>
                                                            <c:when test="${publisher.id==obj.id}">
                                                                <option value="${obj.id}" selected="selected">${obj.name}</option>
                                                            </c:when>
                                                            <c:when test="${publisher.id!=obj.id}">
                                                                <option value="${obj.id}">${obj.name}</option>
                                                            </c:when>
                                                        </c:choose>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div  class="form-group col-md-6">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <h6>Change category</h6>
                                                        <select name="category_id[]" class="form-control" multiple="multiple">
                                                            <c:forEach var="obj" items="${categoryNames}">
                                                                <option value="${obj.id}">${obj.name}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <h6>Category</h6>
                                                        <select name="category_id_old[]" class="form-control"  multiple="multiple" readonly>
                                                            <c:forEach var="category" items="${categories}">
                                                                <option value="${category.id}" selected="selected">${category.name}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div  class="form-group col-md-6">
                                                <h6>Status</h6>
                                                <select name="enable" class="form-control">
                                                    <c:forEach items="${actives}" var="active" varStatus="loop">
                                                        <c:choose>
                                                            <c:when test="${loop.index==book.enable}">
                                                                <option value="${loop.index}" selected="selected">${active}</option>
                                                            </c:when>
                                                            <c:when test="${loop.index!=book.enable}">
                                                                <option value="${loop.index}">${active}</option>
                                                            </c:when>
                                                        </c:choose>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-md-6">
                                                <label for="priceSale">Price Sale</label>
                                                <input type="text" class="form-control" id="priceSale" name="priceSale" placeholder="Enter Price Sale" value="${book.priceSale}">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="quantity">Quantity</label>
                                                <input type="text" class="form-control" id="quantity" name="quantity" placeholder="Enter Quantity" value="${book.quantity}">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-md-6">
                                                <label for="name">Author</label>
                                                <input type="text" class="form-control" id="author" name="author" placeholder="Enter Author" value="${book.author}">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="currency">Currency</label>
                                                <input type="text" class="form-control" id="currency" name="currency" placeholder="Enter Currency" value="${book.currency}">
                                            </div>
                                        </div>
                                            <div class="row">
                                            <div class="form-group col-md-6">
                                                <label for="codeBook">Code Book</label>
                                                <input type="text" class="form-control" id="codeBook" name="codeBook" placeholder="Enter Code Book" value="${book.codeBook}">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="edition">Edition</label>
                                                <input type="text" class="form-control" id="edition" name="edition" placeholder="Enter Edition" value="${book.edition}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Summary</label>
                                            <div class="col-md-12" style="padding:0px;margin-bottom: 20px;">
                                                <textarea class="form-control" id="editor" rows="5" name="summary">${book.summary}</textarea>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <h4 class="header-title"><b>Detail Book</b></h4>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-md-4">
                                                <label for="pageNumber">Page Number</label>
                                                <input type="text" class="form-control" id="pageNumber" name="pageNumber" placeholder="Enter page number" value="${bookDetail.pageNumber}">
                                            </div>
                                            <div class="form-group col-md-4">
                                                <label for="chapterNumber">Chapter Number</label>
                                                <input type="text" class="form-control" id="chapterNumber" name="chapterNumber" placeholder="Enter page number" value="${bookDetail.chapterNumber}">
                                            </div>
                                            <div class="form-group col-md-4">
                                                <label for="publishingYear">Chapter Publishing Year</label>
                                                <input type="text" class="form-control" id="publishingYear" name="publishingYear" placeholder="Enter page publishingYear" value="${bookDetail.publishingYear}">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-md-6">
                                                <label for="size">Size</label>
                                                <input type="text" class="form-control" id="size" name="size" placeholder="Enter size" value="${bookDetail.size}">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="coverStyle">CoverStyle</label>
                                                <input type="text" class="form-control" id="coverStyle" name="coverStyle" placeholder="Enter Cover Style" value="${bookDetail.coverStyle}">
                                            </div>
                                        </div>
                                        <input type="hidden" name="id"  value="${book.id}">
                                        <div class="form-group">
                                            <label for="coverStyle">Cover image</label>
                                            <div class="fileupload fileupload-new" data-provides="fileupload">
                                                <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                                                    <img src="${coverPicture.url}" alt="image">
                                                    <input type="hidden" name="cover_picture_id" value="${coverPicture.id}">
                                                </div>
                                                <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                                                <div>
                                                    <button type="button" class="btn btn-default btn-file">
                                                        <span class="fileupload-new"><i class="fa fa-paper-clip"></i>Select image</span>
                                                        <span class="fileupload-exists"><i class="fa fa-undo"></i> Change</span>
                                                        <input type="file" class="btn-default" name="file">
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Image Upload</label>
                                            <div class="col-md-12 form-control-file">
                                                <input type="file" name="files" multiple class="btn-default" style="display: inline-block;margin-bottom: 30px;">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <c:forEach var="picture" items="${pictures}">
                                                <div class="fileupload fileupload-new col-md-4" data-provides="fileupload">
                                                    <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                                                        <img src="${picture.url}" alt="image">
                                                    </div>
                                                    <div>
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox" value="${picture.id}" name="pid[]" id="chkSelect-${picture.id}" onchange="changeName(${picture.id})" checked="checked">
                                                                <span class="cr"><i class="cr-icon fa fa-check"></i></span>
                                                                <p id="check-${picture.id}">No Delete</p>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                        <input type="hidden" name="book_id" value="${book.id}">
                                        <input type="hidden" name="detail_id" value="${bookDetail.id}">
                                        <div class="form-group">
                                            <input type="submit" class="btn btn-primary icon-save" value="Update">
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
    function changeName(id) {
        $(".checkbox p#check-"+id).text("");
        var isChecked = $('input#chkSelect-'+id).is(':checked');
        if(isChecked){
            $("p#check-"+id).text("Not delete");
        }else{
            $("p#check-"+id).text("Delete");
        }
    }
</script>
<script>
    var editor = CKEDITOR.replace('editor');
    CKFinder.setupCKEditor(editor, '${pageContext.request.contextPath}/lib/ckfinder/');
</script>
<script>
    $( document ).ready( function () {
        $( "#addBook" ).validate( {
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
                price: {
                    required: true,
                    number: true
                },
                priceSale: {
                    required: true,
                    number: true
                },
                quantity: {
                    required: true,
                    digits: true
                },
                author: {
                    required: true,
                },
                codeBook: {
                    required: true,
                    minlength: 5,
                },
                edition: {
                    required: true,
                    digits: true,
                },
                pageNumber: {
                    required: true,
                    digits: true,
                    min: 1,
                },
                chapterNumber: {
                    required: true,
                    digits: true,
                },
                publishingYear:{
                    required: true,
                    digits: true,
                    min: 2000,
                },
                size:{
                    required: true,
                },
                currency:{
                    required: true,
                },
                coverStyle:{
                    required: true,
                },
                file:{
                    required: true,
                },
                summary: {
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