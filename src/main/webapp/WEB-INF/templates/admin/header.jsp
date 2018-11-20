<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
<!-- Mirrored from coderthemes.com/codefox/light_1/page-404-alt.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 27 Dec 2017 04:22:56 GMT -->
<head>
        <meta charset="utf-8" />
        <title>Book Shop</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        
        <!-- App favicon -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/templates/admin/assets/images/favicon.ico">
		<link href="${pageContext.request.contextPath}/templates/admin/plugins/bootstrap-fileupload/bootstrap-fileupload.css" rel="stylesheet" />
		
		<link href="${pageContext.request.contextPath}/templates/admin/plugins/jquery.filer/css/jquery.filer.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/templates/admin/plugins/jquery.filer/css/themes/jquery.filer-dragdropbox-theme.css" rel="stylesheet" />
        <!-- DataTables -->
        <link href="${pageContext.request.contextPath}/templates/admin/plugins/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/templates/admin/plugins/datatables/buttons.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/templates/admin/plugins/datatables/fixedHeader.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/templates/admin/plugins/datatables/responsive.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/templates/admin/plugins/datatables/scroller.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/templates/admin/plugins/datatables/dataTables.colVis.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/templates/admin/plugins/datatables/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/templates/admin/plugins/datatables/fixedColumns.dataTables.min.css" rel="stylesheet" type="text/css"/>

        <!-- App css -->
        <link href="${pageContext.request.contextPath}/templates/admin/plugins/bootstrap-select/css/bootstrap-select.min.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/templates/admin/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/templates/admin/assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/templates/admin/assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/templates/admin/assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/templates/admin/assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/templates/admin/assets/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/templates/admin/assets/css/responsive.css" rel="stylesheet" type="text/css" />

        <script src="${pageContext.request.contextPath}/templates/admin/assets/js/modernizr.min.js"></script>
                <!-- END wrapper -->
      <script>
            var resizefunc = [];
        </script>

        <script src="${pageContext.request.contextPath}/templates/admin/assets/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/templates/admin/assets/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/templates/admin/assets/js/metisMenu.min.js"></script>
        <script src="${pageContext.request.contextPath}/templates/admin/assets/js/waves.js"></script>
        <script src="${pageContext.request.contextPath}/templates/admin/assets/js/jquery.slimscroll.js"></script>
        <script src="${pageContext.request.contextPath}/templates/admin/plugins/bootstrap-select/js/bootstrap-select.min.js" type="text/javascript"></script>

        <script src="${pageContext.request.contextPath}/templates/admin/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="${pageContext.request.contextPath}/templates/admin/plugins/datatables/dataTables.bootstrap.js"></script>

        <script src="${pageContext.request.contextPath}/templates/admin/plugins/datatables/dataTables.buttons.min.js"></script>
        <script src="${pageContext.request.contextPath}/templates/admin/plugins/datatables/buttons.bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/templates/admin/plugins/datatables/jszip.min.js"></script>
        <script src="${pageContext.request.contextPath}/templates/admin/plugins/datatables/pdfmake.min.js"></script>
        <script src="${pageContext.request.contextPath}/templates/admin/plugins/datatables/vfs_fonts.js"></script>
        <script src="${pageContext.request.contextPath}/templates/admin/plugins/datatables/buttons.html5.min.js"></script>
        <script src="${pageContext.request.contextPath}/templates/admin/plugins/datatables/buttons.print.min.js"></script>
        <script src="${pageContext.request.contextPath}/templates/admin/plugins/datatables/dataTables.fixedHeader.min.js"></script>
        <script src="${pageContext.request.contextPath}/templates/admin/plugins/datatables/dataTables.keyTable.min.js"></script>
        <script src="${pageContext.request.contextPath}/templates/admin/plugins/datatables/dataTables.responsive.min.js"></script>
        <script src="${pageContext.request.contextPath}/templates/admin/plugins/datatables/responsive.bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/templates/admin/plugins/datatables/dataTables.scroller.min.js"></script>
        <script src="${pageContext.request.contextPath}/templates/admin/plugins/datatables/dataTables.colVis.js"></script>
        <script src="${pageContext.request.contextPath}/templates/admin/plugins/datatables/dataTables.fixedColumns.min.js"></script>
        <!-- Init js -->
         <script src="${pageContext.request.contextPath}/templates/admin/assets/pages/jquery.form-pickers.init.js"></script>
      <script src="${pageContext.request.contextPath}/templates/admin/plugins/moment/moment.js"></script>
      <script src="${pageContext.request.contextPath}/templates/admin/plugins/timepicker/bootstrap-timepicker.js"></script>
      <script src="${pageContext.request.contextPath}/templates/admin/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
      <script src="${pageContext.request.contextPath}/templates/admin/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
      <script src="${pageContext.request.contextPath}/templates/admin/plugins/clockpicker/js/bootstrap-clockpicker.min.js"></script>
      <script src="${pageContext.request.contextPath}/templates/admin/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
      
        <script src="${pageContext.request.contextPath}/templates/admin/assets/pages/jquery.fileuploads.init.js"></script>
        <!-- Jquery filer js -->
        <script src="${pageContext.request.contextPath}/templates/admin/plugins/jquery.filer/js/jquery.filer.min.js"></script>
        <!-- Bootstrap fileupload js -->
        <script src="${pageContext.request.contextPath}/templates/admin/plugins/bootstrap-fileupload/bootstrap-fileupload.js"></script>
    
    	<!-- clediter-ckfiter -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/lib/ckeditor/ckeditor.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/lib/ckfinder/ckfinder.js"></script>
	<!-- end -->
	 <script src="${pageContext.request.contextPath}/templates/admin/plugins/test.js"></script>
    </head>
    <body>

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
            <div class="topbar">

                <!-- LOGO -->
                <div class="topbar-left">
                    <!--<a href="index.html" class="logo"><span>Code<span>Fox</span></span><i class="mdi mdi-layers"></i></a>-->
                    <!-- Image logo -->
                    <a href="index.html" class="logo">
                        <span>
                            <img src="${pageContext.request.contextPath}/templates/admin/assets/images/logo.png" alt="">
                        </span>
                        <i>
                            <img src="${pageContext.request.contextPath}/templates/admin/assets/images/logo_sm.png" alt="" height="28">
                        </i>
                    </a>
                </div>

                <!-- Button mobile view to collapse sidebar menu -->
                <div class="navbar navbar-default" role="navigation">
                    <div class="container">

                        <!-- Navbar-left -->
                        <ul class="nav navbar-nav navbar-left">
                            <li>
                                <button type="button" class="button-menu-mobile open-left waves-effect">
                                    <i class="dripicons-menu"></i>
                                </button>
                            </li>
                        </ul>

                        <!-- Right(Notification) -->
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown user-box">
                                <a href="#" class="dropdown-toggle waves-effect user-link" data-toggle="dropdown" aria-expanded="true">
                                    <img src="${pageContext.request.contextPath}/templates/admin/assets/images/users/avatar-1.jpg" alt="user-img" class="img-circle user-img">
                                </a>

                                <ul class="dropdown-menu dropdown-menu-right arrow-dropdown-menu arrow-menu-right user-list notify-list">
                                    <li><a href="${pageContext.request.contextPath}/logout">Đăng xuất</a></li>
                                </ul>
                            </li>

                        </ul> <!-- end navbar-right -->

                    </div><!-- end container -->
                </div><!-- end navbar -->
            </div>
            <!-- Top Bar End -->