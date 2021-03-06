<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<title>Asus</title>
<style type="text/css">
.product_item {
	padding-left: 0px;
	padding-right: 0px;
}

.items {
	display: flex;
	justify-content: center;
	align-items: center;
	border: solid 1px #DDDDDD;
	height: 100px;
	padding-left: 0px;
}

.thumbnail:hover {
	border: 3px solid #0082c8;
}

.navbar {
	border-radius: 0;
}
</style>
</head>
<header>
	<div class="container">
		<div class="row">
			<div class="navbar-header col-lg-4" style="padding-left: 0px">
				<a class="navbar-brand" href="index.jsp">PLH STORE</a>
			</div>
			<div class="col-lg-4">
				<form class="navbar-form " action="/action_page.php">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">Search</button>
				</form>
			</div>
			<c:if test="${login == null }" >
			<div class="col-lg-4">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="Cart.jsp"><span
							class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
					<li><a href="SignUp.jsp"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="SignIn.jsp"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
			</div>
			</c:if>
			<c:if test="${login == true }" >
				<div class="col-lg-4">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="Cart.jsp"><span
							class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
					<li><a data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user" ></span> ${TenDangNhap } </a>  
							    <ul class="dropdown-menu">
      								<li><a href="GetKHClient">Thông tin tài khoản</a></li>
      								<li><a href="index_logged_changepass.jsp">Đổi mật khẩu</a></li>
      								<li class="divider"></li>
							      	<li><a href="LogoutTK">Đăng xuất</a></li>
							    </ul></li>
				</ul>
			</div>
			</c:if>
		</div>
	</div>
