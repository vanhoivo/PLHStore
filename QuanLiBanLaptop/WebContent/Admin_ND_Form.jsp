<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Quản lí Người dùng</title>
    <link rel="icon" href="Images/IMG_Logo_Updated.png">

    <!--RESPONSIVE-->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--CDN-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

    <!--OFFLINE
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    -->

    <!--ICONS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
        crossorigin="anonymous">

    <!--CUSTOM-->
    <link rel="stylesheet" type="text/css" href="Styles_Admin.css">
    <script type="text/javascript" src="Scripts_Admin.js"></script>

    <!--INTERNAL JS-->
    <script type="text/javascript">
        /*
        $(document).ready(function () {
                $('a').click(function () {
                    $('a').removeClass("active");
                    $(this).addClass("active");
                });
            });
        */

        //alert('zzz');
    </script>
</head>

<body onload="StartTime()">
    <header>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top" style="min-height: 60px; padding: 0 16px;">
            <div width="15%">
                <a class="navbar-brand" href="Admin.html">
                    <img title="PLH Store" src="Images/IMG_Company_Blur.png" width="auto" height="48px" class="d-inline-block align-top"
                        alt="IMG_Brand">
                </a>
            </div>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#NavbarCollapse"
                aria-controls="NavbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="NavbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Admin.html">
                            <h4 style="margin: auto; padding: 0px 10px">Hệ thống Quản trị PLH Store</h4><span class="sr-only">(current)</span>
                        </a>
                    </li>
                </ul>

                <ul class="navbar-nav ml-auto">
                    <!--CLOCK-->
                    <li class="nav-item" style="width: 250px; display: flex; align-items: center;">
                        <i title="Đồng hồ" class="far fa-clock"></i>
                        <div id="Clock" style="color: white; margin-left: 3px;"></div>
                    </li>

                    <li class="nav-item dropdown" style="width: 150px;">
                        <div class="btn-group">
                            <button style="border: none;" type="button" class="dropbtn bg-dark btn btn-secondary dropdown-toggle"
                                name="btnNotification" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i title="Thông báo" class="far fa-bell"></i>
                                Thông báo
                            </button>
                            <div class="dropdown-content dropdown-menu dropdown-menu-right">
                                <button class="dropdown-item" type="button" name="">zzz</button>
                                <button class="dropdown-item" type="button" name="">xxx</button>
                            </div>
                        </div>
                    </li>

                    <li class="nav-item dropdown" style="width: 150px;">
                        <div class="btn-group">
                            <button style="border: none;" type="button" class="dropbtn bg-dark btn btn-secondary dropdown-toggle"
                                name="btnAccount" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i title="Người dùng" class="far fa-user"></i>
                                Tài khoản
                            </button>
                            <div class="dropdown-content dropdown-menu dropdown-menu-right">
                                <button class="dropdown-item" type="button" name="btnChangePassword">Đổi Mật khẩu</button>
                                <button class="dropdown-item" type="button" name="btnEditInfo">Sửa Thông tin</button>
                                <div class="dropdown-divider"></div>
                                <button class="dropdown-item" type="button" name="btnSignOut">Đăng xuất</button>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <div id="Middle">
        <div id="Left">
            <nav class="nav flex-column">
                <a class="nav-link" href="Admin.html">
                    <i class="fas fa-home"></i>
                    Trang chủ
                </a>
                <div class="dropdown">
                    <!--<a class="nav-link dropbtn" data-toggle="collapse" href="#BanHang" aria-expanded="false" aria-controls="BanHang">Bán hàng</a>-->
                    <a class="nav-link dropbtn dropdown-toggle" data-toggle="" href="#BanHang" aria-expanded="false" aria-controls="BanHang">
                        <i class="fas fa-shopping-cart"></i>
                        Bán hàng
                    </a>
                    <div class="collapse dropdown-content" id="BanHang">
                        <a style="margin-left: 30px;" class="nav-link" href="Admin_DH.html">
                            <i class="fas fa-file-invoice-dollar"></i>
                            Đơn hàng
                        </a>
                        <a style="margin-left: 30px;" class="nav-link" href="Admin_CTDH.html">
                            <i class="fas fa-file-invoice"></i>
                            Chi tiết Đơn hàng
                        </a>
                    </div>
                </div>
                <a class="nav-link" href="Admin_SP.html">
                    <i class="fas fa-laptop"></i>
                    Sản phẩm
                </a>
                <a class="nav-link" href="Admin_KH.html">
                    <i class="fas fa-users"></i>
                    Khách hàng
                </a>
                <a class="nav-link" href="Admin_NV.html">
                    <i class="fas fa-user-tie"></i>
                    Nhân viên
                </a>
                <a class="nav-link" href="Admin_DM.html">
                    <i class="fas fa-layer-group"></i>
                    Danh mục
                </a>
                <a class="nav-link" href="Admin_NCC.html">
                    <i class="fas fa-industry"></i>
                    Nhà cung cấp
                </a>
                <a class="nav-link active bg-primary text-white" href="Admin_ND.html">
                    <i class="far fa-user"></i>
                    Người dùng
                </a>
            </nav>
        </div>

        <div id="Right">
            <h3 class="d-flex justify-content-between">
                <span>
                	<c:if test="${nguoidung!=null}">CHỈNH SỬA NGƯỜI DÙNG</c:if>
                	<c:if test="${nguoidung==null}">THÊM MỚI NGƯỜI DÙNG</c:if>
                </span>
                <i title="Người dùng" class="far fa-user" style="padding-right: 0;"></i>
            </h3>
            <hr />

			<form id="FormAdd" action="CapNhatND" method="post" autocomplete="on">
				<div class="form-group row">
					<label for="InputMaND" class="col-sm-3 col-form-label">Mã
						Người dùng</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="InputMaND" name="mand" value="${nguoidung.mand}"
							placeholder="Mã Người dùng" readonly>
					</div>
				</div>

				<div class="form-group row">
					<label for="InputTenND" class="col-sm-3 col-form-label">Tên
						Người dùng</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="InputTenND"
							name="tennd" value="${nguoidung.tennd}" placeholder="Tên Người dùng" autofocus>
					</div>
				</div>

				<div class="form-group row">
					<label for="InputMatKhau" class="col-sm-3 col-form-label">Mật
						khẩu</label>
					<div class="col-sm-9">
						<input type="password" class="form-control" id="InputMatKhau"
							name="matkhau" value="${nguoidung.matkhau}" placeholder="Mật khẩu">
					</div>
				</div>

				<div class="form-group row">
					<label for="InputCap" class="col-sm-3 col-form-label">Cấp</label>
					<div class="col-sm-9">
						<select class="form-control" id="InputCap" name="cap">
							<optgroup label="Admin">
								<option value="1">1</option>
								<option value="2">2</option>
							</optgroup>
							<optgroup label="Nhân viên">
								<option value="3">3</option>
								<option value="4">4</option>
							</optgroup>
							<option value="5">5</option>
						</select>
						
						<script>$("#InputCap").val("${nguoidung.cap}");</script>
					</div>
				</div>

				<button form="FormAdd" type="submit" class="btn btn-primary" name="btnSaveAdd">
					<i title="Lưu lại" class="far fa-save"></i> Lưu lại
				</button>
				<a href="Admin" class="btn btn-danger" name="btnCancelAdd">
					<i title="Đóng lại" class="far fa-times-circle"></i> Trở về
				</a>
			</form>

        </div>
    </div>

    <footer class="bg-dark text-white">
        &copy; 2018 PLH Vietnam.
    </footer>

    <!--EXECUTE SCRIPTS-->
    <script type="text/javascript">
        //document.getElementById("InputNgayNVAdd").defaultValue = ConvertToDate(new Date());
        //document.getElementById("InputNgayNVEdit").defaultValue = ConvertToDate(new Date());
    </script>
</body>

</html>