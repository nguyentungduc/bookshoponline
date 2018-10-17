<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


        </div>
        <!-- jQuery  -->


        <!-- init -->
        <script src="${pageContext.request.contextPath}/templates/admin/assets/pages/jquery.datatables.init.js"></script>

        <!-- App js -->
        <script src="${pageContext.request.contextPath}/templates/admin/assets/js/jquery.core.js"></script>
        <script src="${pageContext.request.contextPath}/templates/admin/assets/js/jquery.app.js"></script>
        

        

        <script type="text/javascript">
        
            $(document).ready(function () {
                $('#datatable').dataTable();
                $('#datatable-keytable').DataTable({keys: true});
                $('#datatable-responsive').DataTable();
                $('#datatable-colvid').DataTable({
                    "dom": 'C<"clear">lfrtip',
                    "colVis": {
                        "buttonText": "Change columns"
                    }
                });
                $('#datatable-scroller').DataTable({
                    ajax: "${pageContext.request.contextPath}/templates/admin/plugins/datatables/json/scroller-demo.json",
                    deferRender: true,
                    scrollY: 380,
                    scrollCollapse: true,
                    scroller: true
                });
                var table = $('#datatable-fixed-header').DataTable({fixedHeader: true});
                var table = $('#datatable-fixed-col').DataTable({
                    scrollY: "300px",
                    scrollX: true,
                    scrollCollapse: true,
                    paging: false,
                    fixedColumns: {
                        leftColumns: 1,
                        rightColumns: 1
                    }
                });
            });
            TableManageButtons.init();

        </script>
    </body>

<!-- Mirrored from coderthemes.com/codefox/light_1/page-404-alt.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 27 Dec 2017 04:22:56 GMT -->
</html>