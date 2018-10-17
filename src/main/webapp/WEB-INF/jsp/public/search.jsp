  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/templates/taglib.jsp" %>   
     <!-- Breadcrumbs -->
    <div class="breadcrumb-container">
      <div class="container">
        <ol class="breadcrumb">
          <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
          <li class="active">Products</li>
        </ol>
      </div>
    </div>
    <!-- End Breadcrumbs -->

    <!-- Main Content -->
    <div class="container m-t-3">
      <div class="row">

        <!-- Filter Sidebar -->
        <form action="javavoid:(0)" id="search">
        <div class="col-sm-3 hidden-xs">
          <div class="filter-sidebar">
            <div class="title"><span>Tìm kiếm</span></div>
          </div>
          <div class="filter-sidebar">
            	<div class="title"><span>Hãng xe</span></div>
                <select id="selectoridHX" name="idHX" class="selectpicker" data-width="100%">
                <c:forEach var="objHangXe" items="${listHangXe}">
                  <option value="${objHangXe.idHang}">${objHangXe.tenHang}</option>
                </c:forEach>
                </select>
          </div>
          <div class="filter-sidebar">
            <div class="title"><span>Dòng xe</span></div>
                <select id="selectoridDX" name="idDX" class="selectpicker" data-width="100%">
                <c:forEach var="objDongXe" items="${listDongXe}">
                  <option value="${objDongXe.idDX}">${objDongXe.tenDX}</option>
                </c:forEach>
                </select>
          </div>
          <div class="filter-sidebar">
           <div name="idMX" class="title"><span>Màu xe</span></div>
                <select id="selectoridMX" class="selectpicker" data-width="100%">
                <c:forEach var="objMX" items="${listMauXe}">
                  <option value="${objMX.idMau}">${objMX.tenMau}</option>
                </c:forEach>
                </select>
          </div>
  		<div class="col-xs-12">
			<button type="submit" class="btn btn-theme">Tìm kiếm<span aria-hidden="true"></span></button>
		</div>	
		</form>

        </div>
        <!-- End Filter Sidebar -->
		<div class="print_data">
        <!-- Product List -->
        <div class="col-sm-9">
          <div class="title"><span>Xe máy</span></div>

          <!-- Product Sorting Bar -->
          <form action="${pageContext.request.contextPath}/products" >
          <div class="product-sorting-bar">
          </div>
           </form>
          <!-- End Product Sorting Bar -->
		 <c:forEach var="objProducts" items="${listProducts}">
          <div class="col-xs-6 col-md-4 col-lg-3 box-product-outer">
            <div class="box-product">
              <div class="img-wrapper">
                <a href="${pageContext.request.contextPath}/detail/${objProducts.idCTX}">
                  <img alt="Product" src="${pageContext.request.contextPath}/files/${objProducts.hinhanh}">
                </a>
                <c:if test="${objProducts.soluong==0}">
                  <div class="tags tags-left">
                    <span class="label-tags"><span class="label label-primary arrowed-right">Hế hàng</span></span>
                  </div>
                </c:if>                 
                <div class="option">
                  <a href="javascript:void(0)"  onclick="addCart(${objProducts.idCTX})" data-toggle="tooltip" title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
                </div>
              </div>
              <h6><a href="${pageContext.request.contextPath}/detail/${objProducts.idCTX}">${objProducts.tenXe}</a></h6>
              <div class="price">
                <div>${objProducts.gia} VNĐ<span class="label-tags"></div>
              </div>
            </div>
          </div>
		  </c:forEach>
          <!-- Pagination -->
          
          <!-- End Pagination -->
          <div class="col-xs-12 text-center">
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <c:set var="url" value="${pageContext.request.contextPath}/search"></c:set>
                    <c:if test="${(currentPage>1)&&(totalPage>0)}">
                       <li><a href="${url}/${currentPage-1}?information=${information}"> << </a></li>
                    </c:if>
                    <c:forEach begin="${pageStart}" end="${pageEnd}" var="i">
                        <li><a <c:if test="${currentPage==i}">class='active'</c:if> href="${url}/${i}?information=${information}">${i}</a></li>
                    </c:forEach>
                    <c:if test="${(currentPage<totalPage) && (totalPage>1)}">
                   		 <li><a href="${url}/${currentPage+1}?information=${information}"> >> </a></li>
                    </c:if>
                </ul>
            </nav>
			</div>
        </div>
        <!-- End Product List -->
		</div>
      </div>
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
	<!-- ajax -->
	<script type="text/javascript">
	  $(function(){
	    $(document).on('submit','#search', function(){
	      var idHX = $('#selectoridHX').val()
	      var idMau = $('#selectoridMX').val();
	      var idDX = $('#selectoridDX').val();
	      $.ajax({
	    	url: "${pageContext.request.contextPath}/search_ajax",
	        type: 'POST',
	        data: {
	        	idHX:idHX,
	        	idMau:idMau,
	        	idDX:idDX,
	        },
	        success: function(data){					        	
	          $(".print_data").html(data);
	        },
	        error: function (){
	          alert('Có lỗi');
	        }
	      }); 
	    });
	  });
	</script>
	<!-- end -->
