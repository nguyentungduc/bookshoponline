<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
<div class="content-page">
    <!-- Start content -->
    <div class="content">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="page-title-box">
                        <h4 class="page-title">Book</h4>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <!-- end row -->
            <form action="${pageContext.request.contextPath}/admincp/book/deletes" method="POST">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box table-responsive">
                            <div class="row">
                                <div class="col-sm-3">
                                </div>
                                <c:if test="${msg!=null}">
                                    <div class="col-sm-6">
                                        <div class="alert alert-success alert-dismissible fade in" role="alert">
                                            <button type="button" class="close" data-dismiss="alert"
                                                    aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                            <strong>${msg}</strong>
                                        </div>
                                    </div>
                                </c:if>
                            </div>
                            <table id="datatable" class="table table-striped table-bordered bangax">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>price</th>
                                    <th>author</th>
                                    <th width="10%">Action</th>
                                </tr>
                                </thead>
                                <tbody id="output">
                                <c:forEach var="book" items="${books}">
                                    <c:set var="urlDelete" value="${pageContext.request.contextPath}/admincp/book/delete/${book.id}"></c:set>
                                    <c:set var="urlEdit" value="${pageContext.request.contextPath}/admincp/book/${book.id}"></c:set>
                                    <tr class="even gradeA">
                                        <td>${book.id}</td>
                                        <td>${book.name}</td>
                                        <td>${book.price}</td>
                                        <th>${book.author}</th>
                                        <td class="actions center text-center no-sort">
                                            <a style="padding: 5px;" href="${urlEdit}" class="on-default edit-row"><i class="fa fa-pencil"></i></a>
                                            <a onclick="return confirmAction()" href="${urlDelete}" style="padding: 5px;" href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <div class="col-md-4 pull-right">
                                <div id="page-selection"></div>
                                <input type="hidden" value="${totalPage}" id="totalPage">
                            </div>
                        </div>
                </div> <!-- container -->
            </div> <!-- content -->
        <footer class="footer text-right">
            2016 - 2017 © Nguyễn Tùng Đức. - mystore.com
        </footer>
    </div>
</div>
<script type="text/javascript">
    var t=$("#totalPage").val();
    $('#page-selection').bootpag({
        total: parseInt(t),
        page: 1,
        maxVisible: 5,
        leaps: true,
        firstLastUse: true,
        first: '←',
        last: '→',
        wrapClass: 'pagination',
        activeClass: 'active',
        disabledClass: 'disabled',
        nextClass: 'next',
        prevClass: 'prev',
        lastClass: 'last',
        firstClass: 'first'
    }).on("page", function(event, /* page number here */ num){
        $("table.bangax").find("tbody").empty();
        $.ajax({
            url: "${pageContext.request.contextPath}/admincp/book/ajax_page",
            type: 'POST',
            cache: false,
            data: {
                apage: num,
            },
            success: function(data) {
                $("table.bangax").find("tbody").append(data);
            },
            error: function() {
                alert('Có lỗi');
            }
        });
    });
</script>
<script type="text/javascript">
    $('#datatable').dataTable( {
        "info":     false,
        "paging":   false,
        "columnDefs": [ {
            "targets": 'no-sort',
            "orderable": false,
        } ]
    } );
</script>
<script type="text/javascript">
    function confirmAction() {
        return confirm('Bạn có chắc muốn xóa?');
    }
</script>
