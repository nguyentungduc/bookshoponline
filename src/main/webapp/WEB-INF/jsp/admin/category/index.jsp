<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
<div class="content-page">
    <!-- Start content -->
    <div class="content">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="page-title-box">
                        <h4 class="page-title">Category</h4>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <!-- end row -->
            <form action="${pageContext.request.contextPath}/admincp/category/deletes" method="POST">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box table-responsive">
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="m-b-30">
                                        <button onclick="return confirmAction()" type="submit" class="btn btn-danger" name="submmit" value="delete_all" style="display:none"><span class="glyphicon glyphicon-trash" ></span>Chose Delete</button>
                                    </div>
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
                            <table id="datatable" class="table table-striped table-bordered">
                                <thead>
                                <tr>
                                    <th class="no-sort">
                                        <input  id="check_all" type="checkbox" />
                                    </th>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th class="no-sort">Action</th>
                                </tr>
                                </thead>
                                <tbody id="output">
                                <c:forEach var="objCategory" items="${listCat}">
                                    <c:set var="urlDelete" value="${pageContext.request.contextPath}/admincp/category/delete/${objCategory.id}"></c:set>
                                    <c:set var="urlEdit" value="${pageContext.request.contextPath}/admincp/category/${objCategory.id}"></c:set>
                                    <tr class="even gradeA">
                                        <td>
                                            <input name="cid[]" class="checkitem" type="checkbox" value="${objCategory.id}"/>
                                        </td>
                                        <td>${objCategory.id}</td>
                                        <td>${objCategory.name}</td>
                                        <td class="center text-center no-sort">
                                            <a onclick="return confirmAction()" href="${urlDelete}" title="" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Xóa</a>
                                            <a href="${urlEdit}" title="" class="btn btn-primary waves-effect waves-light"><span class="glyphicon glyphicon-eye-open"></span> Xem</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </form>

        </div> <!-- container -->

    </div> <!-- content -->

    <footer class="footer text-right">
        2018 - 2019 © Nguyễn Tùng Đức. - mystore.com
    </footer>
</div>
<script type="text/javascript">
    $('#datatable').dataTable( {
        "columnDefs": [ {
            "targets": 'no-sort',
            "orderable": false,
        } ]
    } );
</script>
<script type="text/javascript">
    $(function(){
        /* Check/bỏ chek hết tất cả các records */
        $(document).on('change','#check_all', function(ev){
            $('.checkitem').prop('checked', this.checked).trigger('change');
        });
        /* Check/bỏ chek từng records */
        $(document).on('change','.checkitem', function(ev){
            var _dem = 0;
            var _checked = 1;
            /* Duyệt tất cả các checkitem */
            $('.checkitem').each(function(){
                if($(this).is(':checked')){
                    _dem ++;
                }else{
                    _checked = 0;
                }
            });
            $('#check_all').prop('checked', _checked);
            if(_dem > 0){
                // Hiện nút xóa chọn
                $('button[name=submmit]').show();
            }else{
                // Ẩn nút xóa chọn
                $('button[name=submmit]').hide();
            }
        });
    });

    function confirmAction() {
        return confirm('Bạn có chắc muốn xóa?');
    }
</script>