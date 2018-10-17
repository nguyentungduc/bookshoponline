  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@include file="/templates/taglib.jsp" %>  
     <!-- Breadcrumbs -->
    <div class="breadcrumb-container">
      <div class="container">
        <ol class="breadcrumb">
          <li><a href="${pageContext.request.contextPath}/index.html">Trang chủ</a></li>
          <li><a href="${pageContext.request.contextPath}/products.html">Sản phẩm</a></li>
          <li class="active">${objXe.tenXe}</li>
        </ol>
      </div>
    </div>
    <!-- End Breadcrumbs -->

    <!-- Main Content -->
    <div class="container m-t-3">
      <div class="row">

        <!-- Image List -->
        <div class="col-sm-4">
          <div class="image-detail">
            <img src="${pageContext.request.contextPath}/files/${objXe.hinhanh}" data-zoom-image="${pageContext.request.contextPath}/files/${objXe.hinhanh}" alt="">
          </div>

          <div class="title"><span>Share to</span></div>
          <div class="share-button m-b-3">
            <button type="button" class="btn btn-primary"><i class="fa fa-facebook"></i></button>
            <button type="button" class="btn btn-info"><i class="fa fa-twitter"></i></button>
            <button type="button" class="btn btn-danger"><i class="fa fa-google-plus"></i></button>
            <button type="button" class="btn btn-primary"><i class="fa fa-linkedin"></i></button>
            <button type="button" class="btn btn-warning"><i class="fa fa-envelope"></i></button>
          </div>
        </div>
        <!-- End Image List -->

        <div class="col-sm-8">
          <div class="title-detail">${objXe.tenXe}</div>
          <table class="table table-detail">
            <tbody>
              <tr>
                <td>Giá</td>
                <td>
                  <div class="price">
                    <div>${objXe.gia}</div>
                  </div>
                </td>
              </tr>
              <tr>
                <td>Tình trạng</td>
                <c:choose>
                <c:when test="${objXe.soluong>0}">
                	 <td><span class="label label-success arrowed">Còn hàng</span></td>
                </c:when>
                <c:when test="${objXe.soluong<=0}">
                	 <td><span class="label label-success arrowed">Hết hàng</span></td>
                </c:when>
                </c:choose>
              </tr>
              <tr>
                <td>Hãng xe</td>
                <td>
					${objXe.tenHang}
                </td>
              </tr>
              <tr>
                <td>Màu</td>
                <td>
					${objXe.tenMau}
                </td>
              </tr>
              <tr>
                <td>Dòng xe</td>
                <td>
					${objXe.tenDX }
                </td>
              </tr>
              <tr>
                <td></td>
                <td>
                <c:if test="${objXe.soluong>0}">
                   <button class="btn btn-theme m-b-1"  onclick="addCart(${objXe.idCTX})" type="button"><i class="fa fa-shopping-cart"></i> Mua</button>
                </c:if>
                </td>
              </tr>
            </tbody>
          </table>
        </div>

        <div class="col-md-8">

          <!-- Nav tabs -->
          <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#desc" aria-controls="desc" role="tab" data-toggle="tab">Chi tiết</a></li>
          </ul>
          <!-- End Nav tabs -->

          <!-- Tab panes -->
          <div class="tab-content tab-content-detail">

              <!-- Description Tab Content -->
              <div role="tabpanel" class="tab-pane active" id="desc">
                <div class="well">
                  <p>
					${objXe.mota}
                  </p>
                </div>
              </div>
          </div>
          <!-- End Tab panes -->

        </div>
      </div>

      <!-- Related Products -->
      <div class="row m-t-3">
        <div class="col-xs-12">
          <div class="title"><span>Sản phẩm liên quan</span></div>
          <div class="related-product-slider owl-carousel owl-theme owl-controls-top-offset">
			<c:forEach var="objSPLQ" items="${listSPLQ}">
            <div class="box-product-outer">
              <div class="box-product">
                <div class="img-wrapper">
                  <a href="${pageContext.request.contextPath}/detail/${objSPLQ.idCTX}">
                    <img alt="Product" src="${pageContext.request.contextPath}/files/${objSPLQ.hinhanh}">
                  </a>
                <c:if test="${objSPLQ.soluong==0}">
                  <div class="tags tags-left">
                    <span class="label-tags"><span class="label label-primary arrowed-right">Hế hàng</span></span>
                  </div>
                </c:if> 
                  <div class="option">
                   <a href="javascript:void(0)"  onclick="addCart(${objSPLQ.idCTX})" data-toggle="tooltip" title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
                  </div>
                </div>
                <h6><a href="${pageContext.request.contextPath}/detail/${objSPLQ.idCTX}">${objSPLQ.tenXe}</a></h6>
                <div class="price">
                  <div>${objSPLQ.gia} VNĐ<span class="label-tags"></div>
                </div>
              </div>
            </div>
            </c:forEach>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- End Related Products -->

    </div>
    <!-- End Main Content -->
    
<script type="text/javascript">           
function addCart(id) {
     var aid = id;
     var soluongcart = parseInt($("#soluongCart").text());  
      $.ajax({
			url: "${pageContext.request.contextPath}/cart/ajax_add",
			type: 'POST',
			cache: false,
			data: {
				aid: aid,
			},
      	success: function(data) {
      		if(data=='1'){
    		   soluongcart=soluongcart+1;
    		   var str ="<i class='fa fa-shopping-cart'></i> "+ soluongcart +" <span class='caret'></span>"
    		   $("#soluongCart").html(str); 
    		   alert("Thêm thành công !");
      		}else{
      			alert("Số lượng sản phẩm đã hết!");
      		}			
      },      
		error: function() {
			alert('Có lỗi');
		}
    });
    }   
</script>