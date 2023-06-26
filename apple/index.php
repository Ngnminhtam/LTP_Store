<?php
ob_start();
session_start();
include_once './cauhinh/ketnoi.php';
if (!isset($_SESSION['email']) || ($_SESSION['email'] != 'admin' && $_SESSION['pass'] != 'admin')) {
?>
    <html>

    <head>
        <title>LTP APPLE</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" type="text/css" href="css/bootstrap .css" />
        <script src="js/jquery-3.1.1.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <link rel="stylesheet" href="css/stylemain.css">
        <?php
        if (isset($_GET['page_layout'])) {
            switch ($_GET['page_layout']) {
                case 'danhsachtimkiem':
                    echo '<link rel="stylesheet" href="css/danhsachtimkiem_e.css">';
                    break;
                case 'danhsachsp':
                    echo '<link rel="stylesheet" href="css/danhsachsp_e.css">';
                    break;
                case 'chitietsp':
                    echo '<link rel="stylesheet" href="css/chitietsp_e.css">';
                    break;
                case 'giohang':
                    echo '<link rel="stylesheet" href="css/giohang .css">';
                    break;
                case 'muahang':
                    echo '<link rel="stylesheet" href="css/muahang .css">';
                    break;
                case 'hoanthanh':
                    echo '<link rel="stylesheet" href="css/hoanthanh.css">';
                    break;
            }
        }

        ?>
    </head>

    <body>
        <div class="container">
            <!-- Header -->
            <div id="header">
                <div class="row">
                    <!-- search -->
                    <?php
                    include_once './chucnang/timkiem/timkiem.php';
                    ?>
                    <!-- end search -->
                    <?php
                    include_once './chucnang/login/login.php';
                    ?>
                    <!-- y-cart -->
                    <?php
                    include_once './chucnang/giohang/giohangcuaban.php';
                    ?>
                    <!-- end y-cart -->
                </div>
            </div>
            <!-- End Header -->

            <!-- Banner  -->
            <div id="banner">
                <div class="row">
                    <div id="logo" class="col-md-4 col-sm-12 col-xs-12">
                        <h1>
                            <a href="index.php">
                                <img width="100%px" src="images/apple.png">
                            </a>
                        </h1>
                    </div>
                    <!-- <div id="ship" class="col-md-8 col-sm-12 col-xs-12">
                        <img src="images/banner.png">
                    </div>             -->
                </div>
            </div>
            <!-- End Banner -->

            <!-- Body -->
            <div id="body">
                <div class="row">
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <?php
                        include_once './chucnang/sanpham/danhmucsp.php';
                        // include_once './chucnang/quangcao/quangcao.php';
                        include_once './chucnang/thongke/thongke.php';
                        ?>
                    </div>
                    <div class="col-md-9 col-sm-12 col-xs-12">

                        <div id="main">
                            <?php
                            if (isset($_GET['page_layout'])) {
                                switch ($_GET['page_layout']) {
                                    case 'danhsachtimkiem':
                                        include_once './chucnang/timkiem/danhsachtimkiem.php';
                                        break;
                                    case 'danhsachsp':
                                        include_once './chucnang/sanpham/danhsachsp.php';
                                        break;
                                    case 'chitietsp':
                                        include_once './chucnang/sanpham/chitietsp.php';
                                        break;
                                    case 'giohang':
                                        include_once './chucnang/giohang/giohang.php';
                                        break;
                                    case 'muahang':
                                        include_once './chucnang/giohang/muahang.php';
                                        break;
                                    case 'hoanthanh':
                                        include_once './chucnang/giohang/hoanthanh.php';
                                        break;
                                }
                            } else {
                                include_once './chucnang/slideshow/slideshow.php';
                                include_once './chucnang/sanpham/sanpham.php';
                            }

                            ?>
                        </div>


                    </div>
                </div>
            </div>
            <!-- End Body -->
            <!-- Footer -->
            <div id="footer">
                <div class="row">
                    <div id="footer-main" class="col-md-12 col-sm-12 col-xs-12">
                        <h4> LTP đại lý ủy quyền của Apple</h4>
                        <<p><span>© 2016 Công ty Cổ Phần HESMAN Việt Nam GPDKKD: 0107465657 do Sở KH &amp; ĐT TP. Hà Nội cấp ngày 08/06/2016. 
                        <br>Địa chỉ: Số 76 Thái Hà, phường Trung Liệt, quận Đống Đa, thành phố Hà Nội, Việt Nam
                        <br>Đại diện pháp luật: PHẠM MẠNH HÒA | ĐT: 086.764.1204 | Email: ngnmihtm@gmail.com</span></p>
                    </div>
                </div>
            </div>
            <!-- End Footer -->
        </div>
    </body>

    </html>
<?php
} else {
    header('location: ./quantri/quantri.php');
}
?>