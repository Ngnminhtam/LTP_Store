-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 27, 2022 at 04:40 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apple`
--

-- --------------------------------------------------------

--
-- Table structure for table `blsanpham`
--

CREATE TABLE `blsanpham` (
  `id_bl` int(10) NOT NULL,
  `id_sp` int(10) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `binh_luan` text COLLATE utf8_unicode_ci NOT NULL,
  `ngay_gio` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blsanpham`
--

INSERT INTO `blsanpham` (`id_bl`, `id_sp`, `ten`, `dien_thoai`, `binh_luan`, `ngay_gio`) VALUES
(24, 32, 'Tâm', '113', 'Mắc quá', '2022-05-25 22:14:31'),
(25, 34, 'Tâm', '0867641204', 'Đợi có tiền mua', '2022-05-25 22:42:13'),
(26, 35, 'Tâm', '0867641204', 'Đợi có tiền rồi mua', '2022-05-25 22:56:16'),
(27, 36, 'Tâm', '0867641204', 'Đợi nào có tiền rồi mua', '2022-05-25 23:26:06');

-- --------------------------------------------------------

--
-- Table structure for table `dmsanpham`
--

CREATE TABLE `dmsanpham` (
  `id_dm` int(10) NOT NULL,
  `ten_dm` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dmsanpham`
--

INSERT INTO `dmsanpham` (`id_dm`, `ten_dm`) VALUES
(1, 'iPhone'),
(16, 'Mac'),
(17, 'iPad'),
(18, 'Apple Watch'),
(19, 'Âm thanh'),
(20, 'Phụ kiện');

-- --------------------------------------------------------

--
-- Table structure for table `quangcao`
--

CREATE TABLE `quangcao` (
  `id_quangcao` int(11) NOT NULL,
  `id_thue` int(11) NOT NULL,
  `ten_anh` text COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `quangcao`
--

INSERT INTO `quangcao` (`id_quangcao`, `id_thue`, `ten_anh`) VALUES
(8, 1, 'cellphone'),
(9, 2, 'aukey'),
(10, 3, 'anker');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sp` int(11) UNSIGNED NOT NULL,
  `id_dm` int(11) UNSIGNED NOT NULL,
  `ten_sp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `anh_sp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gia_sp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bao_hanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phu_kien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tinh_trang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `khuyen_mai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dac_biet` int(1) NOT NULL,
  `chi_tiet_sp` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id_sp`, `id_dm`, `ten_sp`, `anh_sp`, `gia_sp`, `bao_hanh`, `phu_kien`, `tinh_trang`, `khuyen_mai`, `trang_thai`, `dac_biet`, `chi_tiet_sp`) VALUES
(32, 16, 'Mac mini M1', 'mac mini.jpg', '17450000', '12 Tháng', 'Hộp, sách hướng dẫn, sạc, cáp.', 'Mới 100%', 'Không', 'Còn hàng', 0, ''),
(33, 16, 'MacBook Pro 16 inch M1 Max 2021 32-core GPU', 'macbook-pro-16-inch-m1-max-2021-32-core-gpu-xam-650x650.png', '110190000', '12 Tháng', 'Sạc Laptop Apple, Sách hướng dẫn, Thùng máy, Cáp ( Type C - Sạc Magsafe )', 'Mới 100%', 'Mua kèm Office Home & Student tặng quà 200,000đ', 'Còn hàng', 1, '<h3><strong>Nội dung về t&iacute;nh năng</strong></h3>\r\n\r\n<p><a href=\"https://www.topzone.vn/macbook-pro\" target=\"_blank\" title=\"Các sản phẩm Macbook Pro hiện đang kinh doanh tại Topzone.vn\">MacBook Pro</a>&nbsp;mới mang đến hiệu năng cao ấn tượng cho người d&ugrave;ng pro. Lựa chọn M1 Pro mạnh mẽ hay M1 Max c&ograve;n mạnh hơn thế để tăng tốc xử l&yacute; c&aacute;c luồng c&ocirc;ng việc đẳng cấp pro c&ugrave;ng thời lượng pin đ&aacute;ng kinh ngạc.<sup>1</sup>&nbsp;Với m&agrave;n h&igrave;nh Liquid Retina XDR 16 inch sống động v&agrave; nhiều cổng kết nối chuy&ecirc;n nghiệp, bạn c&oacute; thể l&agrave;m được nhiều việc hơn bao giờ hết với&nbsp;<a href=\"https://www.topzone.vn/mac\" target=\"_blank\" title=\"Các sản phẩm MacBook hiện đang kinh doanh tại Topzone.vn\">MacBook</a>&nbsp;Pro.<sup>2</sup></p>\r\n\r\n<h3><strong>T&iacute;nh năng nổi bật</strong></h3>\r\n\r\n<p>&bull;&nbsp;Chip M1 Max hoặc M1 Pro do Apple thiết kế tạo ra một c&uacute; nhảy vọt về hiệu năng m&aacute;y học, CPU v&agrave; GPU</p>\r\n\r\n<p>&bull;&nbsp;CPU l&ecirc;n đến 10 l&otilde;i cho hiệu năng nhanh hơn đến 2x, xử l&yacute; c&aacute;c luồng c&ocirc;ng việc chuy&ecirc;n nghiệp nhanh hơn bao giờ hết<sup>3</sup></p>\r\n\r\n<p>&bull;&nbsp;GPU l&ecirc;n đến 32 l&otilde;i với tốc độ xử l&yacute; đồ họa nhanh hơn đến 4x cho c&aacute;c ứng dụng v&agrave; game c&oacute; đồ họa khủng<sup>3</sup></p>\r\n\r\n<p>&bull;&nbsp;Neural Engine 16 l&otilde;i cho hiệu năng m&aacute;y học nhanh hơn đến 5x<sup>3</sup></p>\r\n\r\n<p>&bull;&nbsp;Thời lượng pin l&acirc;u hơn, l&ecirc;n đến 21 giờ<sup>1</sup></p>\r\n\r\n<p>&bull;&nbsp;Bộ nhớ thống nhất l&ecirc;n đến 64GB gi&uacute;p bạn l&agrave;m việc g&igrave; cũng nhanh ch&oacute;ng v&agrave; tr&ocirc;i chảy</p>\r\n\r\n<p>&bull;&nbsp;Ổ lưu trữ SSD si&ecirc;u nhanh l&ecirc;n đến 8TB gi&uacute;p mở c&aacute;c ứng dụng v&agrave; tập tin chỉ trong t&iacute;ch tắc</p>\r\n\r\n<p>&bull;&nbsp;M&agrave;n h&igrave;nh Liquid Retina XDR 16 inch sắc n&eacute;t với Extreme Dynamic Range v&agrave; tỷ lệ tương phản cực cao<sup>2</sup></p>\r\n\r\n<p>&bull;&nbsp;Camera FaceTime HD 1080p với bộ xử l&yacute; t&iacute;n hiệu h&igrave;nh ảnh ti&ecirc;n tiến cho c&aacute;c cuộc gọi video sắc n&eacute;t hơn</p>\r\n\r\n<p>&bull;&nbsp;Hệ thống &acirc;m thanh 6 loa với loa trầm khử lực</p>\r\n\r\n<p>&bull;&nbsp;Ba micro phối hợp chuẩn studio thu giọng n&oacute;i của bạn r&otilde; hơn</p>\r\n\r\n<p>&bull;&nbsp;Ba cổng Thunderbolt 4, cổng HDMI, khe thẻ nhớ SDXC, jack cắm tai nghe, cổng MagSafe 3</p>\r\n\r\n<p>&bull;&nbsp;Wi-Fi 6 thế hệ mới gi&uacute;p kết nối nhanh hơn</p>\r\n\r\n<p>&bull;&nbsp;B&agrave;n ph&iacute;m&nbsp;<a href=\"https://www.topzone.vn/phim-but/phim-magic-touch-id-numeric-keypad-apple-mk2c3\" target=\"_blank\" title=\"Magic Keyboard với Touch ID hiện đang kinh doanh tại Topzone.vn\">Magic Keyboard c&oacute; đ&egrave;n nền v&agrave; Touch ID</a>&nbsp;gi&uacute;p mở kh&oacute;a v&agrave; thanh to&aacute;n an to&agrave;n hơn macOS Monterey cho ph&eacute;p bạn kết nối, chia sẻ v&agrave; s&aacute;ng tạo hơn bao giờ hết, với c&aacute;c bản cập nhật FaceTime mới đầy th&uacute; vị v&agrave; Safari đ&atilde; được thiết kế lại</p>\r\n\r\n<p>&bull;&nbsp;Hiện c&oacute; m&agrave;u x&aacute;m bạc v&agrave; bạc</p>\r\n'),
(34, 1, 'iPhone 13 Pro Max Alpine Green 128GB', 'iPhone_13_Pro_Max_Alpine_Green_PDP_Position-1A_Alpine_Green_Color__VN.jpeg', '29690000', '12 Tháng', 'Hộp, sách hướng dẫn, cáp', 'Mới 100%', 'Tặng Voucher 1.000.000đ thu cũ đổi mới', 'Còn hàng', 1, '<h2>Đ&aacute;nh gi&aacute; chi tiết&nbsp;iPhone 13 Pro Max</h2>\r\n\r\n<p><strong>iPhone 13 Pro Max&nbsp;xứng đ&aacute;ng l&agrave; một&nbsp;chiếc iPhone lớn nhất, mạnh mẽ nhất v&agrave; c&oacute; thời lượng pin d&agrave;i nhất từ trước đến nay sẽ cho bạn trải nghiệm tuyệt vời, từ những t&aacute;c vụ b&igrave;nh thường cho đến c&aacute;c ứng dụng chuy&ecirc;n nghiệp.</strong></p>\r\n\r\n<p><strong><img alt=\"iPhone 13 Pro Max\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-13-pro-max-2.jpg\" /></strong></p>\r\n\r\n<h3><strong>Đắm ch&igrave;m trong kh&ocirc;ng gian m&agrave;n h&igrave;nh lớn cực đ&atilde;</strong></h3>\r\n\r\n<p>D&ugrave; l&agrave; giải tr&iacute; khi xem phim, chơi game hay kiểm tra email, đọc t&agrave;i liệu th&igrave; m&agrave;n h&igrave;nh lớn tới 6,7 inch của&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/iphone-13-pro-max\">iPhone 13 Pro Max</a>&nbsp;cũng lu&ocirc;n cho trải nghiệm tuyệt vời nhất.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ lớn, đ&acirc;y c&ograve;n l&agrave; m&agrave;n h&igrave;nh chất lượng h&agrave;ng đầu thế giới smartphone với tấm nền OLED tuyệt đẹp, c&ocirc;ng nghệ Super Retina XDR si&ecirc;u n&eacute;t v&agrave; độ s&aacute;ng tối đa đạt mức kh&oacute; tin, l&ecirc;n tới 1200 nits cho nội dung HDR. Trước mắt bạn l&agrave; một kh&ocirc;ng gian giải tr&iacute; m&atilde;n nh&atilde;n, một thiết bị di động l&yacute; tưởng để giải quyết nhanh c&ocirc;ng việc với m&agrave;n h&igrave;nh thực sự xuất sắc.</p>\r\n\r\n<p><img alt=\"màn hình iPhone 13 Pro Max\" src=\"https://fptshop.com.vn/Uploads/images/2015/0511/iphone-13-pro-new-1.JPG\" /></p>\r\n\r\n<h3><strong>iPhone 13 Pro Max xanh l&aacute; sang trọng, b&iacute; ẩn</strong></h3>\r\n\r\n<p>iPhone 13 Pro Max giờ đ&acirc;y đ&atilde; kho&aacute;c l&ecirc;n m&agrave;u xanh l&aacute; Alpine Green b&iacute; ẩn m&agrave; kh&ocirc;ng k&eacute;m phần sang trọng. Sắc m&agrave;u mới đem lại cảm nhận mới mẻ m&agrave; gi&uacute;p bạn c&oacute; th&ecirc;m nhiều lựa chọn khi sắm sửa cho bản th&acirc;n một chiếc iPhone cao cấp thế hệ mới. Cầm iPhone 13 Pro Max m&agrave;u xanh l&aacute;&nbsp;tr&ecirc;n tay, bạn sẽ c&oacute; cảm gi&aacute;c như đang sử dụng phi&ecirc;n bản giới hạn của sản phẩm n&agrave;y.</p>\r\n\r\n<p><img alt=\"iPhone 13 Pro Max màu xanh lá\" id=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/SmartphoneChupDep/iphone-13-pro-max-xanh-la.jpg\" /></p>\r\n\r\n<h3><strong>Bước nhảy vọt về thời lượng pin</strong></h3>\r\n\r\n<p>D&ograve;ng iPhone Pro Max lu&ocirc;n được người d&ugrave;ng y&ecirc;u th&iacute;ch nhờ thời lượng pin si&ecirc;u d&agrave;i, tuy nhi&ecirc;n iPhone 13 Pro Max c&ograve;n l&agrave;m được nhiều hơn thế. Dung lượng pin lớn hơn, m&agrave;n h&igrave;nh mới v&agrave; bộ vi xử l&yacute; Apple A15 Bionic tiết kiệm điện hơn gi&uacute;p iPhone 13 Pro Max trở th&agrave;nh chiếc&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/apple-iphone\">iPhone</a>&nbsp;c&oacute; thời lượng pin tốt nhất từ trước đến nay.</p>\r\n\r\n<p>So với iPhone 12 Pro Max, iPhone 13 Pro Max c&oacute; thời gian sử dụng d&agrave;i hơn 2,5 giờ. Bạn sẽ cảm nhận r&otilde; sự kh&aacute;c biệt khi sử dụng thực tế, thời lượng pin iPhone 13 Pro Max thậm ch&iacute; c&ograve;n c&oacute; thể k&eacute;o d&agrave;i đến ng&agrave;y thứ 3 với nhu cầu sử dụng th&ocirc;ng thường.</p>\r\n\r\n<p><img alt=\"pin iPhone 13 Pro Max\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-13-pro-max-3.jpg\" /></p>\r\n\r\n<h3><strong>Sang trọng, lịch l&atilde;m v&agrave; qu&yacute; ph&aacute;i</strong></h3>\r\n\r\n<p>iPhone 13 Pro Max c&oacute; kiểu d&aacute;ng sang trọng, thời thượng v&agrave; sự tinh xảo đến từng đường n&eacute;t. Phần khung m&aacute;y cứng c&aacute;p l&agrave;m từ th&eacute;p kh&ocirc;ng gỉ nằm giữa hai mặt k&iacute;nh cao cấp, trong đ&oacute; phần k&iacute;nh bảo vệ m&agrave;n h&igrave;nh c&oacute; chất liệu gốm si&ecirc;u cứng, iPhone 13 Pro Max vừa tuyệt đẹp, lại vừa v&ocirc; c&ugrave;ng bền bỉ.</p>\r\n\r\n<p>Hơn nữa, điện thoại c&ograve;n c&oacute; khả năng chống nước chuẩn IP68, cho ph&eacute;p bạn sử dụng m&agrave; kh&ocirc;ng sợ c&aacute;c nguy cơ như đổ nước hay gặp trời mưa. Sẽ c&oacute; 4 lựa chọn m&agrave;u sắc d&agrave;nh cho iPhone 13 Pro Max l&agrave; X&aacute;m, V&agrave;ng, Trắng v&agrave; Xanh Sierra, tất cả c&aacute;c m&agrave;u đều c&oacute; kh&iacute; chất ri&ecirc;ng biệt, đẳng cấp.</p>\r\n\r\n<p><img alt=\"thiết kế iPhone 13 Pro Max\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-13-pro-max-4.jpg\" /></p>\r\n\r\n<h3><strong>Sức mạnh của hệ thống camera Pro mới</strong></h3>\r\n\r\n<p>Cả 3 camera tr&ecirc;n iPhone 13 Pro Max đều sử dụng cảm biến mới với chất lượng ống k&iacute;nh h&agrave;ng đầu hiện nay. Nổi bật nhất l&agrave; camera ch&iacute;nh c&oacute; khẩu độ l&ecirc;n tới f/1.5, k&iacute;ch thước điểm ảnh 1.9um, những con số kh&oacute; tin đối với một chiếc&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại di động</a>, cho h&igrave;nh ảnh v&agrave; video thiếu s&aacute;ng tốt hơn bao giờ hết.</p>\r\n\r\n<p>Camera g&oacute;c si&ecirc;u rộng cũng được n&acirc;ng cấp với khẩu độ f/1.8, cảm biến nhanh hơn, mang tới những bức ảnh g&oacute;c si&ecirc;u rộng tự nhi&ecirc;n v&agrave; ch&acirc;n thực. Cuối c&ugrave;ng l&agrave; camera Tele hỗ trợ zoom quang học 3x. Đặc biệt, hệ thống chống rung quang học k&eacute;p c&oacute; mặt tr&ecirc;n cả camera ch&iacute;nh v&agrave; camera Tele.</p>\r\n'),
(35, 1, 'iPhone 13 Pro Sierra Blue 128GB', '2.1.png', '27090000', '12 Tháng', 'Hộp, sách hướng dẫn, cáp', 'Mới 100%', 'Tặng Voucher 1.000.000đ thu cũ đổi mới', 'Còn hàng', 1, '<h2><strong>Điện thoại iPhone 13 Pro 128GB - Gi&aacute;&nbsp;rẻ nhưng những g&igrave; người d&ugrave;ng nhận được lại v&ocirc; c&ugrave;ng ấn tượng&nbsp;</strong></h2>\r\n\r\n<p><strong>iPhone 13 Pro 128GB</strong>&nbsp;mẫu si&ecirc;u phẩm mới của&nbsp;Apple được nhiều người d&ugrave;ng lựa chọn trong năm nay. Ngoại h&igrave;nh sang trong, m&agrave;n h&igrave;nh 120Hz, chip&nbsp;A15 mạnh mẽ ch&iacute;nh l&agrave; lợi thế của người kế nhiệm&nbsp;iPhone 12&nbsp;năm nay.</p>\r\n\r\n<p>Mẫu&nbsp;<a href=\"https://www.xtmobile.vn/iphone-13\" target=\"_blank\">điện thoại&nbsp;iPhone 13</a>&nbsp;mới n&agrave;y ch&iacute;nh l&agrave; sự lựa chọn đ&aacute;ng để c&acirc;n nhắc nếu bạn đang c&oacute; nhu cầu sẵm cho m&igrave;nh mẫu flagship mới đến từ nh&agrave; Apple.</p>\r\n\r\n<h3><strong>Thiết kế</strong></h3>\r\n\r\n<p>C&oacute; thể n&oacute;i thiết kế&nbsp;<strong>iPhone 13 Pro 128GB</strong>&nbsp;kh&ocirc;ng c&oacute; nhiều điểm đột ph&aacute; so với người tiền nhiệm. Nhưng vẫn c&oacute; ch&uacute;t c&atilde;i tiến, đủ l&agrave;m h&agrave;i l&ograve;ng kh&ocirc;ng &iacute;t người d&ugrave;ng. Cụ thể, nếu quan s&aacute;t kỹ hơn ch&uacute;ng ta c&oacute; thể thấy mẫu iPhone 2021 c&oacute; tai thỏ v&agrave; cụm camera sau c&oacute; phần lớn hơn.</p>\r\n\r\n<p><img alt=\" thiết kế iPhone 13 Pro 128GB không có nhiều điểm đột phá\" src=\"https://www.xtmobile.vn/vnt_upload/news/10_2021/13/thiet-ke-iphone-13-pro-128gb-xtmobile.jpg\" /></p>\r\n\r\n<p>Được tạo ra với khung viền nh&ocirc;m vu&ocirc;ng vức v&agrave; mặt lưng k&iacute;nh sang trọng, kết hợp với khả năng kh&aacute;ng bụi, kh&aacute;ng nước chu&acirc;̉n IP68. Mặt trước với điểm nhấn bởi m&agrave;n h&igrave;nh tai thỏ với phần notch được thu gọn hơn đến 20% so với thế hệ trước. c&oacute; thể n&oacute;i sự kh&aacute;c biệt lớn nhất của mẫu iPhone 2021 n&agrave;y ch&iacute;nh l&agrave; k&iacute;ch thước của cảm biến camera sau được l&agrave;m to hơn.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh</strong></h3>\r\n\r\n<p>M&agrave;n h&igrave;nh iPhone 13 Pro 128GB với k&iacute;ch thước 6.1&nbsp;inch, hỗ trợ độ ph&acirc;n giải 1284 x 2778 Pixels. Được trang bị tấm nền OLED c&ugrave;ng với c&ocirc;ng nghệ Super Retina XDR gi&uacute;p tiết kiệm năng lượng vượt trội. Nhưng chất lượng hiển thị vẫn sắc n&eacute;t, sống động v&agrave; cực k&igrave; ch&acirc;n thực.</p>\r\n\r\n<p><img alt=\"Màn hình iPhone 13 Pro 128GB với kích thước 6.1 inch\" src=\"https://www.xtmobile.vn/vnt_upload/news/10_2021/13/man-hinh-iphone-13-pro-128gb-xtmobile.jpg\" /></p>\r\n\r\n<p>Đặc biệt hơn l&agrave; iPhone 13 Pro được n&acirc;ng cấp l&ecirc;n tần số qu&eacute;t 120Hz. V&igrave; vậy, mọi thao t&aacute;c chuyển cảnh khi lướt ng&oacute;n tay tr&ecirc;n m&agrave;n h&igrave;nh v&agrave; hiệu ứng thị gi&aacute;c khi chơi game hoặc xem video cũng cực kỳ m&atilde;n nh&atilde;n v&agrave; mượt m&agrave; hơn.</p>\r\n\r\n<p>C&ocirc;ng nghệ ProMotion th&ocirc;ng minh c&ograve;n được t&iacute;ch hợp tr&ecirc;n iPhone 13 Pro gi&aacute; rẻ gi&uacute;p thay đổi tần số qu&eacute;t từ 10 đến 120 lần mỗi gi&acirc;y. Nhưng tất cả vẫn sẽ c&ograve;n phụ thuộc v&agrave;o từng ứng dụng hay thao t&aacute;c để tối ưu thời lượng sử dụng pin v&agrave; trải nghiệm của người d&ugrave;ng.</p>\r\n\r\n<h3><strong>Camera</strong></h3>\r\n\r\n<p>Giống như người tiền nhiệm, camera của iPhone 13 Pro 128GB cũng được xếp xen kẽ trong module h&igrave;nh vu&ocirc;ng. Ba ống k&iacute;nh đều c&oacute; độ ph&acirc;n giải 12MP gồm camera telephoto, camera góc si&ecirc;u r&ocirc;̣ng v&agrave; camera ch&iacute;nh g&oacute;c rộng. Ngo&agrave;i ra, cảm biến Cảm biến LiDAR vẫn xuất hiện tr&ecirc;n mẫu iPhone Pro mới n&agrave;y. Bởi vậy người d&ugrave;ng sẽ c&oacute; những trải nghiệm thực tế tăng cường cũng như khả năng lấy n&eacute;t trong m&ocirc;i trường &aacute;nh s&aacute;ng yếu một c&aacute;ch tốt hơn.</p>\r\n\r\n<p><img alt=\"camera của iPhone 13 Pro 128GB cũng được trang bị 3 ống kính\" src=\"https://www.xtmobile.vn/vnt_upload/news/10_2021/13/camera-iphone-13-pro-128gb-xtmobile.jpg\" /></p>\r\n\r\n<p>iPhone 13 Pro 128GB được đ&aacute;nh gi&aacute; l&agrave; chiếc điện thoại th&ocirc;ng minh đầu ti&ecirc;n cung cấp quy tr&igrave;nh l&agrave;m việc chuy&ecirc;n nghiệp &quot;end-to-end&quot;. Nhờ vậy người d&ugrave;ng c&oacute; thể trực tiếp quay v&agrave; chỉnh sửa video ở định dạng n&eacute;n ProRes hoặc Dolby Vision một c&aacute;ch dễ d&agrave;ng.</p>\r\n\r\n<h3><strong>Hiệu năng</strong></h3>\r\n\r\n<p>N&oacute;i về cấu h&igrave;nh th&igrave; iPhone 13 Pro 128GB được đ&aacute;nh gi&aacute; cao khi sở hữu chip Apple A15 Bionic mới nhất của Apple. Vi xử l&yacute; n&agrave;y được sản xuất dựa tr&ecirc;n tiến tr&igrave;nh 5nm+ mang lại hiệu năng vận h&agrave;nh ấn tượng m&agrave; vẫn tiết kiệm năng lượng tốt nhất cho người d&ugrave;ng.</p>\r\n\r\n<p><img alt=\"ề cấu hình thì iPhone 13 Pro 128GB được đánh giá cao\" src=\"https://www.xtmobile.vn/vnt_upload/news/10_2021/13/cau-hih-iphone-13-pro-128gb-xtmobile.jpg\" /></p>\r\n\r\n<p>Chip A15 Bionic được đ&aacute;nh gi&aacute; l&agrave; Soc nhanh nhất tr&ecirc;n thị trường smartphone trong thời điểm hiện tại. Theo Apple c&ocirc;ng bố, chipset mới của m&igrave;nh cho tốc độ xử l&yacute; nhanh hơn 50% so với c&aacute;c vi xử l&yacute; hiện tại. Đặc biệt l&agrave; n&oacute; c&oacute; thể thực hiện được 15.8 ngh&igrave;n tỉ ph&eacute;p t&iacute;nh&nbsp; mỗi gi&acirc;y, gi&uacute;p hiệu năng CPU nhanh hơn bao giờ hết.</p>\r\n\r\n<h3><strong>Địa chỉ mua điện thoại iPhone 13 Pro 128GB ch&iacute;nh h&atilde;ng gi&aacute; rẻ</strong></h3>\r\n\r\n<p>C&oacute; thể n&oacute;i&nbsp;<strong>điện thoại&nbsp;iPhone 13 Pro 128GB&nbsp;</strong>vẫn giữ được c&aacute;c điểm nổi bật của người tiền nhiệm. Tuy nhi&ecirc;n, n&oacute;i về những cải tiến lớn về cấu h&igrave;nh, thời lượng pin cũng như camera th&igrave; đ&acirc;y ch&iacute;nh l&agrave; mẫu flagship ấn tượng tr&ecirc;n thị trường smartphone hiện nay.</p>\r\n'),
(37, 1, 'iPhone 13 Pink 128GB', 'iPhone_13_PDP_Position-1A_Color_Pink__VN-1536x1536.webp', '20490000', '12 Tháng', 'Hộp, sách hướng dẫn, sạc, cáp, tai nghe', 'Mới 100%', 'Giảm 5% tối đa 400.000đ khi thanh toán qua MOCA', 'Còn hàng', 0, '<p><strong>iPhone 13&nbsp;</strong>Hệ thống camera k&eacute;p ti&ecirc;n tiến nhất từng c&oacute; tr&ecirc;n iPhone. Chip A15 Bionic thần tốc. Bước nhảy vọt về thời lượng pin. Thiết kế bền bỉ. Mạng 5G si&ecirc;u nhanh. C&ugrave;ng với m&agrave;n h&igrave;nh Super Retina XDR s&aacute;ng hơn.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&bull; M&agrave;n h&igrave;nh Super Retina XDR 6.1 inch&nbsp;<br />\r\n&bull; Chế độ Điện Ảnh l&agrave;m tăng th&ecirc;m độ s&acirc;u trường ảnh n&ocirc;ng v&agrave; tự động thay đổi ti&ecirc;u cự trong video&nbsp;<br />\r\n&bull; Hệ thống camera k&eacute;p ti&ecirc;n tiến với camera Wide v&agrave; Ultra Wide 12MP; Phong C&aacute;ch Nhiếp Ảnh, HDR th&ocirc;ng minh thế hệ 4, chế độ Ban Đ&ecirc;m, khả năng quay video HDR Dolby Vision 4K&nbsp;<br />\r\n&bull; Camera trước TrueDepth 12MP với chế độ Ban Đ&ecirc;m v&agrave; khả năng quay video HDR Dolby Vision 4K&nbsp;<br />\r\n&bull; Chip A15 Bionic cho hiệu năng thần tốc&nbsp;<br />\r\n&bull; Thời gian xem video l&ecirc;n đến 19 giờ<br />\r\n&bull; Thiết kế bền bỉ với Ceramic Shield&nbsp;<br />\r\n&bull; Khả năng chống nước đạt chuẩn IP68 đứng đầu thị trường4&nbsp;<br />\r\n&bull; Mạng 5G cho tốc độ tải xuống si&ecirc;u nhanh, xem video v&agrave; nghe nhạc trực tuyến chất lượng cao<br />\r\n&bull; iOS 15 t&iacute;ch hợp nhiều t&iacute;nh năng mới cho ph&eacute;p bạn l&agrave;m được nhiều việc hơn bao giờ hết với iPhone</p>\r\n\r\n<p>&gt;</p>\r\n'),
(38, 1, 'iPhone 13 mini ', 'iPhone_13_Mini_PDP_Position-1A_Color_Blue__VN-1536x1536.webp', '18590000', '12 Tháng', 'Hộp, sách hướng dẫn, sạc, cáp, tai nghe', 'Mới 100%', 'Không', 'Còn hàng', 1, ''),
(39, 17, 'iPad Pro 12.9 inch (M1, 2021) WIFI Silver 2TB ', '1-01.webp', '55550000', '12 Tháng', 'Hộp, sách hướng dẫn, sạc, cáp, tai nghe', 'Mới 100%', '', 'Còn hàng', 1, ''),
(40, 17, 'iPad Air 4 WIFI Sky Blue 64GB', 'iPad-air-gen4-skyblue.png', '14490000', '12 Tháng', 'Hộp, sách hướng dẫn, sạc, cáp, tai nghe', 'Mới 100%', '', 'Còn hàng', 1, ''),
(41, 18, 'Apple Watch Series 7 Nhôm (PRODUCT) RED', 'Apple_Watch_Series_7_GPS_41mm_ProductRED_Aluminum_ProductRed_Sport_Band_PDP_Image_Position-1__VN-1.jpeg', '9990000', '12 Tháng', 'Hộp, sách hướng dẫn, sạc, cáp, tai nghe', 'Mới 100%', '', 'Còn hàng', 0, ''),
(42, 19, 'AirPods Pro (2021)', 'airpods_pro_2021.webp', '4650000', '12 Tháng', 'Hộp, sách hướng dẫn, sạc, cáp', 'Mới 100%', '', 'Còn hàng', 0, ''),
(43, 19, 'AirPods Max', 'AirPods_Max_Silver_1.webp', '10490000', '12 Tháng', 'Hộp, sách hướng dẫn, sạc, cáp, tai nghe', 'Mới 100%', '', 'Còn hàng', 0, ''),
(45, 20, 'Sạc 18W USB - C', 'sac.png', '270000', '12 Tháng', 'Hộp, sách hướng dẫn', 'Mới 100%', '', 'Còn hàng', 0, ''),
(46, 20, 'Miếng dán cường lực Supitec iPhone 13 Pro Max', 'cuong-luc.webp', '200000', '12 Tháng', 'Hộp', 'Mới 100%', '', 'Còn hàng', 0, ''),
(47, 20, 'Miếng dán cường lực Jinya Defender iPhone 13/13Pro', 'cuong-luc-jinya-defender-iphone-12-a.jpeg', '230000', '12 Tháng', 'Hộp', 'Mới 100%', '', 'Còn hàng', 0, ''),
(48, 20, 'Sạc dự phòng không dây Magsafe Battettery Pack', 'MJWY3.webp', '2490000', '12 Tháng', 'Hộp, sách hướng dẫn, sạc, cáp, tai nghe', 'Mới 100%', '', 'Còn hàng', 0, ''),
(49, 20, 'Ốp lưng MIPOW TPU & PU Leather iPhone 13 Pro Max', '2.png', '350000', '12 Tháng', 'Hộp', 'Mới 100%', '', 'Còn hàng', 0, ''),
(50, 20, 'Apple AirTag (1 Pack)', 'apple-airtag-1-pack.2.webp', '690000', '12 Tháng', 'Hộp, sách hướng dẫn, sạc, cáp, tai nghe', 'Mới 100%', '', 'Còn hàng', 0, ''),
(51, 20, 'Apple AirTag (4 Pack)', 'Untitled-1.webp', '2190000', '12 Tháng', 'Hộp, sách hướng dẫn, sạc, cáp, tai nghe', 'Mới 100%', '', 'Còn hàng', 0, ''),
(52, 20, 'Miếng dán cường lực JCPAL Preserver iPhone 13/13 Pro Max', 'kinh-cuong-luc-JCPAL.webp', '220.000', '12 Tháng', 'Hộp, sách hướng dẫn, sạc, cáp, tai nghe', 'Mới 100%', '', 'Còn hàng', 0, ''),
(53, 20, 'Ốp lưng iPhone 12/12 Pro Silicone Case', 'MHL43.webp', '650000', '12 Tháng', 'Hộp, sách hướng dẫn, sạc, cáp, tai nghe', 'Mới 100%', '', 'Còn hàng', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE `thanhvien` (
  `id_thanhvien` int(10) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quyen_truy_cap` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`id_thanhvien`, `email`, `mat_khau`, `quyen_truy_cap`) VALUES
(1, 'admin', 'admin', 2),
(22, 'vhminhtam1@gmail.com', 'abc', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blsanpham`
--
ALTER TABLE `blsanpham`
  ADD PRIMARY KEY (`id_bl`);

--
-- Indexes for table `dmsanpham`
--
ALTER TABLE `dmsanpham`
  ADD PRIMARY KEY (`id_dm`);

--
-- Indexes for table `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`id_quangcao`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sp`),
  ADD KEY `id_dm` (`id_dm`);

--
-- Indexes for table `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`id_thanhvien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blsanpham`
--
ALTER TABLE `blsanpham`
  MODIFY `id_bl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `dmsanpham`
--
ALTER TABLE `dmsanpham`
  MODIFY `id_dm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `id_quangcao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sp` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `id_thanhvien` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
