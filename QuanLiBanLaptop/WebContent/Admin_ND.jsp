<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Quản lí Người dùng</title>
    <link rel="icon" href="images/IMG_Logo_Updated.png">

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
                <a class="navbar-brand" href="Admin">
                    <img title="PLH Store" src="images/IMG_Company_Blur.png" width="auto" height="48px" class="d-inline-block align-top"
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
                        <a class="nav-link" href="Admin">
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
                                <%if(session.getAttribute("username")!=null){out.print(session.getAttribute("username"));}
                                else{out.print("Tài khoản");}%>
                            </button>
                            <div class="dropdown-content dropdown-menu dropdown-menu-right">
                                <a href="Admin_EditPassword" class="dropdown-item">Đổi Mật khẩu</a>
                                <a href="Admin_EditInfo" class="dropdown-item">Đổi Thông tin</a>
                                <div class="dropdown-divider"></div>
                                <a href="Admin_SignOut" class="dropdown-item">Đăng xuất</a>
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
                <a class="nav-link" href="Admin">
                    <i class="fas fa-home"></i>
                    Trang chủ
                </a>
                <div class="dropdown">
                    <!--<a class="nav-link dropbtn" data-toggle="collapse" href="#BanHang" aria-expanded="false" aria-controls="BanHang">Bán hàng</a>-->
                    <a class="nav-link dropbtn dropdown-toggle" data-toggle="" href="Admin_DH" aria-expanded="false" aria-controls="BanHang">
                        <i class="fas fa-shopping-cart"></i>
                        Bán hàng
                    </a>
                    <div class="collapse dropdown-content" id="BanHang">
                        <a style="margin-left: 30px;" class="nav-link" href="Admin_DH">
                            <i class="fas fa-file-invoice-dollar"></i>
                            Đơn hàng
                        </a>
                        <a style="margin-left: 30px;" class="nav-link disabled" href="Admin_CTDH">
                            <i class="fas fa-file-invoice"></i>
                            Chi tiết Đơn hàng
                        </a>
                    </div>
                </div>
                <a class="nav-link" href="Admin_SP">
                    <i class="fas fa-laptop"></i>
                    Sản phẩm
                </a>
                <a class="nav-link" href="Admin_DM">
                    <i class="fas fa-layer-group"></i>
                    Danh mục
                </a>
                <a class="nav-link" href="Admin_KH">
                    <i class="fas fa-users"></i>
                    Khách hàng
                </a>
                <a class="nav-link" href="Admin_NV">
                    <i class="fas fa-user-tie"></i>
                    Nhân viên
                </a>
                <a class="nav-link active bg-primary text-white" href="Admin_ND">
                    <i class="far fa-user"></i>
                    Người dùng
                </a>
            </nav>
        </div>

        <div id="Right">
            <h3 class="d-flex justify-content-between">
                <span>QUẢN LÍ NGƯỜI DÙNG</span>
                <i title="Người dùng" class="far fa-user" style="padding-right: 0;"></i>
            </h3>
            <hr />
			<br />
			
            <div id="Feature">
                <form class="form-inline" autocomplete="on" action="TimKiem" method="get">
                    <div class="input-group mb-2 mr-sm-2">
                        <input autofocus type="search" class="border-success form-control" name="keyword" placeholder="Nhập thông tin ...">
                        <div class="input-group-append">
                            <button class="btn btn-success" type="submit"><i title="Tìm kiếm" class="fas fa-search"></i>TÌM KIẾM</button>
                        </div>
                    </div>

                    <button class="btn btn-outline-success mb-2" type="button" name="btnAdvanced" data-toggle="collapse"
                        data-target="#CollapseAdvanced" aria-expanded="false" aria-controls="CollapseAdvanced"><i title="Thêm nữa" class="fas fa-chevron-circle-down"></i>
                        NÂNG CAO
                    </button>

                    <div class="ml-auto">
                        <button class="ml-auto btn btn-success mb-2" type="button" name="btnReload" onClick="window.location.reload()"><i title="Tải lại" class="fas fa-sync-alt"></i>TẢI LẠI</button>
                        <button class="ml-auto btn btn-success mb-2" type="button" name="btnAdd" data-toggle="modal"
                            data-target="#ModalAdd"><i title="Thêm mới" class="fas fa-plus-circle"></i>THÊM MỚI</button>
                    </div>
                </form>

                <div class="collapse" id="CollapseAdvanced">
                    <div class="card card-body">
                        <label><b>Người dùng</b></label>
                        <div class="custom-control custom-radio">
                            <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input" checked>
                            <label class="custom-control-label" for="customRadio1">Khách hàng</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input">
                            <label class="custom-control-label" for="customRadio2">Nhân viên</label>
                        </div>

                        <br />
                    
                        <label for="exampleFormControlSelect2"><b>Cấp</b></label>
                        <select multiple class="form-control" id="exampleFormControlSelect2">
                            <option selected>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>

                        <br />

                        <button type="button" class="btn btn-success">Tìm kiếm</button>
                    </div>
                </div>
            </div>

            <div id="DataView">
                <div class="table-responsive-md">
                    <table class="table table-striped table-hover border border-primary table-bordered">
                        <caption><i>Tổng số: <b><c:out value="${fn:length(listNguoiDung)}"></c:out></b>/<b><c:out value="${fn:length(listNguoiDung)}"></c:out></b></i></caption>
                        <thead class="thead-dark">
                            <tr>
                                <th>Mã Người dùng</th>
                                <th>Tên Người dùng</th>
                                <th>Mật khẩu</th>
                                <th>Cấp</th>
                                <th>
                                    <i title="Xem Tất cả" class="far fa-eye"></i>
                                </th>
                                <th>
                                    <i title="Xóa Tất cả" class="far fa-trash-alt"></i>
                                </th>
                                <th>
                                    <i title="Sửa Tất cả" class="far fa-edit"></i>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
							<c:forEach var="nguoidung" items="${listNguoiDung}">
								<tr>
									<td><c:out value="${nguoidung.mand}"></c:out></td>
									<td><c:out value="${nguoidung.tennd}"></c:out></td>
									<td><c:out value="${nguoidung.matkhau}"></c:out></td>
									<td><c:out value="${nguoidung.cap}"></c:out></td>
									<td>
										<a href="XemND?mand=<c:out value='${nguoidung.mand}'></c:out>"><i title="Xem thêm" class="fas fa-eye"></i></a>
									</td>
									<td>										
										<a href="XoaND?mand=<c:out value='${nguoidung.mand}'></c:out>"><i
										title="Xóa bỏ" class="fas fa-trash-alt" data-toggle="modal"
										data-target="#ModalDelete"></i></a>
									</td>
									<td>
										<a href="SuaND?mand=<c:out value='${nguoidung.mand}'></c:out>"><i title="Chỉnh sửa"
										class="fas fa-edit" data-toggle="modal"
										data-target="#ModalEdit"></i></a>
									</td>
								</tr>
							</c:forEach>
                        </tbody>
                    </table>
                </div>

                <div class="form-inline">
                    <nav>
                        <ul class="pagination">
                            <li class="page-item" title="Trang đầu">
                                <a class="page-link" href="#">
                                    <span>&laquo;</span>
                                </a>
                            </li>
                            <li class="page-item" title="Trang trước">
                                <a class="page-link" href="#">
                                    <span>&lsaquo;</span>
                                </a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item" title="Trang kế">
                                <a class="page-link" href="#">
                                    <span>&rsaquo;</span>
                                </a>
                            </li>
                            <li class="page-item" title="Trang cuối">
                                <a class="page-link border rounded-right" href="#">
                                    <span>&raquo;</span>
                                </a>
                            </li>

                            <input type="number" step="1" class="ml-sm-2 form-control" name="iptPage" placeholder="Trang: 1/1">
                        </ul>
                    </nav>

                    <div class="form-group form-inline mb-3 ml-auto">
                        <label class="mr-sm-2" for="SelectDisplay">Hiển thị:</label>
                        <select class="form-control" id="SelectDisplay">
                            <option>5</option>
                            <option>10</option>
                            <option selected>20</option>
                            <option>50</option>
                            <option>Tất cả</option>
                        </select>
                    </div>
                </div>
            </div>

            <div id="Explain" class="card">
                <div class="card-body">
                    <i class="fas fa-eye"></i>: Xem thêm
                    <br />
                    <i class="fas fa-trash-alt"></i>: Xóa bỏ
                    <br />
                    <i class="fas fa-edit"></i>: Chỉnh sửa
                </div>
            </div>

            <div class="modal fade" id="ModalAdd">
                <div class="modal-dialog modal-lg modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">THÊM THÔNG TIN</h4>
                            <button title="Đóng lại" type="button" class="close" name="btnCloseAddHeader" data-dismiss="modal">&times;</button>
                        </div>

                        <div class="modal-body">
                            <form id="FormAdd" action="ThemND" method="post" autocomplete="on">
                                <div class="form-group row">
                                    <label for="InputMaND" class="col-sm-3 col-form-label">Mã Người dùng</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="InputMaND" name="mand"
                                            placeholder="Mã Người dùng" disabled>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="InputTenND" class="col-sm-3 col-form-label">Tên Người dùng</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="InputTenND" name="tennd"
                                            placeholder="Tên Người dùng" autofocus>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="InputMatKhau" class="col-sm-3 col-form-label">Mật khẩu</label>
                                    <div class="col-sm-9">
                                        <input type="password" class="form-control" id="InputMatKhau" name="matkhau"
                                            placeholder="Mật khẩu">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="InputCap" class="col-sm-3 col-form-label">Cấp</label>
                                    <div class="col-sm-9">
                                        <!-- <input type="number" class="form-control" id="InputCap" name="cap" value="3"
                                            placeholder="Cấp"> -->
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
                                    </div>
                                </div>
                            </form>
                        </div>

                        <div class="modal-footer">
                            <button form="FormAdd" type="submit" class="btn btn-primary" name="btnSaveAdd"><i title="Lưu lại" class="far fa-save"></i>LƯU LẠI</button>
                            <button type="button" class="btn btn-danger" name="btnCancelAdd" data-dismiss="modal"><i title="Đóng lại"
                                    class="far fa-times-circle"></i>ĐÓNG LẠI</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal fade" id="ModalEdit">
                <div class="modal-dialog modal-lg modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">SỬA THÔNG TIN</h4>
                            <button title="Đóng lại" type="button" class="close" name="btnCloseEditHeader" data-dismiss="modal">&times;</button>
                        </div>

                        <div class="modal-body">
                            <form autocomplete="on">
                                <div class="form-group row">
                                    <label for="InputMaND" class="col-sm-3 col-form-label">Mã Người dùng</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="InputMaND" name="iptMaND"
                                            placeholder="Mã Người dùng" readonly>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="InputTenND" class="col-sm-3 col-form-label">Tên Người dùng</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="InputTenND" name="iptTenND"
                                            placeholder="Tên Người dùng" autofocus>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="InputMatKhau" class="col-sm-3 col-form-label">Mật khẩu</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="InputMatKhau" name="iptMatKhau"
                                            placeholder="Mật khẩu">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="InputCap" class="col-sm-3 col-form-label">Cấp</label>
                                    <div class="col-sm-9">
                                        <input type="number" class="form-control" id="InputCap" name="iptCap" value="3"
                                            placeholder="Cấp">
                                    </div>
                                </div>
                            </form>
                        </div>

                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary" name="btnSaveEdit"><i title="Lưu lại" class="far fa-save"></i>LƯU LẠI</button>
                            <button type="button" class="btn btn-danger" name="btnCancelEdit" data-dismiss="modal"><i title="Đóng lại"
                                    class="far fa-times-circle"></i>ĐÓNG LẠI</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal fade" id="ModalDelete">
                <div class="modal-dialog modal-md modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">XÓA THÔNG TIN</h4>
                            <button title="Đóng lại" type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <div class="modal-body">
                            <p>Chắc không?</p>
                        </div>

                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary" name="btnSaveDelete"><i title="Lưu lại" class="far fa-save"></i>XÓA BỎ</button>
                            <button type="button" class="btn btn-danger" name="btnCancelDelete" data-dismiss="modal"><i title="Đóng lại"
                                    class="far fa-times-circle"></i>HỦY BỎ</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="bg-dark text-white">
        &copy; 2018 PLH Vietnam.
    </footer>

	<c:if test="${nguoidung !=null}">
		<script>
			$("#ModalEdit").modal("show");
		</script>
	</c:if>

	<!--EXECUTE SCRIPTS-->
    <script type="text/javascript">
        //document.getElementById("InputNgayNVAdd").defaultValue = ConvertToDate(new Date());
        //document.getElementById("InputNgayNVEdit").defaultValue = ConvertToDate(new Date());
    </script>
</body>

</html>