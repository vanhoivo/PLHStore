<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="">

<head>
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Đăng nhập Nội bộ</title>
    <link rel="icon" href="Images/IMG_Logo_Updated.png">

    <!--RESPONSIVE-->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--CDN-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <!--VALIDATE JQUERY-->
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.min.js"></script>
    <!--CHART-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.9.0/feather.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>

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
    <link rel="stylesheet" type="text/css" href="Styles_SignIn_Admin.css">
    <script type="text/javascript" src="Scripts_SignIn_Admin.js"></script>

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

<body class="text-center" style="background-color: #123;">
    <form id="formSignIn" method="post" action="SignIn_Admin" onsubmit="" class="form-signin rounded" style="background-color: #f5f5f5;" autocomplete="on">
        <a href=""><img class="mb-4" src="Images/IMG_Company_Blur.png" alt="IMG_Branch" width="50%" height="auto" title="PLH Store"></a>
        <h1 class="h3 mb-3 font-weight-normal" style="color: #CC0000;">Đăng nhập Nội bộ</h1>
        
        <!--
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><i class="fas fa-user"></i></span>
            </div>
            <input type="text" id="inputUsername" name="iptUsername" class="form-control" placeholder="Tên Người dùng" aria-label="Tên Người dùng" aria-describedby="basic-addon1" required>
        </div>

        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon2"><i class="fas fa-unlock-alt"></i></span>
            </div>
            <input type="password" id="inputPassword" name="iptPassword" class="form-control" placeholder="Mật khẩu" aria-label="Mật khẩu" aria-describedby="basic-addon2" required>
        </div>
        -->

        <label for="iptUsername" class="sr-only">Tên Người dùng</label>
        <input type="text" id="iptUsername" name="Username" class="form-control" placeholder="Tên Người dùng" required
            autofocus>
        
        <label for="iptPassword" class="sr-only">Mật khẩu</label>
        <input type="password" id="iptPassword" name="Password" class="form-control" placeholder="Mật khẩu"
            required>
    
        <div class="row">
            <div class="col">
                <a href="#">Quên Mật khẩu</a>
            </div>
            <div class="col">
                <input type="checkbox" value="remember-me" checked> Ghi nhớ
            </div>
        </div>
    
        <br />
        <button class="btn btn-lg btn-primary btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Đăng nhập</button>
        
        <br />
        
        <% if("1".equals(request.getParameter("err"))){out.print("<span style=\"color: red;\">Tên người dùng hoặc mật khẩu sai! Hãy thử lại.</span>");} %>
		
        <p class="mt-5 mb-3 text-muted">
        	<hr />
        	&copy; 2018 PLH Vietnam.
        </p>
    </form>
</body>

</html>