</header>
<body>
	<nav class="navbar navbar-default navbar-inverse" role="navigation">
		<div class="container" style="padding-left: 0px">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse"
				style="padding-left: 0px">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index">TRANG CHỦ</a></li>
					<li><a href="gioithieu.jsp">GIỚI THIỆU</a></li>
					<li><a href="lienhe.jsp">LIÊN HỆ</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
	</nav>
	<!--end menu-->
	<div class="container">
		<div class="row">
			<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"
				style="margin-top: 10px; padding-left: 0px">
				<div style="height: 300px">
					<img style="width: 100%; height: 100%" src="images/posterdell.jpg">
				</div>
				<div
					style="border: 3px solid #99ccff; border-radius: 10px; margin-top: 10px;">
					<form>
						<ul>
							<h4>Giá</h4>
							<li style="list-style: none">
								<div class="radio">
									<label><input type="radio" name="<5000000"><5000000</label>
								</div>
							</li>
							<li style="list-style: none">
								<div class="radio">
									<label><input type="radio" name="5000000-10000000">5000000-10000000</label>
								</div>
							</li>
							<li style="list-style: none">
								<div class="radio">
									<label><input type="radio" name="10000000-15000000">10000000-15000000</label>
								</div>
							</li>
							<li style="list-style: none">
								<div class="radio">
									<label><input type="radio" name=">15000000">>15000000</label>
								</div>
							</li>
						</ul>
					</form>
				</div>
				<div
					style="border: 3px solid #99ccff; border-radius: 10px; margin-top: 10px;">
					<ul>
						<h4>Ram</h4>
						<li style="list-style: none">
							<div class="radio">
								<label><input type="radio" name="4GB">4GB</label>
							</div>
						</li>
						<li style="list-style: none">
							<div class="radio">
								<label><input type="radio" name="8GB">8GB</label>
							</div>
						</li>
						<li style="list-style: none">
							<div class="radio">
								<label><input type="radio" name="16GB">16GB</label>
							</div>
						</li>
						<li style="list-style: none">
							<div class="radio">
								<label><input type="radio" name="4GB">DDR3</label>
							</div>
						</li>
						<li style="list-style: none">
							<div class="radio">
								<label><input type="radio" name="DDR4">DDR4</label>
							</div>
						</li>
					</ul>
				</div>
				<div
					style="border: 3px solid #99ccff; border-radius: 10px; margin-top: 10px">
					<ul>
						<h4>CPU</h4>
						<li style="list-style: none">
							<div class="radio">
								<label><input type="radio" name="Intel Pentium">Intel
									Pentium</label>
							</div>
						</li>
						<li style="list-style: none">
							<div class="radio">
								<label><input type="radio" name="Intel core i3">Core
									i3</label>
							</div>
						</li>
						<li style="list-style: none">
							<div class="radio">
								<label><input type="radio" name="Intel core i5">Core
									i5</label>
							</div>
						</li>
						<li style="list-style: none">
							<div class="radio">
								<label><input type="radio" name="Intel core i7">Core
									i7</label>
							</div>
						</li>
						<li style="list-style: none">
							<div class="radio">
								<label><input type="radio" name="Intel core i9">Core
									i9</label>
							</div>
						</li>
					</ul>
				</div>
				<div
					style="border: 3px solid #99ccff; border-radius: 10px; margin-top: 10px">
					<ul>
						<h4>Dung lượng ổ cứng</h4>
						<li style="list-style: none">
							<div class="radio">
								<label><input type="radio" name="120GB">120GB</label>
							</div>
						</li>
						<li style="list-style: none">
							<div class="radio">
								<label><input type="radio" name="240GB">240GB</label>
							</div>
						</li>
						<li style="list-style: none">
							<div class="radio">
								<label><input type="radio" name="256GB">256GB</label>
							</div>
						</li>
						<li style="list-style: none">
							<div class="radio">
								<label><input type="radio" name="500GB">500GB</label>
							</div>
						</li>
						<li style="list-style: none">
							<div class="radio">
								<label><input type="radio" name="512GB">512GB</label>
							</div>
						</li>
						<li style="list-style: none">
							<div class="radio">
								<label><input type="radio" name="1TB">1TB</label>
							</div>
						</li>
					</ul>
				</div>
			</div>

			<div class="col-lg-9">
				<h3 style="margin-top: 10px; margin-left: 0px"><b>${listSanPham.size()}</b> kết quả cho từ khóa <b>${tukhoa}</b></h3>
				<hr style="margin-top: 0px">
				<div class="row">
				<c:forEach var="sp" items="${listSanPham }">
				<a href="LoadChiTietSP?masp=${sp.masp}">
					<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 product_item" id="sp">
						<div class="thumbnail">
							<img src="${sp.hinh}" alt="">
							<div class="caption text-center">
								<h3>${sp.tensp}</h3>
								<p>${sp.dongia}</p>
								<p>
									<a href="addGioHang?masp=${sp.masp}" class="btn btn-primary">Chọn mua</a> <a
										href="LoadChiTietSP?masp=${sp.masp}" class="btn btn-default">Chi tiết</a>
								</p>
							</div>
						</div>
					</div>
					</a>
				</c:forEach>
				</div>
							<c:if test="${listSanPham.size() == 0 }">
			<h2>Không có kết quả nào cho từ khóa ${tukhoa}!!! Hãy thử lại.</h2>
			</c:if>

				</div>
			</div>
		</div>
	</div>
	</div>

</body>
<footer class="page-footer ">

	<!-- Copyright -->
	<div class="footer-copyright container"
		style="color: #6c757d; margin-top: 5px;">
		<div class="row" style="background-color: #212529;">
			<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6"
				style="padding-top: 5px;">
				PLH Store<br> Số 1, Võ Văn Ngân, Linh Chiểu, Thủ Đức, TP Hồ Chí
				Minh<br> Điện thoại:0767 767 767<br> Email:plh@gmail.com<br>
				<p>Copyright © (2018) PLH Store</p>
			</div>
			<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
				<nav class="navbar" role="navigation">
					<ul class="nav navbar-nav" style="float: right;">
						<li><a href="gioithieu.jsp">Giới thiệu</a></li>
						<li style="padding-top: 15px">|</li>
						<li><a href="lienhe.jsp">Liên hệ</a></li>
					</ul>
				</nav>

			</div>

		</div>
	</div>
	<!-- Copyright -->

</footer>
</html>