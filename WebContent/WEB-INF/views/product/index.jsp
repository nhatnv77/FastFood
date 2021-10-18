<%@ page language="java"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<html>
<head>
<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>ADMIN SITE</title>

  <!-- Custom fonts for this template-->
  <link href="${pageContext.request.contextPath}/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="${pageContext.request.contextPath}/resources/admin/css/sb-admin-2.min.css" rel="stylesheet">
  
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body id="page-top">
	<!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">ADMIN<sup>2</sup></div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="#">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">
    
      <!-- Heading -->
      <div class="sidebar-heading">
        QUẢN TRỊ
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      
       <li class="nav-item">
        <a class="nav-link collapsed" href="user.htm" >
          <i class="fa fa-user"></i>
          <span>KHÁCH HÀNG</span>
        </a>
      </li>

      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link" href="product.htm">
          <i class="fa fa-tree"></i>
          <span>HÀNG HÓA</span></a>
      </li>
      
<!--       <li class="nav-item"> -->
<!--         <a class="nav-link" href="#"> -->
<!--           <i class="fa fa-database"></i> -->
<!--           <span>ĐƠN HÀNG</span></a> -->
<!--       </li> -->
      
      <li class="nav-item">
        <a class="nav-link" href="home/trangchu.htm">
          <i class="fa fa-power-off"></i>
          <span>ĐĂNG XUẤT</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">
	<br/>
	<br/>
      <!-- Main Content -->
      <div id="content">
		<div class="border">
		<h1>Danh sách Sản Phẩm</h1>
		<br/>
	
		<a href = "insertsp.htm" class="btn btn-success">Thêm</a>
		<br/>
		<br/>
		<table class = "table table-hover table-bordered">
			<tr>
			<th>Mã</th>
			<th>Tên</th>
			<th>Giá</th>
			<th>Loại</th>
			<th>Hình</th>
			<th>Số Lượng</th>
			<th></th>
			</tr>
			<c:forEach var = "item" items="${products}">
				<tr>
					<td>${item.idProduct}</td>
					<td>${item.name}</td>
					<td>${item.price}</td>
					<td>${item.type}</td>
					<td><img src="${pageContext.request.contextPath}/resources/img/products/${item.image}" height="60px"/></td>
					<td>${item.number}</td>
					<td>
						<a href = "updatesp/${item.idProduct}.htm" class="btn btn-primary">Sửa</a>
						<a href = "deletesp/${item.idProduct}.htm" class="btn btn-danger xoa-hh">Xóa</a>
					</td>
				</tr>
			</c:forEach>
		</table>
		
	</div>

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2020</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="${pageContext.request.contextPath}/resources/admin/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="${pageContext.request.contextPath}/resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="${pageContext.request.contextPath}/resources/admin/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="${pageContext.request.contextPath}/resources/admin/vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="${pageContext.request.contextPath}/resources/admin/js/demo/chart-area-demo.js"></script>
  <script src="${pageContext.request.contextPath}/resources/admin/js/demo/chart-pie-demo.js"></script>
  
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
   <script>
        $(document).ready(function () {
            $(".xoa-hh").click(function (e) {
                let link = $(this).attr("href");
                e.preventDefault();

                Swal.fire({
                    title: 'Chắc xóa không ?',
                   // text: "You won't be able to revert this!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Xóa ngay!'
                }).then((result)=>{
                    if (result.value) {
                        Swal.fire(
                            'Deleted!',
                            'success'
                        )
                        window.location.href = link;
                    }
                });
            });
        });
    </script>
</body>
</html>