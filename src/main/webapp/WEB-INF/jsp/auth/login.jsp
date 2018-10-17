<%@include file="/templates/taglib.jsp" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- header -->
<!DOCTYPE html>
<html>

  <head>
    <title>Bootstrap Admin Theme v3</title>
    <link rel="shortcut icon" type="image/ico" href="images/icon-180x180.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath }/templates/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- styles -->
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/templates/admin/css/style1.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>

<body>
    <div class="header">
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <!-- Logo -->
                    <div class="logo">
                        <h1><a href="index.php">VNE-Admin</a></h1>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="row">
                        <div class="col-lg-12"></div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="navbar navbar-inverse" role="banner">
                        <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
                            <ul class="nav navbar-nav">
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.header -->
    <div class="page-content container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-wrapper">
                <form action="${pageContext.request.contextPath}/login" method="post" class="valLog">
	                    <div class="box">
	                        <div class="content-wrap">
	                            <img width="100px" height="100px" class="img-circle" src="${pageContext.request.contextPath}/templates/admin/images/icon-180x180.png">
	                            <h6>Đăng nhập</h6>
	                            <c:if test="${param.error != null }">
	                            	<p style="color:red;font-size:20px">Tên hoặc mật khẩu sai</p>
	                            </c:if>
	                            <div class="form-group">
	                                <label class="text-left pull-left" for="username" >Tên đăng nhập</label>
	                                <input required value="${username}" name="username" class="form-control" type="text" placeholder="Username">
	                            </div>
	
	                            <div class="form-group">
	                                <label class="text-left pull-left" for="password"  >Mật khẩu</label>
	                                <input required value="" name="password" class="form-control" type="password" placeholder="Password">
	                            </div>
	
	                            <div class="action">
	                                <button class="btn btn-primary signup btn-block">Login</button>
	                            </div>
	                        </div>
	                    </div>

	                    <div class="already">
	                         <a href="javascript:void(0)"><p>Quên mật khẩu !</p></a>
	                        <a href="javascript:void(0)">Sign Up</a>
	                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
