<?php
    require_once "mvc/utility/utility.php";
    if(isset($data["render"])){
        if($data["render"]=="quanlytaikhoan")
            $user = getUserToken(1);
        else $user = getUserToken();
    }
    else $user = getUserToken();
    if($user != null) {
        $fullname = $user["fullname"];
    }
    $cart = [];
    if(isset($_COOKIE['cart'])) {
        $json = $_COOKIE['cart'];
        $cart = json_decode($json, true);
    }
    $count = 0;
    foreach ($cart as $item) {
        $count += $item['num'];
    }
?>

<!doctype html>
<html class="no-js" lang="zxx">
    
<!-- index28:48-->
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>PhoneStore</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="http://localhost/Laptrinhweb/public/images/favicon.png">
        <!-- Main Style CSS -->
        <link rel="stylesheet" href="http://localhost/Laptrinhweb/public/css/style.css">
        <!-- Modernizr js -->
        <link href="http://localhost/Laptrinhweb/public/fontawesome-free-5.15.4-web/css/all.min.css" rel="stylesheet"> <!--load all styles -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
                integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    </head>
    <style>
        #alertSuccess{
            position: fixed;
            z-index: 999;
            right: 45px;
            font-weight: 500;
            border-radius: 2px;
        }
    </style>
    <body>
            <!-- Begin Header -->
            <nav id="navColor" class=" navbar fixed-top navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="http://localhost/Laptrinhweb/Home"><img src="http://localhost/Laptrinhweb/public/logophonestore.svg" alt="G.I.Joe"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item <?php if($data["render"]!="tintuc" && $data["render"]!="gioithieu" && $data["render"]!="contact") echo "active"; ?>">
                            <a class="nav-link" href="http://localhost/Laptrinhweb/Home">Trang chủ <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="http://localhost/Laptrinhweb/Home/productList" id="navbarDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Sản phẩm
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="http://localhost/Laptrinhweb/Home/productList/0">Tất cả</a>
                            <?php
                                $countCategory = count($data["allCategory"]);
                                    for($i=0;$i<$countCategory;$i++){
                                        echo   '<a class="dropdown-item" href="http://localhost/Laptrinhweb/Home/productList/'.$data["allCategory"][$i]["id"].'">'.$data["allCategory"][$i]["name"].'</a>';
                                    }
                                        
                            ?>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link <?php if($data["render"]=="tintuc") echo "active"; ?>" href="http://localhost/Laptrinhweb/Home/tintuc">Tin tức</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link <?php if($data["render"]=="gioithieu") echo "active"; ?>" href="http://localhost/Laptrinhweb/Home/gioithieu">Giới thiệu</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link <?php if($data["render"]=="contact") echo "active"; ?>" href="http://localhost/Laptrinhweb/Home/contact">Liên hệ</a>
                        </li>
                    </ul>
                    <form class="form-inline my-2 my-lg-0" method="POST" action="http://localhost/Laptrinhweb/Home/search_buttuon">
                        <input class="form-control mr-sm-2" type="search" id="search_name" name="search_name" placeholder="Search..." aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Tìm kiếm</button>
                    </form>
                </div>
                <div style="margin-right: 20px;" class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <?php
                        if(isset($fullname))
                            echo $fullname;
                        else echo '<i style="font-size: 27px;color:black" class="far fa-user"></i>';
                    ?>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <?php
                        if(!isset($fullname)){
                            echo '<a class="dropdown-item" href="http://localhost/Laptrinhweb/Login">Đăng nhập</a>';
                            echo '<a class="dropdown-item" href="http://localhost/Laptrinhweb/Register">Đăng ký</a>';
                        }
                        else{
                            if($user["role_id"] == 2) echo '<a class="dropdown-item" href="http://localhost/Laptrinhweb/Admin">Quản lý trang web</a>';
                            echo '<a class="dropdown-item" href="http://localhost/Laptrinhweb/Home/quanlytaikhoan">Quản lý tài khoản</a>';
                            echo '<a class="dropdown-item" href="http://localhost/Laptrinhweb/Home/quanlydonhang/'.$user["id"].'">Quản lý đơn hàng</a>';
                            echo '<a class="dropdown-item" href="http://localhost/Laptrinhweb/Login/UserLogout">Đăng xuất</a>';
                        } 
                            
                    ?>
                        
                    </div>
                </div>
                <div class="shopping_cart">
                    <a style="font-size: 30px;color:black" href="http://localhost/Laptrinhweb/Home/card"><i class="shopping_cart fas fa-shopping-cart"></i></a>
                    <span class="mount_product"><?=$count?></span>
                </div>
                
            </nav>
            <ul style="border-radius: 7px;width: 20%;position: fixed;z-index: 9999;background-color: #d2d3d4;right: 435px;top: 49px;" class="list-group" id="output_search">
			</ul>
            <!-- End Header -->
            <p id="alertSuccess"></p>
            <script type="text/javascript">
	$(document).ready(function(){
		var action = "search";
		$("#search_name").keyup(function(){
			var search_name = $("#search_name").val();
			if ($("#search_name").val() != '') {
                $.ajax({
                    url:"http://localhost/Laptrinhweb/Home/search",
                    method:"POST",
                    data:{action:action,search_name:search_name},
                    success:function(data){
                        $("#output_search").html(data);
                    }
                });
			}
            else $("#output_search").html("");
		});
        $(window).click(function() {
        //Hide the menus if visible
            $("#output_search").html("");
        });
	});
</script>
           
   
