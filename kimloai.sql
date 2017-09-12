-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2017 at 03:02 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kimloai`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` int(5) NOT NULL,
  `cat_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `show_home` int(2) NOT NULL DEFAULT '1',
  `alias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `ord` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `cat_name`, `show_home`, `alias`, `parent`, `ord`) VALUES
(25, 'Xử lý lô sấy máy photo', 1, 'xu-ly-lo-say-may-photo', 0, 1),
(26, 'Chống dính khuôn mẫu', 1, 'chong-dinh-khuon-mau', 0, 0),
(33, 'Chống dính cho rulo', 0, 'chong-dinh-cho-rulo', 0, 3),
(34, 'Chống dính cho chi tiết máy', 0, 'chong-dinh-cho-chi-tiet-may', 0, 4),
(35, 'Chống dính cho ngành thực phẩm', 0, 'chong-dinh-cho-nganh-thuc-pham', 0, 5),
(36, 'Sơn chịu nhiệt', 0, 'son-chiu-nhiet', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `category_service`
--

CREATE TABLE `category_service` (
  `catid` int(5) NOT NULL,
  `cat_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `show_home` int(2) NOT NULL DEFAULT '1',
  `alias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_service`
--

INSERT INTO `category_service` (`catid`, `cat_name`, `show_home`, `alias`, `parent`) VALUES
(3, 'Dịch vụ tư vấn CNTT', 0, 'dich-vu-tu-van-cntt', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cat_news`
--

CREATE TABLE `cat_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `type` int(2) UNSIGNED NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `ord` int(4) UNSIGNED DEFAULT NULL,
  `parent` int(11) NOT NULL,
  `home` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cat_news`
--

INSERT INTO `cat_news` (`id`, `name`, `alias`, `link`, `type`, `active`, `ord`, `parent`, `home`) VALUES
(1, 'Giới thiệu', 'gioi-thieu', '#', 0, 1, 1, 0, 0),
(4, 'Liên hệ', 'lien-he', '#', 4, 1, 10, 0, 0),
(10, 'Sản phẩm', 'san-pham', '#', 1, 1, 6, 0, 0),
(11, 'Tổng quan', 'tong-quan', '#', 2, 1, 2, 1, 0),
(12, 'Lịch sử phát triển', 'lich-su-phat-trien', '#', 2, 1, 4, 1, 0),
(13, 'Tầm nhìn', 'tam-nhin', '#', 2, 1, 3, 1, 0),
(14, 'Tin tức', 'tin-tuc', '#', 0, 1, 5, 0, 0),
(18, 'Dịch vụ', 'dich-vu', '#', 3, 0, 6, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `demo`
--

CREATE TABLE `demo` (
  `id` int(3) NOT NULL,
  `title` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `demo`
--

INSERT INTO `demo` (`id`, `title`, `body`) VALUES
(1, 'nguyen duc hung', 'Em la ai co gai hay nang tien'),
(2, 'thu huong', 'Hom qua Thai lan da tong tien cong phong chong lu lut o bangkob');

-- --------------------------------------------------------

--
-- Table structure for table `group_menufooter`
--

CREATE TABLE `group_menufooter` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `type` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `ord` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `metakeyword` varchar(200) NOT NULL,
  `metadescription` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_menufooter`
--

INSERT INTO `group_menufooter` (`id`, `name`, `alias`, `link`, `type`, `active`, `ord`, `parent`, `title`, `metakeyword`, `metadescription`) VALUES
(3, 'Thi công hệ thống', '', '#', 0, 1, 2, 0, '', 'thi công hệ thống, thi công mạng, thi công mạng LAN, thi cong mang, thi cong mang LAN', 'MAC thi công hệ thống mạng LAN, mạng nội bộ cho tòa nhà, văn phòng và khu công nghiệp. Liên hệ thi công: 012 19001080'),
(2, 'Thi công nội thất ', '', 'http://noithat.org.vn/thi-cong-noi-that', 0, 1, 1, 0, '', 'Thi công nội thất, thi cong noi that, thiet ke noi that, thiết kế nội thất, nội thất', 'Nhận thiết kế và thi công nội thất văn phòng tòa nhà chuyên nghiệp tại Hà Nội. Liên hệ: 012 19001080'),
(5, 'Thi công điện nước', '', 'http://noithat.org.vn/thi-cong-dien-nuoc', 0, 1, 3, 0, '', 'thi cong dien nuoc, thi công điện, thi cong dien, thi cong nuoc, thi công nước', 'Nhận thi công điện nước cho tòa nhà, văn phòng, khu công nghiệp. Liên hệ: 012 19001080');

-- --------------------------------------------------------

--
-- Table structure for table `hotro`
--

CREATE TABLE `hotro` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `info` varchar(200) CHARACTER SET utf8 NOT NULL,
  `used` int(11) NOT NULL COMMENT 'Dùng để xem loại 1 là yahoo, 2 là skype, 3 là phone',
  `type` int(11) NOT NULL COMMENT '1 là xuất khẩu lao động, 2 là bán vé máy bay',
  `active` int(11) NOT NULL,
  `ord` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hotro`
--

INSERT INTO `hotro` (`id`, `name`, `info`, `used`, `type`, `active`, `ord`) VALUES
(4, 'Nhật Minh', 'nhatnguyen@iflight.com.vn', 1, 2, 1, 1),
(5, 'Skype 2', 'binhvv.helios', 2, 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `introduc`
--

CREATE TABLE `introduc` (
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `introduc`
--

INSERT INTO `introduc` (`content`) VALUES
('<p><img style=\"float: left; margin: 0px 10px;\" src=\"/tinymce/uploaded/advright_s324.jpg\" alt=\"\" width=\"175\" height=\"135\" /><strong><span style=\"font-family: arial,helvetica,sans-serif; font-size: small;\">Giới thiệu về C&ocirc;ng ty Ch&iacute;nh T&acirc;m</span></strong></p>');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `path` varchar(200) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `ord` int(3) UNSIGNED DEFAULT NULL,
  `active` int(1) UNSIGNED DEFAULT NULL,
  `metakeyword` varchar(200) NOT NULL,
  `metadescription` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id`, `name`, `path`, `url`, `ord`, `active`, `metakeyword`, `metadescription`) VALUES
(10, 'Thi công mạng LAN', 'images/khachhang/banner_6f4922f4.png', '#', 0, 1, '', ''),
(11, 'Thi công mạng nội bộ', 'images/khachhang/banner_1f0e3dad.png', '#', 0, 1, '', ''),
(13, 'MAC', 'images/khachhang/banner_98f13708.png', '#', 0, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `id` int(10) UNSIGNED NOT NULL,
  `hoten` varchar(200) NOT NULL,
  `tieude` varchar(200) NOT NULL,
  `noidung` varchar(2000) NOT NULL,
  `email` varchar(200) NOT NULL,
  `thoigian` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lienhe`
--

INSERT INTO `lienhe` (`id`, `hoten`, `tieude`, `noidung`, `email`, `thoigian`) VALUES
(3, 'sdfsdf', 'sdfsdf', 'dsfsdff', 'maimaiyeuemhp90@yahoo.com', '2014-6-16'),
(2, 'Nam dong tesst', 'tesst', 'sfgsf', 'binhminhthanhdat@gmail.com', '2014-6-16'),
(4, 'dfdsf', 'slfskld', 'slkjfskldfjs', 'binhminhthanhdat@gmail.com', '2014-6-16');

-- --------------------------------------------------------

--
-- Table structure for table `menufooter`
--

CREATE TABLE `menufooter` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ord` int(11) NOT NULL,
  `link` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `metakeyword` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `metadescription` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menufooter`
--

INSERT INTO `menufooter` (`id`, `name`, `ord`, `link`, `parent`, `metakeyword`, `metadescription`) VALUES
(9, 'Thi công mạng LAN trường học', 0, 'http://noithat.org.vn/thi-cong-mang-lan/thi-cong-mang-lan-truong-hoc', 3, '', ''),
(11, 'Thiết kế thi công văn phòng', 1, 'http://noithat.org.vn/thi-cong-noi-that/thiet-ke-thi-cong-van-phong', 2, '', ''),
(12, 'Thi công điện chuyên nghiệp', 1, 'http://noithat.org.vn/thi-cong-dien-nuoc/thi-cong-dien-chuyen-nghiep', 5, '', ''),
(16, 'Thi công lắp đặt camera', 2, 'http://noithat.org.vn/he-thong-giam-sat/thi-cong-lap-dat-camera', 3, '', ''),
(21, 'Thi công nội thất văn phòng', 2, 'http://noithat.org.vn/thi-cong-noi-that/thi-cong-noi-that-van-phong', 2, '', ''),
(22, 'Lắp đặt điện nước chuyên nghiệp', 2, 'http://noithat.org.vn/thi-cong-dien-nuoc/lap-dat-dien-nuoc-chuyen-nghiep', 5, '', ''),
(23, 'Thi công mạng nội bộ', 2, 'http://noithat.org.vn/thi-cong-mang-lan/thi-cong-mang-noi-bo', 3, '', ''),
(24, 'Thi công nội thất showroom', 3, 'http://noithat.org.vn/thi-cong-noi-that/thiet-ke-thi-cong-noi-that-showroom', 2, '', ''),
(25, 'Thi công mạng LAN Hà Nội', 0, 'http://noithat.org.vn/thi-cong-mang-lan/thi-cong-mang-lan-tai-ha-noi', 3, '', ''),
(28, 'Dịch vụ sửa nhà Hà Nội', 0, 'http://noithat.org.vn/sua-chua-nha-cua/dich-vu-sua-nha-ha-noi', 2, '', ''),
(29, 'Thi công điện nước Hà Nội', 0, 'http://noithat.org.vn/thi-cong-dien-nuoc/thi-cong-dien-nuoc-ha-noi', 5, '', ''),
(30, 'Thi công điện nhẹ chuyên nghiệp', 0, 'http://noithat.org.vn/thi-cong-dien-nhe/thi-cong-dien-nhe-chuyen-nghiep', 5, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(5) NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` int(5) DEFAULT NULL,
  `modify_date` int(5) DEFAULT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `intro`, `content`, `image`, `create_date`, `modify_date`, `cat_id`) VALUES
(18, 'Phủ teflon chống dính cho tất cả các sản phẩm', 'Không cọ sát kim loại vào lòng chảo; bỏ ít dầu, bơ khi chiên rán; nấu ở nhiệt độ trung bình... là những lưu ý giúp tăng tuổi thọ của chảo chống dính và bảo vệ sức khỏe. Chảo chống dính là dụng cụ thiết yếu trong nhà bếp nhờ khả năng chịu nhiệt cao, n', '<p><span>Phủ teflon chống d&iacute;nh cho tất cả c&aacute;c sản phẩm.&nbsp;D&acirc;y chuyền sản xuất của bạn bị chậm dần theo thời gian, bị ăn m&ograve;n v&agrave; bị oxi h&oacute;a. Kh&ocirc;ng cần lo lắng bạn ho&agrave;n to&agrave;n c&oacute; thể loại bỏ điều đ&oacute; nhờ lớp phủ Teflon của ch&uacute;ng t&ocirc;i.&nbsp;</span></p>\r\n<p><span>D&acirc;y chuyền sản xuất của bạn bị chậm dần theo thời gian, bị ăn m&ograve;n v&agrave; bị oxi h&oacute;a. Kh&ocirc;ng cần lo lắng bạn ho&agrave;n to&agrave;n c&oacute; thể loại bỏ điều đ&oacute; nhờ lớp phủ Teflon của ch&uacute;ng t&ocirc;i.&nbsp;</span></p>\r\n<p><span>&nbsp;</span></p>\r\n<table cellspacing=\"10\" cellpadding=\"10\" width=\"687\">\r\n<caption>\r\n<p><span><strong>C&Aacute;C C&Ocirc;NG TR&Igrave;NH THI C&Ocirc;NG</strong></span></p>\r\n</caption> \r\n<tbody>\r\n<tr>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/05/IMG_0016.jpg\"><img class=\"alignnone  wp-image-2225 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/05/IMG_0016-300x225.jpg\" alt=\"IMG_0016\" width=\"163\" height=\"122\" /></a></span></td>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-257.jpg\"><img class=\"alignnone  wp-image-2155 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-257-300x168.jpg\" alt=\"Copy (2) of Picture 257\" width=\"203\" height=\"114\" /></a></span></td>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/03/images-21.jpg\"><img class=\"wp-image-2129 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/03/images-21.jpg\" alt=\"images (2)\" width=\"202\" height=\"113\" /></a></span></td>\r\n</tr>\r\n<tr>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-218.jpg\"><img class=\"wp-image-2110 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-218-300x168.jpg\" alt=\"Copy (2) of Picture 218\" width=\"243\" height=\"136\" /></a></span></td>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-4612.jpg\"><img class=\"wp-image-2075 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-4612-300x168.jpg\" alt=\"Copy (2) of Picture 461\" width=\"218\" height=\"122\" /></a></span></td>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/03/images.jpg\"><img class=\"wp-image-2053 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/03/images.jpg\" alt=\"images\" width=\"194\" height=\"145\" /></a></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p><span>&nbsp;M&aacute;y m&oacute;c giờ đ&acirc;y được bảo vệ nhờ lớp phủ teflon an to&agrave;n v&agrave; chắc chắn. Bảo vệ trong thời gian d&agrave;i. Bảo vệ khỏi nhiệt độ cao. Bảo vệ thiết bị khỏi ăn m&ograve;n, b&aacute;m bẩn. N&acirc;ng cao thời gian sử dụng cho m&aacute;y m&oacute;c. tiết kiệm chi ph&iacute; cho nh&agrave; đầu tư. C&oacute; chần chừ g&igrave; m&agrave; kh&ocirc;ng bảo vệ từ b&ecirc;n trong cho m&aacute;y m&oacute;c của bạn.&nbsp;</span></p>', 'data_uploads/tin_tuc/IMG_0016-300x225.jpg', 1407926079, 1505177480, 14),
(19, 'Giới thiệu về chúng tôi', 'CHỐNG DÍNH KIM LOẠI VIỆT – MỸ là đơn vị chuyên nghiệp, chuyên nhận gia công phủ chống dính (hay gọi là Teflon) trên bề mặt Kim loại như : Nhôm, Đồng, inox, sắt.v.v.. Chống dính sử dụng phù hợp trong việc sản xuất thực pẩhm, dược phẩm, Mỹ phẩm .v.v.. ', '<p>&nbsp;</p>\r\n<p>&ndash; Kỹ thuật phủ chống d&iacute;nh của ch&uacute;ng t&ocirc;i được ứng dụng th&iacute;ch hợp cụ thể trong c&aacute;c ngh&agrave;nh như :</p>\r\n<p>&middot;&nbsp;<strong>Dược Phẩm:&nbsp;</strong><strong>c&aacute;c loại khu&ocirc;n d&ugrave;ng &eacute;p vỹ thuốc, dạng phẳng, lồi l&otilde;m.v.v..</strong></p>\r\n<p>&middot;&nbsp;<strong>Thủy sản:</strong><strong>&nbsp;khu&ocirc;n chống d&iacute;nh d&ugrave;ng để chi&ecirc;n t&ocirc;m, khay đ&aacute;, khu&ocirc;n ướp c&aacute;.</strong></p>\r\n<p>&middot;&nbsp;<strong>Ống kh&oacute;i c&ocirc;ng nghiệp</strong><strong>&nbsp;cần chống d&iacute;nh chống oxy&nbsp;</strong><strong>h&oacute;a, chống ăn m&ograve;n.</strong></p>\r\n<p><strong>Khu&ocirc;n chống d&iacute;nh:&nbsp;</strong><strong>lốp xe m&aacute;y, xe &Ocirc;t&ocirc;, khu&ocirc;n chi tiết cao su kỹ thuật.</strong></p>\r\n<p>&middot;&nbsp;<strong>Khu&ocirc;n &eacute;p định h&igrave;nh :</strong><strong>&nbsp;loại khu&ocirc;n c&oacute; lỗ h&uacute;t kh&iacute;, khu&ocirc;n dạng phẵng , dạng tr&ograve;n. ( d&ugrave;ng trong ngh&agrave;nh Dược, &eacute;p bao b&igrave; định h&igrave;nh).</strong></p>\r\n<p>&middot;&nbsp;<strong>C&aacute;c chi tiết m&aacute;y như</strong><strong>&nbsp;: dao cắt m&aacute;y đ&oacute;ng g&oacute;i, khu&ocirc;n &eacute;p bao b&igrave;, dao cắt chống d&iacute;nh.</strong></p>\r\n<p>&middot;&nbsp;<strong>Khu&ocirc;n chống d&iacute;nh b&aacute;nh</strong><strong>&nbsp;: Chocopie, shingum, , Khu&ocirc;n b&aacute;nh cống, khu&ocirc;n b&aacute;nh Champa .v.v..</strong></p>\r\n<p>&middot;&nbsp;<strong>Headter roll</strong><strong>&nbsp;: ống nh&ocirc;m chuy&ecirc;n d&ugrave;ng để h&agrave;n qui s&aacute;ch bao b&igrave; tả giấy.</strong></p>\r\n<p>&middot;&nbsp;<strong>Khu&ocirc;n h&agrave;n ống nhựa</strong><strong>&nbsp;chịu nhiệt.</strong></p>\r\n<p>&middot;&nbsp;<strong>khay nướng b&aacute;nh m&igrave;</strong><strong>&nbsp;chống d&iacute;nh, chống ch&aacute;y d&ugrave;ng cho nh&agrave; h&agrave;ng, kh&aacute;ch sạn</strong><strong>,qu&aacute;n ăn.</strong></p>\r\n<p>&middot;&nbsp;<strong>Khu&ocirc;n Inox&nbsp;</strong><strong>: d&ugrave;ng trong ngh&agrave;nh thuộc da, &eacute;p da ( giầy d&eacute;p), may mặc &ndash; chống d&iacute;nh chống ch&aacute;y.</strong></p>\r\n<p>&middot;&nbsp;<strong>Khu&ocirc;n B&aacute;nh B&ocirc;ng Lan:</strong></p>\r\n<p>&middot;&nbsp;<strong>Teflon&nbsp;</strong><strong>: d&ugrave;ng trong m&ocirc;i trường h&oacute;a chất, kh&aacute;ng axit, chống oxy h&oacute;a kim loại.c&aacute;c Loại Bồn, Phi, Chậu Inox.</strong></p>', '', 1505177069, 1505177069, 11),
(20, 'Giới thiệu về chúng tôi', 'CHỐNG DÍNH KIM LOẠI VIỆT – MỸ là đơn vị chuyên nghiệp, chuyên nhận gia công phủ chống dính (hay gọi là Teflon) trên bề mặt Kim loại như : Nhôm, Đồng, inox, sắt.v.v.. Chống dính sử dụng phù hợp trong việc sản xuất thực pẩhm, dược phẩm, Mỹ phẩm .v.v.. ', '<p>&nbsp;</p>\r\n<p>&ndash; Kỹ thuật phủ chống d&iacute;nh của ch&uacute;ng t&ocirc;i được ứng dụng th&iacute;ch hợp cụ thể trong c&aacute;c ngh&agrave;nh như :</p>\r\n<p>&middot;&nbsp;<strong>Dược Phẩm:&nbsp;</strong><strong>c&aacute;c loại khu&ocirc;n d&ugrave;ng &eacute;p vỹ thuốc, dạng phẳng, lồi l&otilde;m.v.v..</strong></p>\r\n<p>&middot;&nbsp;<strong>Thủy sản:</strong><strong>&nbsp;khu&ocirc;n chống d&iacute;nh d&ugrave;ng để chi&ecirc;n t&ocirc;m, khay đ&aacute;, khu&ocirc;n ướp c&aacute;.</strong></p>\r\n<p>&middot;&nbsp;<strong>Ống kh&oacute;i c&ocirc;ng nghiệp</strong><strong>&nbsp;cần chống d&iacute;nh chống oxy&nbsp;</strong><strong>h&oacute;a, chống ăn m&ograve;n.</strong></p>\r\n<p><strong>Khu&ocirc;n chống d&iacute;nh:&nbsp;</strong><strong>lốp xe m&aacute;y, xe &Ocirc;t&ocirc;, khu&ocirc;n chi tiết cao su kỹ thuật.</strong></p>\r\n<p>&middot;&nbsp;<strong>Khu&ocirc;n &eacute;p định h&igrave;nh :</strong><strong>&nbsp;loại khu&ocirc;n c&oacute; lỗ h&uacute;t kh&iacute;, khu&ocirc;n dạng phẵng , dạng tr&ograve;n. ( d&ugrave;ng trong ngh&agrave;nh Dược, &eacute;p bao b&igrave; định h&igrave;nh).</strong></p>\r\n<p>&middot;&nbsp;<strong>C&aacute;c chi tiết m&aacute;y như</strong><strong>&nbsp;: dao cắt m&aacute;y đ&oacute;ng g&oacute;i, khu&ocirc;n &eacute;p bao b&igrave;, dao cắt chống d&iacute;nh.</strong></p>\r\n<p>&middot;&nbsp;<strong>Khu&ocirc;n chống d&iacute;nh b&aacute;nh</strong><strong>&nbsp;: Chocopie, shingum, , Khu&ocirc;n b&aacute;nh cống, khu&ocirc;n b&aacute;nh Champa .v.v..</strong></p>\r\n<p>&middot;&nbsp;<strong>Headter roll</strong><strong>&nbsp;: ống nh&ocirc;m chuy&ecirc;n d&ugrave;ng để h&agrave;n qui s&aacute;ch bao b&igrave; tả giấy.</strong></p>\r\n<p>&middot;&nbsp;<strong>Khu&ocirc;n h&agrave;n ống nhựa</strong><strong>&nbsp;chịu nhiệt.</strong></p>\r\n<p>&middot;&nbsp;<strong>khay nướng b&aacute;nh m&igrave;</strong><strong>&nbsp;chống d&iacute;nh, chống ch&aacute;y d&ugrave;ng cho nh&agrave; h&agrave;ng, kh&aacute;ch sạn</strong><strong>,qu&aacute;n ăn.</strong></p>\r\n<p>&middot;&nbsp;<strong>Khu&ocirc;n Inox&nbsp;</strong><strong>: d&ugrave;ng trong ngh&agrave;nh thuộc da, &eacute;p da ( giầy d&eacute;p), may mặc &ndash; chống d&iacute;nh chống ch&aacute;y.</strong></p>\r\n<p>&middot;&nbsp;<strong>Khu&ocirc;n B&aacute;nh B&ocirc;ng Lan:</strong></p>\r\n<p>&middot;&nbsp;<strong>Teflon&nbsp;</strong><strong>: d&ugrave;ng trong m&ocirc;i trường h&oacute;a chất, kh&aacute;ng axit, chống oxy h&oacute;a kim loại.c&aacute;c Loại Bồn, Phi, Chậu Inox.</strong></p>', '', 1505177069, 1505177069, 12),
(21, 'Giới thiệu về chúng tôi', 'CHỐNG DÍNH KIM LOẠI VIỆT – MỸ là đơn vị chuyên nghiệp, chuyên nhận gia công phủ chống dính (hay gọi là Teflon) trên bề mặt Kim loại như : Nhôm, Đồng, inox, sắt.v.v.. Chống dính sử dụng phù hợp trong việc sản xuất thực pẩhm, dược phẩm, Mỹ phẩm .v.v.. ', '<p>&nbsp;</p>\r\n<p>&ndash; Kỹ thuật phủ chống d&iacute;nh của ch&uacute;ng t&ocirc;i được ứng dụng th&iacute;ch hợp cụ thể trong c&aacute;c ngh&agrave;nh như :</p>\r\n<p>&middot;&nbsp;<strong>Dược Phẩm:&nbsp;</strong><strong>c&aacute;c loại khu&ocirc;n d&ugrave;ng &eacute;p vỹ thuốc, dạng phẳng, lồi l&otilde;m.v.v..</strong></p>\r\n<p>&middot;&nbsp;<strong>Thủy sản:</strong><strong>&nbsp;khu&ocirc;n chống d&iacute;nh d&ugrave;ng để chi&ecirc;n t&ocirc;m, khay đ&aacute;, khu&ocirc;n ướp c&aacute;.</strong></p>\r\n<p>&middot;&nbsp;<strong>Ống kh&oacute;i c&ocirc;ng nghiệp</strong><strong>&nbsp;cần chống d&iacute;nh chống oxy&nbsp;</strong><strong>h&oacute;a, chống ăn m&ograve;n.</strong></p>\r\n<p><strong>Khu&ocirc;n chống d&iacute;nh:&nbsp;</strong><strong>lốp xe m&aacute;y, xe &Ocirc;t&ocirc;, khu&ocirc;n chi tiết cao su kỹ thuật.</strong></p>\r\n<p>&middot;&nbsp;<strong>Khu&ocirc;n &eacute;p định h&igrave;nh :</strong><strong>&nbsp;loại khu&ocirc;n c&oacute; lỗ h&uacute;t kh&iacute;, khu&ocirc;n dạng phẵng , dạng tr&ograve;n. ( d&ugrave;ng trong ngh&agrave;nh Dược, &eacute;p bao b&igrave; định h&igrave;nh).</strong></p>\r\n<p>&middot;&nbsp;<strong>C&aacute;c chi tiết m&aacute;y như</strong><strong>&nbsp;: dao cắt m&aacute;y đ&oacute;ng g&oacute;i, khu&ocirc;n &eacute;p bao b&igrave;, dao cắt chống d&iacute;nh.</strong></p>\r\n<p>&middot;&nbsp;<strong>Khu&ocirc;n chống d&iacute;nh b&aacute;nh</strong><strong>&nbsp;: Chocopie, shingum, , Khu&ocirc;n b&aacute;nh cống, khu&ocirc;n b&aacute;nh Champa .v.v..</strong></p>\r\n<p>&middot;&nbsp;<strong>Headter roll</strong><strong>&nbsp;: ống nh&ocirc;m chuy&ecirc;n d&ugrave;ng để h&agrave;n qui s&aacute;ch bao b&igrave; tả giấy.</strong></p>\r\n<p>&middot;&nbsp;<strong>Khu&ocirc;n h&agrave;n ống nhựa</strong><strong>&nbsp;chịu nhiệt.</strong></p>\r\n<p>&middot;&nbsp;<strong>khay nướng b&aacute;nh m&igrave;</strong><strong>&nbsp;chống d&iacute;nh, chống ch&aacute;y d&ugrave;ng cho nh&agrave; h&agrave;ng, kh&aacute;ch sạn</strong><strong>,qu&aacute;n ăn.</strong></p>\r\n<p>&middot;&nbsp;<strong>Khu&ocirc;n Inox&nbsp;</strong><strong>: d&ugrave;ng trong ngh&agrave;nh thuộc da, &eacute;p da ( giầy d&eacute;p), may mặc &ndash; chống d&iacute;nh chống ch&aacute;y.</strong></p>\r\n<p>&middot;&nbsp;<strong>Khu&ocirc;n B&aacute;nh B&ocirc;ng Lan:</strong></p>\r\n<p>&middot;&nbsp;<strong>Teflon&nbsp;</strong><strong>: d&ugrave;ng trong m&ocirc;i trường h&oacute;a chất, kh&aacute;ng axit, chống oxy h&oacute;a kim loại.c&aacute;c Loại Bồn, Phi, Chậu Inox.</strong></p>', '', 1505177069, 1505177069, 13),
(22, 'Thực hư chất chống dính cho dụng cụ nấu ăn', 'Không cọ sát kim loại vào lòng chảo; bỏ ít dầu, bơ khi chiên rán; nấu ở nhiệt độ trung bình... là những lưu ý giúp tăng tuổi thọ của chảo chống dính và bảo vệ sức khỏe. Chảo chống dính là dụng cụ thiết yếu trong nhà bếp nhờ khả năng chịu nhiệt cao, n', '<p><span>Phủ teflon chống d&iacute;nh cho tất cả c&aacute;c sản phẩm.&nbsp;D&acirc;y chuyền sản xuất của bạn bị chậm dần theo thời gian, bị ăn m&ograve;n v&agrave; bị oxi h&oacute;a. Kh&ocirc;ng cần lo lắng bạn ho&agrave;n to&agrave;n c&oacute; thể loại bỏ điều đ&oacute; nhờ lớp phủ Teflon của ch&uacute;ng t&ocirc;i.&nbsp;</span></p>\r\n<p><span>D&acirc;y chuyền sản xuất của bạn bị chậm dần theo thời gian, bị ăn m&ograve;n v&agrave; bị oxi h&oacute;a. Kh&ocirc;ng cần lo lắng bạn ho&agrave;n to&agrave;n c&oacute; thể loại bỏ điều đ&oacute; nhờ lớp phủ Teflon của ch&uacute;ng t&ocirc;i.&nbsp;</span></p>\r\n<p><span>&nbsp;</span></p>\r\n<table cellspacing=\"10\" cellpadding=\"10\" width=\"687\">\r\n<caption>\r\n<p><span><strong>C&Aacute;C C&Ocirc;NG TR&Igrave;NH THI C&Ocirc;NG</strong></span></p>\r\n</caption> \r\n<tbody>\r\n<tr>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/05/IMG_0016.jpg\"><img class=\"alignnone  wp-image-2225 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/05/IMG_0016-300x225.jpg\" alt=\"IMG_0016\" width=\"163\" height=\"122\" /></a></span></td>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-257.jpg\"><img class=\"alignnone  wp-image-2155 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-257-300x168.jpg\" alt=\"Copy (2) of Picture 257\" width=\"203\" height=\"114\" /></a></span></td>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/03/images-21.jpg\"><img class=\"wp-image-2129 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/03/images-21.jpg\" alt=\"images (2)\" width=\"202\" height=\"113\" /></a></span></td>\r\n</tr>\r\n<tr>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-218.jpg\"><img class=\"wp-image-2110 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-218-300x168.jpg\" alt=\"Copy (2) of Picture 218\" width=\"243\" height=\"136\" /></a></span></td>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-4612.jpg\"><img class=\"wp-image-2075 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-4612-300x168.jpg\" alt=\"Copy (2) of Picture 461\" width=\"218\" height=\"122\" /></a></span></td>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/03/images.jpg\"><img class=\"wp-image-2053 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/03/images.jpg\" alt=\"images\" width=\"194\" height=\"145\" /></a></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p><span>&nbsp;M&aacute;y m&oacute;c giờ đ&acirc;y được bảo vệ nhờ lớp phủ teflon an to&agrave;n v&agrave; chắc chắn. Bảo vệ trong thời gian d&agrave;i. Bảo vệ khỏi nhiệt độ cao. Bảo vệ thiết bị khỏi ăn m&ograve;n, b&aacute;m bẩn. N&acirc;ng cao thời gian sử dụng cho m&aacute;y m&oacute;c. tiết kiệm chi ph&iacute; cho nh&agrave; đầu tư. C&oacute; chần chừ g&igrave; m&agrave; kh&ocirc;ng bảo vệ từ b&ecirc;n trong cho m&aacute;y m&oacute;c của bạn.&nbsp;</span></p>', 'data_uploads/tin_tuc/plx1416107032-300x225.jpg', 1407926079, 1505177484, 14),
(23, 'Dùng chảo chống dính đúng cách để bảo vệ sức khỏe', 'Không cọ sát kim loại vào lòng chảo; bỏ ít dầu, bơ khi chiên rán; nấu ở nhiệt độ trung bình... là những lưu ý giúp tăng tuổi thọ của chảo chống dính và bảo vệ sức khỏe. Chảo chống dính là dụng cụ thiết yếu trong nhà bếp nhờ khả năng chịu nhiệt cao, n', '<p><span>Phủ teflon chống d&iacute;nh cho tất cả c&aacute;c sản phẩm.&nbsp;D&acirc;y chuyền sản xuất của bạn bị chậm dần theo thời gian, bị ăn m&ograve;n v&agrave; bị oxi h&oacute;a. Kh&ocirc;ng cần lo lắng bạn ho&agrave;n to&agrave;n c&oacute; thể loại bỏ điều đ&oacute; nhờ lớp phủ Teflon của ch&uacute;ng t&ocirc;i.&nbsp;</span></p>\r\n<p><span>D&acirc;y chuyền sản xuất của bạn bị chậm dần theo thời gian, bị ăn m&ograve;n v&agrave; bị oxi h&oacute;a. Kh&ocirc;ng cần lo lắng bạn ho&agrave;n to&agrave;n c&oacute; thể loại bỏ điều đ&oacute; nhờ lớp phủ Teflon của ch&uacute;ng t&ocirc;i.&nbsp;</span></p>\r\n<p><span>&nbsp;</span></p>\r\n<table cellspacing=\"10\" cellpadding=\"10\" width=\"687\">\r\n<caption>\r\n<p><span><strong>C&Aacute;C C&Ocirc;NG TR&Igrave;NH THI C&Ocirc;NG</strong></span></p>\r\n</caption> \r\n<tbody>\r\n<tr>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/05/IMG_0016.jpg\"><img class=\"alignnone  wp-image-2225 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/05/IMG_0016-300x225.jpg\" alt=\"IMG_0016\" width=\"163\" height=\"122\" /></a></span></td>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-257.jpg\"><img class=\"alignnone  wp-image-2155 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-257-300x168.jpg\" alt=\"Copy (2) of Picture 257\" width=\"203\" height=\"114\" /></a></span></td>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/03/images-21.jpg\"><img class=\"wp-image-2129 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/03/images-21.jpg\" alt=\"images (2)\" width=\"202\" height=\"113\" /></a></span></td>\r\n</tr>\r\n<tr>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-218.jpg\"><img class=\"wp-image-2110 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-218-300x168.jpg\" alt=\"Copy (2) of Picture 218\" width=\"243\" height=\"136\" /></a></span></td>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-4612.jpg\"><img class=\"wp-image-2075 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-4612-300x168.jpg\" alt=\"Copy (2) of Picture 461\" width=\"218\" height=\"122\" /></a></span></td>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/03/images.jpg\"><img class=\"wp-image-2053 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/03/images.jpg\" alt=\"images\" width=\"194\" height=\"145\" /></a></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p><span>&nbsp;M&aacute;y m&oacute;c giờ đ&acirc;y được bảo vệ nhờ lớp phủ teflon an to&agrave;n v&agrave; chắc chắn. Bảo vệ trong thời gian d&agrave;i. Bảo vệ khỏi nhiệt độ cao. Bảo vệ thiết bị khỏi ăn m&ograve;n, b&aacute;m bẩn. N&acirc;ng cao thời gian sử dụng cho m&aacute;y m&oacute;c. tiết kiệm chi ph&iacute; cho nh&agrave; đầu tư. C&oacute; chần chừ g&igrave; m&agrave; kh&ocirc;ng bảo vệ từ b&ecirc;n trong cho m&aacute;y m&oacute;c của bạn.&nbsp;</span></p>', 'data_uploads/tin_tuc/9.jpg', 1407926079, 1505177486, 14),
(24, 'Khám phá Công dụng của sơn chống dính chịu nhiệt', 'Không cọ sát kim loại vào lòng chảo; bỏ ít dầu, bơ khi chiên rán; nấu ở nhiệt độ trung bình... là những lưu ý giúp tăng tuổi thọ của chảo chống dính và bảo vệ sức khỏe. Chảo chống dính là dụng cụ thiết yếu trong nhà bếp nhờ khả năng chịu nhiệt cao, n', '<p><span>Phủ teflon chống d&iacute;nh cho tất cả c&aacute;c sản phẩm.&nbsp;D&acirc;y chuyền sản xuất của bạn bị chậm dần theo thời gian, bị ăn m&ograve;n v&agrave; bị oxi h&oacute;a. Kh&ocirc;ng cần lo lắng bạn ho&agrave;n to&agrave;n c&oacute; thể loại bỏ điều đ&oacute; nhờ lớp phủ Teflon của ch&uacute;ng t&ocirc;i.&nbsp;</span></p>\r\n<p><span>D&acirc;y chuyền sản xuất của bạn bị chậm dần theo thời gian, bị ăn m&ograve;n v&agrave; bị oxi h&oacute;a. Kh&ocirc;ng cần lo lắng bạn ho&agrave;n to&agrave;n c&oacute; thể loại bỏ điều đ&oacute; nhờ lớp phủ Teflon của ch&uacute;ng t&ocirc;i.&nbsp;</span></p>\r\n<p><span>&nbsp;</span></p>\r\n<table cellspacing=\"10\" cellpadding=\"10\" width=\"687\">\r\n<caption>\r\n<p><span><strong>C&Aacute;C C&Ocirc;NG TR&Igrave;NH THI C&Ocirc;NG</strong></span></p>\r\n</caption> \r\n<tbody>\r\n<tr>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/05/IMG_0016.jpg\"><img class=\"alignnone  wp-image-2225 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/05/IMG_0016-300x225.jpg\" alt=\"IMG_0016\" width=\"163\" height=\"122\" /></a></span></td>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-257.jpg\"><img class=\"alignnone  wp-image-2155 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-257-300x168.jpg\" alt=\"Copy (2) of Picture 257\" width=\"203\" height=\"114\" /></a></span></td>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/03/images-21.jpg\"><img class=\"wp-image-2129 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/03/images-21.jpg\" alt=\"images (2)\" width=\"202\" height=\"113\" /></a></span></td>\r\n</tr>\r\n<tr>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-218.jpg\"><img class=\"wp-image-2110 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-218-300x168.jpg\" alt=\"Copy (2) of Picture 218\" width=\"243\" height=\"136\" /></a></span></td>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-4612.jpg\"><img class=\"wp-image-2075 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Copy-2-of-Picture-4612-300x168.jpg\" alt=\"Copy (2) of Picture 461\" width=\"218\" height=\"122\" /></a></span></td>\r\n<td><span><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/03/images.jpg\"><img class=\"wp-image-2053 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/03/images.jpg\" alt=\"images\" width=\"194\" height=\"145\" /></a></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p><span>&nbsp;M&aacute;y m&oacute;c giờ đ&acirc;y được bảo vệ nhờ lớp phủ teflon an to&agrave;n v&agrave; chắc chắn. Bảo vệ trong thời gian d&agrave;i. Bảo vệ khỏi nhiệt độ cao. Bảo vệ thiết bị khỏi ăn m&ograve;n, b&aacute;m bẩn. N&acirc;ng cao thời gian sử dụng cho m&aacute;y m&oacute;c. tiết kiệm chi ph&iacute; cho nh&agrave; đầu tư. C&oacute; chần chừ g&igrave; m&agrave; kh&ocirc;ng bảo vệ từ b&ecirc;n trong cho m&aacute;y m&oacute;c của bạn.&nbsp;</span></p>', 'data_uploads/tin_tuc/4-7123-1413525402-300x136.jpg', 1407926079, 1505177488, 14);

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`content`) VALUES
('<p><strong><span style=\"font-family: arial,helvetica,sans-serif; font-size: medium;\">Đối t&aacute;c giao dịch</span></strong></p>');

-- --------------------------------------------------------

--
-- Table structure for table `parttent`
--

CREATE TABLE `parttent` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `path` varchar(200) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `ord` int(3) UNSIGNED DEFAULT NULL,
  `active` int(1) UNSIGNED DEFAULT NULL,
  `metakeyword` varchar(200) NOT NULL,
  `metadescription` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parttent`
--

INSERT INTO `parttent` (`id`, `name`, `path`, `url`, `ord`, `active`, `metakeyword`, `metadescription`) VALUES
(10, 'Thi công mạng LAN', 'images/partner/kenhnhansu.png', '#', 0, 1, '', ''),
(11, 'Thi công mạng nội bộ', 'images/partner/MAC.png', '#', 0, 1, '', ''),
(13, 'MAC', 'images/partner/thicongmang.png', 'noithat.org.vn', 0, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `catid` int(3) NOT NULL,
  `p_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_name_alias` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `p_detail` text COLLATE utf8_unicode_ci,
  `p_image` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_image_thumb` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(2) DEFAULT '1',
  `khuyenmai` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(11) NOT NULL,
  `noibat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `catid`, `p_name`, `p_name_alias`, `p_description`, `p_detail`, `p_image`, `p_image_thumb`, `status`, `khuyenmai`, `gia`, `noibat`) VALUES
(25, 25, 'CHỐNG DÍNH KHAY LÀM BÁNH MỲ', 'chong-dinh-khay-lam-banh-my', '', '<p><strong>Phủ chống d&iacute;nh khay l&agrave;m b&aacute;nh mỳ</strong>&nbsp;sử dụng C&ocirc;ng nghệ tạo lớp phủ chuyển tiếp bề mặt nano-TERLON&nbsp;đ&atilde; được nh&oacute;m chuy&ecirc;n gia thuộc Ph&ograve;ng C&ocirc;ng nghệ c&aacute;c vật liệu ti&ecirc;n tiến, Trung t&acirc;m Ph&aacute;t triển c&ocirc;ng nghệ cao, Viện H&agrave;n l&acirc;m Khoa học v&agrave; C&ocirc;ng nghệ Việt Mỹ&nbsp;nghi&ecirc;n cứu ứng dụng v&agrave;o c&aacute;c c&ocirc;ng đoạn tiền xử l&yacute; trong c&aacute;c d&acirc;y chuyền sơn tĩnh điện v&agrave; đ&atilde; được&nbsp;<strong>CH&Ocirc;NG D&Iacute;NH KIM LOẠI VIỆT MỸ</strong>&nbsp;thực h&agrave;nh thiết kế v&agrave; chế tạo th&agrave;nh c&ocirc;ng c&aacute;c l&ograve; sấy hồng ngoại x&uacute;c t&aacute;c cho c&aacute;c d&acirc;y chuyền sơn tĩnh điện</p>\r\n<p><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\"><img class=\" wp-image-1993 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\" alt=\"Ch_ng d&iacute;nh khu&ocirc;n b&aacute;nh Chocobie\" width=\"348\" height=\"261\" /></a></p>\r\n<p>&nbsp;</p>\r\n<p><span><strong>Hottline:&nbsp;<span>0932 278 282</span></strong></span></p>\r\n<p>Chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ l&agrave; đơn vị chuy&ecirc;n nghiệp , với đội ngũ c&ocirc;ng nh&acirc;n l&agrave;nh nghề nhiều năm kinh nghiệm trong lĩnh vực sơn, phủ chống d&iacute;nh tr&ecirc;n mọi bề mặt Kim loại như : Nh&ocirc;m, Đồng, inox, sắt.v.v.. .&nbsp;<strong>Cam kết chất lượng,</strong>&nbsp;đảm bảo đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu khắc khe trong m&ocirc;i trường GMP, Hccp.&nbsp;Chống d&iacute;nh tốt, chịu được nhiệt độ 400&nbsp;độ C.</p>\r\n<p>C&aacute;c sản phẩm&nbsp;<a title=\"C&aacute;c sản phẩm chống d&iacute;nh kim loại\" href=\"http://chongdinhkimloai.com/san-pham/\"><strong>chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ</strong>&nbsp;</a>đ&atilde; v&agrave; đang thực hiện:</p>\r\n<p>Mạ l&ocirc; sấy m&aacute;y photo c&aacute;c loại. L&Ocirc; SẤY&nbsp; A4- Ao&hellip;&nbsp;-TOSIBA , RICOL 1-2 ,&hellip;..</p>\r\n<p>Khu&ocirc;n mẫu găng tay hợp kim/ chống d&iacute;nh&nbsp; Teflon của Mỹ th&aacute;ch thức với mọi h&oacute;a chất acid/baze&hellip; chịu m&agrave;i m&ograve;n /chịu nhiệt độ 0-500 độ C .</p>\r\n<p>Chống d&iacute;nh l&ocirc; sấy m&aacute;y &eacute;p c&ocirc;ng nghiệp.</p>\r\n<p>Chống d&iacute;nh ,chịu nhiệt c&aacute;c khu&ocirc;n l&agrave;m b&aacute;nh kẹo,thực phẩm,c&aacute;c vật d&ugrave;ng nồi chảo,dao,khay&hellip;..</p>\r\n<p>Chống d&iacute;nh ng&agrave;nh dược phẩm,y tế hospital&hellip;</p>\r\n<p>Chống d&iacute;nh vật dụng ng&agrave;nh bếp cho hotel, restaurent, khu&ocirc;n nướng, vỉ nướng&hellip;.</p>\r\n<p>Chống d&iacute;nh, chịu nhiệt c&aacute;c thiết bị l&ograve; đốt c&ocirc;ng nghiệp</p>\r\n<p>Nhận gia c&ocirc;ng chống d&iacute;nh với số lượng lớn tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận sơn phủ chịu nhiệt tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận chống d&iacute;nh c&aacute;c loại ra răng &ocirc; t&ocirc;, thiết bị chịu nhiệt của &ocirc; t&ocirc;, t&agrave;u thủy&hellip;&hellip;với số lượng lớn</p>\r\n<p>Chống d&iacute;nh c&aacute;c loại thiết bị ng&agrave;nh nước như ống nước,c&uacute;t,nối&hellip;.c&ocirc;ng nghiệp số lượng lớn</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c thiết bị ngo&agrave;i trời với thời tiết khắc nghiệt, điều kiện nước biển,acid</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c loại bulong,ốc v&iacute;t cho điều kiện m&ocirc;i trường khắc nghiệt</p>\r\n<p>Chống d&iacute;nh mặt b&agrave;n l&agrave; ,thanh nhiệt cho nh&agrave; m&aacute;y dệt may</p>\r\n<p>Chống d&iacute;nh chịu nhiệt khu&ocirc;n găng tay cho nh&agrave; m&aacute;y sản xuất găng tay y tế xuất khẩu</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho b&agrave;n ủi giặt l&agrave;</p>\r\n<p>Phủ teflon cho c&aacute;c thiết bị b&igrave;nh đựng ga/b&igrave;nh ga tủ lạnh/điều h&ograve;a /m&aacute;y bảo &ocirc;n&hellip;&hellip;.</p>\r\n<p>B&igrave;nh chế tạo thiết bị nhiệt độ thấp để chứa đựng kh&ocirc;ng kh&iacute; lỏng</p>\r\n<p>Chế tạo c&aacute;c b&igrave;nh phản ứng chịu ăn m&ograve;n, vỏ b&igrave;nh acquy, l&agrave;m tấm lọc</p>\r\n<p>Chế tạo c&aacute;c lớp vỏ c&aacute;ch điện rất mỏng, chỉ cần 15&nbsp;micromet&nbsp;l&agrave; đ&atilde; c&oacute; một m&agrave;ng c&aacute;ch điện ho&agrave;n hảo</p>\r\n<p>Chế tạo rađa, vật liệu th&ocirc;ng tin cao tần, thiết bị s&oacute;ng ngắn</p>\r\n<p>Phủ bề mặt&nbsp;c&ocirc;ng nghiệp đ&ocirc;ng lạnh,&nbsp;c&ocirc;ng nghiệp ho&aacute; học,&nbsp;c&ocirc;ng nghiệp điện,&nbsp;c&ocirc;ng nghiệp thực phẩm,&nbsp;c&ocirc;ng nghiệp y dược&hellip;&hellip;</p>\r\n<p>Phủ bề mặt chống d&iacute;nh tất cả c&aacute;c thiết bị ngo&agrave;i trời như đ&egrave;n c&ocirc;ng cộng chiếu s&aacute;ng&hellip;tr&aacute;nh bị ghỉ s&eacute;t độ bền rất cao</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho mọi thiết bị,chủng loại nếu qu&yacute; kh&aacute;ch c&oacute; nhu cầu</p>\r\n<p><span><strong>Hottline:&nbsp;<span>0932 278 282</span></strong></span></p>\r\n<p><strong>SẢN PHẨM Đ&Uacute;C V&Agrave; TIỆN CNC</strong>(sản xuất theo đơn đặt h&agrave;ng)Sản phẩm mẫu&nbsp;,thiết kế sản phẩm 3D,thiết kế khu&ocirc;n&nbsp;,đặt ph&ocirc;i th&eacute;p v&agrave; phụ kiện khu&ocirc;n&nbsp;,lập tr&igrave;nh c&ocirc;ng nghệ gia c&ocirc;ng CNC,gia c&ocirc;ng l&ograve;ng khu&ocirc;n,đ&aacute;nh b&oacute;ng,lắp&nbsp;r&aacute;p,thử khu&ocirc;n</p>\r\n<p>Khu&ocirc;n nh&ocirc;m / hợp kim nh&ocirc;m c&aacute;c loại/chi tiết phụ t&ugrave;ng &ocirc; t&ocirc; xe m&aacute;y/t&agrave;u thủy&hellip;.</p>\r\n<p>Khu&ocirc;n đ&uacute;c găng tay chống d&iacute;nh chịu nhiệt, khu&acirc;n ủng cao su, nhựa c&aacute;c loai</p>\r\n<p>Khu&ocirc;n b&aacute;nh kẹo/thực phẩm c&aacute;c loại</p>\r\n<p>Khu&ocirc;n cho l&ograve; nướng chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n inox chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n dược phẩm /th&ugrave;ng chống d&iacute;nh c&aacute;c loại</p>\r\n<p>Dao cắt thực phẩm c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa h&oacute;a chất c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa bột c&aacute;c loại</p>\r\n<p><strong><span>CHỐNG D&Iacute;NH KIM LOẠI VIỆT MỸ &ndash; CHỐNG D&Iacute;NH AN TO&Agrave;N</span></strong></p>\r\n<p><strong><span>ĐẢM BẢO CHẤT LƯỢNG &ndash; UY T&Iacute;N H&Agrave;NG ĐẦU</span></strong></p>\r\n<p><strong><span>Hottline:&nbsp;<span>0932 278 282</span></span></strong></p>', 'data_uploads/product/xxxx1.jpg', 'data_uploads/product/thumb/xxxx1.jpg', 1, '', 20985000, 0),
(27, 25, 'ANH NHIỆT MÁY ÉP BÔNG ĐỆM HÀN QUỐC', 'anh-nhiet-may-ep-bong-dem-han-quoc', '', '<p><strong>Phủ chống d&iacute;nh khay l&agrave;m b&aacute;nh mỳ</strong>&nbsp;sử dụng C&ocirc;ng nghệ tạo lớp phủ chuyển tiếp bề mặt nano-TERLON&nbsp;đ&atilde; được nh&oacute;m chuy&ecirc;n gia thuộc Ph&ograve;ng C&ocirc;ng nghệ c&aacute;c vật liệu ti&ecirc;n tiến, Trung t&acirc;m Ph&aacute;t triển c&ocirc;ng nghệ cao, Viện H&agrave;n l&acirc;m Khoa học v&agrave; C&ocirc;ng nghệ Việt Mỹ&nbsp;nghi&ecirc;n cứu ứng dụng v&agrave;o c&aacute;c c&ocirc;ng đoạn tiền xử l&yacute; trong c&aacute;c d&acirc;y chuyền sơn tĩnh điện v&agrave; đ&atilde; được&nbsp;<strong>CH&Ocirc;NG D&Iacute;NH KIM LOẠI VIỆT MỸ</strong>&nbsp;thực h&agrave;nh thiết kế v&agrave; chế tạo th&agrave;nh c&ocirc;ng c&aacute;c l&ograve; sấy hồng ngoại x&uacute;c t&aacute;c cho c&aacute;c d&acirc;y chuyền sơn tĩnh điện</p>\r\n<p><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\"><img class=\" wp-image-1993 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\" alt=\"Ch_ng d&iacute;nh khu&ocirc;n b&aacute;nh Chocobie\" width=\"348\" height=\"261\" /></a></p>\r\n<p>&nbsp;</p>\r\n<p><span><strong>Hottline:&nbsp;<span>0932 278 282</span></strong></span></p>\r\n<p>Chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ l&agrave; đơn vị chuy&ecirc;n nghiệp , với đội ngũ c&ocirc;ng nh&acirc;n l&agrave;nh nghề nhiều năm kinh nghiệm trong lĩnh vực sơn, phủ chống d&iacute;nh tr&ecirc;n mọi bề mặt Kim loại như : Nh&ocirc;m, Đồng, inox, sắt.v.v.. .&nbsp;<strong>Cam kết chất lượng,</strong>&nbsp;đảm bảo đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu khắc khe trong m&ocirc;i trường GMP, Hccp.&nbsp;Chống d&iacute;nh tốt, chịu được nhiệt độ 400&nbsp;độ C.</p>\r\n<p>C&aacute;c sản phẩm&nbsp;<a title=\"C&aacute;c sản phẩm chống d&iacute;nh kim loại\" href=\"http://chongdinhkimloai.com/san-pham/\"><strong>chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ</strong>&nbsp;</a>đ&atilde; v&agrave; đang thực hiện:</p>\r\n<p>Mạ l&ocirc; sấy m&aacute;y photo c&aacute;c loại. L&Ocirc; SẤY&nbsp; A4- Ao&hellip;&nbsp;-TOSIBA , RICOL 1-2 ,&hellip;..</p>\r\n<p>Khu&ocirc;n mẫu găng tay hợp kim/ chống d&iacute;nh&nbsp; Teflon của Mỹ th&aacute;ch thức với mọi h&oacute;a chất acid/baze&hellip; chịu m&agrave;i m&ograve;n /chịu nhiệt độ 0-500 độ C .</p>\r\n<p>Chống d&iacute;nh l&ocirc; sấy m&aacute;y &eacute;p c&ocirc;ng nghiệp.</p>\r\n<p>Chống d&iacute;nh ,chịu nhiệt c&aacute;c khu&ocirc;n l&agrave;m b&aacute;nh kẹo,thực phẩm,c&aacute;c vật d&ugrave;ng nồi chảo,dao,khay&hellip;..</p>\r\n<p>Chống d&iacute;nh ng&agrave;nh dược phẩm,y tế hospital&hellip;</p>\r\n<p>Chống d&iacute;nh vật dụng ng&agrave;nh bếp cho hotel, restaurent, khu&ocirc;n nướng, vỉ nướng&hellip;.</p>\r\n<p>Chống d&iacute;nh, chịu nhiệt c&aacute;c thiết bị l&ograve; đốt c&ocirc;ng nghiệp</p>\r\n<p>Nhận gia c&ocirc;ng chống d&iacute;nh với số lượng lớn tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận sơn phủ chịu nhiệt tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận chống d&iacute;nh c&aacute;c loại ra răng &ocirc; t&ocirc;, thiết bị chịu nhiệt của &ocirc; t&ocirc;, t&agrave;u thủy&hellip;&hellip;với số lượng lớn</p>\r\n<p>Chống d&iacute;nh c&aacute;c loại thiết bị ng&agrave;nh nước như ống nước,c&uacute;t,nối&hellip;.c&ocirc;ng nghiệp số lượng lớn</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c thiết bị ngo&agrave;i trời với thời tiết khắc nghiệt, điều kiện nước biển,acid</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c loại bulong,ốc v&iacute;t cho điều kiện m&ocirc;i trường khắc nghiệt</p>\r\n<p>Chống d&iacute;nh mặt b&agrave;n l&agrave; ,thanh nhiệt cho nh&agrave; m&aacute;y dệt may</p>\r\n<p>Chống d&iacute;nh chịu nhiệt khu&ocirc;n găng tay cho nh&agrave; m&aacute;y sản xuất găng tay y tế xuất khẩu</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho b&agrave;n ủi giặt l&agrave;</p>\r\n<p>Phủ teflon cho c&aacute;c thiết bị b&igrave;nh đựng ga/b&igrave;nh ga tủ lạnh/điều h&ograve;a /m&aacute;y bảo &ocirc;n&hellip;&hellip;.</p>\r\n<p>B&igrave;nh chế tạo thiết bị nhiệt độ thấp để chứa đựng kh&ocirc;ng kh&iacute; lỏng</p>\r\n<p>Chế tạo c&aacute;c b&igrave;nh phản ứng chịu ăn m&ograve;n, vỏ b&igrave;nh acquy, l&agrave;m tấm lọc</p>\r\n<p>Chế tạo c&aacute;c lớp vỏ c&aacute;ch điện rất mỏng, chỉ cần 15&nbsp;micromet&nbsp;l&agrave; đ&atilde; c&oacute; một m&agrave;ng c&aacute;ch điện ho&agrave;n hảo</p>\r\n<p>Chế tạo rađa, vật liệu th&ocirc;ng tin cao tần, thiết bị s&oacute;ng ngắn</p>\r\n<p>Phủ bề mặt&nbsp;c&ocirc;ng nghiệp đ&ocirc;ng lạnh,&nbsp;c&ocirc;ng nghiệp ho&aacute; học,&nbsp;c&ocirc;ng nghiệp điện,&nbsp;c&ocirc;ng nghiệp thực phẩm,&nbsp;c&ocirc;ng nghiệp y dược&hellip;&hellip;</p>\r\n<p>Phủ bề mặt chống d&iacute;nh tất cả c&aacute;c thiết bị ngo&agrave;i trời như đ&egrave;n c&ocirc;ng cộng chiếu s&aacute;ng&hellip;tr&aacute;nh bị ghỉ s&eacute;t độ bền rất cao</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho mọi thiết bị,chủng loại nếu qu&yacute; kh&aacute;ch c&oacute; nhu cầu</p>\r\n<p><span><strong>Hottline:&nbsp;<span>0932 278 282</span></strong></span></p>\r\n<p><strong>SẢN PHẨM Đ&Uacute;C V&Agrave; TIỆN CNC</strong>(sản xuất theo đơn đặt h&agrave;ng)Sản phẩm mẫu&nbsp;,thiết kế sản phẩm 3D,thiết kế khu&ocirc;n&nbsp;,đặt ph&ocirc;i th&eacute;p v&agrave; phụ kiện khu&ocirc;n&nbsp;,lập tr&igrave;nh c&ocirc;ng nghệ gia c&ocirc;ng CNC,gia c&ocirc;ng l&ograve;ng khu&ocirc;n,đ&aacute;nh b&oacute;ng,lắp&nbsp;r&aacute;p,thử khu&ocirc;n</p>\r\n<p>Khu&ocirc;n nh&ocirc;m / hợp kim nh&ocirc;m c&aacute;c loại/chi tiết phụ t&ugrave;ng &ocirc; t&ocirc; xe m&aacute;y/t&agrave;u thủy&hellip;.</p>\r\n<p>Khu&ocirc;n đ&uacute;c găng tay chống d&iacute;nh chịu nhiệt, khu&acirc;n ủng cao su, nhựa c&aacute;c loai</p>\r\n<p>Khu&ocirc;n b&aacute;nh kẹo/thực phẩm c&aacute;c loại</p>\r\n<p>Khu&ocirc;n cho l&ograve; nướng chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n inox chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n dược phẩm /th&ugrave;ng chống d&iacute;nh c&aacute;c loại</p>\r\n<p>Dao cắt thực phẩm c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa h&oacute;a chất c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa bột c&aacute;c loại</p>\r\n<p><strong><span>CHỐNG D&Iacute;NH KIM LOẠI VIỆT MỸ &ndash; CHỐNG D&Iacute;NH AN TO&Agrave;N</span></strong></p>\r\n<p><strong><span>ĐẢM BẢO CHẤT LƯỢNG &ndash; UY T&Iacute;N H&Agrave;NG ĐẦU</span></strong></p>\r\n<p><strong><span>Hottline:&nbsp;<span>0932 278 282</span></span></strong></p>', 'data_uploads/product/IMG_0016-300x2251.jpg', 'data_uploads/product/thumb/IMG_0016-300x2251.jpg', 1, '', 16520000, 0),
(26, 25, 'ANH NHIỆT MÁY ÉP BÔNG ĐỆM HÀN QUỐC', 'anh-nhiet-may-ep-bong-dem-han-quoc', '', '<p><strong>Phủ chống d&iacute;nh khay l&agrave;m b&aacute;nh mỳ</strong>&nbsp;sử dụng C&ocirc;ng nghệ tạo lớp phủ chuyển tiếp bề mặt nano-TERLON&nbsp;đ&atilde; được nh&oacute;m chuy&ecirc;n gia thuộc Ph&ograve;ng C&ocirc;ng nghệ c&aacute;c vật liệu ti&ecirc;n tiến, Trung t&acirc;m Ph&aacute;t triển c&ocirc;ng nghệ cao, Viện H&agrave;n l&acirc;m Khoa học v&agrave; C&ocirc;ng nghệ Việt Mỹ&nbsp;nghi&ecirc;n cứu ứng dụng v&agrave;o c&aacute;c c&ocirc;ng đoạn tiền xử l&yacute; trong c&aacute;c d&acirc;y chuyền sơn tĩnh điện v&agrave; đ&atilde; được&nbsp;<strong>CH&Ocirc;NG D&Iacute;NH KIM LOẠI VIỆT MỸ</strong>&nbsp;thực h&agrave;nh thiết kế v&agrave; chế tạo th&agrave;nh c&ocirc;ng c&aacute;c l&ograve; sấy hồng ngoại x&uacute;c t&aacute;c cho c&aacute;c d&acirc;y chuyền sơn tĩnh điện</p>\r\n<p><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\"><img class=\" wp-image-1993 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\" alt=\"Ch_ng d&iacute;nh khu&ocirc;n b&aacute;nh Chocobie\" width=\"348\" height=\"261\" /></a></p>\r\n<p>&nbsp;</p>\r\n<p><span><strong>Hottline:&nbsp;<span>0932 278 282</span></strong></span></p>\r\n<p>Chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ l&agrave; đơn vị chuy&ecirc;n nghiệp , với đội ngũ c&ocirc;ng nh&acirc;n l&agrave;nh nghề nhiều năm kinh nghiệm trong lĩnh vực sơn, phủ chống d&iacute;nh tr&ecirc;n mọi bề mặt Kim loại như : Nh&ocirc;m, Đồng, inox, sắt.v.v.. .&nbsp;<strong>Cam kết chất lượng,</strong>&nbsp;đảm bảo đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu khắc khe trong m&ocirc;i trường GMP, Hccp.&nbsp;Chống d&iacute;nh tốt, chịu được nhiệt độ 400&nbsp;độ C.</p>\r\n<p>C&aacute;c sản phẩm&nbsp;<a title=\"C&aacute;c sản phẩm chống d&iacute;nh kim loại\" href=\"http://chongdinhkimloai.com/san-pham/\"><strong>chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ</strong>&nbsp;</a>đ&atilde; v&agrave; đang thực hiện:</p>\r\n<p>Mạ l&ocirc; sấy m&aacute;y photo c&aacute;c loại. L&Ocirc; SẤY&nbsp; A4- Ao&hellip;&nbsp;-TOSIBA , RICOL 1-2 ,&hellip;..</p>\r\n<p>Khu&ocirc;n mẫu găng tay hợp kim/ chống d&iacute;nh&nbsp; Teflon của Mỹ th&aacute;ch thức với mọi h&oacute;a chất acid/baze&hellip; chịu m&agrave;i m&ograve;n /chịu nhiệt độ 0-500 độ C .</p>\r\n<p>Chống d&iacute;nh l&ocirc; sấy m&aacute;y &eacute;p c&ocirc;ng nghiệp.</p>\r\n<p>Chống d&iacute;nh ,chịu nhiệt c&aacute;c khu&ocirc;n l&agrave;m b&aacute;nh kẹo,thực phẩm,c&aacute;c vật d&ugrave;ng nồi chảo,dao,khay&hellip;..</p>\r\n<p>Chống d&iacute;nh ng&agrave;nh dược phẩm,y tế hospital&hellip;</p>\r\n<p>Chống d&iacute;nh vật dụng ng&agrave;nh bếp cho hotel, restaurent, khu&ocirc;n nướng, vỉ nướng&hellip;.</p>\r\n<p>Chống d&iacute;nh, chịu nhiệt c&aacute;c thiết bị l&ograve; đốt c&ocirc;ng nghiệp</p>\r\n<p>Nhận gia c&ocirc;ng chống d&iacute;nh với số lượng lớn tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận sơn phủ chịu nhiệt tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận chống d&iacute;nh c&aacute;c loại ra răng &ocirc; t&ocirc;, thiết bị chịu nhiệt của &ocirc; t&ocirc;, t&agrave;u thủy&hellip;&hellip;với số lượng lớn</p>\r\n<p>Chống d&iacute;nh c&aacute;c loại thiết bị ng&agrave;nh nước như ống nước,c&uacute;t,nối&hellip;.c&ocirc;ng nghiệp số lượng lớn</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c thiết bị ngo&agrave;i trời với thời tiết khắc nghiệt, điều kiện nước biển,acid</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c loại bulong,ốc v&iacute;t cho điều kiện m&ocirc;i trường khắc nghiệt</p>\r\n<p>Chống d&iacute;nh mặt b&agrave;n l&agrave; ,thanh nhiệt cho nh&agrave; m&aacute;y dệt may</p>\r\n<p>Chống d&iacute;nh chịu nhiệt khu&ocirc;n găng tay cho nh&agrave; m&aacute;y sản xuất găng tay y tế xuất khẩu</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho b&agrave;n ủi giặt l&agrave;</p>\r\n<p>Phủ teflon cho c&aacute;c thiết bị b&igrave;nh đựng ga/b&igrave;nh ga tủ lạnh/điều h&ograve;a /m&aacute;y bảo &ocirc;n&hellip;&hellip;.</p>\r\n<p>B&igrave;nh chế tạo thiết bị nhiệt độ thấp để chứa đựng kh&ocirc;ng kh&iacute; lỏng</p>\r\n<p>Chế tạo c&aacute;c b&igrave;nh phản ứng chịu ăn m&ograve;n, vỏ b&igrave;nh acquy, l&agrave;m tấm lọc</p>\r\n<p>Chế tạo c&aacute;c lớp vỏ c&aacute;ch điện rất mỏng, chỉ cần 15&nbsp;micromet&nbsp;l&agrave; đ&atilde; c&oacute; một m&agrave;ng c&aacute;ch điện ho&agrave;n hảo</p>\r\n<p>Chế tạo rađa, vật liệu th&ocirc;ng tin cao tần, thiết bị s&oacute;ng ngắn</p>\r\n<p>Phủ bề mặt&nbsp;c&ocirc;ng nghiệp đ&ocirc;ng lạnh,&nbsp;c&ocirc;ng nghiệp ho&aacute; học,&nbsp;c&ocirc;ng nghiệp điện,&nbsp;c&ocirc;ng nghiệp thực phẩm,&nbsp;c&ocirc;ng nghiệp y dược&hellip;&hellip;</p>\r\n<p>Phủ bề mặt chống d&iacute;nh tất cả c&aacute;c thiết bị ngo&agrave;i trời như đ&egrave;n c&ocirc;ng cộng chiếu s&aacute;ng&hellip;tr&aacute;nh bị ghỉ s&eacute;t độ bền rất cao</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho mọi thiết bị,chủng loại nếu qu&yacute; kh&aacute;ch c&oacute; nhu cầu</p>\r\n<p><span><strong>Hottline:&nbsp;<span>0932 278 282</span></strong></span></p>\r\n<p><strong>SẢN PHẨM Đ&Uacute;C V&Agrave; TIỆN CNC</strong>(sản xuất theo đơn đặt h&agrave;ng)Sản phẩm mẫu&nbsp;,thiết kế sản phẩm 3D,thiết kế khu&ocirc;n&nbsp;,đặt ph&ocirc;i th&eacute;p v&agrave; phụ kiện khu&ocirc;n&nbsp;,lập tr&igrave;nh c&ocirc;ng nghệ gia c&ocirc;ng CNC,gia c&ocirc;ng l&ograve;ng khu&ocirc;n,đ&aacute;nh b&oacute;ng,lắp&nbsp;r&aacute;p,thử khu&ocirc;n</p>\r\n<p>Khu&ocirc;n nh&ocirc;m / hợp kim nh&ocirc;m c&aacute;c loại/chi tiết phụ t&ugrave;ng &ocirc; t&ocirc; xe m&aacute;y/t&agrave;u thủy&hellip;.</p>\r\n<p>Khu&ocirc;n đ&uacute;c găng tay chống d&iacute;nh chịu nhiệt, khu&acirc;n ủng cao su, nhựa c&aacute;c loai</p>\r\n<p>Khu&ocirc;n b&aacute;nh kẹo/thực phẩm c&aacute;c loại</p>\r\n<p>Khu&ocirc;n cho l&ograve; nướng chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n inox chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n dược phẩm /th&ugrave;ng chống d&iacute;nh c&aacute;c loại</p>\r\n<p>Dao cắt thực phẩm c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa h&oacute;a chất c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa bột c&aacute;c loại</p>\r\n<p><strong><span>CHỐNG D&Iacute;NH KIM LOẠI VIỆT MỸ &ndash; CHỐNG D&Iacute;NH AN TO&Agrave;N</span></strong></p>\r\n<p><strong><span>ĐẢM BẢO CHẤT LƯỢNG &ndash; UY T&Iacute;N H&Agrave;NG ĐẦU</span></strong></p>\r\n<p><strong><span>Hottline:&nbsp;<span>0932 278 282</span></span></strong></p>', 'data_uploads/product/IMG_0016-300x2252.jpg', 'data_uploads/product/thumb/IMG_0016-300x2252.jpg', 1, '', 1445000, 0),
(29, 25, 'CHỐNG DÍNH KHAY LÀM BÁNH MỲ', 'chong-dinh-khay-lam-banh-my', '', '<p><strong>Phủ chống d&iacute;nh khay l&agrave;m b&aacute;nh mỳ</strong>&nbsp;sử dụng C&ocirc;ng nghệ tạo lớp phủ chuyển tiếp bề mặt nano-TERLON&nbsp;đ&atilde; được nh&oacute;m chuy&ecirc;n gia thuộc Ph&ograve;ng C&ocirc;ng nghệ c&aacute;c vật liệu ti&ecirc;n tiến, Trung t&acirc;m Ph&aacute;t triển c&ocirc;ng nghệ cao, Viện H&agrave;n l&acirc;m Khoa học v&agrave; C&ocirc;ng nghệ Việt Mỹ&nbsp;nghi&ecirc;n cứu ứng dụng v&agrave;o c&aacute;c c&ocirc;ng đoạn tiền xử l&yacute; trong c&aacute;c d&acirc;y chuyền sơn tĩnh điện v&agrave; đ&atilde; được&nbsp;<strong>CH&Ocirc;NG D&Iacute;NH KIM LOẠI VIỆT MỸ</strong>&nbsp;thực h&agrave;nh thiết kế v&agrave; chế tạo th&agrave;nh c&ocirc;ng c&aacute;c l&ograve; sấy hồng ngoại x&uacute;c t&aacute;c cho c&aacute;c d&acirc;y chuyền sơn tĩnh điện</p>\r\n<p><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\"><img class=\" wp-image-1993 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\" alt=\"Ch_ng d&iacute;nh khu&ocirc;n b&aacute;nh Chocobie\" width=\"348\" height=\"261\" /></a></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<p>Chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ l&agrave; đơn vị chuy&ecirc;n nghiệp , với đội ngũ c&ocirc;ng nh&acirc;n l&agrave;nh nghề nhiều năm kinh nghiệm trong lĩnh vực sơn, phủ chống d&iacute;nh tr&ecirc;n mọi bề mặt Kim loại như : Nh&ocirc;m, Đồng, inox, sắt.v.v.. .&nbsp;<strong>Cam kết chất lượng,</strong>&nbsp;đảm bảo đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu khắc khe trong m&ocirc;i trường GMP, Hccp.&nbsp;Chống d&iacute;nh tốt, chịu được nhiệt độ 400&nbsp;độ C.</p>\r\n<p>C&aacute;c sản phẩm&nbsp;<a title=\"C&aacute;c sản phẩm chống d&iacute;nh kim loại\" href=\"http://chongdinhkimloai.com/san-pham/\"><strong>chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ</strong>&nbsp;</a>đ&atilde; v&agrave; đang thực hiện:</p>\r\n<p>Mạ l&ocirc; sấy m&aacute;y photo c&aacute;c loại. L&Ocirc; SẤY&nbsp; A4- Ao&hellip;&nbsp;-TOSIBA , RICOL 1-2 ,&hellip;..</p>\r\n<p>Khu&ocirc;n mẫu găng tay hợp kim/ chống d&iacute;nh&nbsp; Teflon của Mỹ th&aacute;ch thức với mọi h&oacute;a chất acid/baze&hellip; chịu m&agrave;i m&ograve;n /chịu nhiệt độ 0-500 độ C .</p>\r\n<p>Chống d&iacute;nh l&ocirc; sấy m&aacute;y &eacute;p c&ocirc;ng nghiệp.</p>\r\n<p>Chống d&iacute;nh ,chịu nhiệt c&aacute;c khu&ocirc;n l&agrave;m b&aacute;nh kẹo,thực phẩm,c&aacute;c vật d&ugrave;ng nồi chảo,dao,khay&hellip;..</p>\r\n<p>Chống d&iacute;nh ng&agrave;nh dược phẩm,y tế hospital&hellip;</p>\r\n<p>Chống d&iacute;nh vật dụng ng&agrave;nh bếp cho hotel, restaurent, khu&ocirc;n nướng, vỉ nướng&hellip;.</p>\r\n<p>Chống d&iacute;nh, chịu nhiệt c&aacute;c thiết bị l&ograve; đốt c&ocirc;ng nghiệp</p>\r\n<p>Nhận gia c&ocirc;ng chống d&iacute;nh với số lượng lớn tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận sơn phủ chịu nhiệt tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận chống d&iacute;nh c&aacute;c loại ra răng &ocirc; t&ocirc;, thiết bị chịu nhiệt của &ocirc; t&ocirc;, t&agrave;u thủy&hellip;&hellip;với số lượng lớn</p>\r\n<p>Chống d&iacute;nh c&aacute;c loại thiết bị ng&agrave;nh nước như ống nước,c&uacute;t,nối&hellip;.c&ocirc;ng nghiệp số lượng lớn</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c thiết bị ngo&agrave;i trời với thời tiết khắc nghiệt, điều kiện nước biển,acid</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c loại bulong,ốc v&iacute;t cho điều kiện m&ocirc;i trường khắc nghiệt</p>\r\n<p>Chống d&iacute;nh mặt b&agrave;n l&agrave; ,thanh nhiệt cho nh&agrave; m&aacute;y dệt may</p>\r\n<p>Chống d&iacute;nh chịu nhiệt khu&ocirc;n găng tay cho nh&agrave; m&aacute;y sản xuất găng tay y tế xuất khẩu</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho b&agrave;n ủi giặt l&agrave;</p>\r\n<p>Phủ teflon cho c&aacute;c thiết bị b&igrave;nh đựng ga/b&igrave;nh ga tủ lạnh/điều h&ograve;a /m&aacute;y bảo &ocirc;n&hellip;&hellip;.</p>\r\n<p>B&igrave;nh chế tạo thiết bị nhiệt độ thấp để chứa đựng kh&ocirc;ng kh&iacute; lỏng</p>\r\n<p>Chế tạo c&aacute;c b&igrave;nh phản ứng chịu ăn m&ograve;n, vỏ b&igrave;nh acquy, l&agrave;m tấm lọc</p>\r\n<p>Chế tạo c&aacute;c lớp vỏ c&aacute;ch điện rất mỏng, chỉ cần 15&nbsp;micromet&nbsp;l&agrave; đ&atilde; c&oacute; một m&agrave;ng c&aacute;ch điện ho&agrave;n hảo</p>\r\n<p>Chế tạo rađa, vật liệu th&ocirc;ng tin cao tần, thiết bị s&oacute;ng ngắn</p>\r\n<p>Phủ bề mặt&nbsp;c&ocirc;ng nghiệp đ&ocirc;ng lạnh,&nbsp;c&ocirc;ng nghiệp ho&aacute; học,&nbsp;c&ocirc;ng nghiệp điện,&nbsp;c&ocirc;ng nghiệp thực phẩm,&nbsp;c&ocirc;ng nghiệp y dược&hellip;&hellip;</p>\r\n<p>Phủ bề mặt chống d&iacute;nh tất cả c&aacute;c thiết bị ngo&agrave;i trời như đ&egrave;n c&ocirc;ng cộng chiếu s&aacute;ng&hellip;tr&aacute;nh bị ghỉ s&eacute;t độ bền rất cao</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho mọi thiết bị,chủng loại nếu qu&yacute; kh&aacute;ch c&oacute; nhu cầu</p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<p><strong>SẢN PHẨM Đ&Uacute;C V&Agrave; TIỆN CNC</strong>(sản xuất theo đơn đặt h&agrave;ng)Sản phẩm mẫu&nbsp;,thiết kế sản phẩm 3D,thiết kế khu&ocirc;n&nbsp;,đặt ph&ocirc;i th&eacute;p v&agrave; phụ kiện khu&ocirc;n&nbsp;,lập tr&igrave;nh c&ocirc;ng nghệ gia c&ocirc;ng CNC,gia c&ocirc;ng l&ograve;ng khu&ocirc;n,đ&aacute;nh b&oacute;ng,lắp&nbsp;r&aacute;p,thử khu&ocirc;n</p>\r\n<p>Khu&ocirc;n nh&ocirc;m / hợp kim nh&ocirc;m c&aacute;c loại/chi tiết phụ t&ugrave;ng &ocirc; t&ocirc; xe m&aacute;y/t&agrave;u thủy&hellip;.</p>\r\n<p>Khu&ocirc;n đ&uacute;c găng tay chống d&iacute;nh chịu nhiệt, khu&acirc;n ủng cao su, nhựa c&aacute;c loai</p>\r\n<p>Khu&ocirc;n b&aacute;nh kẹo/thực phẩm c&aacute;c loại</p>\r\n<p>Khu&ocirc;n cho l&ograve; nướng chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n inox chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n dược phẩm /th&ugrave;ng chống d&iacute;nh c&aacute;c loại</p>\r\n<p>Dao cắt thực phẩm c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa h&oacute;a chất c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa bột c&aacute;c loại</p>\r\n<p><strong>CHỐNG D&Iacute;NH KIM LOẠI VIỆT MỸ &ndash; CHỐNG D&Iacute;NH AN TO&Agrave;N</strong></p>\r\n<p><strong>ĐẢM BẢO CHẤT LƯỢNG &ndash; UY T&Iacute;N H&Agrave;NG ĐẦU</strong></p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<div><strong><br /></strong></div>', 'data_uploads/product/IMG_0016-300x225.jpg', 'data_uploads/product/thumb/IMG_0016-300x225.jpg', 1, '', 14560000, 0),
(30, 25, 'THANH NHIỆT MÁY ÉP BÔNG ĐỆM HÀN QUỐC', 'thanh-nhiet-may-ep-bong-dem-han-quoc', '', '<p><strong>Phủ chống d&iacute;nh khay l&agrave;m b&aacute;nh mỳ</strong>&nbsp;sử dụng C&ocirc;ng nghệ tạo lớp phủ chuyển tiếp bề mặt nano-TERLON&nbsp;đ&atilde; được nh&oacute;m chuy&ecirc;n gia thuộc Ph&ograve;ng C&ocirc;ng nghệ c&aacute;c vật liệu ti&ecirc;n tiến, Trung t&acirc;m Ph&aacute;t triển c&ocirc;ng nghệ cao, Viện H&agrave;n l&acirc;m Khoa học v&agrave; C&ocirc;ng nghệ Việt Mỹ&nbsp;nghi&ecirc;n cứu ứng dụng v&agrave;o c&aacute;c c&ocirc;ng đoạn tiền xử l&yacute; trong c&aacute;c d&acirc;y chuyền sơn tĩnh điện v&agrave; đ&atilde; được&nbsp;<strong>CH&Ocirc;NG D&Iacute;NH KIM LOẠI VIỆT MỸ</strong>&nbsp;thực h&agrave;nh thiết kế v&agrave; chế tạo th&agrave;nh c&ocirc;ng c&aacute;c l&ograve; sấy hồng ngoại x&uacute;c t&aacute;c cho c&aacute;c d&acirc;y chuyền sơn tĩnh điện</p>\r\n<p><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\"><img class=\" wp-image-1993 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\" alt=\"Ch_ng d&iacute;nh khu&ocirc;n b&aacute;nh Chocobie\" width=\"348\" height=\"261\" /></a></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<p>Chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ l&agrave; đơn vị chuy&ecirc;n nghiệp , với đội ngũ c&ocirc;ng nh&acirc;n l&agrave;nh nghề nhiều năm kinh nghiệm trong lĩnh vực sơn, phủ chống d&iacute;nh tr&ecirc;n mọi bề mặt Kim loại như : Nh&ocirc;m, Đồng, inox, sắt.v.v.. .&nbsp;<strong>Cam kết chất lượng,</strong>&nbsp;đảm bảo đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu khắc khe trong m&ocirc;i trường GMP, Hccp.&nbsp;Chống d&iacute;nh tốt, chịu được nhiệt độ 400&nbsp;độ C.</p>\r\n<p>C&aacute;c sản phẩm&nbsp;<a title=\"C&aacute;c sản phẩm chống d&iacute;nh kim loại\" href=\"http://chongdinhkimloai.com/san-pham/\"><strong>chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ</strong>&nbsp;</a>đ&atilde; v&agrave; đang thực hiện:</p>\r\n<p>Mạ l&ocirc; sấy m&aacute;y photo c&aacute;c loại. L&Ocirc; SẤY&nbsp; A4- Ao&hellip;&nbsp;-TOSIBA , RICOL 1-2 ,&hellip;..</p>\r\n<p>Khu&ocirc;n mẫu găng tay hợp kim/ chống d&iacute;nh&nbsp; Teflon của Mỹ th&aacute;ch thức với mọi h&oacute;a chất acid/baze&hellip; chịu m&agrave;i m&ograve;n /chịu nhiệt độ 0-500 độ C .</p>\r\n<p>Chống d&iacute;nh l&ocirc; sấy m&aacute;y &eacute;p c&ocirc;ng nghiệp.</p>\r\n<p>Chống d&iacute;nh ,chịu nhiệt c&aacute;c khu&ocirc;n l&agrave;m b&aacute;nh kẹo,thực phẩm,c&aacute;c vật d&ugrave;ng nồi chảo,dao,khay&hellip;..</p>\r\n<p>Chống d&iacute;nh ng&agrave;nh dược phẩm,y tế hospital&hellip;</p>\r\n<p>Chống d&iacute;nh vật dụng ng&agrave;nh bếp cho hotel, restaurent, khu&ocirc;n nướng, vỉ nướng&hellip;.</p>\r\n<p>Chống d&iacute;nh, chịu nhiệt c&aacute;c thiết bị l&ograve; đốt c&ocirc;ng nghiệp</p>\r\n<p>Nhận gia c&ocirc;ng chống d&iacute;nh với số lượng lớn tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận sơn phủ chịu nhiệt tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận chống d&iacute;nh c&aacute;c loại ra răng &ocirc; t&ocirc;, thiết bị chịu nhiệt của &ocirc; t&ocirc;, t&agrave;u thủy&hellip;&hellip;với số lượng lớn</p>\r\n<p>Chống d&iacute;nh c&aacute;c loại thiết bị ng&agrave;nh nước như ống nước,c&uacute;t,nối&hellip;.c&ocirc;ng nghiệp số lượng lớn</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c thiết bị ngo&agrave;i trời với thời tiết khắc nghiệt, điều kiện nước biển,acid</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c loại bulong,ốc v&iacute;t cho điều kiện m&ocirc;i trường khắc nghiệt</p>\r\n<p>Chống d&iacute;nh mặt b&agrave;n l&agrave; ,thanh nhiệt cho nh&agrave; m&aacute;y dệt may</p>\r\n<p>Chống d&iacute;nh chịu nhiệt khu&ocirc;n găng tay cho nh&agrave; m&aacute;y sản xuất găng tay y tế xuất khẩu</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho b&agrave;n ủi giặt l&agrave;</p>\r\n<p>Phủ teflon cho c&aacute;c thiết bị b&igrave;nh đựng ga/b&igrave;nh ga tủ lạnh/điều h&ograve;a /m&aacute;y bảo &ocirc;n&hellip;&hellip;.</p>\r\n<p>B&igrave;nh chế tạo thiết bị nhiệt độ thấp để chứa đựng kh&ocirc;ng kh&iacute; lỏng</p>\r\n<p>Chế tạo c&aacute;c b&igrave;nh phản ứng chịu ăn m&ograve;n, vỏ b&igrave;nh acquy, l&agrave;m tấm lọc</p>\r\n<p>Chế tạo c&aacute;c lớp vỏ c&aacute;ch điện rất mỏng, chỉ cần 15&nbsp;micromet&nbsp;l&agrave; đ&atilde; c&oacute; một m&agrave;ng c&aacute;ch điện ho&agrave;n hảo</p>\r\n<p>Chế tạo rađa, vật liệu th&ocirc;ng tin cao tần, thiết bị s&oacute;ng ngắn</p>\r\n<p>Phủ bề mặt&nbsp;c&ocirc;ng nghiệp đ&ocirc;ng lạnh,&nbsp;c&ocirc;ng nghiệp ho&aacute; học,&nbsp;c&ocirc;ng nghiệp điện,&nbsp;c&ocirc;ng nghiệp thực phẩm,&nbsp;c&ocirc;ng nghiệp y dược&hellip;&hellip;</p>\r\n<p>Phủ bề mặt chống d&iacute;nh tất cả c&aacute;c thiết bị ngo&agrave;i trời như đ&egrave;n c&ocirc;ng cộng chiếu s&aacute;ng&hellip;tr&aacute;nh bị ghỉ s&eacute;t độ bền rất cao</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho mọi thiết bị,chủng loại nếu qu&yacute; kh&aacute;ch c&oacute; nhu cầu</p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<p><strong>SẢN PHẨM Đ&Uacute;C V&Agrave; TIỆN CNC</strong>(sản xuất theo đơn đặt h&agrave;ng)Sản phẩm mẫu&nbsp;,thiết kế sản phẩm 3D,thiết kế khu&ocirc;n&nbsp;,đặt ph&ocirc;i th&eacute;p v&agrave; phụ kiện khu&ocirc;n&nbsp;,lập tr&igrave;nh c&ocirc;ng nghệ gia c&ocirc;ng CNC,gia c&ocirc;ng l&ograve;ng khu&ocirc;n,đ&aacute;nh b&oacute;ng,lắp&nbsp;r&aacute;p,thử khu&ocirc;n</p>\r\n<p>Khu&ocirc;n nh&ocirc;m / hợp kim nh&ocirc;m c&aacute;c loại/chi tiết phụ t&ugrave;ng &ocirc; t&ocirc; xe m&aacute;y/t&agrave;u thủy&hellip;.</p>\r\n<p>Khu&ocirc;n đ&uacute;c găng tay chống d&iacute;nh chịu nhiệt, khu&acirc;n ủng cao su, nhựa c&aacute;c loai</p>\r\n<p>Khu&ocirc;n b&aacute;nh kẹo/thực phẩm c&aacute;c loại</p>\r\n<p>Khu&ocirc;n cho l&ograve; nướng chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n inox chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n dược phẩm /th&ugrave;ng chống d&iacute;nh c&aacute;c loại</p>\r\n<p>Dao cắt thực phẩm c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa h&oacute;a chất c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa bột c&aacute;c loại</p>\r\n<p><strong>CHỐNG D&Iacute;NH KIM LOẠI VIỆT MỸ &ndash; CHỐNG D&Iacute;NH AN TO&Agrave;N</strong></p>\r\n<p><strong>ĐẢM BẢO CHẤT LƯỢNG &ndash; UY T&Iacute;N H&Agrave;NG ĐẦU</strong></p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<div><strong><br /></strong></div>', 'data_uploads/product/xxxx.jpg', 'data_uploads/product/thumb/xxxx.jpg', 1, '', 125000, 0),
(31, 25, 'THANH NHIỆT MÁY ÉP BÔNG ĐỆM HÀN QUỐC', 'thanh-nhiet-may-ep-bong-dem-han-quoc', '', '<p><strong>Phủ chống d&iacute;nh khay l&agrave;m b&aacute;nh mỳ</strong>&nbsp;sử dụng C&ocirc;ng nghệ tạo lớp phủ chuyển tiếp bề mặt nano-TERLON&nbsp;đ&atilde; được nh&oacute;m chuy&ecirc;n gia thuộc Ph&ograve;ng C&ocirc;ng nghệ c&aacute;c vật liệu ti&ecirc;n tiến, Trung t&acirc;m Ph&aacute;t triển c&ocirc;ng nghệ cao, Viện H&agrave;n l&acirc;m Khoa học v&agrave; C&ocirc;ng nghệ Việt Mỹ&nbsp;nghi&ecirc;n cứu ứng dụng v&agrave;o c&aacute;c c&ocirc;ng đoạn tiền xử l&yacute; trong c&aacute;c d&acirc;y chuyền sơn tĩnh điện v&agrave; đ&atilde; được&nbsp;<strong>CH&Ocirc;NG D&Iacute;NH KIM LOẠI VIỆT MỸ</strong>&nbsp;thực h&agrave;nh thiết kế v&agrave; chế tạo th&agrave;nh c&ocirc;ng c&aacute;c l&ograve; sấy hồng ngoại x&uacute;c t&aacute;c cho c&aacute;c d&acirc;y chuyền sơn tĩnh điện</p>\r\n<p><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\"><img class=\" wp-image-1993 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\" alt=\"Ch_ng d&iacute;nh khu&ocirc;n b&aacute;nh Chocobie\" width=\"348\" height=\"261\" /></a></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<p>Chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ l&agrave; đơn vị chuy&ecirc;n nghiệp , với đội ngũ c&ocirc;ng nh&acirc;n l&agrave;nh nghề nhiều năm kinh nghiệm trong lĩnh vực sơn, phủ chống d&iacute;nh tr&ecirc;n mọi bề mặt Kim loại như : Nh&ocirc;m, Đồng, inox, sắt.v.v.. .&nbsp;<strong>Cam kết chất lượng,</strong>&nbsp;đảm bảo đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu khắc khe trong m&ocirc;i trường GMP, Hccp.&nbsp;Chống d&iacute;nh tốt, chịu được nhiệt độ 400&nbsp;độ C.</p>\r\n<p>C&aacute;c sản phẩm&nbsp;<a title=\"C&aacute;c sản phẩm chống d&iacute;nh kim loại\" href=\"http://chongdinhkimloai.com/san-pham/\"><strong>chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ</strong>&nbsp;</a>đ&atilde; v&agrave; đang thực hiện:</p>\r\n<p>Mạ l&ocirc; sấy m&aacute;y photo c&aacute;c loại. L&Ocirc; SẤY&nbsp; A4- Ao&hellip;&nbsp;-TOSIBA , RICOL 1-2 ,&hellip;..</p>\r\n<p>Khu&ocirc;n mẫu găng tay hợp kim/ chống d&iacute;nh&nbsp; Teflon của Mỹ th&aacute;ch thức với mọi h&oacute;a chất acid/baze&hellip; chịu m&agrave;i m&ograve;n /chịu nhiệt độ 0-500 độ C .</p>\r\n<p>Chống d&iacute;nh l&ocirc; sấy m&aacute;y &eacute;p c&ocirc;ng nghiệp.</p>\r\n<p>Chống d&iacute;nh ,chịu nhiệt c&aacute;c khu&ocirc;n l&agrave;m b&aacute;nh kẹo,thực phẩm,c&aacute;c vật d&ugrave;ng nồi chảo,dao,khay&hellip;..</p>\r\n<p>Chống d&iacute;nh ng&agrave;nh dược phẩm,y tế hospital&hellip;</p>\r\n<p>Chống d&iacute;nh vật dụng ng&agrave;nh bếp cho hotel, restaurent, khu&ocirc;n nướng, vỉ nướng&hellip;.</p>\r\n<p>Chống d&iacute;nh, chịu nhiệt c&aacute;c thiết bị l&ograve; đốt c&ocirc;ng nghiệp</p>\r\n<p>Nhận gia c&ocirc;ng chống d&iacute;nh với số lượng lớn tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận sơn phủ chịu nhiệt tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận chống d&iacute;nh c&aacute;c loại ra răng &ocirc; t&ocirc;, thiết bị chịu nhiệt của &ocirc; t&ocirc;, t&agrave;u thủy&hellip;&hellip;với số lượng lớn</p>\r\n<p>Chống d&iacute;nh c&aacute;c loại thiết bị ng&agrave;nh nước như ống nước,c&uacute;t,nối&hellip;.c&ocirc;ng nghiệp số lượng lớn</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c thiết bị ngo&agrave;i trời với thời tiết khắc nghiệt, điều kiện nước biển,acid</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c loại bulong,ốc v&iacute;t cho điều kiện m&ocirc;i trường khắc nghiệt</p>\r\n<p>Chống d&iacute;nh mặt b&agrave;n l&agrave; ,thanh nhiệt cho nh&agrave; m&aacute;y dệt may</p>\r\n<p>Chống d&iacute;nh chịu nhiệt khu&ocirc;n găng tay cho nh&agrave; m&aacute;y sản xuất găng tay y tế xuất khẩu</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho b&agrave;n ủi giặt l&agrave;</p>\r\n<p>Phủ teflon cho c&aacute;c thiết bị b&igrave;nh đựng ga/b&igrave;nh ga tủ lạnh/điều h&ograve;a /m&aacute;y bảo &ocirc;n&hellip;&hellip;.</p>\r\n<p>B&igrave;nh chế tạo thiết bị nhiệt độ thấp để chứa đựng kh&ocirc;ng kh&iacute; lỏng</p>\r\n<p>Chế tạo c&aacute;c b&igrave;nh phản ứng chịu ăn m&ograve;n, vỏ b&igrave;nh acquy, l&agrave;m tấm lọc</p>\r\n<p>Chế tạo c&aacute;c lớp vỏ c&aacute;ch điện rất mỏng, chỉ cần 15&nbsp;micromet&nbsp;l&agrave; đ&atilde; c&oacute; một m&agrave;ng c&aacute;ch điện ho&agrave;n hảo</p>\r\n<p>Chế tạo rađa, vật liệu th&ocirc;ng tin cao tần, thiết bị s&oacute;ng ngắn</p>\r\n<p>Phủ bề mặt&nbsp;c&ocirc;ng nghiệp đ&ocirc;ng lạnh,&nbsp;c&ocirc;ng nghiệp ho&aacute; học,&nbsp;c&ocirc;ng nghiệp điện,&nbsp;c&ocirc;ng nghiệp thực phẩm,&nbsp;c&ocirc;ng nghiệp y dược&hellip;&hellip;</p>\r\n<p>Phủ bề mặt chống d&iacute;nh tất cả c&aacute;c thiết bị ngo&agrave;i trời như đ&egrave;n c&ocirc;ng cộng chiếu s&aacute;ng&hellip;tr&aacute;nh bị ghỉ s&eacute;t độ bền rất cao</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho mọi thiết bị,chủng loại nếu qu&yacute; kh&aacute;ch c&oacute; nhu cầu</p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<p><strong>SẢN PHẨM Đ&Uacute;C V&Agrave; TIỆN CNC</strong>(sản xuất theo đơn đặt h&agrave;ng)Sản phẩm mẫu&nbsp;,thiết kế sản phẩm 3D,thiết kế khu&ocirc;n&nbsp;,đặt ph&ocirc;i th&eacute;p v&agrave; phụ kiện khu&ocirc;n&nbsp;,lập tr&igrave;nh c&ocirc;ng nghệ gia c&ocirc;ng CNC,gia c&ocirc;ng l&ograve;ng khu&ocirc;n,đ&aacute;nh b&oacute;ng,lắp&nbsp;r&aacute;p,thử khu&ocirc;n</p>\r\n<p>Khu&ocirc;n nh&ocirc;m / hợp kim nh&ocirc;m c&aacute;c loại/chi tiết phụ t&ugrave;ng &ocirc; t&ocirc; xe m&aacute;y/t&agrave;u thủy&hellip;.</p>\r\n<p>Khu&ocirc;n đ&uacute;c găng tay chống d&iacute;nh chịu nhiệt, khu&acirc;n ủng cao su, nhựa c&aacute;c loai</p>\r\n<p>Khu&ocirc;n b&aacute;nh kẹo/thực phẩm c&aacute;c loại</p>\r\n<p>Khu&ocirc;n cho l&ograve; nướng chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n inox chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n dược phẩm /th&ugrave;ng chống d&iacute;nh c&aacute;c loại</p>\r\n<p>Dao cắt thực phẩm c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa h&oacute;a chất c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa bột c&aacute;c loại</p>\r\n<p><strong>CHỐNG D&Iacute;NH KIM LOẠI VIỆT MỸ &ndash; CHỐNG D&Iacute;NH AN TO&Agrave;N</strong></p>\r\n<p><strong>ĐẢM BẢO CHẤT LƯỢNG &ndash; UY T&Iacute;N H&Agrave;NG ĐẦU</strong></p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<div><strong><br /></strong></div>', 'data_uploads/product/xxxx.jpg', 'data_uploads/product/thumb/xxxx.jpg', 1, '', 125000, 0),
(32, 25, 'THANH NHIỆT MÁY ÉP BÔNG ĐỆM HÀN QUỐC', 'thanh-nhiet-may-ep-bong-dem-han-quoc', '', '<p><strong>Phủ chống d&iacute;nh khay l&agrave;m b&aacute;nh mỳ</strong>&nbsp;sử dụng C&ocirc;ng nghệ tạo lớp phủ chuyển tiếp bề mặt nano-TERLON&nbsp;đ&atilde; được nh&oacute;m chuy&ecirc;n gia thuộc Ph&ograve;ng C&ocirc;ng nghệ c&aacute;c vật liệu ti&ecirc;n tiến, Trung t&acirc;m Ph&aacute;t triển c&ocirc;ng nghệ cao, Viện H&agrave;n l&acirc;m Khoa học v&agrave; C&ocirc;ng nghệ Việt Mỹ&nbsp;nghi&ecirc;n cứu ứng dụng v&agrave;o c&aacute;c c&ocirc;ng đoạn tiền xử l&yacute; trong c&aacute;c d&acirc;y chuyền sơn tĩnh điện v&agrave; đ&atilde; được&nbsp;<strong>CH&Ocirc;NG D&Iacute;NH KIM LOẠI VIỆT MỸ</strong>&nbsp;thực h&agrave;nh thiết kế v&agrave; chế tạo th&agrave;nh c&ocirc;ng c&aacute;c l&ograve; sấy hồng ngoại x&uacute;c t&aacute;c cho c&aacute;c d&acirc;y chuyền sơn tĩnh điện</p>\r\n<p><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\"><img class=\" wp-image-1993 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\" alt=\"Ch_ng d&iacute;nh khu&ocirc;n b&aacute;nh Chocobie\" width=\"348\" height=\"261\" /></a></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<p>Chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ l&agrave; đơn vị chuy&ecirc;n nghiệp , với đội ngũ c&ocirc;ng nh&acirc;n l&agrave;nh nghề nhiều năm kinh nghiệm trong lĩnh vực sơn, phủ chống d&iacute;nh tr&ecirc;n mọi bề mặt Kim loại như : Nh&ocirc;m, Đồng, inox, sắt.v.v.. .&nbsp;<strong>Cam kết chất lượng,</strong>&nbsp;đảm bảo đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu khắc khe trong m&ocirc;i trường GMP, Hccp.&nbsp;Chống d&iacute;nh tốt, chịu được nhiệt độ 400&nbsp;độ C.</p>\r\n<p>C&aacute;c sản phẩm&nbsp;<a title=\"C&aacute;c sản phẩm chống d&iacute;nh kim loại\" href=\"http://chongdinhkimloai.com/san-pham/\"><strong>chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ</strong>&nbsp;</a>đ&atilde; v&agrave; đang thực hiện:</p>\r\n<p>Mạ l&ocirc; sấy m&aacute;y photo c&aacute;c loại. L&Ocirc; SẤY&nbsp; A4- Ao&hellip;&nbsp;-TOSIBA , RICOL 1-2 ,&hellip;..</p>\r\n<p>Khu&ocirc;n mẫu găng tay hợp kim/ chống d&iacute;nh&nbsp; Teflon của Mỹ th&aacute;ch thức với mọi h&oacute;a chất acid/baze&hellip; chịu m&agrave;i m&ograve;n /chịu nhiệt độ 0-500 độ C .</p>\r\n<p>Chống d&iacute;nh l&ocirc; sấy m&aacute;y &eacute;p c&ocirc;ng nghiệp.</p>\r\n<p>Chống d&iacute;nh ,chịu nhiệt c&aacute;c khu&ocirc;n l&agrave;m b&aacute;nh kẹo,thực phẩm,c&aacute;c vật d&ugrave;ng nồi chảo,dao,khay&hellip;..</p>\r\n<p>Chống d&iacute;nh ng&agrave;nh dược phẩm,y tế hospital&hellip;</p>\r\n<p>Chống d&iacute;nh vật dụng ng&agrave;nh bếp cho hotel, restaurent, khu&ocirc;n nướng, vỉ nướng&hellip;.</p>\r\n<p>Chống d&iacute;nh, chịu nhiệt c&aacute;c thiết bị l&ograve; đốt c&ocirc;ng nghiệp</p>\r\n<p>Nhận gia c&ocirc;ng chống d&iacute;nh với số lượng lớn tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận sơn phủ chịu nhiệt tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận chống d&iacute;nh c&aacute;c loại ra răng &ocirc; t&ocirc;, thiết bị chịu nhiệt của &ocirc; t&ocirc;, t&agrave;u thủy&hellip;&hellip;với số lượng lớn</p>\r\n<p>Chống d&iacute;nh c&aacute;c loại thiết bị ng&agrave;nh nước như ống nước,c&uacute;t,nối&hellip;.c&ocirc;ng nghiệp số lượng lớn</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c thiết bị ngo&agrave;i trời với thời tiết khắc nghiệt, điều kiện nước biển,acid</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c loại bulong,ốc v&iacute;t cho điều kiện m&ocirc;i trường khắc nghiệt</p>\r\n<p>Chống d&iacute;nh mặt b&agrave;n l&agrave; ,thanh nhiệt cho nh&agrave; m&aacute;y dệt may</p>\r\n<p>Chống d&iacute;nh chịu nhiệt khu&ocirc;n găng tay cho nh&agrave; m&aacute;y sản xuất găng tay y tế xuất khẩu</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho b&agrave;n ủi giặt l&agrave;</p>\r\n<p>Phủ teflon cho c&aacute;c thiết bị b&igrave;nh đựng ga/b&igrave;nh ga tủ lạnh/điều h&ograve;a /m&aacute;y bảo &ocirc;n&hellip;&hellip;.</p>\r\n<p>B&igrave;nh chế tạo thiết bị nhiệt độ thấp để chứa đựng kh&ocirc;ng kh&iacute; lỏng</p>\r\n<p>Chế tạo c&aacute;c b&igrave;nh phản ứng chịu ăn m&ograve;n, vỏ b&igrave;nh acquy, l&agrave;m tấm lọc</p>\r\n<p>Chế tạo c&aacute;c lớp vỏ c&aacute;ch điện rất mỏng, chỉ cần 15&nbsp;micromet&nbsp;l&agrave; đ&atilde; c&oacute; một m&agrave;ng c&aacute;ch điện ho&agrave;n hảo</p>\r\n<p>Chế tạo rađa, vật liệu th&ocirc;ng tin cao tần, thiết bị s&oacute;ng ngắn</p>\r\n<p>Phủ bề mặt&nbsp;c&ocirc;ng nghiệp đ&ocirc;ng lạnh,&nbsp;c&ocirc;ng nghiệp ho&aacute; học,&nbsp;c&ocirc;ng nghiệp điện,&nbsp;c&ocirc;ng nghiệp thực phẩm,&nbsp;c&ocirc;ng nghiệp y dược&hellip;&hellip;</p>\r\n<p>Phủ bề mặt chống d&iacute;nh tất cả c&aacute;c thiết bị ngo&agrave;i trời như đ&egrave;n c&ocirc;ng cộng chiếu s&aacute;ng&hellip;tr&aacute;nh bị ghỉ s&eacute;t độ bền rất cao</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho mọi thiết bị,chủng loại nếu qu&yacute; kh&aacute;ch c&oacute; nhu cầu</p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<p><strong>SẢN PHẨM Đ&Uacute;C V&Agrave; TIỆN CNC</strong>(sản xuất theo đơn đặt h&agrave;ng)Sản phẩm mẫu&nbsp;,thiết kế sản phẩm 3D,thiết kế khu&ocirc;n&nbsp;,đặt ph&ocirc;i th&eacute;p v&agrave; phụ kiện khu&ocirc;n&nbsp;,lập tr&igrave;nh c&ocirc;ng nghệ gia c&ocirc;ng CNC,gia c&ocirc;ng l&ograve;ng khu&ocirc;n,đ&aacute;nh b&oacute;ng,lắp&nbsp;r&aacute;p,thử khu&ocirc;n</p>\r\n<p>Khu&ocirc;n nh&ocirc;m / hợp kim nh&ocirc;m c&aacute;c loại/chi tiết phụ t&ugrave;ng &ocirc; t&ocirc; xe m&aacute;y/t&agrave;u thủy&hellip;.</p>\r\n<p>Khu&ocirc;n đ&uacute;c găng tay chống d&iacute;nh chịu nhiệt, khu&acirc;n ủng cao su, nhựa c&aacute;c loai</p>\r\n<p>Khu&ocirc;n b&aacute;nh kẹo/thực phẩm c&aacute;c loại</p>\r\n<p>Khu&ocirc;n cho l&ograve; nướng chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n inox chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n dược phẩm /th&ugrave;ng chống d&iacute;nh c&aacute;c loại</p>\r\n<p>Dao cắt thực phẩm c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa h&oacute;a chất c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa bột c&aacute;c loại</p>\r\n<p><strong>CHỐNG D&Iacute;NH KIM LOẠI VIỆT MỸ &ndash; CHỐNG D&Iacute;NH AN TO&Agrave;N</strong></p>\r\n<p><strong>ĐẢM BẢO CHẤT LƯỢNG &ndash; UY T&Iacute;N H&Agrave;NG ĐẦU</strong></p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<div><strong><br /></strong></div>', 'data_uploads/product/xxxx.jpg', 'data_uploads/product/thumb/xxxx.jpg', 1, '', 1250002, 0);
INSERT INTO `product` (`id`, `catid`, `p_name`, `p_name_alias`, `p_description`, `p_detail`, `p_image`, `p_image_thumb`, `status`, `khuyenmai`, `gia`, `noibat`) VALUES
(33, 26, 'THANH NHIỆT MÁY ÉP BÔNG ĐỆM HÀN QUỐC', 'thanh-nhiet-may-ep-bong-dem-han-quoc', '', '<p><strong>Phủ chống d&iacute;nh khay l&agrave;m b&aacute;nh mỳ</strong>&nbsp;sử dụng C&ocirc;ng nghệ tạo lớp phủ chuyển tiếp bề mặt nano-TERLON&nbsp;đ&atilde; được nh&oacute;m chuy&ecirc;n gia thuộc Ph&ograve;ng C&ocirc;ng nghệ c&aacute;c vật liệu ti&ecirc;n tiến, Trung t&acirc;m Ph&aacute;t triển c&ocirc;ng nghệ cao, Viện H&agrave;n l&acirc;m Khoa học v&agrave; C&ocirc;ng nghệ Việt Mỹ&nbsp;nghi&ecirc;n cứu ứng dụng v&agrave;o c&aacute;c c&ocirc;ng đoạn tiền xử l&yacute; trong c&aacute;c d&acirc;y chuyền sơn tĩnh điện v&agrave; đ&atilde; được&nbsp;<strong>CH&Ocirc;NG D&Iacute;NH KIM LOẠI VIỆT MỸ</strong>&nbsp;thực h&agrave;nh thiết kế v&agrave; chế tạo th&agrave;nh c&ocirc;ng c&aacute;c l&ograve; sấy hồng ngoại x&uacute;c t&aacute;c cho c&aacute;c d&acirc;y chuyền sơn tĩnh điện</p>\r\n<p><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\"><img class=\" wp-image-1993 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\" alt=\"Ch_ng d&iacute;nh khu&ocirc;n b&aacute;nh Chocobie\" width=\"348\" height=\"261\" /></a></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<p>Chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ l&agrave; đơn vị chuy&ecirc;n nghiệp , với đội ngũ c&ocirc;ng nh&acirc;n l&agrave;nh nghề nhiều năm kinh nghiệm trong lĩnh vực sơn, phủ chống d&iacute;nh tr&ecirc;n mọi bề mặt Kim loại như : Nh&ocirc;m, Đồng, inox, sắt.v.v.. .&nbsp;<strong>Cam kết chất lượng,</strong>&nbsp;đảm bảo đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu khắc khe trong m&ocirc;i trường GMP, Hccp.&nbsp;Chống d&iacute;nh tốt, chịu được nhiệt độ 400&nbsp;độ C.</p>\r\n<p>C&aacute;c sản phẩm&nbsp;<a title=\"C&aacute;c sản phẩm chống d&iacute;nh kim loại\" href=\"http://chongdinhkimloai.com/san-pham/\"><strong>chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ</strong>&nbsp;</a>đ&atilde; v&agrave; đang thực hiện:</p>\r\n<p>Mạ l&ocirc; sấy m&aacute;y photo c&aacute;c loại. L&Ocirc; SẤY&nbsp; A4- Ao&hellip;&nbsp;-TOSIBA , RICOL 1-2 ,&hellip;..</p>\r\n<p>Khu&ocirc;n mẫu găng tay hợp kim/ chống d&iacute;nh&nbsp; Teflon của Mỹ th&aacute;ch thức với mọi h&oacute;a chất acid/baze&hellip; chịu m&agrave;i m&ograve;n /chịu nhiệt độ 0-500 độ C .</p>\r\n<p>Chống d&iacute;nh l&ocirc; sấy m&aacute;y &eacute;p c&ocirc;ng nghiệp.</p>\r\n<p>Chống d&iacute;nh ,chịu nhiệt c&aacute;c khu&ocirc;n l&agrave;m b&aacute;nh kẹo,thực phẩm,c&aacute;c vật d&ugrave;ng nồi chảo,dao,khay&hellip;..</p>\r\n<p>Chống d&iacute;nh ng&agrave;nh dược phẩm,y tế hospital&hellip;</p>\r\n<p>Chống d&iacute;nh vật dụng ng&agrave;nh bếp cho hotel, restaurent, khu&ocirc;n nướng, vỉ nướng&hellip;.</p>\r\n<p>Chống d&iacute;nh, chịu nhiệt c&aacute;c thiết bị l&ograve; đốt c&ocirc;ng nghiệp</p>\r\n<p>Nhận gia c&ocirc;ng chống d&iacute;nh với số lượng lớn tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận sơn phủ chịu nhiệt tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận chống d&iacute;nh c&aacute;c loại ra răng &ocirc; t&ocirc;, thiết bị chịu nhiệt của &ocirc; t&ocirc;, t&agrave;u thủy&hellip;&hellip;với số lượng lớn</p>\r\n<p>Chống d&iacute;nh c&aacute;c loại thiết bị ng&agrave;nh nước như ống nước,c&uacute;t,nối&hellip;.c&ocirc;ng nghiệp số lượng lớn</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c thiết bị ngo&agrave;i trời với thời tiết khắc nghiệt, điều kiện nước biển,acid</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c loại bulong,ốc v&iacute;t cho điều kiện m&ocirc;i trường khắc nghiệt</p>\r\n<p>Chống d&iacute;nh mặt b&agrave;n l&agrave; ,thanh nhiệt cho nh&agrave; m&aacute;y dệt may</p>\r\n<p>Chống d&iacute;nh chịu nhiệt khu&ocirc;n găng tay cho nh&agrave; m&aacute;y sản xuất găng tay y tế xuất khẩu</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho b&agrave;n ủi giặt l&agrave;</p>\r\n<p>Phủ teflon cho c&aacute;c thiết bị b&igrave;nh đựng ga/b&igrave;nh ga tủ lạnh/điều h&ograve;a /m&aacute;y bảo &ocirc;n&hellip;&hellip;.</p>\r\n<p>B&igrave;nh chế tạo thiết bị nhiệt độ thấp để chứa đựng kh&ocirc;ng kh&iacute; lỏng</p>\r\n<p>Chế tạo c&aacute;c b&igrave;nh phản ứng chịu ăn m&ograve;n, vỏ b&igrave;nh acquy, l&agrave;m tấm lọc</p>\r\n<p>Chế tạo c&aacute;c lớp vỏ c&aacute;ch điện rất mỏng, chỉ cần 15&nbsp;micromet&nbsp;l&agrave; đ&atilde; c&oacute; một m&agrave;ng c&aacute;ch điện ho&agrave;n hảo</p>\r\n<p>Chế tạo rađa, vật liệu th&ocirc;ng tin cao tần, thiết bị s&oacute;ng ngắn</p>\r\n<p>Phủ bề mặt&nbsp;c&ocirc;ng nghiệp đ&ocirc;ng lạnh,&nbsp;c&ocirc;ng nghiệp ho&aacute; học,&nbsp;c&ocirc;ng nghiệp điện,&nbsp;c&ocirc;ng nghiệp thực phẩm,&nbsp;c&ocirc;ng nghiệp y dược&hellip;&hellip;</p>\r\n<p>Phủ bề mặt chống d&iacute;nh tất cả c&aacute;c thiết bị ngo&agrave;i trời như đ&egrave;n c&ocirc;ng cộng chiếu s&aacute;ng&hellip;tr&aacute;nh bị ghỉ s&eacute;t độ bền rất cao</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho mọi thiết bị,chủng loại nếu qu&yacute; kh&aacute;ch c&oacute; nhu cầu</p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<p><strong>SẢN PHẨM Đ&Uacute;C V&Agrave; TIỆN CNC</strong>(sản xuất theo đơn đặt h&agrave;ng)Sản phẩm mẫu&nbsp;,thiết kế sản phẩm 3D,thiết kế khu&ocirc;n&nbsp;,đặt ph&ocirc;i th&eacute;p v&agrave; phụ kiện khu&ocirc;n&nbsp;,lập tr&igrave;nh c&ocirc;ng nghệ gia c&ocirc;ng CNC,gia c&ocirc;ng l&ograve;ng khu&ocirc;n,đ&aacute;nh b&oacute;ng,lắp&nbsp;r&aacute;p,thử khu&ocirc;n</p>\r\n<p>Khu&ocirc;n nh&ocirc;m / hợp kim nh&ocirc;m c&aacute;c loại/chi tiết phụ t&ugrave;ng &ocirc; t&ocirc; xe m&aacute;y/t&agrave;u thủy&hellip;.</p>\r\n<p>Khu&ocirc;n đ&uacute;c găng tay chống d&iacute;nh chịu nhiệt, khu&acirc;n ủng cao su, nhựa c&aacute;c loai</p>\r\n<p>Khu&ocirc;n b&aacute;nh kẹo/thực phẩm c&aacute;c loại</p>\r\n<p>Khu&ocirc;n cho l&ograve; nướng chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n inox chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n dược phẩm /th&ugrave;ng chống d&iacute;nh c&aacute;c loại</p>\r\n<p>Dao cắt thực phẩm c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa h&oacute;a chất c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa bột c&aacute;c loại</p>\r\n<p><strong>CHỐNG D&Iacute;NH KIM LOẠI VIỆT MỸ &ndash; CHỐNG D&Iacute;NH AN TO&Agrave;N</strong></p>\r\n<p><strong>ĐẢM BẢO CHẤT LƯỢNG &ndash; UY T&Iacute;N H&Agrave;NG ĐẦU</strong></p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<div><strong><br /></strong></div>', 'data_uploads/product/xxxx.jpg', 'data_uploads/product/thumb/xxxx.jpg', 1, '', 1250002, 0),
(34, 26, 'CHỐNG DÍNH KHAY LÀM BÁNH MỲ', 'chong-dinh-khay-lam-banh-my', '', '<p><strong>Phủ chống d&iacute;nh khay l&agrave;m b&aacute;nh mỳ</strong>&nbsp;sử dụng C&ocirc;ng nghệ tạo lớp phủ chuyển tiếp bề mặt nano-TERLON&nbsp;đ&atilde; được nh&oacute;m chuy&ecirc;n gia thuộc Ph&ograve;ng C&ocirc;ng nghệ c&aacute;c vật liệu ti&ecirc;n tiến, Trung t&acirc;m Ph&aacute;t triển c&ocirc;ng nghệ cao, Viện H&agrave;n l&acirc;m Khoa học v&agrave; C&ocirc;ng nghệ Việt Mỹ&nbsp;nghi&ecirc;n cứu ứng dụng v&agrave;o c&aacute;c c&ocirc;ng đoạn tiền xử l&yacute; trong c&aacute;c d&acirc;y chuyền sơn tĩnh điện v&agrave; đ&atilde; được&nbsp;<strong>CH&Ocirc;NG D&Iacute;NH KIM LOẠI VIỆT MỸ</strong>&nbsp;thực h&agrave;nh thiết kế v&agrave; chế tạo th&agrave;nh c&ocirc;ng c&aacute;c l&ograve; sấy hồng ngoại x&uacute;c t&aacute;c cho c&aacute;c d&acirc;y chuyền sơn tĩnh điện</p>\r\n<p><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\"><img class=\" wp-image-1993 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\" alt=\"Ch_ng d&iacute;nh khu&ocirc;n b&aacute;nh Chocobie\" width=\"348\" height=\"261\" /></a></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<p>Chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ l&agrave; đơn vị chuy&ecirc;n nghiệp , với đội ngũ c&ocirc;ng nh&acirc;n l&agrave;nh nghề nhiều năm kinh nghiệm trong lĩnh vực sơn, phủ chống d&iacute;nh tr&ecirc;n mọi bề mặt Kim loại như : Nh&ocirc;m, Đồng, inox, sắt.v.v.. .&nbsp;<strong>Cam kết chất lượng,</strong>&nbsp;đảm bảo đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu khắc khe trong m&ocirc;i trường GMP, Hccp.&nbsp;Chống d&iacute;nh tốt, chịu được nhiệt độ 400&nbsp;độ C.</p>\r\n<p>C&aacute;c sản phẩm&nbsp;<a title=\"C&aacute;c sản phẩm chống d&iacute;nh kim loại\" href=\"http://chongdinhkimloai.com/san-pham/\"><strong>chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ</strong>&nbsp;</a>đ&atilde; v&agrave; đang thực hiện:</p>\r\n<p>Mạ l&ocirc; sấy m&aacute;y photo c&aacute;c loại. L&Ocirc; SẤY&nbsp; A4- Ao&hellip;&nbsp;-TOSIBA , RICOL 1-2 ,&hellip;..</p>\r\n<p>Khu&ocirc;n mẫu găng tay hợp kim/ chống d&iacute;nh&nbsp; Teflon của Mỹ th&aacute;ch thức với mọi h&oacute;a chất acid/baze&hellip; chịu m&agrave;i m&ograve;n /chịu nhiệt độ 0-500 độ C .</p>\r\n<p>Chống d&iacute;nh l&ocirc; sấy m&aacute;y &eacute;p c&ocirc;ng nghiệp.</p>\r\n<p>Chống d&iacute;nh ,chịu nhiệt c&aacute;c khu&ocirc;n l&agrave;m b&aacute;nh kẹo,thực phẩm,c&aacute;c vật d&ugrave;ng nồi chảo,dao,khay&hellip;..</p>\r\n<p>Chống d&iacute;nh ng&agrave;nh dược phẩm,y tế hospital&hellip;</p>\r\n<p>Chống d&iacute;nh vật dụng ng&agrave;nh bếp cho hotel, restaurent, khu&ocirc;n nướng, vỉ nướng&hellip;.</p>\r\n<p>Chống d&iacute;nh, chịu nhiệt c&aacute;c thiết bị l&ograve; đốt c&ocirc;ng nghiệp</p>\r\n<p>Nhận gia c&ocirc;ng chống d&iacute;nh với số lượng lớn tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận sơn phủ chịu nhiệt tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận chống d&iacute;nh c&aacute;c loại ra răng &ocirc; t&ocirc;, thiết bị chịu nhiệt của &ocirc; t&ocirc;, t&agrave;u thủy&hellip;&hellip;với số lượng lớn</p>\r\n<p>Chống d&iacute;nh c&aacute;c loại thiết bị ng&agrave;nh nước như ống nước,c&uacute;t,nối&hellip;.c&ocirc;ng nghiệp số lượng lớn</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c thiết bị ngo&agrave;i trời với thời tiết khắc nghiệt, điều kiện nước biển,acid</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c loại bulong,ốc v&iacute;t cho điều kiện m&ocirc;i trường khắc nghiệt</p>\r\n<p>Chống d&iacute;nh mặt b&agrave;n l&agrave; ,thanh nhiệt cho nh&agrave; m&aacute;y dệt may</p>\r\n<p>Chống d&iacute;nh chịu nhiệt khu&ocirc;n găng tay cho nh&agrave; m&aacute;y sản xuất găng tay y tế xuất khẩu</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho b&agrave;n ủi giặt l&agrave;</p>\r\n<p>Phủ teflon cho c&aacute;c thiết bị b&igrave;nh đựng ga/b&igrave;nh ga tủ lạnh/điều h&ograve;a /m&aacute;y bảo &ocirc;n&hellip;&hellip;.</p>\r\n<p>B&igrave;nh chế tạo thiết bị nhiệt độ thấp để chứa đựng kh&ocirc;ng kh&iacute; lỏng</p>\r\n<p>Chế tạo c&aacute;c b&igrave;nh phản ứng chịu ăn m&ograve;n, vỏ b&igrave;nh acquy, l&agrave;m tấm lọc</p>\r\n<p>Chế tạo c&aacute;c lớp vỏ c&aacute;ch điện rất mỏng, chỉ cần 15&nbsp;micromet&nbsp;l&agrave; đ&atilde; c&oacute; một m&agrave;ng c&aacute;ch điện ho&agrave;n hảo</p>\r\n<p>Chế tạo rađa, vật liệu th&ocirc;ng tin cao tần, thiết bị s&oacute;ng ngắn</p>\r\n<p>Phủ bề mặt&nbsp;c&ocirc;ng nghiệp đ&ocirc;ng lạnh,&nbsp;c&ocirc;ng nghiệp ho&aacute; học,&nbsp;c&ocirc;ng nghiệp điện,&nbsp;c&ocirc;ng nghiệp thực phẩm,&nbsp;c&ocirc;ng nghiệp y dược&hellip;&hellip;</p>\r\n<p>Phủ bề mặt chống d&iacute;nh tất cả c&aacute;c thiết bị ngo&agrave;i trời như đ&egrave;n c&ocirc;ng cộng chiếu s&aacute;ng&hellip;tr&aacute;nh bị ghỉ s&eacute;t độ bền rất cao</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho mọi thiết bị,chủng loại nếu qu&yacute; kh&aacute;ch c&oacute; nhu cầu</p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<p><strong>SẢN PHẨM Đ&Uacute;C V&Agrave; TIỆN CNC</strong>(sản xuất theo đơn đặt h&agrave;ng)Sản phẩm mẫu&nbsp;,thiết kế sản phẩm 3D,thiết kế khu&ocirc;n&nbsp;,đặt ph&ocirc;i th&eacute;p v&agrave; phụ kiện khu&ocirc;n&nbsp;,lập tr&igrave;nh c&ocirc;ng nghệ gia c&ocirc;ng CNC,gia c&ocirc;ng l&ograve;ng khu&ocirc;n,đ&aacute;nh b&oacute;ng,lắp&nbsp;r&aacute;p,thử khu&ocirc;n</p>\r\n<p>Khu&ocirc;n nh&ocirc;m / hợp kim nh&ocirc;m c&aacute;c loại/chi tiết phụ t&ugrave;ng &ocirc; t&ocirc; xe m&aacute;y/t&agrave;u thủy&hellip;.</p>\r\n<p>Khu&ocirc;n đ&uacute;c găng tay chống d&iacute;nh chịu nhiệt, khu&acirc;n ủng cao su, nhựa c&aacute;c loai</p>\r\n<p>Khu&ocirc;n b&aacute;nh kẹo/thực phẩm c&aacute;c loại</p>\r\n<p>Khu&ocirc;n cho l&ograve; nướng chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n inox chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n dược phẩm /th&ugrave;ng chống d&iacute;nh c&aacute;c loại</p>\r\n<p>Dao cắt thực phẩm c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa h&oacute;a chất c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa bột c&aacute;c loại</p>\r\n<p><strong>CHỐNG D&Iacute;NH KIM LOẠI VIỆT MỸ &ndash; CHỐNG D&Iacute;NH AN TO&Agrave;N</strong></p>\r\n<p><strong>ĐẢM BẢO CHẤT LƯỢNG &ndash; UY T&Iacute;N H&Agrave;NG ĐẦU</strong></p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<div><strong><br /></strong></div>', 'data_uploads/product/IMG_0016-300x225.jpg', 'data_uploads/product/thumb/IMG_0016-300x225.jpg', 1, '', 14560000, 0),
(35, 26, 'CHỐNG DÍNH KHAY LÀM BÁNH MỲ', 'chong-dinh-khay-lam-banh-my', '', '<p><strong>Phủ chống d&iacute;nh khay l&agrave;m b&aacute;nh mỳ</strong>&nbsp;sử dụng C&ocirc;ng nghệ tạo lớp phủ chuyển tiếp bề mặt nano-TERLON&nbsp;đ&atilde; được nh&oacute;m chuy&ecirc;n gia thuộc Ph&ograve;ng C&ocirc;ng nghệ c&aacute;c vật liệu ti&ecirc;n tiến, Trung t&acirc;m Ph&aacute;t triển c&ocirc;ng nghệ cao, Viện H&agrave;n l&acirc;m Khoa học v&agrave; C&ocirc;ng nghệ Việt Mỹ&nbsp;nghi&ecirc;n cứu ứng dụng v&agrave;o c&aacute;c c&ocirc;ng đoạn tiền xử l&yacute; trong c&aacute;c d&acirc;y chuyền sơn tĩnh điện v&agrave; đ&atilde; được&nbsp;<strong>CH&Ocirc;NG D&Iacute;NH KIM LOẠI VIỆT MỸ</strong>&nbsp;thực h&agrave;nh thiết kế v&agrave; chế tạo th&agrave;nh c&ocirc;ng c&aacute;c l&ograve; sấy hồng ngoại x&uacute;c t&aacute;c cho c&aacute;c d&acirc;y chuyền sơn tĩnh điện</p>\r\n<p><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\"><img class=\" wp-image-1993 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\" alt=\"Ch_ng d&iacute;nh khu&ocirc;n b&aacute;nh Chocobie\" width=\"348\" height=\"261\" /></a></p>\r\n<p>&nbsp;</p>\r\n<p><span><strong>Hottline:&nbsp;<span>0932 278 282</span></strong></span></p>\r\n<p>Chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ l&agrave; đơn vị chuy&ecirc;n nghiệp , với đội ngũ c&ocirc;ng nh&acirc;n l&agrave;nh nghề nhiều năm kinh nghiệm trong lĩnh vực sơn, phủ chống d&iacute;nh tr&ecirc;n mọi bề mặt Kim loại như : Nh&ocirc;m, Đồng, inox, sắt.v.v.. .&nbsp;<strong>Cam kết chất lượng,</strong>&nbsp;đảm bảo đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu khắc khe trong m&ocirc;i trường GMP, Hccp.&nbsp;Chống d&iacute;nh tốt, chịu được nhiệt độ 400&nbsp;độ C.</p>\r\n<p>C&aacute;c sản phẩm&nbsp;<a title=\"C&aacute;c sản phẩm chống d&iacute;nh kim loại\" href=\"http://chongdinhkimloai.com/san-pham/\"><strong>chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ</strong>&nbsp;</a>đ&atilde; v&agrave; đang thực hiện:</p>\r\n<p>Mạ l&ocirc; sấy m&aacute;y photo c&aacute;c loại. L&Ocirc; SẤY&nbsp; A4- Ao&hellip;&nbsp;-TOSIBA , RICOL 1-2 ,&hellip;..</p>\r\n<p>Khu&ocirc;n mẫu găng tay hợp kim/ chống d&iacute;nh&nbsp; Teflon của Mỹ th&aacute;ch thức với mọi h&oacute;a chất acid/baze&hellip; chịu m&agrave;i m&ograve;n /chịu nhiệt độ 0-500 độ C .</p>\r\n<p>Chống d&iacute;nh l&ocirc; sấy m&aacute;y &eacute;p c&ocirc;ng nghiệp.</p>\r\n<p>Chống d&iacute;nh ,chịu nhiệt c&aacute;c khu&ocirc;n l&agrave;m b&aacute;nh kẹo,thực phẩm,c&aacute;c vật d&ugrave;ng nồi chảo,dao,khay&hellip;..</p>\r\n<p>Chống d&iacute;nh ng&agrave;nh dược phẩm,y tế hospital&hellip;</p>\r\n<p>Chống d&iacute;nh vật dụng ng&agrave;nh bếp cho hotel, restaurent, khu&ocirc;n nướng, vỉ nướng&hellip;.</p>\r\n<p>Chống d&iacute;nh, chịu nhiệt c&aacute;c thiết bị l&ograve; đốt c&ocirc;ng nghiệp</p>\r\n<p>Nhận gia c&ocirc;ng chống d&iacute;nh với số lượng lớn tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận sơn phủ chịu nhiệt tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận chống d&iacute;nh c&aacute;c loại ra răng &ocirc; t&ocirc;, thiết bị chịu nhiệt của &ocirc; t&ocirc;, t&agrave;u thủy&hellip;&hellip;với số lượng lớn</p>\r\n<p>Chống d&iacute;nh c&aacute;c loại thiết bị ng&agrave;nh nước như ống nước,c&uacute;t,nối&hellip;.c&ocirc;ng nghiệp số lượng lớn</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c thiết bị ngo&agrave;i trời với thời tiết khắc nghiệt, điều kiện nước biển,acid</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c loại bulong,ốc v&iacute;t cho điều kiện m&ocirc;i trường khắc nghiệt</p>\r\n<p>Chống d&iacute;nh mặt b&agrave;n l&agrave; ,thanh nhiệt cho nh&agrave; m&aacute;y dệt may</p>\r\n<p>Chống d&iacute;nh chịu nhiệt khu&ocirc;n găng tay cho nh&agrave; m&aacute;y sản xuất găng tay y tế xuất khẩu</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho b&agrave;n ủi giặt l&agrave;</p>\r\n<p>Phủ teflon cho c&aacute;c thiết bị b&igrave;nh đựng ga/b&igrave;nh ga tủ lạnh/điều h&ograve;a /m&aacute;y bảo &ocirc;n&hellip;&hellip;.</p>\r\n<p>B&igrave;nh chế tạo thiết bị nhiệt độ thấp để chứa đựng kh&ocirc;ng kh&iacute; lỏng</p>\r\n<p>Chế tạo c&aacute;c b&igrave;nh phản ứng chịu ăn m&ograve;n, vỏ b&igrave;nh acquy, l&agrave;m tấm lọc</p>\r\n<p>Chế tạo c&aacute;c lớp vỏ c&aacute;ch điện rất mỏng, chỉ cần 15&nbsp;micromet&nbsp;l&agrave; đ&atilde; c&oacute; một m&agrave;ng c&aacute;ch điện ho&agrave;n hảo</p>\r\n<p>Chế tạo rađa, vật liệu th&ocirc;ng tin cao tần, thiết bị s&oacute;ng ngắn</p>\r\n<p>Phủ bề mặt&nbsp;c&ocirc;ng nghiệp đ&ocirc;ng lạnh,&nbsp;c&ocirc;ng nghiệp ho&aacute; học,&nbsp;c&ocirc;ng nghiệp điện,&nbsp;c&ocirc;ng nghiệp thực phẩm,&nbsp;c&ocirc;ng nghiệp y dược&hellip;&hellip;</p>\r\n<p>Phủ bề mặt chống d&iacute;nh tất cả c&aacute;c thiết bị ngo&agrave;i trời như đ&egrave;n c&ocirc;ng cộng chiếu s&aacute;ng&hellip;tr&aacute;nh bị ghỉ s&eacute;t độ bền rất cao</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho mọi thiết bị,chủng loại nếu qu&yacute; kh&aacute;ch c&oacute; nhu cầu</p>\r\n<p><span><strong>Hottline:&nbsp;<span>0932 278 282</span></strong></span></p>\r\n<p><strong>SẢN PHẨM Đ&Uacute;C V&Agrave; TIỆN CNC</strong>(sản xuất theo đơn đặt h&agrave;ng)Sản phẩm mẫu&nbsp;,thiết kế sản phẩm 3D,thiết kế khu&ocirc;n&nbsp;,đặt ph&ocirc;i th&eacute;p v&agrave; phụ kiện khu&ocirc;n&nbsp;,lập tr&igrave;nh c&ocirc;ng nghệ gia c&ocirc;ng CNC,gia c&ocirc;ng l&ograve;ng khu&ocirc;n,đ&aacute;nh b&oacute;ng,lắp&nbsp;r&aacute;p,thử khu&ocirc;n</p>\r\n<p>Khu&ocirc;n nh&ocirc;m / hợp kim nh&ocirc;m c&aacute;c loại/chi tiết phụ t&ugrave;ng &ocirc; t&ocirc; xe m&aacute;y/t&agrave;u thủy&hellip;.</p>\r\n<p>Khu&ocirc;n đ&uacute;c găng tay chống d&iacute;nh chịu nhiệt, khu&acirc;n ủng cao su, nhựa c&aacute;c loai</p>\r\n<p>Khu&ocirc;n b&aacute;nh kẹo/thực phẩm c&aacute;c loại</p>\r\n<p>Khu&ocirc;n cho l&ograve; nướng chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n inox chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n dược phẩm /th&ugrave;ng chống d&iacute;nh c&aacute;c loại</p>\r\n<p>Dao cắt thực phẩm c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa h&oacute;a chất c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa bột c&aacute;c loại</p>\r\n<p><strong><span>CHỐNG D&Iacute;NH KIM LOẠI VIỆT MỸ &ndash; CHỐNG D&Iacute;NH AN TO&Agrave;N</span></strong></p>\r\n<p><strong><span>ĐẢM BẢO CHẤT LƯỢNG &ndash; UY T&Iacute;N H&Agrave;NG ĐẦU</span></strong></p>\r\n<p><strong><span>Hottline:&nbsp;<span>0932 278 282</span></span></strong></p>', 'data_uploads/product/xxxx1.jpg', 'data_uploads/product/thumb/xxxx1.jpg', 1, '', 20985000, 0),
(36, 26, 'CHỐNG DÍNH KHAY LÀM BÁNH MỲ', 'chong-dinh-khay-lam-banh-my', '', '<p><strong>Phủ chống d&iacute;nh khay l&agrave;m b&aacute;nh mỳ</strong>&nbsp;sử dụng C&ocirc;ng nghệ tạo lớp phủ chuyển tiếp bề mặt nano-TERLON&nbsp;đ&atilde; được nh&oacute;m chuy&ecirc;n gia thuộc Ph&ograve;ng C&ocirc;ng nghệ c&aacute;c vật liệu ti&ecirc;n tiến, Trung t&acirc;m Ph&aacute;t triển c&ocirc;ng nghệ cao, Viện H&agrave;n l&acirc;m Khoa học v&agrave; C&ocirc;ng nghệ Việt Mỹ&nbsp;nghi&ecirc;n cứu ứng dụng v&agrave;o c&aacute;c c&ocirc;ng đoạn tiền xử l&yacute; trong c&aacute;c d&acirc;y chuyền sơn tĩnh điện v&agrave; đ&atilde; được&nbsp;<strong>CH&Ocirc;NG D&Iacute;NH KIM LOẠI VIỆT MỸ</strong>&nbsp;thực h&agrave;nh thiết kế v&agrave; chế tạo th&agrave;nh c&ocirc;ng c&aacute;c l&ograve; sấy hồng ngoại x&uacute;c t&aacute;c cho c&aacute;c d&acirc;y chuyền sơn tĩnh điện</p>\r\n<p><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\"><img class=\" wp-image-1993 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\" alt=\"Ch_ng d&iacute;nh khu&ocirc;n b&aacute;nh Chocobie\" width=\"348\" height=\"261\" /></a></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<p>Chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ l&agrave; đơn vị chuy&ecirc;n nghiệp , với đội ngũ c&ocirc;ng nh&acirc;n l&agrave;nh nghề nhiều năm kinh nghiệm trong lĩnh vực sơn, phủ chống d&iacute;nh tr&ecirc;n mọi bề mặt Kim loại như : Nh&ocirc;m, Đồng, inox, sắt.v.v.. .&nbsp;<strong>Cam kết chất lượng,</strong>&nbsp;đảm bảo đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu khắc khe trong m&ocirc;i trường GMP, Hccp.&nbsp;Chống d&iacute;nh tốt, chịu được nhiệt độ 400&nbsp;độ C.</p>\r\n<p>C&aacute;c sản phẩm&nbsp;<a title=\"C&aacute;c sản phẩm chống d&iacute;nh kim loại\" href=\"http://chongdinhkimloai.com/san-pham/\"><strong>chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ</strong>&nbsp;</a>đ&atilde; v&agrave; đang thực hiện:</p>\r\n<p>Mạ l&ocirc; sấy m&aacute;y photo c&aacute;c loại. L&Ocirc; SẤY&nbsp; A4- Ao&hellip;&nbsp;-TOSIBA , RICOL 1-2 ,&hellip;..</p>\r\n<p>Khu&ocirc;n mẫu găng tay hợp kim/ chống d&iacute;nh&nbsp; Teflon của Mỹ th&aacute;ch thức với mọi h&oacute;a chất acid/baze&hellip; chịu m&agrave;i m&ograve;n /chịu nhiệt độ 0-500 độ C .</p>\r\n<p>Chống d&iacute;nh l&ocirc; sấy m&aacute;y &eacute;p c&ocirc;ng nghiệp.</p>\r\n<p>Chống d&iacute;nh ,chịu nhiệt c&aacute;c khu&ocirc;n l&agrave;m b&aacute;nh kẹo,thực phẩm,c&aacute;c vật d&ugrave;ng nồi chảo,dao,khay&hellip;..</p>\r\n<p>Chống d&iacute;nh ng&agrave;nh dược phẩm,y tế hospital&hellip;</p>\r\n<p>Chống d&iacute;nh vật dụng ng&agrave;nh bếp cho hotel, restaurent, khu&ocirc;n nướng, vỉ nướng&hellip;.</p>\r\n<p>Chống d&iacute;nh, chịu nhiệt c&aacute;c thiết bị l&ograve; đốt c&ocirc;ng nghiệp</p>\r\n<p>Nhận gia c&ocirc;ng chống d&iacute;nh với số lượng lớn tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận sơn phủ chịu nhiệt tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận chống d&iacute;nh c&aacute;c loại ra răng &ocirc; t&ocirc;, thiết bị chịu nhiệt của &ocirc; t&ocirc;, t&agrave;u thủy&hellip;&hellip;với số lượng lớn</p>\r\n<p>Chống d&iacute;nh c&aacute;c loại thiết bị ng&agrave;nh nước như ống nước,c&uacute;t,nối&hellip;.c&ocirc;ng nghiệp số lượng lớn</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c thiết bị ngo&agrave;i trời với thời tiết khắc nghiệt, điều kiện nước biển,acid</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c loại bulong,ốc v&iacute;t cho điều kiện m&ocirc;i trường khắc nghiệt</p>\r\n<p>Chống d&iacute;nh mặt b&agrave;n l&agrave; ,thanh nhiệt cho nh&agrave; m&aacute;y dệt may</p>\r\n<p>Chống d&iacute;nh chịu nhiệt khu&ocirc;n găng tay cho nh&agrave; m&aacute;y sản xuất găng tay y tế xuất khẩu</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho b&agrave;n ủi giặt l&agrave;</p>\r\n<p>Phủ teflon cho c&aacute;c thiết bị b&igrave;nh đựng ga/b&igrave;nh ga tủ lạnh/điều h&ograve;a /m&aacute;y bảo &ocirc;n&hellip;&hellip;.</p>\r\n<p>B&igrave;nh chế tạo thiết bị nhiệt độ thấp để chứa đựng kh&ocirc;ng kh&iacute; lỏng</p>\r\n<p>Chế tạo c&aacute;c b&igrave;nh phản ứng chịu ăn m&ograve;n, vỏ b&igrave;nh acquy, l&agrave;m tấm lọc</p>\r\n<p>Chế tạo c&aacute;c lớp vỏ c&aacute;ch điện rất mỏng, chỉ cần 15&nbsp;micromet&nbsp;l&agrave; đ&atilde; c&oacute; một m&agrave;ng c&aacute;ch điện ho&agrave;n hảo</p>\r\n<p>Chế tạo rađa, vật liệu th&ocirc;ng tin cao tần, thiết bị s&oacute;ng ngắn</p>\r\n<p>Phủ bề mặt&nbsp;c&ocirc;ng nghiệp đ&ocirc;ng lạnh,&nbsp;c&ocirc;ng nghiệp ho&aacute; học,&nbsp;c&ocirc;ng nghiệp điện,&nbsp;c&ocirc;ng nghiệp thực phẩm,&nbsp;c&ocirc;ng nghiệp y dược&hellip;&hellip;</p>\r\n<p>Phủ bề mặt chống d&iacute;nh tất cả c&aacute;c thiết bị ngo&agrave;i trời như đ&egrave;n c&ocirc;ng cộng chiếu s&aacute;ng&hellip;tr&aacute;nh bị ghỉ s&eacute;t độ bền rất cao</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho mọi thiết bị,chủng loại nếu qu&yacute; kh&aacute;ch c&oacute; nhu cầu</p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<p><strong>SẢN PHẨM Đ&Uacute;C V&Agrave; TIỆN CNC</strong>(sản xuất theo đơn đặt h&agrave;ng)Sản phẩm mẫu&nbsp;,thiết kế sản phẩm 3D,thiết kế khu&ocirc;n&nbsp;,đặt ph&ocirc;i th&eacute;p v&agrave; phụ kiện khu&ocirc;n&nbsp;,lập tr&igrave;nh c&ocirc;ng nghệ gia c&ocirc;ng CNC,gia c&ocirc;ng l&ograve;ng khu&ocirc;n,đ&aacute;nh b&oacute;ng,lắp&nbsp;r&aacute;p,thử khu&ocirc;n</p>\r\n<p>Khu&ocirc;n nh&ocirc;m / hợp kim nh&ocirc;m c&aacute;c loại/chi tiết phụ t&ugrave;ng &ocirc; t&ocirc; xe m&aacute;y/t&agrave;u thủy&hellip;.</p>\r\n<p>Khu&ocirc;n đ&uacute;c găng tay chống d&iacute;nh chịu nhiệt, khu&acirc;n ủng cao su, nhựa c&aacute;c loai</p>\r\n<p>Khu&ocirc;n b&aacute;nh kẹo/thực phẩm c&aacute;c loại</p>\r\n<p>Khu&ocirc;n cho l&ograve; nướng chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n inox chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n dược phẩm /th&ugrave;ng chống d&iacute;nh c&aacute;c loại</p>\r\n<p>Dao cắt thực phẩm c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa h&oacute;a chất c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa bột c&aacute;c loại</p>\r\n<p><strong>CHỐNG D&Iacute;NH KIM LOẠI VIỆT MỸ &ndash; CHỐNG D&Iacute;NH AN TO&Agrave;N</strong></p>\r\n<p><strong>ĐẢM BẢO CHẤT LƯỢNG &ndash; UY T&Iacute;N H&Agrave;NG ĐẦU</strong></p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<div><strong><br /></strong></div>', 'data_uploads/product/IMG_0016-300x225.jpg', 'data_uploads/product/thumb/IMG_0016-300x225.jpg', 1, '', 14560000, 0),
(37, 26, 'ANH NHIỆT MÁY ÉP BÔNG ĐỆM HÀN QUỐC', 'anh-nhiet-may-ep-bong-dem-han-quoc', '', '<p><strong>Phủ chống d&iacute;nh khay l&agrave;m b&aacute;nh mỳ</strong>&nbsp;sử dụng C&ocirc;ng nghệ tạo lớp phủ chuyển tiếp bề mặt nano-TERLON&nbsp;đ&atilde; được nh&oacute;m chuy&ecirc;n gia thuộc Ph&ograve;ng C&ocirc;ng nghệ c&aacute;c vật liệu ti&ecirc;n tiến, Trung t&acirc;m Ph&aacute;t triển c&ocirc;ng nghệ cao, Viện H&agrave;n l&acirc;m Khoa học v&agrave; C&ocirc;ng nghệ Việt Mỹ&nbsp;nghi&ecirc;n cứu ứng dụng v&agrave;o c&aacute;c c&ocirc;ng đoạn tiền xử l&yacute; trong c&aacute;c d&acirc;y chuyền sơn tĩnh điện v&agrave; đ&atilde; được&nbsp;<strong>CH&Ocirc;NG D&Iacute;NH KIM LOẠI VIỆT MỸ</strong>&nbsp;thực h&agrave;nh thiết kế v&agrave; chế tạo th&agrave;nh c&ocirc;ng c&aacute;c l&ograve; sấy hồng ngoại x&uacute;c t&aacute;c cho c&aacute;c d&acirc;y chuyền sơn tĩnh điện</p>\r\n<p><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\"><img class=\" wp-image-1993 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\" alt=\"Ch_ng d&iacute;nh khu&ocirc;n b&aacute;nh Chocobie\" width=\"348\" height=\"261\" /></a></p>\r\n<p>&nbsp;</p>\r\n<p><span><strong>Hottline:&nbsp;<span>0932 278 282</span></strong></span></p>\r\n<p>Chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ l&agrave; đơn vị chuy&ecirc;n nghiệp , với đội ngũ c&ocirc;ng nh&acirc;n l&agrave;nh nghề nhiều năm kinh nghiệm trong lĩnh vực sơn, phủ chống d&iacute;nh tr&ecirc;n mọi bề mặt Kim loại như : Nh&ocirc;m, Đồng, inox, sắt.v.v.. .&nbsp;<strong>Cam kết chất lượng,</strong>&nbsp;đảm bảo đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu khắc khe trong m&ocirc;i trường GMP, Hccp.&nbsp;Chống d&iacute;nh tốt, chịu được nhiệt độ 400&nbsp;độ C.</p>\r\n<p>C&aacute;c sản phẩm&nbsp;<a title=\"C&aacute;c sản phẩm chống d&iacute;nh kim loại\" href=\"http://chongdinhkimloai.com/san-pham/\"><strong>chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ</strong>&nbsp;</a>đ&atilde; v&agrave; đang thực hiện:</p>\r\n<p>Mạ l&ocirc; sấy m&aacute;y photo c&aacute;c loại. L&Ocirc; SẤY&nbsp; A4- Ao&hellip;&nbsp;-TOSIBA , RICOL 1-2 ,&hellip;..</p>\r\n<p>Khu&ocirc;n mẫu găng tay hợp kim/ chống d&iacute;nh&nbsp; Teflon của Mỹ th&aacute;ch thức với mọi h&oacute;a chất acid/baze&hellip; chịu m&agrave;i m&ograve;n /chịu nhiệt độ 0-500 độ C .</p>\r\n<p>Chống d&iacute;nh l&ocirc; sấy m&aacute;y &eacute;p c&ocirc;ng nghiệp.</p>\r\n<p>Chống d&iacute;nh ,chịu nhiệt c&aacute;c khu&ocirc;n l&agrave;m b&aacute;nh kẹo,thực phẩm,c&aacute;c vật d&ugrave;ng nồi chảo,dao,khay&hellip;..</p>\r\n<p>Chống d&iacute;nh ng&agrave;nh dược phẩm,y tế hospital&hellip;</p>\r\n<p>Chống d&iacute;nh vật dụng ng&agrave;nh bếp cho hotel, restaurent, khu&ocirc;n nướng, vỉ nướng&hellip;.</p>\r\n<p>Chống d&iacute;nh, chịu nhiệt c&aacute;c thiết bị l&ograve; đốt c&ocirc;ng nghiệp</p>\r\n<p>Nhận gia c&ocirc;ng chống d&iacute;nh với số lượng lớn tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận sơn phủ chịu nhiệt tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận chống d&iacute;nh c&aacute;c loại ra răng &ocirc; t&ocirc;, thiết bị chịu nhiệt của &ocirc; t&ocirc;, t&agrave;u thủy&hellip;&hellip;với số lượng lớn</p>\r\n<p>Chống d&iacute;nh c&aacute;c loại thiết bị ng&agrave;nh nước như ống nước,c&uacute;t,nối&hellip;.c&ocirc;ng nghiệp số lượng lớn</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c thiết bị ngo&agrave;i trời với thời tiết khắc nghiệt, điều kiện nước biển,acid</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c loại bulong,ốc v&iacute;t cho điều kiện m&ocirc;i trường khắc nghiệt</p>\r\n<p>Chống d&iacute;nh mặt b&agrave;n l&agrave; ,thanh nhiệt cho nh&agrave; m&aacute;y dệt may</p>\r\n<p>Chống d&iacute;nh chịu nhiệt khu&ocirc;n găng tay cho nh&agrave; m&aacute;y sản xuất găng tay y tế xuất khẩu</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho b&agrave;n ủi giặt l&agrave;</p>\r\n<p>Phủ teflon cho c&aacute;c thiết bị b&igrave;nh đựng ga/b&igrave;nh ga tủ lạnh/điều h&ograve;a /m&aacute;y bảo &ocirc;n&hellip;&hellip;.</p>\r\n<p>B&igrave;nh chế tạo thiết bị nhiệt độ thấp để chứa đựng kh&ocirc;ng kh&iacute; lỏng</p>\r\n<p>Chế tạo c&aacute;c b&igrave;nh phản ứng chịu ăn m&ograve;n, vỏ b&igrave;nh acquy, l&agrave;m tấm lọc</p>\r\n<p>Chế tạo c&aacute;c lớp vỏ c&aacute;ch điện rất mỏng, chỉ cần 15&nbsp;micromet&nbsp;l&agrave; đ&atilde; c&oacute; một m&agrave;ng c&aacute;ch điện ho&agrave;n hảo</p>\r\n<p>Chế tạo rađa, vật liệu th&ocirc;ng tin cao tần, thiết bị s&oacute;ng ngắn</p>\r\n<p>Phủ bề mặt&nbsp;c&ocirc;ng nghiệp đ&ocirc;ng lạnh,&nbsp;c&ocirc;ng nghiệp ho&aacute; học,&nbsp;c&ocirc;ng nghiệp điện,&nbsp;c&ocirc;ng nghiệp thực phẩm,&nbsp;c&ocirc;ng nghiệp y dược&hellip;&hellip;</p>\r\n<p>Phủ bề mặt chống d&iacute;nh tất cả c&aacute;c thiết bị ngo&agrave;i trời như đ&egrave;n c&ocirc;ng cộng chiếu s&aacute;ng&hellip;tr&aacute;nh bị ghỉ s&eacute;t độ bền rất cao</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho mọi thiết bị,chủng loại nếu qu&yacute; kh&aacute;ch c&oacute; nhu cầu</p>\r\n<p><span><strong>Hottline:&nbsp;<span>0932 278 282</span></strong></span></p>\r\n<p><strong>SẢN PHẨM Đ&Uacute;C V&Agrave; TIỆN CNC</strong>(sản xuất theo đơn đặt h&agrave;ng)Sản phẩm mẫu&nbsp;,thiết kế sản phẩm 3D,thiết kế khu&ocirc;n&nbsp;,đặt ph&ocirc;i th&eacute;p v&agrave; phụ kiện khu&ocirc;n&nbsp;,lập tr&igrave;nh c&ocirc;ng nghệ gia c&ocirc;ng CNC,gia c&ocirc;ng l&ograve;ng khu&ocirc;n,đ&aacute;nh b&oacute;ng,lắp&nbsp;r&aacute;p,thử khu&ocirc;n</p>\r\n<p>Khu&ocirc;n nh&ocirc;m / hợp kim nh&ocirc;m c&aacute;c loại/chi tiết phụ t&ugrave;ng &ocirc; t&ocirc; xe m&aacute;y/t&agrave;u thủy&hellip;.</p>\r\n<p>Khu&ocirc;n đ&uacute;c găng tay chống d&iacute;nh chịu nhiệt, khu&acirc;n ủng cao su, nhựa c&aacute;c loai</p>\r\n<p>Khu&ocirc;n b&aacute;nh kẹo/thực phẩm c&aacute;c loại</p>\r\n<p>Khu&ocirc;n cho l&ograve; nướng chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n inox chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n dược phẩm /th&ugrave;ng chống d&iacute;nh c&aacute;c loại</p>\r\n<p>Dao cắt thực phẩm c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa h&oacute;a chất c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa bột c&aacute;c loại</p>\r\n<p><strong><span>CHỐNG D&Iacute;NH KIM LOẠI VIỆT MỸ &ndash; CHỐNG D&Iacute;NH AN TO&Agrave;N</span></strong></p>\r\n<p><strong><span>ĐẢM BẢO CHẤT LƯỢNG &ndash; UY T&Iacute;N H&Agrave;NG ĐẦU</span></strong></p>\r\n<p><strong><span>Hottline:&nbsp;<span>0932 278 282</span></span></strong></p>', 'data_uploads/product/IMG_0016-300x2251.jpg', 'data_uploads/product/thumb/IMG_0016-300x2251.jpg', 1, '', 16520000, 0),
(38, 26, 'ANH NHIỆT MÁY ÉP BÔNG ĐỆM HÀN QUỐC', 'anh-nhiet-may-ep-bong-dem-han-quoc', '', '<p><strong>Phủ chống d&iacute;nh khay l&agrave;m b&aacute;nh mỳ</strong>&nbsp;sử dụng C&ocirc;ng nghệ tạo lớp phủ chuyển tiếp bề mặt nano-TERLON&nbsp;đ&atilde; được nh&oacute;m chuy&ecirc;n gia thuộc Ph&ograve;ng C&ocirc;ng nghệ c&aacute;c vật liệu ti&ecirc;n tiến, Trung t&acirc;m Ph&aacute;t triển c&ocirc;ng nghệ cao, Viện H&agrave;n l&acirc;m Khoa học v&agrave; C&ocirc;ng nghệ Việt Mỹ&nbsp;nghi&ecirc;n cứu ứng dụng v&agrave;o c&aacute;c c&ocirc;ng đoạn tiền xử l&yacute; trong c&aacute;c d&acirc;y chuyền sơn tĩnh điện v&agrave; đ&atilde; được&nbsp;<strong>CH&Ocirc;NG D&Iacute;NH KIM LOẠI VIỆT MỸ</strong>&nbsp;thực h&agrave;nh thiết kế v&agrave; chế tạo th&agrave;nh c&ocirc;ng c&aacute;c l&ograve; sấy hồng ngoại x&uacute;c t&aacute;c cho c&aacute;c d&acirc;y chuyền sơn tĩnh điện</p>\r\n<p><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\"><img class=\" wp-image-1993 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\" alt=\"Ch_ng d&iacute;nh khu&ocirc;n b&aacute;nh Chocobie\" width=\"348\" height=\"261\" /></a></p>\r\n<p>&nbsp;</p>\r\n<p><span><strong>Hottline:&nbsp;<span>0932 278 282</span></strong></span></p>\r\n<p>Chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ l&agrave; đơn vị chuy&ecirc;n nghiệp , với đội ngũ c&ocirc;ng nh&acirc;n l&agrave;nh nghề nhiều năm kinh nghiệm trong lĩnh vực sơn, phủ chống d&iacute;nh tr&ecirc;n mọi bề mặt Kim loại như : Nh&ocirc;m, Đồng, inox, sắt.v.v.. .&nbsp;<strong>Cam kết chất lượng,</strong>&nbsp;đảm bảo đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu khắc khe trong m&ocirc;i trường GMP, Hccp.&nbsp;Chống d&iacute;nh tốt, chịu được nhiệt độ 400&nbsp;độ C.</p>\r\n<p>C&aacute;c sản phẩm&nbsp;<a title=\"C&aacute;c sản phẩm chống d&iacute;nh kim loại\" href=\"http://chongdinhkimloai.com/san-pham/\"><strong>chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ</strong>&nbsp;</a>đ&atilde; v&agrave; đang thực hiện:</p>\r\n<p>Mạ l&ocirc; sấy m&aacute;y photo c&aacute;c loại. L&Ocirc; SẤY&nbsp; A4- Ao&hellip;&nbsp;-TOSIBA , RICOL 1-2 ,&hellip;..</p>\r\n<p>Khu&ocirc;n mẫu găng tay hợp kim/ chống d&iacute;nh&nbsp; Teflon của Mỹ th&aacute;ch thức với mọi h&oacute;a chất acid/baze&hellip; chịu m&agrave;i m&ograve;n /chịu nhiệt độ 0-500 độ C .</p>\r\n<p>Chống d&iacute;nh l&ocirc; sấy m&aacute;y &eacute;p c&ocirc;ng nghiệp.</p>\r\n<p>Chống d&iacute;nh ,chịu nhiệt c&aacute;c khu&ocirc;n l&agrave;m b&aacute;nh kẹo,thực phẩm,c&aacute;c vật d&ugrave;ng nồi chảo,dao,khay&hellip;..</p>\r\n<p>Chống d&iacute;nh ng&agrave;nh dược phẩm,y tế hospital&hellip;</p>\r\n<p>Chống d&iacute;nh vật dụng ng&agrave;nh bếp cho hotel, restaurent, khu&ocirc;n nướng, vỉ nướng&hellip;.</p>\r\n<p>Chống d&iacute;nh, chịu nhiệt c&aacute;c thiết bị l&ograve; đốt c&ocirc;ng nghiệp</p>\r\n<p>Nhận gia c&ocirc;ng chống d&iacute;nh với số lượng lớn tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận sơn phủ chịu nhiệt tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận chống d&iacute;nh c&aacute;c loại ra răng &ocirc; t&ocirc;, thiết bị chịu nhiệt của &ocirc; t&ocirc;, t&agrave;u thủy&hellip;&hellip;với số lượng lớn</p>\r\n<p>Chống d&iacute;nh c&aacute;c loại thiết bị ng&agrave;nh nước như ống nước,c&uacute;t,nối&hellip;.c&ocirc;ng nghiệp số lượng lớn</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c thiết bị ngo&agrave;i trời với thời tiết khắc nghiệt, điều kiện nước biển,acid</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c loại bulong,ốc v&iacute;t cho điều kiện m&ocirc;i trường khắc nghiệt</p>\r\n<p>Chống d&iacute;nh mặt b&agrave;n l&agrave; ,thanh nhiệt cho nh&agrave; m&aacute;y dệt may</p>\r\n<p>Chống d&iacute;nh chịu nhiệt khu&ocirc;n găng tay cho nh&agrave; m&aacute;y sản xuất găng tay y tế xuất khẩu</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho b&agrave;n ủi giặt l&agrave;</p>\r\n<p>Phủ teflon cho c&aacute;c thiết bị b&igrave;nh đựng ga/b&igrave;nh ga tủ lạnh/điều h&ograve;a /m&aacute;y bảo &ocirc;n&hellip;&hellip;.</p>\r\n<p>B&igrave;nh chế tạo thiết bị nhiệt độ thấp để chứa đựng kh&ocirc;ng kh&iacute; lỏng</p>\r\n<p>Chế tạo c&aacute;c b&igrave;nh phản ứng chịu ăn m&ograve;n, vỏ b&igrave;nh acquy, l&agrave;m tấm lọc</p>\r\n<p>Chế tạo c&aacute;c lớp vỏ c&aacute;ch điện rất mỏng, chỉ cần 15&nbsp;micromet&nbsp;l&agrave; đ&atilde; c&oacute; một m&agrave;ng c&aacute;ch điện ho&agrave;n hảo</p>\r\n<p>Chế tạo rađa, vật liệu th&ocirc;ng tin cao tần, thiết bị s&oacute;ng ngắn</p>\r\n<p>Phủ bề mặt&nbsp;c&ocirc;ng nghiệp đ&ocirc;ng lạnh,&nbsp;c&ocirc;ng nghiệp ho&aacute; học,&nbsp;c&ocirc;ng nghiệp điện,&nbsp;c&ocirc;ng nghiệp thực phẩm,&nbsp;c&ocirc;ng nghiệp y dược&hellip;&hellip;</p>\r\n<p>Phủ bề mặt chống d&iacute;nh tất cả c&aacute;c thiết bị ngo&agrave;i trời như đ&egrave;n c&ocirc;ng cộng chiếu s&aacute;ng&hellip;tr&aacute;nh bị ghỉ s&eacute;t độ bền rất cao</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho mọi thiết bị,chủng loại nếu qu&yacute; kh&aacute;ch c&oacute; nhu cầu</p>\r\n<p><span><strong>Hottline:&nbsp;<span>0932 278 282</span></strong></span></p>\r\n<p><strong>SẢN PHẨM Đ&Uacute;C V&Agrave; TIỆN CNC</strong>(sản xuất theo đơn đặt h&agrave;ng)Sản phẩm mẫu&nbsp;,thiết kế sản phẩm 3D,thiết kế khu&ocirc;n&nbsp;,đặt ph&ocirc;i th&eacute;p v&agrave; phụ kiện khu&ocirc;n&nbsp;,lập tr&igrave;nh c&ocirc;ng nghệ gia c&ocirc;ng CNC,gia c&ocirc;ng l&ograve;ng khu&ocirc;n,đ&aacute;nh b&oacute;ng,lắp&nbsp;r&aacute;p,thử khu&ocirc;n</p>\r\n<p>Khu&ocirc;n nh&ocirc;m / hợp kim nh&ocirc;m c&aacute;c loại/chi tiết phụ t&ugrave;ng &ocirc; t&ocirc; xe m&aacute;y/t&agrave;u thủy&hellip;.</p>\r\n<p>Khu&ocirc;n đ&uacute;c găng tay chống d&iacute;nh chịu nhiệt, khu&acirc;n ủng cao su, nhựa c&aacute;c loai</p>\r\n<p>Khu&ocirc;n b&aacute;nh kẹo/thực phẩm c&aacute;c loại</p>\r\n<p>Khu&ocirc;n cho l&ograve; nướng chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n inox chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n dược phẩm /th&ugrave;ng chống d&iacute;nh c&aacute;c loại</p>\r\n<p>Dao cắt thực phẩm c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa h&oacute;a chất c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa bột c&aacute;c loại</p>\r\n<p><strong><span>CHỐNG D&Iacute;NH KIM LOẠI VIỆT MỸ &ndash; CHỐNG D&Iacute;NH AN TO&Agrave;N</span></strong></p>\r\n<p><strong><span>ĐẢM BẢO CHẤT LƯỢNG &ndash; UY T&Iacute;N H&Agrave;NG ĐẦU</span></strong></p>\r\n<p><strong><span>Hottline:&nbsp;<span>0932 278 282</span></span></strong></p>', 'data_uploads/product/IMG_0016-300x2252.jpg', 'data_uploads/product/thumb/IMG_0016-300x2252.jpg', 1, '', 1445000, 0),
(39, 26, 'THANH NHIỆT MÁY ÉP BÔNG ĐỆM HÀN QUỐC', 'thanh-nhiet-may-ep-bong-dem-han-quoc', '', '<p><strong>Phủ chống d&iacute;nh khay l&agrave;m b&aacute;nh mỳ</strong>&nbsp;sử dụng C&ocirc;ng nghệ tạo lớp phủ chuyển tiếp bề mặt nano-TERLON&nbsp;đ&atilde; được nh&oacute;m chuy&ecirc;n gia thuộc Ph&ograve;ng C&ocirc;ng nghệ c&aacute;c vật liệu ti&ecirc;n tiến, Trung t&acirc;m Ph&aacute;t triển c&ocirc;ng nghệ cao, Viện H&agrave;n l&acirc;m Khoa học v&agrave; C&ocirc;ng nghệ Việt Mỹ&nbsp;nghi&ecirc;n cứu ứng dụng v&agrave;o c&aacute;c c&ocirc;ng đoạn tiền xử l&yacute; trong c&aacute;c d&acirc;y chuyền sơn tĩnh điện v&agrave; đ&atilde; được&nbsp;<strong>CH&Ocirc;NG D&Iacute;NH KIM LOẠI VIỆT MỸ</strong>&nbsp;thực h&agrave;nh thiết kế v&agrave; chế tạo th&agrave;nh c&ocirc;ng c&aacute;c l&ograve; sấy hồng ngoại x&uacute;c t&aacute;c cho c&aacute;c d&acirc;y chuyền sơn tĩnh điện</p>\r\n<p><a href=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\"><img class=\" wp-image-1993 aligncenter\" src=\"http://chongdinhkimloai.com/wp-content/uploads/2015/04/Ch_ng-d%C3%ADnh-khu%C3%B4n-b%C3%A1nh-Chocobie.jpg\" alt=\"Ch_ng d&iacute;nh khu&ocirc;n b&aacute;nh Chocobie\" width=\"348\" height=\"261\" /></a></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<p>Chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ l&agrave; đơn vị chuy&ecirc;n nghiệp , với đội ngũ c&ocirc;ng nh&acirc;n l&agrave;nh nghề nhiều năm kinh nghiệm trong lĩnh vực sơn, phủ chống d&iacute;nh tr&ecirc;n mọi bề mặt Kim loại như : Nh&ocirc;m, Đồng, inox, sắt.v.v.. .&nbsp;<strong>Cam kết chất lượng,</strong>&nbsp;đảm bảo đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu khắc khe trong m&ocirc;i trường GMP, Hccp.&nbsp;Chống d&iacute;nh tốt, chịu được nhiệt độ 400&nbsp;độ C.</p>\r\n<p>C&aacute;c sản phẩm&nbsp;<a title=\"C&aacute;c sản phẩm chống d&iacute;nh kim loại\" href=\"http://chongdinhkimloai.com/san-pham/\"><strong>chống d&iacute;nh kim loại&nbsp;VIỆT &ndash; MỸ</strong>&nbsp;</a>đ&atilde; v&agrave; đang thực hiện:</p>\r\n<p>Mạ l&ocirc; sấy m&aacute;y photo c&aacute;c loại. L&Ocirc; SẤY&nbsp; A4- Ao&hellip;&nbsp;-TOSIBA , RICOL 1-2 ,&hellip;..</p>\r\n<p>Khu&ocirc;n mẫu găng tay hợp kim/ chống d&iacute;nh&nbsp; Teflon của Mỹ th&aacute;ch thức với mọi h&oacute;a chất acid/baze&hellip; chịu m&agrave;i m&ograve;n /chịu nhiệt độ 0-500 độ C .</p>\r\n<p>Chống d&iacute;nh l&ocirc; sấy m&aacute;y &eacute;p c&ocirc;ng nghiệp.</p>\r\n<p>Chống d&iacute;nh ,chịu nhiệt c&aacute;c khu&ocirc;n l&agrave;m b&aacute;nh kẹo,thực phẩm,c&aacute;c vật d&ugrave;ng nồi chảo,dao,khay&hellip;..</p>\r\n<p>Chống d&iacute;nh ng&agrave;nh dược phẩm,y tế hospital&hellip;</p>\r\n<p>Chống d&iacute;nh vật dụng ng&agrave;nh bếp cho hotel, restaurent, khu&ocirc;n nướng, vỉ nướng&hellip;.</p>\r\n<p>Chống d&iacute;nh, chịu nhiệt c&aacute;c thiết bị l&ograve; đốt c&ocirc;ng nghiệp</p>\r\n<p>Nhận gia c&ocirc;ng chống d&iacute;nh với số lượng lớn tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận sơn phủ chịu nhiệt tất cả c&aacute;c thiết bị, vật dụng với số lượng lớn</p>\r\n<p>Nhận chống d&iacute;nh c&aacute;c loại ra răng &ocirc; t&ocirc;, thiết bị chịu nhiệt của &ocirc; t&ocirc;, t&agrave;u thủy&hellip;&hellip;với số lượng lớn</p>\r\n<p>Chống d&iacute;nh c&aacute;c loại thiết bị ng&agrave;nh nước như ống nước,c&uacute;t,nối&hellip;.c&ocirc;ng nghiệp số lượng lớn</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c thiết bị ngo&agrave;i trời với thời tiết khắc nghiệt, điều kiện nước biển,acid</p>\r\n<p>Chống d&iacute;nh chịu nhiệt c&aacute;c loại bulong,ốc v&iacute;t cho điều kiện m&ocirc;i trường khắc nghiệt</p>\r\n<p>Chống d&iacute;nh mặt b&agrave;n l&agrave; ,thanh nhiệt cho nh&agrave; m&aacute;y dệt may</p>\r\n<p>Chống d&iacute;nh chịu nhiệt khu&ocirc;n găng tay cho nh&agrave; m&aacute;y sản xuất găng tay y tế xuất khẩu</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho b&agrave;n ủi giặt l&agrave;</p>\r\n<p>Phủ teflon cho c&aacute;c thiết bị b&igrave;nh đựng ga/b&igrave;nh ga tủ lạnh/điều h&ograve;a /m&aacute;y bảo &ocirc;n&hellip;&hellip;.</p>\r\n<p>B&igrave;nh chế tạo thiết bị nhiệt độ thấp để chứa đựng kh&ocirc;ng kh&iacute; lỏng</p>\r\n<p>Chế tạo c&aacute;c b&igrave;nh phản ứng chịu ăn m&ograve;n, vỏ b&igrave;nh acquy, l&agrave;m tấm lọc</p>\r\n<p>Chế tạo c&aacute;c lớp vỏ c&aacute;ch điện rất mỏng, chỉ cần 15&nbsp;micromet&nbsp;l&agrave; đ&atilde; c&oacute; một m&agrave;ng c&aacute;ch điện ho&agrave;n hảo</p>\r\n<p>Chế tạo rađa, vật liệu th&ocirc;ng tin cao tần, thiết bị s&oacute;ng ngắn</p>\r\n<p>Phủ bề mặt&nbsp;c&ocirc;ng nghiệp đ&ocirc;ng lạnh,&nbsp;c&ocirc;ng nghiệp ho&aacute; học,&nbsp;c&ocirc;ng nghiệp điện,&nbsp;c&ocirc;ng nghiệp thực phẩm,&nbsp;c&ocirc;ng nghiệp y dược&hellip;&hellip;</p>\r\n<p>Phủ bề mặt chống d&iacute;nh tất cả c&aacute;c thiết bị ngo&agrave;i trời như đ&egrave;n c&ocirc;ng cộng chiếu s&aacute;ng&hellip;tr&aacute;nh bị ghỉ s&eacute;t độ bền rất cao</p>\r\n<p>Chống d&iacute;nh chịu nhiệt cho mọi thiết bị,chủng loại nếu qu&yacute; kh&aacute;ch c&oacute; nhu cầu</p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<p><strong>SẢN PHẨM Đ&Uacute;C V&Agrave; TIỆN CNC</strong>(sản xuất theo đơn đặt h&agrave;ng)Sản phẩm mẫu&nbsp;,thiết kế sản phẩm 3D,thiết kế khu&ocirc;n&nbsp;,đặt ph&ocirc;i th&eacute;p v&agrave; phụ kiện khu&ocirc;n&nbsp;,lập tr&igrave;nh c&ocirc;ng nghệ gia c&ocirc;ng CNC,gia c&ocirc;ng l&ograve;ng khu&ocirc;n,đ&aacute;nh b&oacute;ng,lắp&nbsp;r&aacute;p,thử khu&ocirc;n</p>\r\n<p>Khu&ocirc;n nh&ocirc;m / hợp kim nh&ocirc;m c&aacute;c loại/chi tiết phụ t&ugrave;ng &ocirc; t&ocirc; xe m&aacute;y/t&agrave;u thủy&hellip;.</p>\r\n<p>Khu&ocirc;n đ&uacute;c găng tay chống d&iacute;nh chịu nhiệt, khu&acirc;n ủng cao su, nhựa c&aacute;c loai</p>\r\n<p>Khu&ocirc;n b&aacute;nh kẹo/thực phẩm c&aacute;c loại</p>\r\n<p>Khu&ocirc;n cho l&ograve; nướng chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n inox chống d&iacute;nh chịu nhiệt c&aacute;c loại</p>\r\n<p>Khu&ocirc;n dược phẩm /th&ugrave;ng chống d&iacute;nh c&aacute;c loại</p>\r\n<p>Dao cắt thực phẩm c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa h&oacute;a chất c&aacute;c loại</p>\r\n<p>Th&ugrave;ng chứa bột c&aacute;c loại</p>\r\n<p><strong>CHỐNG D&Iacute;NH KIM LOẠI VIỆT MỸ &ndash; CHỐNG D&Iacute;NH AN TO&Agrave;N</strong></p>\r\n<p><strong>ĐẢM BẢO CHẤT LƯỢNG &ndash; UY T&Iacute;N H&Agrave;NG ĐẦU</strong></p>\r\n<p><strong>Hottline:&nbsp;0932 278 282</strong></p>\r\n<div><strong><br /></strong></div>', 'data_uploads/product/xxxx.jpg', 'data_uploads/product/thumb/xxxx.jpg', 1, '', 125000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`content`) VALUES
('<p><span style=\"font-family: arial,helvetica,sans-serif; font-size: small;\">Chương tr&igrave;nh khuyến m&atilde;i</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(10) NOT NULL,
  `catid` int(3) NOT NULL,
  `p_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_name_alias` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `p_detail` text COLLATE utf8_unicode_ci,
  `p_image` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_image_thumb` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(2) DEFAULT '1',
  `khuyenmai` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(11) NOT NULL,
  `noibat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `catid`, `p_name`, `p_name_alias`, `p_description`, `p_detail`, `p_image`, `p_image_thumb`, `status`, `khuyenmai`, `gia`, `noibat`) VALUES
(25, 3, 'sdfdsf', 'sdfdsf', '', '<p>dsfsdf</p>', '', '', 1, '', 0, 0),
(26, 3, 'wrwerewr', 'wrwerewr', '', '<p>ewrwerewr</p>', '', '', 1, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `meta_key` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_desc` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_page` int(5) DEFAULT NULL,
  `address` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_status` int(2) NOT NULL DEFAULT '1',
  `google_analytics` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`meta_key`, `meta_desc`, `per_page`, `address`, `phone`, `site_name`, `site_status`, `google_analytics`, `id`) VALUES
('kim loại chong dinh', 'kim loại chong dinh', 20, 'Số 9 ngõ 125 Trung Kính - Yên Hòa - Cầu Giấy - Hà Nội', '091 9993683', 'CÔNG TY KIM LOẠI CHỐNG DÍNH', 1, 'info@kinloddd.vn', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `contents` varchar(500) NOT NULL,
  `img` varchar(200) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `ord` int(3) UNSIGNED DEFAULT NULL,
  `active` int(1) UNSIGNED DEFAULT NULL,
  `metakeyword` varchar(200) NOT NULL,
  `metadescription` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `name`, `contents`, `img`, `url`, `ord`, `active`, `metakeyword`, `metadescription`) VALUES
(1, 'Vietnam Headhunt Solutions', 'Investigators Vietnam offer the most discreet private investigation services in all of Vietnam – at local and affordable rates! Your \'eyes and ears\' on the ground anywhere in Vietnam, always on-time and always confidential. We are the most trusted and reliable detective agency in Vietnam!', 'images/slide/Vietnam_Headhunt_Solutions.jpg', 'http://noithat.org.vn/thi-cong-noi-that', 3, 1, '', ''),
(2, 'Vietnam Headhunt Solutions', 'Investigators Vietnam offer the most discreet private investigation services in all of Vietnam – at local and affordable rates! Your \'eyes and ears\' on the ground anywhere in Vietnam, always on-time and always confidential. We are the most trusted and reliable detective agency in Vietnam!', 'images/slide/Vietnam_Headhunt_Solutions.jpg', 'http://noithat.org.vn/thi-cong-mang-lan', 1, 1, '', ''),
(6, 'Vietnam Headhunt Solutions a', '<p>\r\n	Investigators Vietnam offer the most discreet private investigation services in all of Vietnam &ndash; at local and affordable rates! Your &#39;eyes and ears&#39; on the ground anywhere in Vietnam, always on-time and always confidential. We are the most trusted and reliable detective agency in Vietnam!</p>\r\n', 'images/slide/Vietnam_Headhunt_Solutions.jpg', 'http://noithat.org.vn/thi-cong-dien-nuoc', 3, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `user_group_id` int(3) NOT NULL,
  `user_group_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `permission_view` text COLLATE utf8_unicode_ci NOT NULL,
  `permission_edit_del` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`user_group_id`, `user_group_name`, `permission_view`, `permission_edit_del`) VALUES
(1, ' demo', 'a:1:{i:0;s:10:\"admin/user\";}', 'a:1:{i:0;s:10:\"admin/user\";}');

-- --------------------------------------------------------

--
-- Table structure for table `user_user`
--

CREATE TABLE `user_user` (
  `user_id` int(3) NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_fullname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_active` int(2) NOT NULL DEFAULT '1',
  `user_group_id` int(3) DEFAULT NULL,
  `user_password` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_user`
--

INSERT INTO `user_user` (`user_id`, `user_name`, `user_fullname`, `user_email`, `user_active`, `user_group_id`, `user_password`) VALUES
(1, 'admin', 'Nguyen Duc Hung', 'supper_itpro@yahoo.com', 1, NULL, '21232f297a57a5a743894a0e4a801fc3'),
(2, 'demo', 'Demo', 'abc@yahoo.com', 1, 1, 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `category_service`
--
ALTER TABLE `category_service`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `cat_news`
--
ALTER TABLE `cat_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demo`
--
ALTER TABLE `demo`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `demo` ADD FULLTEXT KEY `title` (`title`,`body`);

--
-- Indexes for table `group_menufooter`
--
ALTER TABLE `group_menufooter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotro`
--
ALTER TABLE `hotro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menufooter`
--
ALTER TABLE `menufooter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parttent`
--
ALTER TABLE `parttent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `product` ADD FULLTEXT KEY `p_name` (`p_name`);
ALTER TABLE `product` ADD FULLTEXT KEY `p_name_alias` (`p_name_alias`);
ALTER TABLE `product` ADD FULLTEXT KEY `p_name_2` (`p_name`,`p_name_alias`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `service` ADD FULLTEXT KEY `p_name` (`p_name`);
ALTER TABLE `service` ADD FULLTEXT KEY `p_name_alias` (`p_name_alias`);
ALTER TABLE `service` ADD FULLTEXT KEY `p_name_2` (`p_name`,`p_name_alias`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `user_user`
--
ALTER TABLE `user_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `category_service`
--
ALTER TABLE `category_service`
  MODIFY `catid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cat_news`
--
ALTER TABLE `cat_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `demo`
--
ALTER TABLE `demo`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `group_menufooter`
--
ALTER TABLE `group_menufooter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `hotro`
--
ALTER TABLE `hotro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `menufooter`
--
ALTER TABLE `menufooter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `parttent`
--
ALTER TABLE `parttent`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `user_group_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_user`
--
ALTER TABLE `user_user`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
