<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Trang chủ</title>
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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
        integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

    <!--CHARTS-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.9.0/feather.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>

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
                    <img title="PLH Store" src="images/IMG_Company_Blur.png" width="auto" height="48px"
                        class="d-inline-block align-top" alt="IMG_Brand">
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
                            <h4 style="margin: auto; padding: 0px 10px">Hệ thống Quản trị PLH Store</h4><span
                                class="sr-only">(current)</span>
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
                            <button style="border: none;" type="button"
                                class="dropbtn bg-dark btn btn-secondary dropdown-toggle" name="btnNotification"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i title="Thông báo" class="far fa-bell"></i>
                                Thông báo
                            </button>
                            <div class="dropdown-content dropdown-menu dropdown-menu-right">
                                <button class="dropdown-item" type="button" name="">zzz</button>
                                <div class="dropdown-divider"></div>
                                <button class="dropdown-item" type="button" name="">xxx</button>
                            </div>
                        </div>
                    </li>

                    <li class="nav-item dropdown" style="width: 150px;">
                        <div class="btn-group">
                            <button style="border: none;" type="button"
                                class="dropbtn bg-dark btn btn-secondary dropdown-toggle" name="btnAccount"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i title="Người dùng" class="far fa-user"></i>
                                Tài khoản
                            </button>
                            <div class="dropdown-content dropdown-menu dropdown-menu-right">
                                <button class="dropdown-item" type="button" name="btnChangePassword">Đổi Mật
                                    khẩu</button>
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
                <a class="nav-link active bg-primary text-white" href="Admin">
                    <i class="fas fa-home"></i>
                    Trang chủ
                </a>
                <div class="dropdown">
                    <!--<a class="nav-link dropbtn" data-toggle="collapse" href="#BanHang" aria-expanded="false" aria-controls="BanHang">Bán hàng</a>-->
                    <a class="nav-link dropbtn dropdown-toggle" data-toggle="" href="Admin_DH" aria-expanded="false"
                        aria-controls="BanHang">
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
                <a class="nav-link" href="Admin_ND">
                    <i class="far fa-user"></i>
                    Người dùng
                </a>
            </nav>
        </div>

        <div id="Right">
            <h3 class="d-flex justify-content-between">
                <span>THỐNG KÊ BÁN HÀNG</span>
                <i title="Thống kê" class="fas fa-file-alt" style="padding-right: 0;"></i>
            </h3>
            <hr />
            
            <div class="row">
            	<div class="col-8">
            		<!--CHART-->
            		<canvas class="my-4 w-100" id="myChart" width="800px;" height="400px;" style="color: black;"></canvas>
            	</div>
            	<div class="col-4">
            		<div id="piechart"></div>
            	</div>
            </div>

            <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

            <script type="text/javascript">
                // Load google charts
                google.charts.load('current', { 'packages': ['corechart'] });
                google.charts.setOnLoadCallback(drawChart);

                // Draw the chart and set the chart values
                function drawChart() {
                    var data = google.visualization.arrayToDataTable([
                        ['Thứ', 'Doanh thu'],
                        ['Thứ 2', 1000],
                        ['Thứ 3', 3500],
                        ['Thứ 4', 2500],
                        ['Thứ 5', 5000],
                        ['Thứ 6', 0],
                        ['Thứ 7', 7500],
                        ['Thứ 8', 9100]
                    ]);

                    // Optional; add a title and set the width and height of the chart
                    var options = { 'title': 'DOANH THU THEO THỨ', 'width': 550, 'height': 400};

                    // Display the chart inside the <div> element with id="piechart"
                    var chart = new google.visualization.PieChart(document.getElementById('piechart'));
                    chart.draw(data, options);
                }
            </script>
            
            <br />

            <div class="row placeholders">
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=="
                        width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>DOANH THU</h4>
                    <span class="text-muted">Số doanh thu đạt được</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=="
                        width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>NHÂN VIÊN</h4>
                    <span class="text-muted">Số nhân hiên làm việc</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=="
                        width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>SẢN PHẨM</h4>
                    <span class="text-muted">Số sản phẩm bán ra</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=="
                        width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>KHÁCH HÀNG</h4>
                    <span class="text-muted">Số khách hàng hiện tại</span>
                </div>
            </div>
        </div>
    </div>

    <footer class="bg-dark text-white">
        &copy; 2018 PLH Vietnam.
    </footer>

    <!--EXECUTE SCRIPTS-->
    <script type="text/javascript">
        CreateChart();
    </script>
</body>

</html>