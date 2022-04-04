-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 05, 2022 lúc 08:55 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `elaravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_08_073211_create_tbl_admin_table', 1),
(6, '2021_10_09_031440_create_tbl_category_product', 1),
(7, '2021_10_17_122246_create_tbl_brand_product', 1),
(8, '2021_10_17_134604_create_tbl_product', 1),
(9, '2021_11_05_234224_tbl_customer', 1),
(10, '2021_11_06_013612_tbl_shipping', 1),
(14, '2021_11_06_082506_tbl_payment', 2),
(15, '2021_11_06_082530_tbl_order', 3),
(16, '2021_11_06_082607_tbl_order_details', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', 'Bich Man', '012345678', '2021-11-06 02:56:18', '2021-11-06 02:56:18'),
(10, 'tranbichman2000@gmail.com', '', 'Bích Mận', '', NULL, NULL),
(11, 'thienchauminhnguyet2000@gmail.com', '', 'Nguyet Minh', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `meta_keywords`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'KLEE', 'klee', '<p>H&agrave; Nội</p>', 0, NULL, '2021-11-28 02:30:16'),
(2, 'BAMI HOME', 'bami-home', '<p>BAMI HOME</p>', 0, NULL, '2021-11-28 02:30:10'),
(3, 'GINDY', 'gindy', '<p>GINDY</p>', 0, NULL, '2021-11-28 02:30:00'),
(4, 'Yuumi', 'yuumi', '<p>Yuumi</p>', 0, NULL, '2021-11-28 02:29:54'),
(5, 'LocallBrand', 'locallbrand', '<p>LocallBrand</p>', 0, NULL, '2021-11-28 02:29:35'),
(6, 'Goldie', 'goldie', '<p>Goldie</p>', 0, NULL, '2021-11-28 02:29:30'),
(7, 'x-unisex', 'x-unisex', '<p>Unisex theo phong c&aacute;ch Nhật</p>', 0, NULL, '2021-12-11 00:34:01'),
(8, '7 Million', '7-million', '<p>Ng&ocirc;i nh&agrave; của phong c&aacute;ch đường phố</p>', 0, NULL, '2021-11-27 10:06:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_post`
--

CREATE TABLE `tbl_category_post` (
  `cate_post_id` int(11) NOT NULL,
  `cate_post_name` varchar(255) NOT NULL,
  `cate_post_status` int(11) NOT NULL,
  `cate_post_slug` varchar(255) NOT NULL,
  `cate_post_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_post`
--

INSERT INTO `tbl_category_post` (`cate_post_id`, `cate_post_name`, `cate_post_status`, `cate_post_slug`, `cate_post_desc`) VALUES
(2, 'Thời trang', 0, 'thoi-trang', 'new'),
(5, 'Khoa Học - Công Nghệ', 0, 'khoa-hoc-cong-nghe', 'Danh mục các bài viết về khoa học và công nghệ'),
(10, 'Đời sống', 0, 'doi-song', 'Tin tức liên quan đến đời sống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `meta_keywords`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Áo thun', 'ao-thun', '<p>Mua&nbsp;<em>&aacute;o thun</em>&nbsp;nam giao tận nơi v&agrave; tham khảo th&ecirc;m nhiều sản phẩm kh&aacute;c. Miễn ph&iacute; vận chuyển to&agrave;n quốc cho mọi đơn h&agrave;ng . Đổi trả dễ d&agrave;ng. Thanh to&aacute;n bảo mật.</p>', 0, NULL, '2021-11-27 10:15:32'),
(2, 'Quần', 'quan', '<p>Quần</p>', 0, NULL, '2021-11-28 02:28:34'),
(3, 'Giày', 'giay', '<p>Gi&agrave;y</p>', 0, NULL, '2021-11-28 02:28:40'),
(4, 'Hoodie', 'hoodie', '<p>Hoodie</p>', 0, NULL, '2021-11-28 02:28:45'),
(5, 'Sơ mi', 'so-mi', '<p>Sơ mi</p>', 0, NULL, '2021-11-28 02:28:52'),
(6, 'Jacket', 'jacket', '<p>Jacket - &Aacute;o kho&aacute;c</p>', 0, NULL, '2021-11-28 02:29:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(20, 'Mận', 'man@gmail.com', '202cb962ac59075b964b07152d234b70', '0385879243', NULL, NULL),
(21, 'Màu', 'mau@gmail.com', '202cb962ac59075b964b07152d234b70', '0385879243', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` int(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(63, 20, 38, 67, '475,000.00', 1, NULL, NULL),
(64, 20, 38, 68, '623,000.00', 2, NULL, NULL),
(65, 20, 38, 69, '623,000.00', 3, NULL, NULL),
(66, 20, 38, 70, '415,000.00', 4, NULL, NULL),
(67, 20, 38, 71, '475,000.00', 1, NULL, NULL),
(68, 20, 39, 72, '265,000.00', 2, NULL, NULL),
(69, 20, 39, 73, '135,000.00', 1, NULL, NULL),
(70, 20, 41, 74, '265,000.00', 3, NULL, NULL),
(71, 20, 41, 75, '530,000.00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quatity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quatity`, `created_at`, `updated_at`) VALUES
(83, 63, 9, 'Quần thun ống rộng có nút', '265000', 1, NULL, NULL),
(84, 63, 15, 'Áo thun ANFORK', '210000', 1, NULL, NULL),
(85, 64, 9, 'Quần thun ống rộng có nút', '265000', 1, NULL, NULL),
(86, 64, 4, 'Áo khoác dù ulzzang', '235000', 1, NULL, NULL),
(87, 64, 1, 'Áo thun nữ họa tiết', '123000', 1, NULL, NULL),
(88, 65, 9, 'Quần thun ống rộng có nút', '265000', 1, NULL, NULL),
(89, 65, 4, 'Áo khoác dù ulzzang', '235000', 1, NULL, NULL),
(90, 65, 1, 'Áo thun nữ họa tiết', '123000', 1, NULL, NULL),
(91, 66, 30, 'Áo hoodie trơn nữ', '205000', 1, NULL, NULL),
(92, 66, 15, 'Áo thun ANFORK', '210000', 1, NULL, NULL),
(93, 67, 9, 'Quần thun ống rộng có nút', '265000', 1, NULL, NULL),
(94, 67, 15, 'Áo thun ANFORK', '210000', 1, NULL, NULL),
(95, 68, 9, 'Quần thun ống rộng có nút', '265000', 1, NULL, NULL),
(96, 69, 29, 'Áo thun form rộng Nhật Bản', '135000', 1, NULL, NULL),
(97, 70, 9, 'Quần thun ống rộng có nút', '265000', 1, NULL, NULL),
(98, 71, 9, 'Quần thun ống rộng có nút', '265000', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(63, 'Thanh toán khi nhận hàng', 'Thanh toán khi nhận hàng', NULL, NULL),
(64, 'Thanh toán khi nhận hàng', 'Thanh toán khi nhận hàng', NULL, NULL),
(65, 'Thanh toán khi nhận hàng', 'Thanh toán khi nhận hàng', NULL, NULL),
(66, 'Thanh toán khi nhận hàng', 'Thanh toán khi nhận hàng', NULL, NULL),
(67, 'PayPal', 'Đã thanh toán', NULL, NULL),
(68, 'Thanh toán khi nhận hàng', 'Thanh toán khi nhận hàng', NULL, NULL),
(69, 'Thanh toán khi nhận hàng', 'Thanh toán khi nhận hàng', NULL, NULL),
(70, 'Thanh toán khi nhận hàng', 'Thanh toán khi nhận hàng', NULL, NULL),
(71, 'PayPal', 'Đã thanh toán', NULL, NULL),
(72, 'Thanh toán khi nhận hàng', 'Thanh toán khi nhận hàng', NULL, NULL),
(73, 'PayPal', 'Đã thanh toán', NULL, NULL),
(74, 'PayPal', 'Đã thanh toán', NULL, NULL),
(75, 'Thanh toán khi nhận hàng', 'Thanh toán khi nhận hàng', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_posts`
--

CREATE TABLE `tbl_posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_desc` text NOT NULL,
  `post_content` text NOT NULL,
  `post_status` int(11) NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `post_meta_desc` varchar(255) NOT NULL,
  `post_meta_keywords` varchar(255) NOT NULL,
  `cate_post_id` int(11) UNSIGNED NOT NULL,
  `post_slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_posts`
--

INSERT INTO `tbl_posts` (`post_id`, `post_title`, `post_desc`, `post_content`, `post_status`, `post_image`, `post_meta_desc`, `post_meta_keywords`, `cate_post_id`, `post_slug`) VALUES
(8, 'BẠN ĐỊNH NGHĨA THẾ NÀO LÀ BẮT KỊP XU HƯỚNG THỜI TRANG?', 'Việc định hình cho bản thân một phong cách phù hợp với tính cách cá nhân qua từng thời kỳ là điều đáng làm nhằm đổi mới bề ngoài, giúp mang lại sự tươi trẻ và năng lượng tích cực.', '<p><strong>Hiểu về v&oacute;c d&aacute;ng v&agrave; khu&ocirc;n mặt của bản th&acirc;n</strong></p>\r\n\r\n<p>Trước ti&ecirc;n để hiểu về xu hướng&nbsp;<a href=\"http://www.elle.vn/thoi-trang/\" rel=\"noopener noreferrer\" target=\"_blank\">thời trang</a>&nbsp;n&oacute;i ri&ecirc;ng v&agrave; c&aacute;c kiến thức thời trang n&oacute;i chung, bạn&nbsp;cần phải hiểu ch&iacute;nh v&oacute;c d&aacute;ng v&agrave; khu&ocirc;n mặt của bạn&nbsp;trước. R&otilde; r&agrave;ng h&igrave;nh h&agrave;i mỗi người mỗi kh&aacute;c, bao gồm l&agrave;n da, v&oacute;c d&aacute;ng đến gương mặt. Người th&igrave; d&aacute;ng vẻ cao r&aacute;o, nước da trắng, gương mặt thanh t&uacute;; nhưng cũng c&oacute; người v&oacute;c d&aacute;ng hơi thấp, khu&ocirc;n mặt chỉ dễ nh&igrave;n, l&agrave;n&nbsp;da b&aacute;nh mật. Lại c&oacute; người cơ thể rất kh&oacute; tiếp nạp thực phẩm khiến thể trạng lu&ocirc;n&nbsp;tr&ocirc;ng mảnh khảnh mặc d&ugrave; ăn uống kh&aacute; đầy đủ v&agrave; dư thừa. Ngược lại c&oacute; người rất dễ tăng c&acirc;n d&ugrave; chỉ ăn rất &iacute;t. C&oacute; người&nbsp;khi&nbsp;sinh ra đ&atilde; đẹp sẵn n&ecirc;n kh&ocirc;ng cần trang điểm cầu k&igrave;; nhưng cũng c&oacute; người phải sử dụng c&aacute;c kỹ thuật make-up v&agrave; thậm ch&iacute; tiến h&agrave;nh c&aacute;c tiểu phẫu thẩm mỹ để đạt được một vẻ đẹp như &yacute;. Ch&iacute;nh sự đa dạng về v&oacute;c d&aacute;ng, khu&ocirc;n mặt, l&agrave;n da lẫn t&iacute;nh c&aacute;ch m&agrave; mỗi người trong ch&uacute;ng ta đều n&ecirc;n c&oacute; những định hướng về phong c&aacute;ch thời trang kh&aacute;c nhau. Một gu ăn mặc c&oacute; thể đẹp&nbsp;với người n&agrave;y, nhưng chưa hẳn đ&atilde; th&iacute;ch hợp với&nbsp;người kia.</p>\r\n\r\n<p><a href=\"https://www.elle.vn/wp-content/uploads/2015/11/23/16-l%C6%B0u-%C3%BD-trong-c%C3%A1ch-ph%E1%BB%91i-%C4%91%E1%BB%93-cho-ph%E1%BB%A5-n%E1%BB%AF-c%C3%B3-d%C3%A1ng-ng%C6%B0%E1%BB%9Di-%C4%91%E1%BA%A7y-%C4%91%E1%BA%B7n-ellevn.jpg\" rel=\"article_gallery\"><img src=\"https://www.elle.vn/wp-content/uploads/2015/11/23/16-l%C6%B0u-%C3%BD-trong-c%C3%A1ch-ph%E1%BB%91i-%C4%91%E1%BB%93-cho-ph%E1%BB%A5-n%E1%BB%AF-c%C3%B3-d%C3%A1ng-ng%C6%B0%E1%BB%9Di-%C4%91%E1%BA%A7y-%C4%91%E1%BA%B7n-ellevn.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://www.elle.vn/thoi-trang/xu-huong-phong-cach\">STYLE GUIDE</a></p>\r\n\r\n<h2><a href=\"https://www.elle.vn/xu-huong-phong-cach/16-luu-y-trong-cach-phoi-do-cho-phu-nu-co-dang-nguoi-day-dan\">16 LƯU &Yacute; TRONG C&Aacute;CH PHỐI ĐỒ CHO PHỤ NỮ C&Oacute; D&Aacute;NG NGƯỜI ĐẦY ĐẶN</a></h2>\r\n\r\n<p><a href=\"http://www.elle.vn/wp-content/uploads/2016/06/06/B%C3%AD-quy%E1%BA%BFt-ch%E1%BB%8Dn-%C4%91%E1%BB%93-b%C6%A1i-n%E1%BB%AF-ph%C3%B9-h%E1%BB%A3p-v%E1%BB%9Bi-d%C3%A1ng-ng%C6%B0%E1%BB%9Di-ellevietnam-08.jpg\" rel=\"article_gallery\"><img alt=\"Bí quyết chọn đồ bơi Boyshorts nữ phù hợp với dáng người \" height=\"653\" src=\"http://www.elle.vn/wp-content/uploads/2016/06/06/B%C3%AD-quy%E1%BA%BFt-ch%E1%BB%8Dn-%C4%91%E1%BB%93-b%C6%A1i-n%E1%BB%AF-ph%C3%B9-h%E1%BB%A3p-v%E1%BB%9Bi-d%C3%A1ng-ng%C6%B0%E1%BB%9Di-ellevietnam-08-490x653.jpg\" width=\"490\" /></a></p>\r\n\r\n<p>Boyshorts l&agrave; item k&iacute;n đ&aacute;o, năng động v&agrave; che được nhiều khuyết điểm cơ thể.</p>\r\n\r\n<p><strong>Tham khảo c&aacute;c tạp ch&iacute; chuy&ecirc;n ng&agrave;nh</strong><iframe title=\"teads-resize\"></iframe></p>\r\n\r\n<p>ADVERTISING</p>\r\n\r\n<p><iframe frameborder=\"0\" scrolling=\"no\" title=\"vpaid-ui\"></iframe></p>\r\n\r\n<p>Sau khi đ&atilde; hiểu về cơ thể của bản th&acirc;n rồi, c&ograve;n g&igrave; đ&uacute;ng đắn hơn việc t&igrave;m đọc c&aacute;c th&ocirc;ng tin trong&nbsp;lĩnh vực bạn&nbsp;quan t&acirc;m tại c&aacute;c tạp ch&iacute; hoặc s&aacute;ch b&aacute;o chuy&ecirc;n ng&agrave;nh, đặc biệt l&agrave; những đầu b&aacute;o uy t&iacute;n. Việc cập nhật thế giới đang l&agrave;m g&igrave;, diễn biến ra sao, đặc biệt trong lĩnh vực thời trang hay nghệ thuật chưa bao giờ c&oacute; thể dễ d&agrave;ng hơn trong thời đại hiện nay, khi m&agrave; internet v&agrave; truyền h&igrave;nh kỹ thuật số được phủ s&oacute;ng khắp mọi nơi, đ&atilde; r&uacute;t ngắn rất nhiều khoảng c&aacute;ch giữa c&aacute;c ch&acirc;u lục. Bạn muốn biết c&aacute;c t&iacute;n đồ thời trang nước ngo&agrave;i đang mặc g&igrave; h&ocirc;m nay ư? H&atilde;y v&agrave;o ngay instagram của họ. Bạn muốn biết xu hướng sắc m&agrave;u của năm 2016 ư? H&atilde;y&nbsp;g&otilde; cụm từ &ldquo;xu hướng m&agrave;u sắc năm 2016&rdquo; tr&ecirc;n Google, sau đ&oacute; chọn đọc b&agrave;i đến từ một trang b&aacute;o mạng c&oacute; uy t&iacute;n. Hay đơn giản hơn, nếu bạn muốn đọc c&aacute;c b&agrave;i viết về thời trang v&agrave;&nbsp;<a href=\"http://www.elle.vn/lam-dep/\" rel=\"noopener noreferrer\" target=\"_blank\">l&agrave;m đẹp</a>, để t&igrave;m hiểu th&ecirc;m về xu hướng phong c&aacute;ch, lịch sử thời trang v&agrave; c&aacute;c kiến thức kh&aacute;c li&ecirc;n quan, theo bạn tờ tạp ch&iacute; n&agrave;o về lĩnh vực n&agrave;y nổi tiếng v&agrave; uy t&iacute;n nhất tại đất nước bạn đang sinh sống?</p>\r\n\r\n<p><a href=\"https://www.elle.vn/wp-content/uploads/2016/05/16/10-c%C3%A1ch-ch%E1%BB%8Dn-trang-ph%E1%BB%A5c-t%E1%BA%A1o-v%E1%BA%BB-ngo%C3%A0i-thanh-m%E1%BA%A3nh-ellevn.jpg\" rel=\"article_gallery\"><img src=\"https://www.elle.vn/wp-content/uploads/2016/05/16/10-c%C3%A1ch-ch%E1%BB%8Dn-trang-ph%E1%BB%A5c-t%E1%BA%A1o-v%E1%BA%BB-ngo%C3%A0i-thanh-m%E1%BA%A3nh-ellevn.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://www.elle.vn/thoi-trang/xu-huong-phong-cach\">STYLE GUIDE</a></p>\r\n\r\n<h2><a href=\"https://www.elle.vn/xu-huong-phong-cach/10-cach-chon-trang-phuc-tao-ve-ngoai-thanh-manh\">10 C&Aacute;CH CHỌN TRANG PHỤC TẠO VẺ NGO&Agrave;I THANH MẢNH</a></h2>\r\n\r\n<p><a href=\"http://www.elle.vn/wp-content/uploads/2016/09/21/th%C6%B0-t%C3%B2a-so%E1%BA%A1n-ELLE-th%C3%A1ng-10.jpg\" rel=\"article_gallery\"><img alt=\"thư tòa soạn ELLE tháng 10 - ellevn\" height=\"666\" src=\"http://www.elle.vn/wp-content/uploads/2016/09/21/th%C6%B0-t%C3%B2a-so%E1%BA%A1n-ELLE-th%C3%A1ng-10-490x666.jpg\" width=\"490\" /></a></p>\r\n\r\n<p><strong>Theo d&otilde;i c&aacute;c tuần lễ thời trang quốc tế</strong></p>\r\n\r\n<p>Tuần lễ thời trang l&agrave; nơi c&aacute;c Nh&agrave; thiết kế s&aacute;ng tạo ra c&aacute;c sản phẩm đ&oacute;n đầu xu hướng, mang t&iacute;nh dự b&aacute;o phong c&aacute;ch thời trang của m&ugrave;a tới. Đ&acirc;y l&agrave; dịp c&aacute;c t&iacute;n đồ thời trang khắp nơi tr&ecirc;n thế giới học hỏi v&agrave; nghi&ecirc;n cứu bằng tất cả niềm đam m&ecirc; thời trang của m&igrave;nh với mong muốn trở th&agrave;nh một trong những người đ&oacute;n đầu xu hướng. C&oacute; rất nhiều bộ quần &aacute;o với đa dạng chất liệu, m&agrave;u sắc v&agrave; kiểu d&aacute;ng đến từ c&aacute;c nh&agrave; thiết kế kh&aacute;c nhau, nổi tiếng cũng c&oacute;, tiềm năng cũng c&oacute;, v&agrave; quan trọng hơn họ đến từ nhiều nền văn minh kh&aacute;c nhau. Tư duy mỗi nh&agrave; thiết kế đương nhi&ecirc;n kh&aacute;c nhau. Tuy nhi&ecirc;n họ đều c&oacute; những điểm chung l&agrave; lu&ocirc;n kh&ocirc;ng ngừng học hỏi lẫn nhau, học hỏi những kiến thức chung trong nền c&ocirc;ng nghiệp m&agrave; họ thật sự nghi&ecirc;m t&uacute;c coi đ&oacute; l&agrave; sự nghiệp. Thời trang l&agrave; một lĩnh vực nghệ thuật, cũng như c&aacute;c ng&agrave;nh nghệ thuật kh&aacute;c như đi&ecirc;u khắc, hội họa, nội thất hay kiến tr&uacute;c, nghệ thuật cần nhiều sự s&aacute;ng tạo d&ugrave; được x&acirc;y dựng b&agrave;i bản tr&ecirc;n những nền tảng vững chắc. V&agrave; Tuần lễ thời trang thật sự l&agrave; s&acirc;n chơi thi vị&nbsp;đầy bổ &iacute;ch, kh&ocirc;ng những cho những nh&agrave; thiết kế, stylist, người mẫu, nghệ sĩ trang điểm n&oacute;i ri&ecirc;ng, m&agrave; c&ograve;n l&agrave; nơi d&agrave;nh cho c&aacute;c bạn y&ecirc;u th&iacute;ch thời trang v&agrave; l&agrave;m đẹp t&igrave;m hiểu th&ecirc;m về c&aacute;c xu hướng thời trang của thế giới.</p>\r\n\r\n<p>.</p>\r\n\r\n<p><a href=\"http://www.elle.vn/wp-content/uploads/2016/03/18/Tu%E1%BA%A7n-l%E1%BB%85-Th%E1%BB%9Di-trang-ELLE-Thailand-Xu%C3%A2n-H%C3%A8-2016-ELLE-VIETNAM-37.jpg\" rel=\"article_gallery\"><img alt=\"BST mới của Asava - Tuần lễ Thời trang ELLE Thailand Xuân Hè 2016\" height=\"334\" src=\"http://www.elle.vn/wp-content/uploads/2016/03/18/Tu%E1%BA%A7n-l%E1%BB%85-Th%E1%BB%9Di-trang-ELLE-Thailand-Xu%C3%A2n-H%C3%A8-2016-ELLE-VIETNAM-37-490x334.jpg\" width=\"490\" /></a></p>\r\n\r\n<p>Những thiết kế trong BST mới của Asava trong Tuần lễ Thời trang ELLE Thailand Xu&acirc;n H&egrave; 2016 mang gam m&agrave;u sắc tối giản như trắng, đen, ghi&hellip;</p>\r\n\r\n<p><a href=\"https://www.elle.vn/wp-content/uploads/2015/08/19/lich-su-cac-tuan-le-thoi-trang-image.jpg\" rel=\"article_gallery\"><img src=\"https://www.elle.vn/wp-content/uploads/2015/08/19/lich-su-cac-tuan-le-thoi-trang-image.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://www.elle.vn/thoi-trang/the-gioi-thoi-trang\">THẾ GIỚI THỜI TRANG</a></p>\r\n\r\n<h2><a href=\"https://www.elle.vn/the-gioi-thoi-trang/4-tuan-le-thoi-trang-the-gioi-duoc-cho-don-nhat-nam\">4 TUẦN LỄ THỜI TRANG THẾ GIỚI ĐƯỢC CHỜ Đ&Oacute;N NHẤT NĂM</a></h2>\r\n\r\n<p><strong>Phong c&aacute;ch thời trang &amp; trang điểm của c&aacute;c fashionista&nbsp;h&agrave;ng đầu</strong></p>\r\n\r\n<p>Như t&ocirc;i đ&atilde; đề cập ở phần tr&ecirc;n, những t&iacute;n đồ y&ecirc;u thời trang chắc hẳn&nbsp;l&agrave; những nh&acirc;n vật c&oacute; khả năng cập nhật xu hướng thời trang nhanh nhất. Họ kh&ocirc;ng ngừng học hỏi về thời trang th&ocirc;ng qua nhiều k&ecirc;nh th&ocirc;ng tin kh&aacute;c nhau, từ b&aacute;o ch&iacute; lẫn truyền h&igrave;nh, v&agrave; cả tham dự c&aacute;c tuần lễ thời trang. Chỉ việc nh&igrave;n họ mặc g&igrave; h&agrave;ng ng&agrave;y phần n&agrave;o đ&oacute; cho ch&uacute;ng ta thấy được xu hướng thời trang ở khắp nơi tr&ecirc;n thế giới đ&atilde; len lỏi đến từng ng&otilde; ng&aacute;ch v&agrave; con người ở đất nước ch&uacute;ng ta như thế n&agrave;o. Việc ra đời c&aacute;c tuần lễ thời trang quốc tế gi&uacute;p c&aacute;c t&iacute;n đồ thời trang rất nhiều trong việc lựa chọn cho m&igrave;nh một số phong c&aacute;ch thời trang ph&ugrave; hợp.</p>\r\n\r\n<p><a href=\"http://www.elle.vn/wp-content/uploads/2016/09/22/denim-stree-style-tu%E1%BA%A7n-l%E1%BB%85-th%E1%BB%9Di-trang-london-2017-4.jpg\" rel=\"article_gallery\"><img alt=\"thời trang &amp; trang điểm của các fashionista hàng đầu\" height=\"326\" src=\"http://www.elle.vn/wp-content/uploads/2016/09/22/denim-stree-style-tu%E1%BA%A7n-l%E1%BB%85-th%E1%BB%9Di-trang-london-2017-4-490x326.jpg\" width=\"490\" /></a></p>\r\n\r\n<p><a href=\"https://www.elle.vn/wp-content/uploads/2015/10/18/cac-loai-vay-dam-ban-can-biet-.jpg\" rel=\"article_gallery\"><img src=\"https://www.elle.vn/wp-content/uploads/2015/10/18/cac-loai-vay-dam-ban-can-biet-.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://www.elle.vn/thoi-trang/the-gioi-thoi-trang\">THẾ GIỚI THỜI TRANG</a></p>\r\n\r\n<h2><a href=\"https://www.elle.vn/the-gioi-thoi-trang/35-kieu-dang-ten-goi-cac-loai-vay-dam-ban-can-biet\">35 KIỂU D&Aacute;NG &amp; T&Ecirc;N GỌI C&Aacute;C LOẠI V&Aacute;Y ĐẦM BẠN CẦN BIẾT</a></h2>\r\n\r\n<p><strong>Nhưng như thế n&agrave;o l&agrave; bắt kịp xu hướng thời trang?</strong></p>\r\n\r\n<p>Học hỏi c&oacute; chọn lọc để ph&ugrave; hợp với bản th&acirc;n l&agrave; điều quan trọng nhất. Bạn cần c&oacute; đủ kiến thức để tr&ograve; chuyện c&ugrave;ng v&agrave; thảo luận th&uacute; vị&nbsp;về một vấn đề với một nh&oacute;m người m&agrave; họ rất r&agrave;nh v&agrave; s&otilde;i. Bạn cũng cần kiến thức vững để lập luận cho họ biết nếu họ c&oacute; những c&acirc;u hỏi đại loại tại sao bạn lại theo đuổi một phong c&aacute;ch n&agrave;o đ&oacute;. Những kiến thức kh&aacute;c như tại sao&nbsp;mỗi năm viện Pantone đều c&ocirc;ng bố sắc m&agrave;u chủ đạo của năm. Kết quả được c&ocirc;ng bố phải chăng được dựa tr&ecirc;n một c&ocirc;ng&nbsp;tr&igrave;nh nghi&ecirc;n cứu nghi&ecirc;m t&uacute;c v&agrave; b&agrave;i bản? Hẳn nhi&ecirc;n c&aacute;c nh&agrave; nghi&ecirc;n cứu&nbsp;phải l&agrave;m việc trực tiếp với rất nhiều chuy&ecirc;n gia đầu ng&agrave;nh từ thời trang, trang điểm, kiến tr&uacute;c, nội thất, hội họa, v&agrave; c&aacute;c bộ m&ocirc;n s&aacute;ng tạo nghệ thuật kh&aacute;c&hellip; C&aacute;c c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu như thế n&agrave;y&nbsp;sẽ được c&ocirc;ng bố rộng r&atilde;i với c&ocirc;ng ch&uacute;ng bằng nhiều h&igrave;nh thức kh&aacute;c nhau, ti&ecirc;u biểu l&agrave; th&ocirc;ng qua truyền th&ocirc;ng. Nhờ đ&oacute; độc giả c&oacute; nhiều h&igrave;nh thức tiếp cận th&ocirc;ng tin.</p>\r\n\r\n<p>Hiểu thế n&agrave;o l&agrave; bắt kịp xu hướng kh&ocirc;ng chỉ đơn giản&nbsp;việc&nbsp;ch&uacute;ng ta may mắn c&oacute; được một cảm nhận tốt về gu thời trang, m&agrave; c&ograve;n l&agrave; rất cần&nbsp;ch&uacute;ng ta c&oacute; th&ecirc;m kỹ năng&nbsp;quan s&aacute;t v&agrave;&nbsp;cập nhật li&ecirc;n tục những sự kiện v&agrave; kiến thức li&ecirc;n quan. Nếu muốn trở th&agrave;nh một nh&agrave; tư vấn thời trang cho người th&acirc;n v&agrave; bạn b&egrave;, bạn lại cần phải hiểu r&otilde; những điều tr&ecirc;n. Tuy nhi&ecirc;n, để đạt được mức độ c&oacute; thể tư vấn được cho người kh&aacute;c, ch&iacute;nh bạn phải l&agrave; tấm gương phản chiếu trong nhất, đẹp nhất.</p>\r\n\r\n<p><a href=\"https://www.elle.vn/wp-content/uploads/2015/12/07/Mau-sac-cua-nam-2016-image-.jpg\" rel=\"article_gallery\"><img src=\"https://www.elle.vn/wp-content/uploads/2015/12/07/Mau-sac-cua-nam-2016-image-.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://www.elle.vn/thoi-trang/xu-huong-thoi-trang\">XU HƯỚNG THỜI TRANG</a></p>\r\n\r\n<h2><a href=\"https://www.elle.vn/xu-huong-thoi-trang/vien-mau-sac-pantone-cong-bo-color-of-the-year-2016\">VIỆN M&Agrave;U SẮC PANTONE C&Ocirc;NG BỐ &quot;COLOR OF THE YEAR&quot; 2016</a></h2>\r\n\r\n<p>Tại chuỗi sự kiện ELLE Fashion Journey 2016, tạp ch&iacute; ELLE kết hợp với thương hiệu&nbsp;Dulux from AkzoNobel&nbsp;tổ chức buổi tọa đ&agrave;m về xu hướng thời trang v&agrave; l&agrave;m đẹp, c&oacute; sự g&oacute;p mặt của&nbsp;c&aacute;c chuy&ecirc;n gia đầu ng&agrave;nh. Đến với buổi tọa đ&agrave;m diễn ra v&agrave;o ng&agrave;y 1/10/2016 n&agrave;y, c&aacute;c bạn y&ecirc;u th&iacute;ch thời trang, l&agrave;m đẹp v&agrave; nghệ thuật c&oacute; dịp trao đổi v&agrave; đặt ra c&aacute;c c&acirc;u hỏi li&ecirc;n quan tới c&aacute;c xu hướng thời trang hiện h&agrave;nh v&agrave; tương lai.&nbsp;</p>\r\n\r\n<p>ELLE Fashion Journey 2016&nbsp;c&oacute;&nbsp;sự đồng h&agrave;nh của c&aacute;c thương hiệu: Dulux from AkzoNobel, Milbon, Swarovski, MAC, Yeah1, Tin Nhanh Showbiz, Dalat Hasfarm, Dai Ngo Studio, CA3, Taleed, Tập đo&agrave;n Kusto với thương hiệu&nbsp;Diamond Island.</p>', 0, '9-cách-phối-đồ-để-trở-nên-đẳng-cấp-hơn-ellevn35.jpg', 'Việc định hình cho bản thân một phong cách phù hợp với tính cách cá nhân qua từng thời kỳ là điều đáng làm nhằm đổi mới bề ngoài, giúp mang lại sự tươi trẻ và năng lượng tích cực.', 'Việc định hình cho bản thân một phong cách phù hợp với tính cách cá nhân qua từng thời kỳ là điều đáng làm nhằm đổi mới bề ngoài, giúp mang lại sự tươi trẻ và năng lượng tích cực.', 2, 'ban-dinh-nghia-the-nao-la-bat-kip-xu-huong-thoi-trang'),
(9, 'Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được?', 'Có vẻ như Microsoft lại “chọc giận” người dùng với gói cập nhật tích lũy Windows mới của mình.', '<h2>C&oacute; vẻ như Microsoft lại &ldquo;chọc giận&rdquo; người d&ugrave;ng với g&oacute;i cập nhật t&iacute;ch lũy Windows mới của m&igrave;nh.</h2>\r\n\r\n<p>Gần đ&acirc;y, c&oacute; kh&aacute; nhiều người d&ugrave;ng Windows 10 v&agrave; Windows 11 gặp lỗi thanh Taskbar bị đơ, kh&ocirc;ng thao t&aacute;c được, g&acirc;y kh&aacute; nhiều phiền to&aacute;i cho người sử dụng. Mặc d&ugrave; người d&ugrave;ng đ&atilde; cố thao t&aacute;c khởi động lại Windows hay Restart lại Windows Explorer từ Task Manager nhưng vấn đề vẫn tiếp tục xảy ra. Vậy nguy&ecirc;n nh&acirc;n l&agrave; do đ&acirc;u?</p>\r\n\r\n<p><a href=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/1-1638077325759547440841.jpeg\" target=\"_blank\" title=\"\"><img alt=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 1.\" height=\"\" src=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/1-1638077325759547440841.jpeg\" title=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 1.\" width=\"\" /></a></p>\r\n\r\n<p>Theo t&igrave;m hiểu th&igrave; nguy&ecirc;n nh&acirc;n nằm ở g&oacute;i cập nhật KB5003637 được Microsoft ph&aacute;t h&agrave;nh gần đ&acirc;y. Sau khi c&agrave;i đặt, người d&ugrave;ng sẽ vướng phải một số lỗi kh&oacute; chịu như treo taskbar, biểu tượng ứng dụng tr&ecirc;n taskbar kh&ocirc;ng hiển thị đ&uacute;ng c&aacute;ch, biểu tượng khay hệ thống biến mất...</p>\r\n\r\n<p>Thực tế, một số vấn đề với Taskbar tr&ecirc;n Windows 10 đ&atilde; xuất hiện từ bản cập nhật KB5003214 tung ra v&agrave;o cuối th&aacute;ng 5. Tuy nhi&ecirc;n, n&oacute; &iacute;t nghi&ecirc;m trọng bởi KB5003214 l&agrave; bản cập nhật t&ugrave;y chọn. Trong khi đ&oacute;, KB5003637 l&agrave; một bản cập nhật tự động c&agrave;i đặt l&ecirc;n m&aacute;y của người d&ugrave;ng n&ecirc;n rất nhiều người đ&atilde; gặp rắc rối.</p>\r\n\r\n<p>Vấn đề c&oacute; thể xuất hiện tr&ecirc;n thiết bị sử dụng nhiều phương thức nhập Input Method Editiors (IMEs) v&agrave;/hoặc nhiều g&oacute;i ng&ocirc;n ngữ. Trong một số trường hợp, biểu tượng khay hệ thống c&oacute; thể biến mất hoặc đ&egrave; l&ecirc;n nhau khi t&iacute;nh năng News and Interest được bật v&agrave; bạn kh&ocirc;ng sử dụng thiết lập tỷ lệ m&agrave;n h&igrave;nh được khuyến c&aacute;o.</p>\r\n\r\n<p><strong>Vậy nếu m&aacute;y t&iacute;nh c&oacute; c&agrave;i đặt g&oacute;i cập nhật KB5003637 th&igrave; phải l&agrave;m sao?</strong></p>\r\n\r\n<p>Bạn h&atilde;y tiến h&agrave;nh th&aacute;o gỡ c&agrave;i đặt KB5003637 bằng c&aacute;ch như sau:</p>\r\n\r\n<p><a href=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/2-16380773258281788732142.png\" target=\"_blank\" title=\"Nhập từ khóa &quot;cmd&quot; vào ô tìm kiếm và nhấn chọn kết quả như hình.\"><img alt=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 2.\" height=\"\" src=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/2-16380773258281788732142.png\" title=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 2.\" width=\"\" /></a></p>\r\n\r\n<p>Nhập từ kh&oacute;a &quot;cmd&quot; v&agrave;o &ocirc; t&igrave;m kiếm v&agrave; nhấn chọn kết quả như h&igrave;nh.</p>\r\n\r\n<p><a href=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/3-1638077325841457491851.png\" target=\"_blank\" title=\"Nhập lệnh &quot;wusa /uninstall /kb:5003637&quot; vào Command Prompt và nhấn phím ENTER để thực thi.\"><img alt=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 3.\" height=\"\" src=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/3-1638077325841457491851.png\" title=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 3.\" width=\"\" /></a></p>\r\n\r\n<p>Nhập lệnh &quot;<strong>wusa /uninstall /kb:5003637</strong>&quot; v&agrave;o Command Prompt v&agrave; nhấn ph&iacute;m ENTER để thực thi.</p>\r\n\r\n<p><a href=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/4-1638077325903724804262.png\" target=\"_blank\" title=\"Sau khi chạy xong lệnh trên, bạn tiếp tục chạy lệnh &quot;wusa /uninstall /kb:5004476&quot; để gỡ cài đặt KB5004476 nữa là xong.\"><img alt=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 4.\" height=\"\" src=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/4-1638077325903724804262.png\" title=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 4.\" width=\"\" /></a></p>\r\n\r\n<p>Sau khi chạy xong lệnh tr&ecirc;n, bạn tiếp tục chạy lệnh &quot;<strong>wusa /uninstall /kb:5004476</strong>&quot; để gỡ c&agrave;i đặt KB5004476 nữa l&agrave; xong.</p>\r\n\r\n<p>Khởi động lại Windows để mọi thay đổi c&oacute; hiệu lực.</p>\r\n\r\n<p><strong>Trường hợp Taskbar của Windows bị đơ kh&ocirc;ng phải do g&oacute;i cập nhật</strong></p>\r\n\r\n<p>Nếu kiểm tra v&agrave; thực hiện xong việc th&aacute;o gỡ g&oacute;i cập nhật KB5003637 m&agrave; Taskbar vẫn bị đơ như cũ th&igrave; bạn h&atilde;y thực hiện c&aacute;c c&aacute;ch l&agrave;m sau.</p>\r\n\r\n<p><strong><em>Sử dụng Windows PowerShell</em></strong></p>\r\n\r\n<p><a href=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/5-16380773259751787467487.png\" target=\"_blank\" title=\"Nhấn phải chuột vào nút Start và chọn Windows PowerShell (Admin).\"><img alt=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 5.\" height=\"\" src=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/5-16380773259751787467487.png\" title=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 5.\" width=\"\" /></a></p>\r\n\r\n<p>Nhấn phải chuột v&agrave;o n&uacute;t Start v&agrave; chọn Windows PowerShell (Admin).</p>\r\n\r\n<p><a href=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/6-1638077326014411885370.png\" target=\"_blank\" title=\"Nhập vào lệnh &quot;Get-AppXPackage -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register &quot;$($_.InstallLocation)\\AppXManifest.xml&quot;}&quot;, sau đó nhấn phím ENTER để thực thi.\"><img alt=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 6.\" height=\"\" src=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/6-1638077326014411885370.png\" title=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 6.\" width=\"\" /></a></p>\r\n\r\n<p>Nhập v&agrave;o lệnh &quot;<strong>Get-AppXPackage -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register &quot;$($_.InstallLocation)\\AppXManifest.xml&quot;}</strong>&quot;, sau đ&oacute; nhấn ph&iacute;m ENTER để thực thi.</p>\r\n\r\n<p><strong><em>Sử dụng Windows Services</em></strong></p>\r\n\r\n<p><a href=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/7-16380773261051743186478.png\" target=\"_blank\" title=\"Nhập lệnh &quot;services&quot; vào ô tìm kiếm và nhấn vào kết quả như hình.\"><img alt=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 7.\" height=\"\" src=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/7-16380773261051743186478.png\" title=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 7.\" width=\"\" /></a></p>\r\n\r\n<p>Nhập lệnh &quot;services&quot; v&agrave;o &ocirc; t&igrave;m kiếm v&agrave; nhấn v&agrave;o kết quả như h&igrave;nh.</p>\r\n\r\n<p><a href=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/8-16380773261882026585658.png\" target=\"_blank\" title=\"Tìm đến Application Identity.\"><img alt=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 8.\" height=\"\" src=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/8-16380773261882026585658.png\" title=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 8.\" width=\"\" /></a></p>\r\n\r\n<p>T&igrave;m đến Application Identity.</p>\r\n\r\n<p><a href=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/9-163807732624092875762.png\" target=\"_blank\" title=\"Nhấn phải chuột vào nó và chọn &quot;Start&quot;, sau đó bạn hãy khởi động lại máy tính.\"><img alt=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 9.\" height=\"\" src=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/9-163807732624092875762.png\" title=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 9.\" width=\"\" /></a></p>\r\n\r\n<p>Nhấn phải chuột v&agrave;o n&oacute; v&agrave; chọn &quot;Start&quot;, sau đ&oacute; bạn h&atilde;y khởi động lại m&aacute;y t&iacute;nh.</p>\r\n\r\n<p><strong><em>Sử dụng Troubleshooter</em></strong></p>\r\n\r\n<p><a href=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/10-1638077326268902970220.png\" target=\"_blank\" title=\"Nhập từ khóa &quot;Troubleshooter&quot; vào ô tìm kiếm và nhấn vào kết quả như hình.\"><img alt=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 10.\" height=\"\" src=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/10-1638077326268902970220.png\" title=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 10.\" width=\"\" /></a></p>\r\n\r\n<p>Nhập từ kh&oacute;a &quot;Troubleshooter&quot; v&agrave;o &ocirc; t&igrave;m kiếm v&agrave; nhấn v&agrave;o kết quả như h&igrave;nh.</p>\r\n\r\n<p><a href=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/11-1638077326319802153027.png\" target=\"_blank\" title=\"Tìm đến mục Windows Store Apps và nhấn vào nó.\"><img alt=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 11.\" height=\"\" src=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/11-1638077326319802153027.png\" title=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 11.\" width=\"\" /></a></p>\r\n\r\n<p>T&igrave;m đến mục Windows Store Apps v&agrave; nhấn v&agrave;o n&oacute;.</p>\r\n\r\n<p><a href=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/12-16380773263341985458212.png\" target=\"_blank\" title=\"Nhấn tiếp vào Run the troubleshooter, sau đó thực hiện theo các hướng dẫn là xong.\"><img alt=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 12.\" height=\"\" src=\"https://genk.mediacdn.vn/139269124445442048/2021/11/28/12-16380773263341985458212.png\" title=\"Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được? - Ảnh 12.\" width=\"\" /></a></p>\r\n\r\n<p>Nhấn tiếp v&agrave;o Run the troubleshooter, sau đ&oacute; thực hiện theo c&aacute;c hướng dẫn l&agrave; xong.</p>\r\n\r\n<p>Một giải ph&aacute;p kh&aacute;c để khắc phục lỗi l&agrave; tạo một t&agrave;i khoản người d&ugrave;ng mới. Nếu mọi chức năng bao gồm cả thanh Taskbar đều hoạt động tốt ở t&agrave;i khoản mới n&agrave;y th&igrave; bạn h&atilde;y chuyển dữ liệu sang b&ecirc;n đ&acirc;y v&agrave; x&oacute;a t&agrave;i khoản bị lỗi đi.</p>\r\n\r\n<p>C&aacute;ch tiếp theo l&agrave; thực hiện qu&eacute;t virus v&agrave; phần mềm độc hại tr&ecirc;n m&aacute;y t&iacute;nh, c&oacute; thể m&aacute;y đ&atilde; bị nhiễm virus nhưng kh&ocirc;ng hay biết. Việc diệt virus v&agrave; gỡ bỏ những phần mềm n&agrave;y c&oacute; thể gi&uacute;p khắc phục được lỗi.&nbsp;</p>', 0, 'baiviett335.jpg', 'Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được?', 'Làm gì khi Taskbar của Windows bị đơ, không thể sử dụng được?', 5, 'lam-gi-khi-taskbar-cua-windows-bi-do-khong-the-su-dung-duoc'),
(10, 'OPPO ra mắt hộp quà đặc biệt kèm Reno7', 'Hôm nay, OPPO đã công bố một hộp quà phiên bản giới hạn với các phụ kiện cho dòng Reno7 vừa được công bố.', '<p>H&ocirc;m nay,&nbsp;OPPO&nbsp;đ&atilde; c&ocirc;ng bố một hộp qu&agrave; phi&ecirc;n bản giới hạn với c&aacute;c phụ kiện cho d&ograve;ng Reno7 vừa được c&ocirc;ng bố.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"OPPO ra mắt hộp quà đặc biệt kèm Reno7 ảnh 1\" src=\"https://photo-cms-nghenhinvietnam.zadn.vn/w1024/Uploaded/2021/unvjohp/2021_11_28/r7/oppo_meteor_treasure_limited_gif_uyjb.jpg\" /></p>\r\n\r\n<p>Hộp qu&agrave; được đặt t&ecirc;n l&agrave; &ldquo;Hộp qu&agrave; kho b&aacute;u sao băng bản giới hạn&rdquo; ben trong chứa một chiếc ốp đặc biệt của Reno7, 2 sợi d&acirc;y chuyền v&agrave; một chiếc đ&egrave;n c&oacute; thể chiếu ra cả bầu trời sao. H&ocirc;pk qu&agrave; n&agrave;y sẽ c&oacute; số lượng giới hạn nhưng OPPO kh&ocirc;ng tiết lộ l&agrave; bao nhi&ecirc;u chiếc.</p>\r\n\r\n<p><img alt=\"OPPO ra mắt hộp quà đặc biệt kèm Reno7 ảnh 2\" src=\"https://photo-cms-nghenhinvietnam.zadn.vn/w1024/Uploaded/2021/unvjohp/2021_11_28/r7/oppo_meteor_treasure_limited_gif_1__adke.jpg\" /></p>\r\n\r\n<p><img alt=\"OPPO ra mắt hộp quà đặc biệt kèm Reno7 ảnh 3\" src=\"https://photo-cms-nghenhinvietnam.zadn.vn/w1024/Uploaded/2021/unvjohp/2021_11_28/r7/oppo_meteor_treasure_limited_gif_2__bzjo.jpg\" /></p>\r\n\r\n<p><img alt=\"OPPO ra mắt hộp quà đặc biệt kèm Reno7 ảnh 4\" src=\"https://photo-cms-nghenhinvietnam.zadn.vn/w1024/Uploaded/2021/unvjohp/2021_11_28/r7/oppo_meteor_treasure_limited_gif_3__eoni.jpg\" /></p>\r\n\r\n<p><img alt=\"OPPO ra mắt hộp quà đặc biệt kèm Reno7 ảnh 5\" src=\"https://photo-cms-nghenhinvietnam.zadn.vn/w1024/Uploaded/2021/unvjohp/2021_11_28/r7/oppo_meteor_treasure_limited_gif_4__cmfp.jpg\" /></p>\r\n\r\n<p>Chi tiết hơn, ốp lưng l&agrave; dạng trong suốt c&oacute; những họa tiết h&igrave;nh ng&ocirc;i sao băng lướt qua. Tr&ecirc;n v&agrave; dưới c&oacute; 2 khoen kim loại để m&oacute;c d&acirc;y v&agrave;o v&agrave; đeo chiếc Reno7 như một chiếc v&iacute; hoặc đơn giản sẽ gi&uacute;p bạn cải thiện khả năng cầm nắm. Chiếc đ&egrave;n ngủ kh&ocirc;ng phải đ&egrave;n thường m&agrave; c&oacute; khả năng chiếu c&aacute;c hiệu ứng tinh v&acirc;n v&agrave; bầu trời đầy sao khắp căn ph&ograve;ng của bạn. Ở trong ph&ograve;ng m&agrave; xem phim với những hiệu ứng đầy sao, nghe th&ocirc;i đ&atilde; thấy th&uacute; vị. Chiếc đ&egrave;n l&agrave; sản phẩm hợp t&aacute;c giữa OPPO v&agrave; POCOMO.</p>\r\n\r\n<p>Chiếc hộp đặc biệt n&agrave;y c&oacute; gi&aacute; 109 USD&nbsp;(khoảng 2.48 triệu đồng)&nbsp;nhưng nếu mua k&egrave;m Reno7, gi&aacute; chỉ giảm c&ograve;n đ&uacute;ng 3 USD (khoảng 71.000 đồng), chẳng kh&aacute;c n&agrave;o tặng k&egrave;m.</p>\r\n\r\n<p>OPPO Reno7 sẽ c&oacute; 3 phi&ecirc;n bản trong năm nay gồm Reno7, Reno7 Pro v&agrave; Reno7 SE.&nbsp;Cả ba đều c&oacute; thiết kế kh&aacute; nhỏ gọn, mỏng v&agrave; nhẹ. OPPO Reno7 Pro c&oacute; lẽ c&oacute; viền mỏng nhất đi k&egrave;m đ&egrave;n th&ocirc;ng b&aacute;o độc đ&aacute;o bố tr&iacute; xung quanh phần camera.</p>\r\n\r\n<p><em>Theo Gizmochina</em></p>\r\n\r\n<p>Hải SN</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>&nbsp;</p>', 0, 'baiviet223.jpg', 'OPPO ra mắt hộp quà đặc biệt kèm Reno7', 'OPPO ra mắt hộp quà đặc biệt kèm Reno7', 5, 'oppo-ra-mat-hop-qua-dac-biet-kem-reno7'),
(11, 'Kính AR của Apple có thể mạnh ngang máy Mac', 'Tin đồn cho biết Apple sẽ ra mắt kính thực tế tăng cường (AR) vào cuối năm 2022 với chip xử lý dựa trên M1.', '<h1>K&iacute;nh AR của Apple c&oacute; thể mạnh ngang m&aacute;y Mac</h1>\r\n\r\n<ul>\r\n	<li><a href=\"https://zingnews.vn/Ph%C3%BAc-Th%E1%BB%8Bnh-tim-kiem.html?type=3\">Ph&uacute;c Thịnh</a>&nbsp;\r\n\r\n	<p>Theo CNBC</p>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li>Chủ nhật, 28/11/2021 14:40 (GMT+7)</li>\r\n</ul>\r\n\r\n<p>Tin đồn cho biết Apple sẽ ra mắt k&iacute;nh thực tế tăng cường (AR) v&agrave;o cuối năm 2022 với chip xử l&yacute; dựa tr&ecirc;n M1.</p>\r\n\r\n<p>Nh&agrave; ph&acirc;n t&iacute;ch Ming-Chi Kuo từ TF International Securities dự đo&aacute;n mẫu k&iacute;nh AR của Apple c&oacute; thể ra mắt v&agrave;o cuối năm 2022. Thiết bị sẽ c&oacute; sức mạnh ngang m&aacute;y Mac, hoạt động m&agrave; kh&ocirc;ng cần smartphone hay m&aacute;y t&iacute;nh. Trước đ&oacute;, nhiều tin đồn cho rằng k&iacute;nh AR của Apple cần kết nối với iPhone để hoạt động.</p>\r\n\r\n<p>Theo&nbsp;<em>CNBC</em>, tin đồn n&agrave;y xuất hiện một năm sau khi Apple ra mắt M1, chip xử l&yacute; tự ph&aacute;t triển tr&ecirc;n kiến tr&uacute;c ARM. Chip n&agrave;y được đ&aacute;nh gi&aacute; mạnh hơn CPU Intel được sử dụng tr&ecirc;n c&aacute;c d&ograve;ng m&aacute;y Mac trước đ&oacute;, trong khi khả năng quản l&yacute; năng lượng vẫn kh&aacute; tốt.</p>\r\n\r\n<p>K&iacute;nh AR của Apple sẽ phủ th&ocirc;ng tin ảo l&ecirc;n thế giới thực. Ảnh minh họa: AppleInsider.</p>\r\n\r\n<ul>\r\n	<li><iframe frameborder=\"0\" height=\"0px\" scrolling=\"no\" src=\"https://sp.zalo.me/plugins/share?dev=null&amp;color=null&amp;oaid=4564080408575020426&amp;href=https%3A%2F%2Fzingnews.vn%2Fkinh-cua-apple-co-the-manh-ngang-may-mac-post1280091.html%3Futm_source%3Dzalo%26utm_medium%3Dzalomsg%26utm_campaign%3Dzingdesktop&amp;layout=icon-text&amp;customize=true&amp;callback=null&amp;id=371773d5-be13-4338-8821-343fab7847d6&amp;domain=zingnews.vn&amp;android=false&amp;ios=false\" width=\"0px\"></iframe></li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Kinh AR cua Apple co the manh ngang may Mac anh 1\" height=\"603\" src=\"https://znews-photo.zadn.vn/w1920/Uploaded/yqdlcqrwq/2021_11_27/21027112021.jpeg\" width=\"804\" /></p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><img alt=\"Kinh AR cua Apple co the manh ngang may Mac anh 1\" height=\"603\" src=\"https://znews-photo.zadn.vn/w960/Uploaded/yqdlcqrwq/2021_11_27/21027112021.jpeg\" title=\"Kính AR của Apple có thể mạnh ngang máy Mac ảnh 1\" width=\"804\" /></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>K&iacute;nh AR của Apple sẽ phủ th&ocirc;ng tin ảo l&ecirc;n thế giới thực. Ảnh minh họa:&nbsp;<em>AppleInsider</em>.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>V&agrave;o th&aacute;ng 10, Apple đ&atilde; ra mắt bản n&acirc;ng cấp của M1 c&oacute; t&ecirc;n M1 Pro v&agrave; M1 Max cho MacBook Pro 2021. Kuo cho biết k&iacute;nh AR của c&ocirc;ng ty sẽ sử dụng chip xử l&yacute; dựa tr&ecirc;n M1.</p>\r\n\r\n<p>D&ugrave; kh&ocirc;ng cần kết nối với iPhone, Kuo dự đo&aacute;n Apple sẽ định vị k&iacute;nh AR dưới dạng phụ kiện d&agrave;nh cho iPhone, tương tự AirPods hay Apple Watch. So với một số đối thủ, khả năng kh&ocirc;ng cần kết nối với điện thoại l&agrave; lợi thế của mẫu k&iacute;nh n&agrave;y.</p>\r\n\r\n<p>K&iacute;nh của Apple được cho sử dụng c&ocirc;ng nghệ thực tế tăng cường, phủ th&ocirc;ng tin ảo l&ecirc;n thế giới thực. C&aacute;c thiết bị như iPhone, iPad v&agrave; Mac đ&atilde; hỗ trợ AR trong những năm qua, tuy nhi&ecirc;n việc ra mắt k&iacute;nh ri&ecirc;ng sẽ mang đến nhiều ứng dụng mới cho c&ocirc;ng nghệ n&agrave;y.</p>\r\n\r\n<p>Đ&atilde; c&oacute; nhiều đồn đo&aacute;n về k&iacute;nh thực tế tăng cường của Apple. Theo&nbsp;<em>MacRumors</em>, thiết bị sẽ c&oacute; ngoại h&igrave;nh tương tự Oculus Quest nhưng đẹp hơn, nhẹ hơn. Mặt trước k&iacute;nh l&agrave; 2 m&agrave;n h&igrave;nh độ ph&acirc;n giải cao, một số camera để theo d&otilde;i chuyển động tay, đầu v&agrave; mắt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://zingnews.vn/video-cong-nghe-thuc-te-ao-vuot-doanh-thu-50-ty-usd-vao-nam-2022-post1205347.html\" target=\"_blank\">C&ocirc;ng nghệ thực tế ảo vượt doanh thu&nbsp;50 tỷ USD&nbsp;v&agrave;o năm 2022</a></strong>&nbsp;C&ocirc;ng nghệ VR v&agrave; AR vẫn c&ograve;n mới mẻ v&igrave; chi ph&iacute; đầu tư cao. Nhưng đ&acirc;y l&agrave; &ldquo;địa b&agrave;n&rdquo; đối với nghệ sĩ kỹ thuật số.</p>', 0, 'baiviet144.jpg', 'Tin đồn cho biết Apple sẽ ra mắt kính thực tế tăng cường (AR) vào cuối năm 2022 với chip xử lý dựa trên M1.', 'Tin đồn cho biết Apple sẽ ra mắt kính thực tế tăng cường (AR) vào cuối năm 2022 với chip xử lý dựa trên M1.', 5, 'kinh-ar-cua-apple-co-the-manh-ngang-may-mac'),
(12, 'Bài tập đơn giản nàng lười chỉ muốn nằm trên giường cũng thực hiện được', 'Những bài tập dưới đây giúp bạn giữ dáng, khỏe mạnh mà không phải rời xa chiếc giường yêu quý của mình.', '<h2>Những b&agrave;i tập dưới đ&acirc;y gi&uacute;p bạn giữ d&aacute;ng, khỏe mạnh m&agrave; kh&ocirc;ng phải rời xa chiếc giường y&ecirc;u qu&yacute; của m&igrave;nh.</h2>\r\n\r\n<p>1. Tư thế đạp xe</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><a href=\"https://photo-cms-kienthuc.zadn.vn/zoom/800/uploaded/thuydung/2021_07_03/1/5-bai-tap-don-gian-nang-luoi-chi-muon-nam-tren-giuong-cung-thuc-hien-duoc.png\" target=\"_blank\"><img alt=\"5 bai tap don gian nang luoi chi muon nam tren giuong cung thuc hien duoc\" src=\"https://photo-cms-kienthuc.zadn.vn/zoom/800/uploaded/thuydung/2021_07_03/1/5-bai-tap-don-gian-nang-luoi-chi-muon-nam-tren-giuong-cung-thuc-hien-duoc.png\" title=\"5 bài tập đơn giản nàng lười chỉ muốn nằm trên giường cũng thực hiện được\" /></a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><img alt=\"\" height=\"0\" src=\"https://ialaddin.genieesspv.jp/yie/ld/gl0?zid=1097490&amp;asid=9495642&amp;idx=0&amp;gid=90120ef02760fa7c18d7624fd3214448&amp;cb=ae50343cd9&amp;l=2FgtDvUrDySM-U6S_B1UaMtqlD6wUz83D24lCVwVLgKLPsKCyljt-jisZYkqcdoavfBuTOowB2AudrhEpoMDyDj8b-Fn9vsqS479mtd1F4BN6AV76aTZGrcmwrQQilIF_3904fgC7DvRX5CVzbK9lxnq6uKAha8ZPzqNRijvAbEVG3ADPsOj4T3C9rMr2qxVl8HPqx74nKKkaE1S5eM4IumNGOJ_CUJuhwOOL5rNicUV_aFmzABPyXR5Z1LLGMdAbwOjYJnzWOWpdqMtTWwl23lBhqTpdHW41jxhMWFfDwS87uebD6Cu0MyiopJbc5i-PMy2QaLb8nsTWubd5AwlAv67h8wR8ls1g-AAe-ytBT-Dr-PqHjh2YIR_aNCi5ZIThZ3cMpo51GoRoFwJGpqNWNaL4IcxQz8MqD_ZhkNdXSXh0NT0PAXCJ7Dk8H4GpxHxRRko9McrZjzwQWKUC0a_5YhaMN4UiF18vp7c0xENpemF9tEPuj55z5DOD5WnNuXCS9Idb-O_aV9Mb8TGFdbazAoXVaDgRO2TQtiPwl61R1OIg0N784dp7fObkoIfhpN3DfYEqvCD5nPn_yM2TG5NIqQgukxDE8KrJgqseKpYWLOmwpg6O8T6b3C9h0aroRe0yF4gy6gd6fyuqmMgH-QvMxRUsMQtuRNmF5wQ32Ek_OOFp7SMbZPVwboCgCtXsgJbcQ3nLeqhFYVJ37z4EPJRLIT-nOUp5IvSpoGaf4hkyCiLaMqAkVY-XZp3FklZP_UAPnxFR1OfOvtG1pfk-AUdxfZiu-uklXO5U4O0qVEmkiIDNWv0JPwjG0ZzeMN6vfV5yWW3McI3kwFGOuT0Q2aycqmaYq8J9B7PBUbSLZj-6IDDZ7KtA8g_LGstOK6kCB4Wi41E2FokN9zeGrEOfYp8QPdWI6TVzySqe2VeZap634A\" width=\"0\" /></p>\r\n\r\n<p>Nằm ngửa tr&ecirc;n giường, sau đ&oacute; hơi n&acirc;ng phần tr&ecirc;n cơ thể l&ecirc;n. N&acirc;ng cả hai ch&acirc;n l&ecirc;n v&agrave; thực hiện&nbsp;<strong>động t&aacute;c đạp xe</strong>&nbsp;trong khi vẫn giữ căng cơ. Một ch&acirc;n duỗi thẳng trong khi ch&acirc;n kia uốn cong đầu gối.</p>\r\n\r\n<p>B&agrave;i tập n&agrave;y gi&uacute;p căng c&aacute;c cơ v&agrave; đốt ch&aacute;y mỡ đ&ugrave;i. Thực hiện &iacute;t nhất một ph&uacute;t hoặc l&acirc;u nhất c&oacute; thể.</p>\r\n\r\n<p>2. Đ&aacute; ch&eacute;o ch&acirc;n</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><a href=\"https://photo-cms-kienthuc.zadn.vn/zoom/800/uploaded/thuydung/2021_07_03/1/5-bai-tap-don-gian-nang-luoi-chi-muon-nam-tren-giuong-cung-thuc-hien-duoc-hinh-2.png\" target=\"_blank\"><img alt=\"5 bai tap don gian nang luoi chi muon nam tren giuong cung thuc hien duoc-Hinh-2\" src=\"https://photo-cms-kienthuc.zadn.vn/zoom/800/uploaded/thuydung/2021_07_03/1/5-bai-tap-don-gian-nang-luoi-chi-muon-nam-tren-giuong-cung-thuc-hien-duoc-hinh-2.png\" title=\"5 bài tập đơn giản nàng lười chỉ muốn nằm trên giường cũng thực hiện được - Hình 2\" /></a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Nằm ngửa tr&ecirc;n giường, sau đ&oacute; hơi n&acirc;ng phần tr&ecirc;n cơ thể l&ecirc;n. N&acirc;ng cả hai ch&acirc;n l&ecirc;n v&agrave; giữ thẳng. Sau đ&oacute;, bắt ch&eacute;o ch&acirc;n với ch&acirc;n kia v&agrave; ngược lại.</p>\r\n\r\n<p><em>B&agrave;i tập n&agrave;y cũng gi&uacute;p căng c&aacute;c cơ v&agrave; l&agrave;m săn chắc đ&ugrave;i</em>. Thực hiện &iacute;t nhất một ph&uacute;t hoặc l&acirc;u nhất c&oacute; thể.</p>\r\n\r\n<p>3. Căng v&agrave; chạm v&agrave;o mắt c&aacute; ch&acirc;n</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><a href=\"https://photo-cms-kienthuc.zadn.vn/zoom/800/uploaded/thuydung/2021_07_03/1/5-bai-tap-don-gian-nang-luoi-chi-muon-nam-tren-giuong-cung-thuc-hien-duoc-hinh-3.png\" target=\"_blank\"><img alt=\"5 bai tap don gian nang luoi chi muon nam tren giuong cung thuc hien duoc-Hinh-3\" src=\"https://photo-cms-kienthuc.zadn.vn/zoom/800/uploaded/thuydung/2021_07_03/1/5-bai-tap-don-gian-nang-luoi-chi-muon-nam-tren-giuong-cung-thuc-hien-duoc-hinh-3.png\" title=\"5 bài tập đơn giản nàng lười chỉ muốn nằm trên giường cũng thực hiện được - Hình 3\" /></a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Nằm ngửa tr&ecirc;n giường, sau đ&oacute; co đầu gối. Duỗi c&aacute;nh tay tr&aacute;i ra ph&iacute;a trước v&agrave; chạm v&agrave;o mắt c&aacute; ch&acirc;n bằng tay tr&aacute;i, v&agrave; thực hiện tương tự với b&ecirc;n c&ograve;n lại. Bạn sẽ cảm thấy căng v&agrave; cảm gi&aacute;c căng cơ.</p>\r\n\r\n<p>Thực hiện b&agrave;i tập n&agrave;y thường xuy&ecirc;n sẽ đốt ch&aacute;y mỡ bụng! Tập &iacute;t nhất một ph&uacute;t hoặc l&acirc;u nhất c&oacute; thể.</p>\r\n\r\n<p>4. Đẩy cơ thể l&ecirc;n</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><a href=\"https://photo-cms-kienthuc.zadn.vn/zoom/800/uploaded/thuydung/2021_07_03/1/5-bai-tap-don-gian-nang-luoi-chi-muon-nam-tren-giuong-cung-thuc-hien-duoc-hinh-4.png\" target=\"_blank\"><img alt=\"5 bai tap don gian nang luoi chi muon nam tren giuong cung thuc hien duoc-Hinh-4\" src=\"https://photo-cms-kienthuc.zadn.vn/zoom/800/uploaded/thuydung/2021_07_03/1/5-bai-tap-don-gian-nang-luoi-chi-muon-nam-tren-giuong-cung-thuc-hien-duoc-hinh-4.png\" title=\"5 bài tập đơn giản nàng lười chỉ muốn nằm trên giường cũng thực hiện được - Hình 4\" /></a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Nằm ngửa tr&ecirc;n giường, sau đ&oacute; co đầu gối. Để vai, đầu v&agrave; tay tr&ecirc;n giường, nhưng n&acirc;ng phần th&acirc;n dưới l&ecirc;n bằng c&aacute;ch sử dụng ch&acirc;n l&agrave;m điểm tựa. N&acirc;ng l&ecirc;n rồi hạ xuống v&agrave; di chuyển l&ecirc;n xuống trong &iacute;t nhất một ph&uacute;t. Bạn sẽ cảm thấy căng cơ v&agrave; đ&ugrave;i.</p>\r\n\r\n<p>5. Căng cơ</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><a href=\"https://photo-cms-kienthuc.zadn.vn/zoom/800/uploaded/thuydung/2021_07_03/1/5-bai-tap-don-gian-nang-luoi-chi-muon-nam-tren-giuong-cung-thuc-hien-duoc-hinh-5.png\" target=\"_blank\"><img alt=\"5 bai tap don gian nang luoi chi muon nam tren giuong cung thuc hien duoc-Hinh-5\" src=\"https://photo-cms-kienthuc.zadn.vn/zoom/800/uploaded/thuydung/2021_07_03/1/5-bai-tap-don-gian-nang-luoi-chi-muon-nam-tren-giuong-cung-thuc-hien-duoc-hinh-5.png\" title=\"5 bài tập đơn giản nàng lười chỉ muốn nằm trên giường cũng thực hiện được - Hình 5\" /></a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cuối c&ugrave;ng bạn h&atilde;y thực hiện động t&aacute;c&nbsp;k&eacute;o gi&atilde;n cơ để thư gi&atilde;n cơ bắp. Nằm thẳng tr&ecirc;n giường, sau đ&oacute; n&acirc;ng tay v&agrave; ch&acirc;n l&ecirc;n hết mức c&oacute; thể. Cơ thể tạo th&agrave;nh một đường cong. Động t&aacute;c k&eacute;o căng n&agrave;y gi&uacute;p k&eacute;o căng người v&agrave; cơ ch&acirc;n.</p>\r\n\r\n<p>Theo Ngọc Huyền/Emdep</p>', 0, 'baiviet664.jpg', 'Những bài tập dưới đây giúp bạn giữ dáng, khỏe mạnh mà không phải rời xa chiếc giường yêu quý của mình.', 'Những bài tập dưới đây giúp bạn giữ dáng, khỏe mạnh mà không phải rời xa chiếc giường yêu quý của mình.', 10, 'bai-tap-don-gian-nang-luoi-chi-muon-nam-tren-giuong-cung-thuc-hien-duoc');
INSERT INTO `tbl_posts` (`post_id`, `post_title`, `post_desc`, `post_content`, `post_status`, `post_image`, `post_meta_desc`, `post_meta_keywords`, `cate_post_id`, `post_slug`) VALUES
(13, '5 sản phẩm skincare gái Pháp dùng đến giọt cuối cùng vì càng bôi da càng mịn màng, căng bóng', '5 sản phẩm skincare gái Pháp dùng đến giọt cuối cùng vì càng bôi da càng mịn màng, căng bóng', '<h2>Đ&acirc;y l&agrave; 5 sản phẩm skincare được g&aacute;i Ph&aacute;p v&ocirc; c&ugrave;ng y&ecirc;u th&iacute;ch.</h2>\r\n\r\n<p>Ấn tượng về l&agrave;n da của phụ nữ Ph&aacute;p ch&iacute;nh l&agrave; vẻ mịn m&agrave;ng, khỏe khoắn v&agrave; c&oacute; độ căng b&oacute;ng cực m&atilde;n nh&atilde;n.&nbsp;<a href=\"https://afamily.vn/cham-da-nhu-gai-phap.html\" title=\"Các quý cô nước Pháp skincare\">C&aacute;c qu&yacute; c&ocirc; nước Ph&aacute;p skincare</a>&nbsp;kh&ocirc;ng qu&aacute; cầu kỳ, m&agrave; đ&aacute;nh tr&uacute;ng v&agrave;o nhu cầu của l&agrave;n da. Những sản phẩm họ tin d&ugrave;ng c&oacute; thể đắt rẻ kh&aacute;c nhau, nhưng điểm chung l&agrave; đều chất lượng, gi&uacute;p cải thiện l&agrave;n da tốt. Đ&acirc;y ch&iacute;nh l&agrave; l&yacute; do, rất nhiều chị em t&ograve; m&ograve; về c&aacute;c sản phẩm chăm da được g&aacute;i Ph&aacute;p y&ecirc;u th&iacute;ch. Dưới đ&acirc;y l&agrave; 5 m&oacute;n&nbsp;<a href=\"https://afamily.vn/skincare.html\" title=\"skincare\">skincare</a>&nbsp;được g&aacute;i Ph&aacute;p d&ugrave;ng đến tận giọt cuối c&ugrave;ng, chị em h&atilde;y tham khảo nh&eacute;!</p>\r\n\r\n<h3>1. Kiehl&#39;s Midnight Recovery Concentrate</h3>\r\n\r\n<p>N&agrave;ng người Ph&aacute;p t&ecirc;n Estelle (21 tuổi) d&agrave;nh rất nhiều lời khen cho lọ serum của Kiehl&#39;s: &quot;Sau khi d&ugrave;ng lọ serum n&agrave;y khoảng hơn 1 năm, t&ocirc;i kh&ocirc;ng thể sống thiếu em n&oacute;. V&igrave; kh&ocirc;ng kh&iacute; &ocirc; nhiễm ở Paris, l&agrave;n da của t&ocirc;i thi thoảng thiếu đi vẻ rạng rỡ, tươi s&aacute;ng, trở n&ecirc;n xỉn m&agrave;u v&agrave; x&aacute;m xịt. Vậy n&ecirc;n v&agrave;o buổi tối, tối muốn d&ugrave;ng một m&oacute;n skincare mỏng nhẹ gi&uacute;p cấp ẩm, t&uacute;t lại vẻ rạng rỡ cho l&agrave;n da, v&agrave; t&ocirc;i t&igrave;m thấy em serum n&agrave;y. Sản phẩm c&oacute; kết cấu nhẹ bẫng, dễ d&ugrave;ng, chỉ cần thoa v&agrave;i giọt l&agrave; đủ. D&ugrave;ng lọ serum n&agrave;y th&igrave; khi thức dậy v&agrave;o buổi s&aacute;ng h&ocirc;m sau, l&agrave;n da của t&ocirc;i tr&ocirc;ng căng mọng, khỏe khoắn v&agrave; c&oacute; độ glow. Sản phẩm n&agrave;y c&oacute; gi&aacute; hơi cao nhưng xứng đ&aacute;ng, t&ocirc;i đang d&ugrave;ng đến lọ thứ 2 rồi&quot;.</p>\r\n\r\n<p><a href=\"https://afamilycdn.com/150157425591193600/2021/11/28/23389641911672050304276203985320395281688106n-16380710826221376407646.jpg\" target=\"_blank\" title=\"\"><img alt=\"5 sản phẩm skincare gái Pháp dùng đến giọt cuối cùng vì càng bôi da càng mịn màng, căng bóng - Ảnh 1.\" height=\"\" src=\"https://afamilycdn.com/thumb_w/650/150157425591193600/2021/11/28/23389641911672050304276203985320395281688106n-16380710826221376407646.jpg\" title=\"5 sản phẩm skincare gái Pháp dùng đến giọt cuối cùng vì càng bôi da càng mịn màng, căng bóng - Ảnh 1.\" width=\"\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nơi mua:&nbsp;<a href=\"https://kiehls.com.vn/product/midnight-recovery-concentrate\" target=\"_blank\" title=\"Kiehl\'s Việt Nam\">Kiehl&#39;s Việt Nam</a></p>\r\n\r\n<p>Gi&aacute;: 1.580k</p>\r\n\r\n<h3>2. Bioderma&nbsp;Sensibio H2O</h3>\r\n\r\n<p>Jenni (24 tuổi) chia sẻ rằng: &quot;B&aacute;c sĩ đ&atilde; khuy&ecirc;n d&ugrave;ng lọ nước tẩy trang n&agrave;y cho l&agrave;n da của t&ocirc;i. Sản phẩm gi&uacute;p da trở n&ecirc;n mềm mại, v&agrave; vẫn duy tr&igrave; được độ ẩm. T&ocirc;i d&ugrave;ng lọ tẩy trang n&agrave;y cho quy tr&igrave;nh s&aacute;ng, trước khi makeup. N&oacute;i một c&aacute;ch kh&aacute;c th&igrave; t&ocirc;i kh&ocirc;ng thể trang điểm, hay b&ocirc;i kem dưỡng ban ng&agrave;y nếu kh&ocirc;ng l&agrave;m sạch da với lọ tẩy trang n&agrave;y trước. Sau đ&oacute; v&agrave;o buổi tối, t&ocirc;i tiếp tục d&ugrave;ng sản phẩm để loại bỏ lớp trang điểm (v&agrave; cả khi kh&ocirc;ng makeup)&quot;. Lọ nước tẩy trang nổi tiếng của nh&agrave; Bioderma sẽ loại bỏ sạch sẽ cặn bẩn, m&agrave; vẫn rất dịu nhẹ đối với l&agrave;n da.</p>\r\n\r\n<p><a href=\"https://afamilycdn.com/150157425591193600/2021/11/28/2553840886283188583358552369827016865658745n-1638071082648866997276.jpg\" target=\"_blank\" title=\"\"><img alt=\"5 sản phẩm skincare gái Pháp dùng đến giọt cuối cùng vì càng bôi da càng mịn màng, căng bóng - Ảnh 3.\" height=\"\" src=\"https://afamilycdn.com/thumb_w/650/150157425591193600/2021/11/28/2553840886283188583358552369827016865658745n-1638071082648866997276.jpg\" title=\"5 sản phẩm skincare gái Pháp dùng đến giọt cuối cùng vì càng bôi da càng mịn màng, căng bóng - Ảnh 3.\" width=\"\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nơi mua:&nbsp;<a href=\"https://hasaki.vn/san-pham/nuoc-tay-trang-bioderma-danh-cho-da-nhay-cam-250ml-1736.html?gclid=Cj0KCQiAy4eNBhCaARIsAFDVtI0hYehDVrbvBEnn4Aghk73_3qkebOMF9JILNYKiKp00CynkAhO7igMaAuvQEALw_wcB\" target=\"_blank\" title=\"Hasaki\">Hasaki</a></p>\r\n\r\n<p>Gi&aacute;: 355k</p>\r\n\r\n<h3>3. Caudalie Vinoperfect Serum</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<h4><a href=\"https://phapluat.suckhoedoisong.vn/5-kem-duong-yeu-thich-cua-gai-phap-mua-lanh-hieu-qua-giup-da-de-min-nhu-nhung-20211023142359385.chn\" target=\"_blank\">5 kem dưỡng y&ecirc;u th&iacute;ch của g&aacute;i Ph&aacute;p m&ugrave;a lạnh gi&uacute;p da dẻ mịn như nhung</a><a href=\"https://phapluat.suckhoedoisong.vn/5-kem-duong-yeu-thich-cua-gai-phap-mua-lanh-hieu-qua-giup-da-de-min-nhu-nhung-20211023142359385.chn\" target=\"_blank\">ĐỌC NGAY</a></h4>\r\n	</li>\r\n</ul>\r\n\r\n<p>Lọ serum đậm đặc, kh&ocirc;ng chứa dầu n&agrave;y sẽ gi&uacute;p x&oacute;a mờ đi c&aacute;c đốm th&acirc;m, l&agrave;m đều m&agrave;u v&agrave; n&acirc;ng t&ocirc;ng da tươi s&aacute;ng. Một số th&agrave;nh phần nổi bật của lọ serum bao gồm: viniferine - hoạt chất được coi l&agrave; hiệu quả hơn vitamin C gấp 62 lần trong khoản l&agrave;m s&aacute;ng da, x&oacute;a mờ th&acirc;m sạm; squalane chiết xuất từ quả olive gi&uacute;p dưỡng ẩm nhưng kh&ocirc;ng tạo cảm gi&aacute;c nặng nề, kh&oacute; chịu; biomimetic emulsifier đ&oacute;ng vai tr&ograve; như một chất x&uacute;c t&aacute;c gi&uacute;p tăng hiệu quả n&acirc;ng t&ocirc;ng da của viniferine. V&agrave; với từng đấy c&ocirc;ng dụng, chẳng tr&aacute;ch g&aacute;i Ph&aacute;p lại y&ecirc;u th&iacute;ch lọ serum chống l&atilde;o h&oacute;a n&agrave;y đến vậy.</p>\r\n\r\n<p><a href=\"https://afamilycdn.com/150157425591193600/2021/11/28/1444426381101119944159875718266152213855337n-16380710824671639235215.jpg\" target=\"_blank\" title=\"\"><img alt=\"5 sản phẩm skincare gái Pháp dùng đến giọt cuối cùng vì càng bôi da càng mịn màng, căng bóng - Ảnh 6.\" height=\"\" src=\"https://afamilycdn.com/thumb_w/650/150157425591193600/2021/11/28/1444426381101119944159875718266152213855337n-16380710824671639235215.jpg\" title=\"5 sản phẩm skincare gái Pháp dùng đến giọt cuối cùng vì càng bôi da càng mịn màng, căng bóng - Ảnh 6.\" width=\"\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nơi mua:&nbsp;<a href=\"https://mint07.com/shop/skin-care-san-pham-duong-da/duong-am-cap-am-da/serum-tinh-chat-duong-da/serum-sang-da-caudalie-vinoperfect-30ml/\" target=\"_blank\" title=\"Mint07\">Mint07</a></p>\r\n\r\n<p>Gi&aacute;: 970k</p>\r\n\r\n<h3>4. Estee Lauder Advanced Night Repair Serum</h3>\r\n\r\n<p>Với c&ocirc;ng nghệ Chronolux Power Signal, lọ serum cực phẩm n&agrave;y sẽ thẩm thấu nhanh ch&oacute;ng v&agrave; s&acirc;u hơn để cho hiệu quả mạnh mẽ trong việc x&oacute;a bỏ c&aacute;c dấu hiệu tuổi t&aacute;c, chẳng hạn như nếp nhăn, da chảy xệ hay k&eacute;m đều m&agrave;u. Ngo&agrave;i khả năng trẻ h&oacute;a l&agrave;n da, lọ serum c&oacute; t&aacute;c dụng chống oxy h&oacute;a để c&aacute;c dấu hiệu tuổi t&aacute;c kh&ocirc;ng xuất hiện th&ecirc;m. &quot;Em n&oacute;&quot; c&ograve;n dưỡng ẩm l&ecirc;n tới 72 giờ đồng hồ, v&agrave; củng cố h&agrave;ng r&agrave;o tự nhi&ecirc;n của l&agrave;n da th&ecirc;m khỏe mạnh.</p>\r\n\r\n<p><a href=\"https://afamilycdn.com/150157425591193600/2021/11/28/24071754910125229228284344525484010271864735n-16380710826421421621621.jpg\" target=\"_blank\" title=\"\"><img alt=\"5 sản phẩm skincare gái Pháp dùng đến giọt cuối cùng vì càng bôi da càng mịn màng, căng bóng - Ảnh 8.\" height=\"\" src=\"https://afamilycdn.com/thumb_w/650/150157425591193600/2021/11/28/24071754910125229228284344525484010271864735n-16380710826421421621621.jpg\" title=\"5 sản phẩm skincare gái Pháp dùng đến giọt cuối cùng vì càng bôi da càng mịn màng, căng bóng - Ảnh 8.\" width=\"\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nơi mua:&nbsp;<a href=\"https://selena.vn/san-pham/tinh-chat-estee-lauder-advanced-night-repair-synchronized-multi-recovery-complex-50ml/\" target=\"_blank\" title=\"Selena\">Selena</a></p>\r\n\r\n<p>Gi&aacute;: 1.620k/50ml</p>\r\n\r\n<h3>5. Embryolisse&nbsp;Lait-Cr&egrave;me Concentr&eacute;</h3>\r\n\r\n<p>C&oacute; thể n&oacute;i rằng, sản phẩm n&agrave;y ch&iacute;nh l&agrave; lọ kem dưỡng &quot;quốc d&acirc;n&quot; của g&aacute;i Ph&aacute;p. Với những th&agrave;nh phần như l&agrave; bơ hạt mỡ, s&aacute;p ong, protein đậu n&agrave;nh, l&ocirc; hội, lọ kem dưỡng mang đến c&ocirc;ng dụng xoa dịu v&agrave; kh&ocirc;i phục h&agrave;ng r&agrave;o bảo vệ da. Sau khi d&ugrave;ng, l&agrave;n da của bạn sẽ trở n&ecirc;n căng mọng v&agrave; mềm mại về cả cảm gi&aacute;c lẫn phần nh&igrave;n. Lọ kem dưỡng n&agrave;y rất l&agrave;nh t&iacute;nh, dễ d&ugrave;ng, hợp với cả l&agrave;n da nhạy cảm nhất.</p>\r\n\r\n<p><a href=\"https://afamilycdn.com/150157425591193600/2021/11/28/2603748306532491125044862147565748601427358n-1638071082657416322965.jpg\" target=\"_blank\" title=\"\"><img alt=\"5 sản phẩm skincare gái Pháp dùng đến giọt cuối cùng vì càng bôi da càng mịn màng, căng bóng - Ảnh 10.\" height=\"\" src=\"https://afamilycdn.com/thumb_w/650/150157425591193600/2021/11/28/2603748306532491125044862147565748601427358n-1638071082657416322965.jpg\" title=\"5 sản phẩm skincare gái Pháp dùng đến giọt cuối cùng vì càng bôi da càng mịn màng, căng bóng - Ảnh 10.\" width=\"\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nơi mua:&nbsp;<a href=\"https://chiaki.vn/embryolisse-lait-creme-concentre-duong-am-cho-da/bt-cmFkaW8=__28_5816c2a11356c?adgroupid=110673133571&amp;campaignid=10625680733&amp;gclid=Cj0KCQiAy4eNBhCaARIsAFDVtI3A7jamOLxyb7cFUzBRbbQszASI-_35lvK824Iw8WkbCzPpcPKAI5saAkGhEALw_wcB\" target=\"_blank\" title=\"Chiaki\">Chiaki</a></p>\r\n\r\n<p>Gi&aacute;: 245k</p>\r\n\r\n<p><em>Nguồn: Refinery29, W.W.W</em></p>\r\n\r\n<p><em>Ảnh: Internet</em></p>\r\n\r\n<p><strong>Olive</strong></p>', 0, 'baiviet523.jpg', '5 sản phẩm skincare gái Pháp dùng đến giọt cuối cùng vì càng bôi da càng mịn màng, căng bóng', '5 sản phẩm skincare gái Pháp dùng đến giọt cuối cùng vì càng bôi da càng mịn màng, căng bóng', 10, '5-san-pham-skincare-gai-phap-dung-den-giot-cuoi-cung-vi-cang-boi-da-cang-min-mang-cang-bong'),
(14, 'Giải quyết sạm da trong tích tắc với một vài tips từ nguyên liệu tự nhiên, vừa rẻ vừa hiệu quả', 'Đa số các trường hợp sạm da mặt có thể hóa giải bằng nỗ lực chăm sóc da thích hợp hoặc giải pháp can thiệp thẩm mỹ. Sạm da là tình trạng thường thấy sau thời gian dài phơi nắng hoặc domụn trứng cá, các rối loạn hormone liên quan đến thai kỳ, sử dụng thuốc tránh thai, thời kỳ mãn kinh hoặc sử dụng một số tân dược. Đa số các trường hợp sạm da mặt chị em thường đến các trung tâm thẩm mỹ.', '<p>Đa số c&aacute;c trường hợp sạm da mặt c&oacute; thể h&oacute;a giải bằng nỗ lực chăm s&oacute;c da th&iacute;ch hợp hoặc giải ph&aacute;p can thiệp thẩm mỹ.</p>\r\n\r\n<p>Sạm da l&agrave; t&igrave;nh trạng thường thấy sau thời gian d&agrave;i phơi nắng hoặc domụn trứng c&aacute;, c&aacute;c rối loạn hormone li&ecirc;n quan đến thai kỳ, sử dụng thuốc tr&aacute;nh thai, thời kỳ m&atilde;n kinh hoặc sử dụng một số t&acirc;n dược. Đa số c&aacute;c trường hợp sạm da mặt chị em thường đến c&aacute;c trung t&acirc;m thẩm mỹ.</p>\r\n\r\n<p><img alt=\"samda 2\" height=\"466\" src=\"https://media.doanhnghiepvn.vn/Images/Uploaded/Share/2021/11/28/Giai-quyet-sam-da-trong-tich-tac-voi-mot-vai-tips-tu-nguyen-lieu-tu-nhien-vua-re-vua-hieu-qua_1.jpg\" width=\"700\" /></p>\r\n\r\n<p>Ảnh minh hoạ.</p>\r\n\r\n<p>Tr&ecirc;n thực tế, hầu hết c&aacute;c nguy&ecirc;n nh&acirc;n đều đến từ c&aacute;c th&oacute;i quen, v&iacute; dụ như bạn thời gian phơi nắng qu&aacute; d&agrave;i v&agrave; thiếu biện ph&aacute;p bảo vệ da th&iacute;ch hợp - tia cực t&iacute;m k&iacute;ch th&iacute;ch tế b&agrave;o sắc tố đột biến gia tăng sản xuất melanin. Hay đ&ocirc;i khi l&agrave;lạm dụng ph&ograve;ng tắm nắng nh&acirc;n tạo (solarium), một số kh&aacute;c l&agrave; domụn trứng c&aacute;: tuổi dậy th&igrave;, tuổi trung ni&ecirc;n,v&igrave; c&aacute;c bệnh da liễu như vẩy nến, vi&ecirc;m da dị ứng (eczema). Ngo&agrave;i c&aacute;c biện ph&aacute;p thẩm mỹ, chị em ho&agrave;n to&agrave;n c&oacute; thể giải quyết vấn đề bằng phương ph&aacute;p tự nhi&ecirc;n.</p>\r\n\r\n<p>Chị em c&oacute; thể thử 4 mẹo vặt tự chế mặt nạ tại gia, ph&aacute;t huy hiệu quả với kh&aacute; nhiều chị em.</p>\r\n\r\n<p>+Mặt nạ nước chanh &eacute;p</p>\r\n\r\n<p>1 th&igrave;a nhỏ nước chanh trộn đều với th&igrave;a nhỏ mật ong v&agrave; lượng sữa chua kh&ocirc;ng đường vừa phải, để tạo ra hỗn hợp tương tự bột nh&atilde;o. Đắp hỗn hợp tự tạo l&ecirc;n v&ugrave;ng da mặt bất thường, giữ nguy&ecirc;n trạng th&aacute;i trong 15 ph&uacute;t. Sau đ&oacute; rửa sạch bằng nước ấm.</p>\r\n\r\n<p>+Hỗn hợp bột nghệ</p>\r\n\r\n<p>1/2 th&igrave;a nhỏ nghệ trộn với ly nhỏ v&aacute;ng sữa tươi. Trộn đều hai th&agrave;nh phần sau đ&oacute; đắp mặt nạ l&ecirc;n v&ugrave;ng da sạm. Rửa sạch bằng nước ấm sau 15 ph&uacute;t.</p>\r\n\r\n<p><img alt=\"samda 1\" height=\"700\" src=\"https://media.doanhnghiepvn.vn/Images/Uploaded/Share/2021/11/28/Giai-quyet-sam-da-trong-tich-tac-voi-mot-vai-tips-tu-nguyen-lieu-tu-nhien-vua-re-vua-hieu-qua_2.jpg\" width=\"700\" /></p>\r\n\r\n<p>+Dầu hạt &oacute;c ch&oacute;</p>\r\n\r\n<p>1 th&igrave;a nhỏdầu hạt &oacute;c ch&oacute; trộn đều c&ugrave;ng 1 th&igrave;a nhỏ mật ong v&agrave; lượng hạt &oacute;c ch&oacute; xay mịn vừa đủ, để tạo ra một dạng bột nh&atilde;o. Đắp mặt nạ tự chế l&ecirc;n mặt trong thời gian khoảng 60 ph&uacute;t, tiếp theo rửa sạch. Bạn cũng c&oacute; thể b&ocirc;i chỉ dầu hạt &oacute;c ch&oacute; buổi tối, trước khi đi ngủ v&agrave; rửa sạch v&agrave;o s&aacute;ng h&ocirc;m sau.</p>\r\n\r\n<p>+H&agrave;nh đỏ</p>\r\n\r\n<p>1 củ h&agrave;nh rửa sạch, b&oacute;c vỏ b&agrave;o nhỏ. D&ugrave;ng &quot;bột h&agrave;nh&quot; đ&oacute; đắp mặt nạ l&ecirc;n mặt. Cũng c&oacute; thể &eacute;p h&agrave;nh đỏ (1 củ) lấy nước, sau đ&oacute; b&ocirc;i l&ecirc;n da mặt. Cả hai c&aacute;ch đều duy tr&igrave; trong thời gian 5 ph&uacute;t. Cuối c&ugrave;ng rửa sạch bằng nước lạnh. Tốt nhất n&ecirc;n thực hiện 2 lần/ng&agrave;y.</p>\r\n\r\n<p>Trị sạm da mặt bằng mỹ phẩm</p>\r\n\r\n<p>Tại c&aacute;c cửa h&agrave;ng mỹ phẩm v&agrave; một số nh&agrave; thuốc sẵn c&oacute; kem chống sạm da. Bạn n&ecirc;n chọn loại c&oacute; th&agrave;nh phần sản phẩm phải giầu Vitamin C, Arbutin, Hydroquinone v&agrave; Tretinoin. Ngo&agrave;i c&aacute;c hợp chất đ&atilde; kể, kem phải c&oacute; c&aacute;c th&agrave;nh phần phục hồi v&agrave; bảo vệ da, như Panthenol ph&aacute;t huy t&aacute;c dụng l&agrave;m m&aacute;t da, Vitamin E-th&uacute;c đẩy hiệu quả phục hồi da c&ugrave;ng một số dầu thực vật cung cấp dưỡng chất v&agrave; bảo vệ l&agrave;n da tổn thương.</p>\r\n\r\n<p><a href=\"javascript:void(0);\" rel=\"nofollow\" title=\"Theo Khỏe và đẹp\">Theo Khỏe v&agrave; đẹp</a></p>', 0, 'baiviet481.jpg', 'Giải quyết sạm da trong tích tắc với một vài tips từ nguyên liệu tự nhiên, vừa rẻ vừa hiệu quả', 'Giải quyết sạm da trong tích tắc với một vài tips từ nguyên liệu tự nhiên, vừa rẻ vừa hiệu quả', 10, 'giai-quyet-sam-da-trong-tich-tac-voi-mot-vai-tips-tu-nguyen-lieu-tu-nhien-vua-re-vua-hieu-qua'),
(15, 'Angelababy, Dương Mịch nổi bật với đầm hiệu xa xỉ', 'Angelababy và Dương Mịch nằm trong nhóm sao phong cách đẹp nhất tuần qua với thiết kế Haute Couture.', '<p>Angelababy v&agrave; Dương Mịch nằm trong nh&oacute;m sao phong c&aacute;ch đẹp nhất tuần qua với thiết kế Haute Couture.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2021/11/28/angelababy-2-1638075264.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=hG5MdJS-lMRYsKNMnXAq0Q\" /></p>\r\n\r\n<p><em>Vogue</em>&nbsp;đ&aacute;nh gi&aacute;&nbsp;<a href=\"https://vnexpress.net/chu-de/angelababy-3053\" rel=\"nofollow\">Angelababy</a>&nbsp;l&agrave; một trong số sao mặc đẹp nhất tuần qua. Diễn vi&ecirc;n Hoa ngữ ghi điểm khi chọn bộ đầm v&agrave;ng với ch&acirc;n v&aacute;y phồng nhiều lớp của Elie Saab. Thiết kế th&ecirc;u v&agrave; đ&iacute;nh hoa 3D, thuộc d&ograve;ng cấp được may đo ri&ecirc;ng. Ảnh:&nbsp;<em>Sohu</em></p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2021/11/28/duong-mich-sohu-1638075263.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=L-TrTr8LgX4o2KvmXawT7w\" /></p>\r\n\r\n<p><a href=\"https://vnexpress.net/chu-de/duong-mich-3056\" rel=\"nofollow\">Dương Mịch</a>&nbsp;tỏa s&aacute;ng với đầm Haute Couture đ&iacute;nh l&ocirc;ng vũ, qu&acirc;y ngực của Ralph &amp; Russo. Ảnh:<em>&nbsp;Sohu</em></p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2021/11/28/Chung-So-Hy-1638074740.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=H3r4tDZ--a0ItB6mmMvwKQ\" /></p>\r\n\r\n<p>Chung Sở Hy trong bộ đầm xẻ ngực đ&iacute;nh sequin d&ograve;ng cao cấp của Georges Chakra.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2021/11/28/Cardi-B-1637548384-1638074532.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=F0zeYVacH_ts9LVngn97eA\" /></p>\r\n\r\n<p>Cardi B g&acirc;y ấn tượng ở&nbsp;<a href=\"https://vnexpress.net/cardi-b-deo-mat-na-vang-4392613.html\" rel=\"nofollow\">thảm đỏ&nbsp;</a><a href=\"https://vnexpress.net/cardi-b-deo-mat-na-vang-4392613.html\" rel=\"nofollow\">AMAs 2021</a>&nbsp;với với v&aacute;y đu&ocirc;i c&aacute; c&uacute;p ngực của Schiaparelli, k&egrave;m khăn voan tr&ugrave;m đầu, mặt nạ mạ v&agrave;ng c&ugrave;ng đ&ocirc;i găng tay vuốt nhọn. Ảnh:&nbsp;<em>AFP</em></p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2021/11/28/Claire-Foy-BBC-1638074533.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=7F8MVJAiBv2qZ4LQ7JxoWA\" /></p>\r\n\r\n<p>Diễn vi&ecirc;n Claire Foy to&aacute;t l&ecirc;n vẻ thanh lịch trong bộ suit họa tiết hoa mộc lan của Schiaparelli. Ảnh:&nbsp;<em>BBC</em></p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2021/11/28/Gemma-Chan-1638074534.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ZqAsIbC3IX3aPFOXeDvHcA\" /></p>\r\n\r\n<p><a href=\"https://vnexpress.net/my-nhan-con-nha-sieu-giau-chau-a-bien-doi-phong-cach-4378408.html\" rel=\"nofollow\">Gemma Chan</a>&nbsp;quyến rũ với v&aacute;y qu&acirc;y ngực bằng lụa taffeta của Oscar de la Renta. Ảnh:<em>&nbsp;Instagram Gemma Chan</em><br />\r\nDiễn vi&ecirc;n Cynthia Erivo được khen ngợi với đầm đơn sắc d&ograve;ng Haute Couture của Valentino khi h&aacute;t ở sự kiện Festival of Remembrance 2021. Video:&nbsp;<em>BBC</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2021/11/28/kate-beckinsale-BFA-1638074535.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=vYJjyF53UiIpIYCNFA_rYw\" /></p>\r\n\r\n<p>Diễn vi&ecirc;n Kate Beckinsale được t&ocirc;n d&aacute;ng với đầm su&ocirc;ng họa tiết của Stella McCartney. Ảnh:&nbsp;<em>Twitter publicaciones</em></p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2021/11/28/Sandra-Bullock-TOM-1638074536.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=RttTjLRnKCSV4k8AeY7aEg\" /></p>\r\n\r\n<p>Diễn vi&ecirc;n Sandra Bullock lăng x&ecirc; suit nhung của Temperley London, kết hợp ăn &yacute; với gi&agrave;y cao g&oacute;t m&agrave;u n&acirc;u nhạt. Ảnh:&nbsp;<em>Tom + Lorenzo</em></p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2021/11/28/yvonne-orji-1638074749.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=cPa3qh1P4eNo7EMxkfCUrw\" /></p>\r\n\r\n<p>Yvonne Orji nổi bật tr&ecirc;n thảm đỏ với đầm Haute Couture qu&aacute; khổ của Nicole + Felicia. Ảnh:&nbsp;<em>Instagram Yvonne Orji</em></p>\r\n\r\n<ul>\r\n</ul>', 0, 'baiviet774.jpg', 'Angelababy và Dương Mịch nằm trong nhóm sao phong cách đẹp nhất tuần qua với thiết kế Haute Couture.', 'Angelababy và Dương Mịch nằm trong nhóm sao phong cách đẹp nhất tuần qua với thiết kế Haute Couture.', 2, 'angelababy-duong-mich-noi-bat-voi-dam-hieu-xa-xi'),
(16, 'Song Hye Kyo phủ hàng hiệu trong phim mới', 'Song Hye Kyo thường xuất hiện với đồ Fendi, Hermès, trang sức Chaumet... trong phim \"Now, We Are Breaking Up\".', '<p>Song Hye Kyo thường xuất hiện với đồ Fendi, Herm&egrave;s, trang sức Chaumet... trong phim &quot;Now, We Are Breaking Up&quot;.</p>\r\n\r\n<p>Song Hye Kyo hiện g&acirc;y ch&uacute; &yacute; khi trở lại m&agrave;n ảnh nhỏ với &#39;<a href=\"https://vnexpress.net/tag/we-are-breaking-up-1401226\" rel=\"dofollow\">Now, We Are Breaking Up</a>&quot;. Trong phim, c&ocirc; h&oacute;a Ha Young Eun - trưởng nh&oacute;m thiết kế thời trang xinh đẹp, t&agrave;i giỏi, độc lập. Sau năm tập phim, c&ocirc; khiến nhiều kh&aacute;n giả bất ngờ về loạt trang phục, phụ kiện đắt đỏ. Theo Insight, thời trang của Song Hye Kyo trong phim l&agrave; chủ đề được quan t&acirc;m.<br />\r\nMở m&agrave;n tập 1, trong ph&acirc;n cảnh Ha Young Eun chuẩn bị rời đi sau khi trải qua t&igrave;nh một đ&ecirc;m với Jae Sook, c&ocirc; mặc thiết kế voan chấm bi của nh&agrave; mốt trong nước Michaa 955 USD (21 triệu đồng), đeo đồng hồ đ&iacute;nh v&agrave;ng trắng v&agrave; kim cương của Chaumet gi&aacute; 14.436 USD (327 triệu đồng). Video:&nbsp;<em>Vie</em></p>\r\n\r\n<p><img alt=\"Hàng hiệu của Song Hye Kyo\" src=\"https://iv1.vnecdn.net/giaitri/images/web/2021/11/27/hang-hieu-cua-song-hye-kyo-1637984590.jpg?w=750&amp;h=450&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=br0vOhG0fXHyz-H0NSnquw\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ở cảnh nh&acirc;n vật đến kh&aacute;ch sạn - nơi bạn th&acirc;n say xỉn v&igrave; thất t&igrave;nh, c&ocirc; chọn set đồ gi&aacute; 1.275 USD (28 triệu đồng) kết hợp đồng hồ 6.124 USD (gần 139 triệu đồng) v&agrave; v&ograve;ng đeo tay 6.991 USD (158 triệu đồng). Video:&nbsp;<em>Vie</em></p>\r\n\r\n<p><img alt=\"Trong phân cảnh buổi chụp ảnh sản phẩm thời trang của công ty ở tập 1, Song Hye Kyo đeo túi bucket của Fendi giá 1.980 USD (gần 45 triệu đồng) làm điểm nhấn cho set đồ denim. Túi xách cháy hàng sau khi tập phim lên sóng.\" src=\"https://i1-giaitri.vnecdn.net/2021/11/27/song-hye-kyo-2931-1637984035.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=wzaT6Ca2F_jLQOPn0MdVKA\" /></p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"0\" id=\"google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Giaitri/Giaitri.thoitrang.detail_0\" name=\"\" scrolling=\"no\" src=\"https://af9fa260cdd67828dc9d55d22f274a91.safeframe.googlesyndication.com/safeframe/1-0-38/html/container.html\" title=\"3rd party ad content\" width=\"0\"></iframe></p>\r\n\r\n<p>Trong ph&acirc;n cảnh buổi chụp ảnh sản phẩm thời trang của c&ocirc;ng ty ở tập một, Song Hye Kyo đeo t&uacute;i bucket của Fendi gi&aacute; 1.980 USD (gần 45 triệu đồng) l&agrave;m điểm nhấn cho set đồ denim. Theo&nbsp;<em>Korean Drama Fashion,</em>&nbsp;t&uacute;i x&aacute;ch &quot;ch&aacute;y h&agrave;ng&quot; sau khi tập phim l&ecirc;n s&oacute;ng. Ảnh:&nbsp;<em>SBS</em></p>\r\n\r\n<p><img alt=\"Túi xách của Song Hye Kyo\" src=\"https://iv1.vnecdn.net/giaitri/images/web/2021/11/27/tui-xach-cua-song-hye-kyo-1637981675.jpg?w=750&amp;h=450&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Lybu_K2SP0HdLV2DU7ILLA\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ph&acirc;n cảnh hai nh&acirc;n vật ch&iacute;nh trong thang m&aacute;y ở tập 2, diễn vi&ecirc;n chọn mẫu t&uacute;i Couvertures et Tenues de Jour của Hermes gi&aacute; 21.150 USD (hơn 479 triệu đồng) phối c&ugrave;ng &aacute;o kho&aacute;c da của Recto gi&aacute; 1.084 USD (hơn 24 triệu đồng). Video:&nbsp;<em>Vie</em></p>\r\n\r\n<p><img alt=\"Khi nhân vật Na Hae Young tụ tập cùng bạn bè sau thành công của show thời trang ở cuối tập 2, cô mặc áo ren trắng của Fendi giá 1.690 USD (38 triệu đồng), kết hợp khuyên tai của Chaumet giá 10.273 USD (233 triệu đồng).\" src=\"https://i1-giaitri.vnecdn.net/2021/11/27/song-hye-kyo-1-1872-1637984035.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=HZBeVDbKptyw7n0Ez44gMQ\" /></p>\r\n\r\n<p>Khi nh&acirc;n vật Ha Young Eun tụ tập c&ugrave;ng bạn b&egrave; sau th&agrave;nh c&ocirc;ng của show thời trang ở cuối tập hai, c&ocirc; mặc &aacute;o ren trắng của Fendi gi&aacute; 1.690 USD (38 triệu đồng), kết hợp khuy&ecirc;n tai của Chaumet gi&aacute; 10.273 USD (233 triệu đồng). Ảnh:&nbsp;<em>SBS</em></p>\r\n\r\n<p><img alt=\"Đầu tập 3, cô mặc áo trench jacket đỏ của thương hiệu Michaa giá 761 USD (17 triệu đồng), đeo khuyên tai giá 1.374 USD (31 triệu đồng).\" src=\"https://i1-giaitri.vnecdn.net/2021/11/27/song-hye-kyo-2-2194-1637987730.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=O9H3txxEk_D19d5ycFg3Iw\" /></p>\r\n\r\n<p>Đầu tập ba,&nbsp;<a href=\"https://vnexpress.net/chu-de/song-hye-kyo-3809\" rel=\"dofollow\">Song Hye Kyo</a>&nbsp;mặc &aacute;o trench jacket đỏ của thương hiệu Michaa gi&aacute; 761 USD (17 triệu đồng), đeo khuy&ecirc;n tai gi&aacute; 1.374 USD (31 triệu đồng). Ảnh:&nbsp;<em>SBS</em></p>\r\n\r\n<p><img alt=\"Trích đoạn tập 4 \'Now, We Are Breaking Up\'\" src=\"https://iv1.vnecdn.net/giaitri/images/web/2021/11/27/trich-doan-tap-4-now-we-are-breaking-up-1637986976.jpg?w=750&amp;h=450&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=f4LdN2sj5jRbHo9fTeu7kQ\" /></p>\r\n\r\n<p>Cảnh đi kiểm tra cửa h&agrave;ng thời trang ở đầu tập 4, c&ocirc; mặc &aacute;o kho&aacute;c d&aacute;ng d&agrave;i trắng của Michaa gi&aacute; 1.083 USD (24 triệu đồng) kết hợpboot da cao cổ của Ath&eacute; gi&aacute; 384 USD (8,7 triệu đồng) v&agrave; x&aacute;ch t&uacute;i da c&aacute; sấu của Fendi gi&aacute; 24.016 USD (hơn 544 triệu đồng). Video:&nbsp;<em>Vieon</em><br />\r\nSong Hye Kyo sinh năm 1981 tại Daegu, H&agrave;n Quốc. Sau chiến thắng trong cuộc thi người mẫu tuổi teen năm 1995, c&ocirc; gia nhập l&agrave;ng giải tr&iacute; với vai tr&ograve; mẫu ảnh. Người đẹp ghi dấu với&nbsp;<em>Tr&aacute;i tim m&ugrave;a thu, Một cho tất cả, Ng&ocirc;i nh&agrave; hạnh ph&uacute;c, Gi&oacute; m&ugrave;a đ&ocirc;ng năm ấy, Hậu duệ mặt trời</em>... C&ocirc; sở hữu nhiều bất động sản gi&aacute; trị tại H&agrave;n v&agrave; New York (Mỹ). Diễn vi&ecirc;n trải qua cuộc&nbsp;<a href=\"https://vnexpress.net/song-joong-ki-song-hye-kyo-ly-di-3944149.html\" rel=\"dofollow\">h&ocirc;n nh&acirc;n</a>&nbsp;với t&agrave;i tử Song Joong Ki.</p>', 0, 'bai821.jpg', 'Song Hye Kyo thường xuất hiện với đồ Fendi, Hermès, trang sức Chaumet... trong phim \"Now, We Are Breaking Up\".', 'Song Hye Kyo thường xuất hiện với đồ Fendi, Hermès, trang sức Chaumet... trong phim \"Now, We Are Breaking Up\".', 2, 'song-hye-kyo-phu-hang-hieu-trong-phim-moi'),
(17, 'Áo nịt ngực, xếp bèo dành cho đàn ông', 'Nhà thiết kế Hà Nhật Tiến lăng xê áo xếp bèo, corset trong bộ sưu tập \"Serein\" dành cho nam.', '<p>Nh&agrave; thiết kế H&agrave; Nhật Tiến lăng x&ecirc; &aacute;o xếp b&egrave;o, corset trong bộ sưu tập &quot;Serein&quot; d&agrave;nh cho nam.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2021/11/24/7C7A7559-1637744708.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=cS08ZD6UL9tnR7feIAFcqg\" /></p>\r\n\r\n<p>&quot;Serein&quot; được truyền cảm hứng từ những buổi ho&agrave;ng h&ocirc;n trong cơn mưa tr&ecirc;n biển.&nbsp;<a href=\"https://vnexpress.net/tag/ha-nhat-tien-170866\" rel=\"nofollow\">H&agrave; Nhật Tiến</a>&nbsp;n&oacute;i: &quot;Đ&oacute; l&agrave; khoảnh khắc đẹp nao l&ograve;ng khiến t&ocirc;i đắm say v&agrave; l&agrave;m n&ecirc;n những thiết kế n&agrave;y&quot;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2021/11/24/7C7A7597-1637744709.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=DNmueNmCMD1R1tQ1fO3Cfg\" /></p>\r\n\r\n<p>Bộ sưu tập d&agrave;nh cho nam giới được ph&aacute;t triển tr&ecirc;n bảng m&agrave;u be, trắng kem l&agrave;m chủ đạo, nhấn nh&aacute; xanh l&aacute; v&agrave; &aacute;nh bạc, nhằm thể hiện m&agrave;u của b&atilde;i c&aacute;t trắng, &aacute;nh ho&agrave;ng h&ocirc;n, c&acirc;y cối... Tất cả được xử l&yacute; tr&ecirc;n &aacute;o oversize, quần ống loe của những năm 1970 hay trang phục mang đậm phong c&aacute;ch thập ni&ecirc;n 1960. Trong một bộ c&aacute;nh, nh&agrave; thiết kế kết hợp &aacute;o lưới đ&aacute;nh c&aacute; c&ugrave;ng quần da m&agrave;u be, v&ograve;ng cổ ngọc trai nh&acirc;n tạo.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2021/11/24/7C7A7651-1637744710.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=OeUdAFddx5HAi5ekbXEMaw\" /></p>\r\n\r\n<p>H&igrave;nh ảnh chiếc &aacute;o nịt ngực (corset) vốn d&agrave;nh cho nữ giới thời xưa được anh đem v&agrave;o bộ sưu tập với th&ocirc;ng điệp muốn x&ograve;a nh&ograve;a lằn ranh thời trang nam v&agrave; nữ. Gần 10 năm qua, H&agrave; Nhật Tiến theo đuổi thiết kế unisex. Anh từng bị kh&aacute;n giả chỉ tr&iacute;ch khi cho đ&agrave;n &ocirc;ng mặc đồ nữ thời mới v&agrave;o nghề, nhưng chưa bao giờ ngừng đam m&ecirc; phong c&aacute;ch n&agrave;y.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2021/11/24/7C7A7749-1637744711.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=7x2Q4-26Xmf9BswpwYIXGQ\" /></p>\r\n\r\n<p>Trang phục mang hơi hướm nữ t&iacute;nh c&ograve;n được thể hiện ở &aacute;o xếp b&egrave;o mặc ngo&agrave;i &aacute;o cổ lọ &aacute;nh kim, phối khuy&ecirc;n tai khảm trai.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2021/11/24/7C7A7719-1637744710.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=99EuI__Dvl8LYfJgpq9ZgA\" /></p>\r\n\r\n<p>Đi c&ugrave;ng &aacute;o l&agrave; quần &acirc;u nam t&iacute;nh với đường cắt rộng, ph&oacute;ng kho&aacute;ng, nhấn bằng chi tiết xanh l&aacute; giống như một chiếc đai.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2021/11/24/7C7A7818-1637744711.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=qzLMx8FT4vUj_WLv5VJ6yg\" /></p>\r\n\r\n<p>C&aacute;c thiết kế khai th&aacute;c chất liệu da, ren, kaki, lụa, organza l&agrave;m chủ đạo.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2021/11/24/ok-1637744714.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=NTSpOb7vzI_y0waBXPbz9g\" /></p>\r\n\r\n<p>Suit m&agrave;u kem d&aacute;ng qu&aacute; khổ th&ecirc;m bắt mắt nhờ những chiếc c&uacute;c được l&agrave;m từ vỏ trai đ&iacute;nh khắp th&acirc;n &aacute;o.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2021/11/24/ok-1-1637744712.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=o3KoG90npJrM-wUGLbPonw\" /><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2021/11/24/ok-8-1637744713.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=W8LbUIb4lhzqr3dnRuT8ig\" /></p>\r\n\r\n<p>Sự đối lập giữa vẻ mềm mại v&agrave; cứng c&aacute;p thể hiện qua c&aacute;ch kết hợp sơ mi tay bồng organza v&agrave; bộ đồ phong c&aacute;ch qu&acirc;n đội m&agrave;u xanh l&aacute;, ủng cao su. Bộ sưu tập c&ograve;n lăng x&ecirc; mũ bucket đ&iacute;nh c&aacute;c hạt cườm, ngọc trai. Ba năm qua, loại phụ n&agrave;y được nhiều người nổi tiếng c&ugrave;ng c&aacute;c fashionista ưa chuộng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-giaitri.vnecdn.net/2021/11/24/ok-10-1637744713.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=b-vKrfvbaZph0p6SpXbtvA\" /></p>\r\n\r\n<p>Chỉ đạo nghệ thuật: Chris Vũ, ảnh: Nguyễn Du, trang điểm v&agrave; l&agrave;m t&oacute;c: Viễn Dương, người mẫu: Fuji Nguyễn.</p>', 0, 'baiviet94.jpg', 'Nhà thiết kế Hà Nhật Tiến lăng xê áo xếp bèo, corset trong bộ sưu tập \"Serein\" dành cho nam. Thiết kế độc đáo', 'Nhà thiết kế Hà Nhật Tiến lăng xê áo xếp bèo, corset trong bộ sưu tập \"Serein\" dành cho nam.', 2, 'ao-nit-nguc-xep-beo-danh-cho-dan-ong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) NOT NULL,
  `brand_id` int(10) NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `meta_keywords`, `category_id`, `brand_id`, `product_desc`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 'Áo thun nữ họa tiết', 'ao-thun-nu-hoa-tiet', 1, 1, '<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px\">TH&Ocirc;NG TIN SẢN PHẨM:</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- T&ecirc;n sản phẩm: &Aacute;o thun form rộng tay lỡ</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Xuất sứ: Việt Nam - Chất liệu: 35% Cotton, 60% Polyester, 5% Spandex </span></p>\r\n\r\n<p><span style=\"font-size:18px\">- D&agrave;y dặn, mềm mịn, co gi&atilde;n 4 chiều, kh&ocirc;ng x&ugrave;, kh&ocirc;ng nhăn, kh&ocirc;ng h&uacute;t bụi bẩn. </span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Size:</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ XS ( dưới 28kg, dưới 1m30 )</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ S ( 29 - 35kg, 1m31 - 1m41 ) </span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ M ( 36 - 44kg, 1m42 - 1m52 ) </span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ L ( 45 - 51kg, 1m53 - 1m59 ) </span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ XL ( 52 - 62kg, 1m60 - 1m69) </span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ XXL ( tr&ecirc;n 63kg, tr&ecirc;n 1m70 ) </span></p>\r\n\r\n<p><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ng&agrave;y n&agrave;y, &aacute;o thun tay lỡ Unisex form rộng đang ng&agrave;y c&agrave;ng trở n&ecirc;n phổ biến v&agrave; đa dạng với c&aacute;c mẫu thiết kế độc đ&aacute;o bắt mắt, thậm ch&iacute; c&ograve;n bắt kịp nhiều tr&agrave;o lưu xu hướng đặc biệt l&agrave; phong c&aacute;ch H&agrave;n Quốc. Do đ&oacute;, việc t&igrave;m hiểu tất tần tật về &aacute;o thun tay lỡ nam/nữ l&agrave; cần thiết gi&uacute;p bạn lu&ocirc;n cập nhật những mẫu thiết kế mới nhất. Điều n&agrave;y sẽ gi&uacute;p bạn c&oacute; nhiều sự lựa chọn mới mẻ v&agrave; đa dạng phong c&aacute;ch thời trang của bạn.</span></p>', '123000', 'aothun40.webp', 0, NULL, NULL),
(4, 'Áo khoác dù ulzzang', 'ao-khoac-du-ulzzang', 6, 2, '<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px\">&Aacute;o kho&aacute;c d&ugrave; nam nữ form rộng Unisex 2 lớp Chống Nắng Si&ecirc;u Hot Jacket Bomber Guvia </span></p>\r\n\r\n<p><span style=\"font-size:18px\">Mẫu Mới Về B&aacute;n Giảm Gi&aacute; Lấy 5 SAO⭐ </span></p>\r\n\r\n<p><span style=\"font-size:18px\">-CAM KẾT chất lượng v&agrave; mẫu m&atilde; sản phẩm &aacute;o kho&aacute;c d&ugrave; bomber unisex form rộng GUVIA , &aacute;o kho&aacute;c Bomer d&ugrave; ulzzang GUVIA giống với h&igrave;nh ảnh.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">-Ho&agrave;n tiền nếu sản phẩm phẩm &aacute;o kho&aacute;c d&ugrave; bomber unisex form rộng GUVIA , &aacute;o kho&aacute;c d&ugrave; ulzzang GUVIA kh&ocirc;ng giống với m&ocirc; tả. </span></p>\r\n\r\n<p><span style=\"font-size:18px\">-Cam kết được đổi trả h&agrave;ng trong v&ograve;ng 7 ng&agrave;y. Th&ocirc;ng Tin Sản phẩm &aacute;o kho&aacute;c d&ugrave; bomber unisex form rộng GUVIA , &aacute;o kho&aacute;c d&ugrave; ulzzang GUVIA </span></p>\r\n\r\n<p><span style=\"font-size:18px\">- &Aacute;o kho&aacute;c d&ugrave; bomber unisex form rộng GUVIA , &aacute;o kho&aacute;c d&ugrave; ulzzang GUVIA d&aacute;ng rộng thoải m&aacute;i, kiểu &aacute;o thu đ&ocirc;ng </span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Chất liệu d&ugrave; 2 lớp d&agrave;y dặn, kh&ocirc;ng hầm,kh&ocirc;ng x&ugrave; l&ocirc;ng </span></p>\r\n\r\n<p><span style=\"font-size:18px\">- H&igrave;nh in sắc n&eacute;t, mực in cao cấp kh&ocirc;ng bị lem, bong.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ </span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Size: Fullsize 40kg-72kg : +Size L &lt;52kg cao dưới 1m62 +Size XL &lt;65kg cao dưới 1m72 </span></p>\r\n\r\n<p><span style=\"font-size:18px\">📜Ưu điểm: </span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔ &Aacute;o được thiết kế form rộng trẻ trung , hợp thời ph&ugrave; hợp với set đồ di chơi, du lịch, dạo phố,... ✔Đường may sắc n&eacute;t </span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔Lựa chọn &aacute;o kho&aacute;c kết hợp với quần JEANS l&agrave; bạn c&oacute; một bộ c&aacute;nh ho&agrave;n hảo, th&iacute;ch hợp sử dụng cho c&aacute;c dịp đi chơi, gặp gỡ bạn b&egrave; </span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔Thiết kế Basic nam v&agrave; nữ mặc đều được </span></p>\r\n\r\n<p><span style=\"font-size:18px\">💥 Hướng dẫn sử dụng, bảo quản đối với sản phẩm: </span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Kh&ocirc;ng n&ecirc;n giặt chung với những loại &aacute;o kh&aacute;c, n&ecirc;n lột tr&aacute;i &aacute;o kho&aacute;c khi giặt </span></p>\r\n\r\n<p><span style=\"font-size:18px\">-N&ecirc;n giặt &aacute;o kho&aacute;c bằng tay, giặt bằng m&aacute;y sẽ dễ l&agrave;m hỏng vải &aacute;o. </span></p>\r\n\r\n<p><span style=\"font-size:18px\">-Kh&ocirc;ng ng&acirc;m đồ trong x&agrave; ph&ograve;ng qu&aacute; l&acirc;u, kh&ocirc;ng n&ecirc;n sử dụng c&aacute;c chất tẩy rửa </span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Kh&ocirc;ng n&ecirc;n để &aacute;o ở những nơi ẩm ướt, với t&iacute;nh chất h&uacute;t ẩm, h&uacute;t nước tốt, &aacute;o thun dễ bị ẩm mốc, thậm ch&iacute; để lại những vết ố tr&ecirc;n vải &aacute;o </span></p>\r\n\r\n<div id=\"simple-translate\">\r\n<div>\r\n<div class=\"isShow simple-translate-button\" style=\"background-image:url(&quot;chrome-extension://cllnohpbfenopiakdcjmjcbaeapmkcdl/icons/512.png&quot;); height:22px; left:163px; top:82px; width:22px\">&nbsp;</div>\r\n\r\n<div class=\"simple-translate-panel\" style=\"background-color:#ffffff; font-size:13px; height:200px; left:0px; top:0px; width:300px\">\r\n<div class=\"simple-translate-result-wrapper\" style=\"overflow:hidden\">\r\n<div class=\"simple-translate-move\">&nbsp;</div>\r\n\r\n<div class=\"simple-translate-result-contents\">\r\n<p dir=\"auto\">&nbsp;</p>\r\n\r\n<p dir=\"auto\">&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '235000', 'jacket52.jpg', 0, NULL, NULL),
(5, 'Áo khoác dù TMS', 'ao-khoac-du-tms', 6, 6, '<p><span style=\"font-size:18px\">&Aacute;o kho&aacute;c d&ugrave; nam nữ form rộng Unisex 2 lớp Chống Nắng Si&ecirc;u Hot Jacket Bomber Guvia</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Mẫu Mới Về B&aacute;n Giảm Gi&aacute; Lấy 5 SAO⭐</span></p>\r\n\r\n<p><span style=\"font-size:18px\">-CAM KẾT chất lượng v&agrave; mẫu m&atilde; sản phẩm &aacute;o kho&aacute;c d&ugrave; bomber unisex form rộng GUVIA , &aacute;o kho&aacute;c Bomer d&ugrave; ulzzang GUVIA giống với h&igrave;nh ảnh.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">-Ho&agrave;n tiền nếu sản phẩm phẩm &aacute;o kho&aacute;c d&ugrave; bomber unisex form rộng GUVIA , &aacute;o kho&aacute;c d&ugrave; ulzzang GUVIA kh&ocirc;ng giống với m&ocirc; tả.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">-Cam kết được đổi trả h&agrave;ng trong v&ograve;ng 7 ng&agrave;y. Th&ocirc;ng Tin Sản phẩm &aacute;o kho&aacute;c d&ugrave; bomber unisex form rộng GUVIA , &aacute;o kho&aacute;c d&ugrave; ulzzang GUVIA</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- &Aacute;o kho&aacute;c d&ugrave; bomber unisex form rộng GUVIA , &aacute;o kho&aacute;c d&ugrave; ulzzang GUVIA d&aacute;ng rộng thoải m&aacute;i, kiểu &aacute;o thu đ&ocirc;ng</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Chất liệu d&ugrave; 2 lớp d&agrave;y dặn, kh&ocirc;ng hầm,kh&ocirc;ng x&ugrave; l&ocirc;ng</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- H&igrave;nh in sắc n&eacute;t, mực in cao cấp kh&ocirc;ng bị lem, bong.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Size: Fullsize 40kg-72kg : +Size L &lt;52kg cao dưới 1m62 +Size XL &lt;65kg cao dưới 1m72</span></p>\r\n\r\n<p><span style=\"font-size:18px\">📜Ưu điểm:</span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔ &Aacute;o được thiết kế form rộng trẻ trung , hợp thời ph&ugrave; hợp với set đồ di chơi, du lịch, dạo phố,... ✔Đường may sắc n&eacute;t</span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔Lựa chọn &aacute;o kho&aacute;c kết hợp với quần JEANS l&agrave; bạn c&oacute; một bộ c&aacute;nh ho&agrave;n hảo, th&iacute;ch hợp sử dụng cho c&aacute;c dịp đi chơi, gặp gỡ bạn b&egrave;</span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔Thiết kế Basic nam v&agrave; nữ mặc đều được</span></p>\r\n\r\n<p><span style=\"font-size:18px\">💥 Hướng dẫn sử dụng, bảo quản đối với sản phẩm:</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Kh&ocirc;ng n&ecirc;n giặt chung với những loại &aacute;o kh&aacute;c, n&ecirc;n lột tr&aacute;i &aacute;o kho&aacute;c khi giặt</span></p>\r\n\r\n<p><span style=\"font-size:18px\">-N&ecirc;n giặt &aacute;o kho&aacute;c bằng tay, giặt bằng m&aacute;y sẽ dễ l&agrave;m hỏng vải &aacute;o.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">-Kh&ocirc;ng ng&acirc;m đồ trong x&agrave; ph&ograve;ng qu&aacute; l&acirc;u, kh&ocirc;ng n&ecirc;n sử dụng c&aacute;c chất tẩy rửa</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Kh&ocirc;ng n&ecirc;n để &aacute;o ở những nơi ẩm ướt, với t&iacute;nh chất h&uacute;t ẩm, h&uacute;t nước tốt, &aacute;o thun dễ bị ẩm mốc, thậm ch&iacute; để lại những vết ố tr&ecirc;n vải &aacute;o</span></p>', '220000', 'jacket23.webp', 0, NULL, NULL),
(6, 'Áo Bomber Jacket', 'ao-bomber-jacket', 6, 3, '<p><span style=\"font-size:18px\">&Aacute;o kho&aacute;c d&ugrave; nam nữ form rộng Unisex 2 lớp Chống Nắng Si&ecirc;u Hot Jacket Bomber Guvia</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Mẫu Mới Về B&aacute;n Giảm Gi&aacute; Lấy 5 SAO⭐</span></p>\r\n\r\n<p><span style=\"font-size:18px\">-CAM KẾT chất lượng v&agrave; mẫu m&atilde; sản phẩm &aacute;o kho&aacute;c d&ugrave; bomber unisex form rộng GUVIA , &aacute;o kho&aacute;c Bomer d&ugrave; ulzzang GUVIA giống với h&igrave;nh ảnh.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">-Ho&agrave;n tiền nếu sản phẩm phẩm &aacute;o kho&aacute;c d&ugrave; bomber unisex form rộng GUVIA , &aacute;o kho&aacute;c d&ugrave; ulzzang GUVIA kh&ocirc;ng giống với m&ocirc; tả.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">-Cam kết được đổi trả h&agrave;ng trong v&ograve;ng 7 ng&agrave;y. Th&ocirc;ng Tin Sản phẩm &aacute;o kho&aacute;c d&ugrave; bomber unisex form rộng GUVIA , &aacute;o kho&aacute;c d&ugrave; ulzzang GUVIA</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- &Aacute;o kho&aacute;c d&ugrave; bomber unisex form rộng GUVIA , &aacute;o kho&aacute;c d&ugrave; ulzzang GUVIA d&aacute;ng rộng thoải m&aacute;i, kiểu &aacute;o thu đ&ocirc;ng</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Chất liệu d&ugrave; 2 lớp d&agrave;y dặn, kh&ocirc;ng hầm,kh&ocirc;ng x&ugrave; l&ocirc;ng</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- H&igrave;nh in sắc n&eacute;t, mực in cao cấp kh&ocirc;ng bị lem, bong.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Size: Fullsize 40kg-72kg : +Size L &lt;52kg cao dưới 1m62 +Size XL &lt;65kg cao dưới 1m72</span></p>\r\n\r\n<p><span style=\"font-size:18px\">📜Ưu điểm:</span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔ &Aacute;o được thiết kế form rộng trẻ trung , hợp thời ph&ugrave; hợp với set đồ di chơi, du lịch, dạo phố,... ✔Đường may sắc n&eacute;t</span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔Lựa chọn &aacute;o kho&aacute;c kết hợp với quần JEANS l&agrave; bạn c&oacute; một bộ c&aacute;nh ho&agrave;n hảo, th&iacute;ch hợp sử dụng cho c&aacute;c dịp đi chơi, gặp gỡ bạn b&egrave;</span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔Thiết kế Basic nam v&agrave; nữ mặc đều được</span></p>\r\n\r\n<p><span style=\"font-size:18px\">💥 Hướng dẫn sử dụng, bảo quản đối với sản phẩm:</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Kh&ocirc;ng n&ecirc;n giặt chung với những loại &aacute;o kh&aacute;c, n&ecirc;n lột tr&aacute;i &aacute;o kho&aacute;c khi giặt</span></p>\r\n\r\n<p><span style=\"font-size:18px\">-N&ecirc;n giặt &aacute;o kho&aacute;c bằng tay, giặt bằng m&aacute;y sẽ dễ l&agrave;m hỏng vải &aacute;o.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">-Kh&ocirc;ng ng&acirc;m đồ trong x&agrave; ph&ograve;ng qu&aacute; l&acirc;u, kh&ocirc;ng n&ecirc;n sử dụng c&aacute;c chất tẩy rửa</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Kh&ocirc;ng n&ecirc;n để &aacute;o ở những nơi ẩm ướt, với t&iacute;nh chất h&uacute;t ẩm, h&uacute;t nước tốt, &aacute;o thun dễ bị ẩm mốc, thậm ch&iacute; để lại những vết ố tr&ecirc;n vải &aacute;o</span></p>', '205000', 'jacket31.jpeg', 0, NULL, NULL),
(7, 'Áo khoác dù OGY', 'ao-khoac-du-ogy', 6, 4, '<p><span style=\"font-size:18px\">* Chi tiết sản phẩm &Aacute;o Kho&aacute;c</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Ch&acirc;t vải Thun G&acirc;n d&agrave;y dặn,co gi&atilde;n tốt v&agrave; quan trọng độ bền m&agrave;u cao</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Giặt ko đổ l&ocirc;ng hay bay m&agrave;u, thấm h&uacute;t mồ h&ocirc;i v&agrave; thoải m&aacute;i ko g&ograve; b&oacute; khi vận động</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Thiệt kế cấu tr&uacute;c lỗ tho&aacute;ng, mắt vải mịn gi&uacute;p t&ocirc;n d&aacute;ng cho người mặc</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Sản xuất : Việt Nam</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Sản phẩm được đ&oacute;ng g&oacute;i bằng Hộp hay T&uacute;i Ni&ecirc;m Phong c&oacute; in logo ri&ecirc;ng biệt của&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:18px\">M&agrave;u sắc &amp; k&iacute;ch cỡ &Aacute;o Kho&aacute;c : form &aacute;o Regular Fit thoải m&aacute;i ko g&ograve; b&oacute; khi vận động tạo n&ecirc;n sự nặng động, trẻ trung,...</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ &Aacute;o c&oacute; 3 m&agrave;u: X&aacute;m - Đen - R&ecirc;u</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ &Aacute;o c&oacute; 4 size : S M L XL</span></p>\r\n\r\n<p><span style=\"font-size:18px\">S dưới 1m72 dưới 64kg</span></p>\r\n\r\n<p><span style=\"font-size:18px\">M 1m6 - 1m8 65 - 72kg</span></p>\r\n\r\n<p><span style=\"font-size:18px\">L 1m65 - 1m85 73 - 80kg</span></p>\r\n\r\n<p><span style=\"font-size:18px\">XL 1m68 - 1m88 80 - 88kg</span></p>\r\n\r\n<p><span style=\"font-size:18px\">* Hướng dẫn sử dụng v&agrave; bảo quản &Aacute;o Kho&aacute;c :</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Giặt ở nhiệt độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Hạn chế sử dụng m&aacute;y sấy v&agrave; ủi ở nhiệt độ th&iacute;ch hợp.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Lộn mặt tr&aacute;i khi phơi tr&aacute;nh bị phai m&agrave;u</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Đối với những sản phẩm c&oacute; h&igrave;nh in n&ecirc;n lộn ngược v&agrave;o trong khi giặt để tr&aacute;nh bong ch&oacute;c v&agrave; giữ h&igrave;nh in được l&acirc;u hơn</span></p>\r\n\r\n<p dir=\"auto\">&nbsp;</p>', '110000', 'hoodie674.jpeg', 0, NULL, NULL),
(8, 'Áo khoác Form rộng', 'ao-khoac-form-rong', 6, 5, '<p><span style=\"font-size:18px\">* Chi tiết sản phẩm &Aacute;o Kho&aacute;c</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Ch&acirc;t vải Thun G&acirc;n d&agrave;y dặn,co gi&atilde;n tốt v&agrave; quan trọng độ bền m&agrave;u cao</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Giặt ko đổ l&ocirc;ng hay bay m&agrave;u, thấm h&uacute;t mồ h&ocirc;i v&agrave; thoải m&aacute;i ko g&ograve; b&oacute; khi vận động</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Thiệt kế cấu tr&uacute;c lỗ tho&aacute;ng, mắt vải mịn gi&uacute;p t&ocirc;n d&aacute;ng cho người mặc</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Sản xuất : Việt Nam</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Sản phẩm được đ&oacute;ng g&oacute;i bằng Hộp hay T&uacute;i Ni&ecirc;m Phong c&oacute; in logo ri&ecirc;ng biệt của&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:18px\">M&agrave;u sắc &amp; k&iacute;ch cỡ &Aacute;o Kho&aacute;c : form &aacute;o Regular Fit thoải m&aacute;i ko g&ograve; b&oacute; khi vận động tạo n&ecirc;n sự nặng động, trẻ trung,...</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ &Aacute;o c&oacute; 3 m&agrave;u: X&aacute;m - Đen - R&ecirc;u</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ &Aacute;o c&oacute; 4 size : S M L XL</span></p>\r\n\r\n<p><span style=\"font-size:18px\">S dưới 1m72 dưới 64kg</span></p>\r\n\r\n<p><span style=\"font-size:18px\">M 1m6 - 1m8 65 - 72kg</span></p>\r\n\r\n<p><span style=\"font-size:18px\">L 1m65 - 1m85 73 - 80kg</span></p>\r\n\r\n<p><span style=\"font-size:18px\">XL 1m68 - 1m88 80 - 88kg</span></p>\r\n\r\n<p><span style=\"font-size:18px\">* Hướng dẫn sử dụng v&agrave; bảo quản &Aacute;o Kho&aacute;c :</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Giặt ở nhiệt độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Hạn chế sử dụng m&aacute;y sấy v&agrave; ủi ở nhiệt độ th&iacute;ch hợp.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Lộn mặt tr&aacute;i khi phơi tr&aacute;nh bị phai m&agrave;u</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Đối với những sản phẩm c&oacute; h&igrave;nh in n&ecirc;n lộn ngược v&agrave;o trong khi giặt để tr&aacute;nh bong ch&oacute;c v&agrave; giữ h&igrave;nh in được l&acirc;u hơn</span></p>\r\n\r\n<div id=\"simple-translate\">\r\n<div>\r\n<div class=\"isShow simple-translate-button\" style=\"background-image:url(&quot;chrome-extension://cllnohpbfenopiakdcjmjcbaeapmkcdl/icons/512.png&quot;); height:22px; left:361px; top:33px; width:22px\">&nbsp;</div>\r\n\r\n<div class=\"simple-translate-panel\" style=\"background-color:#ffffff; font-size:13px; height:200px; left:0px; top:0px; width:300px\">\r\n<div class=\"simple-translate-result-wrapper\" style=\"overflow:hidden\">\r\n<div class=\"simple-translate-move\">&nbsp;</div>\r\n\r\n<div class=\"simple-translate-result-contents\">\r\n<p dir=\"auto\">&nbsp;</p>\r\n\r\n<p dir=\"auto\">&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '285000', 'jacket564.jpeg', 0, NULL, NULL),
(9, 'Quần thun ống rộng có nút', 'quan-thun-ong-rong-co-nut', 2, 8, '<p><span style=\"font-size:18px\">Quần Ống Rộng Unisex ⚡ Quần Vải Ống Rộng ⚡ Quần Thể Thao Nữ⚡Th&ecirc;u Chữ C&oacute; D&acirc;y R&uacute;t Gấu Quần ⚡ Quần Thun D&agrave;i Umi M&aacute;t Mẻ</span></p>\r\n\r\n<p><span style=\"font-size:18px\">⚜️ TH&Ocirc;NG TIN SẢN PHẨM</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Chất liệu: Vải umi thể thao d&agrave;y dặn, chất co d&atilde;n thoải m&aacute;i, m&aacute;t mẻ</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Form quần rộng v&ocirc; c&ugrave;ng thoải m&aacute;i</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Gấu quần kiểu lai tưa, c&oacute; thể cắt gấu l&ecirc;n t&ugrave;y &yacute; th&iacute;ch mặc d&agrave;i hay ngắn để ph&ugrave; hợp với chiều cao từng người ạ.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Đường kim mũi chỉ cẩn thận, chắc chắn</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Sản phẩm cắt chỉ rất tỉ mỉ, gần như kh&ocirc;ng c&oacute; chỉ thừa</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Shop lu&ocirc;n bỏ sản phẩm ra kiểm tra lại trước khi đ&oacute;ng g&oacute;i (gần như rất rất &iacute;t đơn vị kh&aacute;c l&agrave;m c&ocirc;ng đoạn n&agrave;y) N&ecirc;n sản phẩm bạn nhận được gần như kh&ocirc;ng c&oacute; lỗi</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- H&igrave;nh chi tiết sản phẩm Shop tự chụp.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Shop đặt SX v&agrave; b&aacute;n tại KHO n&ecirc;n c&oacute; gi&aacute; cả tốt nhất v&agrave; ưu đ&atilde;i nhất ạ 😘</span></p>\r\n\r\n<p><span style=\"font-size:18px\">🌈 BẢNG SIZE</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Size M: từ 40 - 50kg, Cao 1m50 - 1m59 / d&agrave;i 93cm, eo 27</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Size L: từ 51 - 63kg , Cao 1m60 - 1m70 / d&agrave;i 96cm, eo 29 Size</span></p>\r\n\r\n<p><span style=\"font-size:18px\">XL: từ 64 - 80kg, Cao 1m71 &ndash; 1m80 / d&agrave;i 99 cm, eo 31</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Ngo&agrave;i c&acirc;n nặng v&agrave; chiều cao, Bạn tham khảo th&ecirc;m c&aacute;c số đo quần trong phần h&igrave;nh ảnh để lựa size chuẩn nhất ạ. Hoặc Inbox ngay cho shop để được tư vấn ch&iacute;nh x&aacute;c hơn ạ!</span></p>', '265000', 'quan49.webp', 0, NULL, NULL),
(10, 'Quần JOGGER', 'quan-jogger', 2, 8, '<p><span style=\"font-size:18px\">Quần Ống Rộng Unisex ⚡ Quần Vải Ống Rộng ⚡ Quần Thể Thao Nữ⚡Th&ecirc;u Chữ C&oacute; D&acirc;y R&uacute;t Gấu Quần ⚡ Quần Thun D&agrave;i Umi M&aacute;t Mẻ</span></p>\r\n\r\n<p><span style=\"font-size:18px\">⚜️ TH&Ocirc;NG TIN SẢN PHẨM</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Chất liệu: Vải umi thể thao d&agrave;y dặn, chất co d&atilde;n thoải m&aacute;i, m&aacute;t mẻ</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Form quần rộng v&ocirc; c&ugrave;ng thoải m&aacute;i</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Gấu quần kiểu lai tưa, c&oacute; thể cắt gấu l&ecirc;n t&ugrave;y &yacute; th&iacute;ch mặc d&agrave;i hay ngắn để ph&ugrave; hợp với chiều cao từng người ạ.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Đường kim mũi chỉ cẩn thận, chắc chắn</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Sản phẩm cắt chỉ rất tỉ mỉ, gần như kh&ocirc;ng c&oacute; chỉ thừa</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Shop lu&ocirc;n bỏ sản phẩm ra kiểm tra lại trước khi đ&oacute;ng g&oacute;i (gần như rất rất &iacute;t đơn vị kh&aacute;c l&agrave;m c&ocirc;ng đoạn n&agrave;y) N&ecirc;n sản phẩm bạn nhận được gần như kh&ocirc;ng c&oacute; lỗi</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- H&igrave;nh chi tiết sản phẩm Shop tự chụp.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Shop đặt SX v&agrave; b&aacute;n tại KHO n&ecirc;n c&oacute; gi&aacute; cả tốt nhất v&agrave; ưu đ&atilde;i nhất ạ 😘</span></p>\r\n\r\n<p><span style=\"font-size:18px\">🌈 BẢNG SIZE</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Size M: từ 40 - 50kg, Cao 1m50 - 1m59 / d&agrave;i 93cm, eo 27</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Size L: từ 51 - 63kg , Cao 1m60 - 1m70 / d&agrave;i 96cm, eo 29 Size</span></p>\r\n\r\n<p><span style=\"font-size:18px\">XL: từ 64 - 80kg, Cao 1m71 &ndash; 1m80 / d&agrave;i 99 cm, eo 31</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Ngo&agrave;i c&acirc;n nặng v&agrave; chiều cao, Bạn tham khảo th&ecirc;m c&aacute;c số đo quần trong phần h&igrave;nh ảnh để lựa size chuẩn nhất ạ. Hoặc Inbox ngay cho shop để được tư vấn ch&iacute;nh x&aacute;c hơn ạ!</span></p>', '205000', 'quan20.jpg', 0, NULL, NULL),
(11, 'Quần ulzzang', 'quan-ulzzang', 2, 4, '<p><span style=\"font-size:18px\">Quần Ống Rộng Unisex ⚡ Quần Vải Ống Rộng ⚡ Quần Thể Thao Nữ⚡Th&ecirc;u Chữ C&oacute; D&acirc;y R&uacute;t Gấu Quần ⚡ Quần Thun D&agrave;i Umi M&aacute;t Mẻ </span></p>\r\n\r\n<p><span style=\"font-size:18px\">⚜️ TH&Ocirc;NG TIN SẢN PHẨM </span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Chất liệu: Vải umi thể thao d&agrave;y dặn, chất co d&atilde;n thoải m&aacute;i, m&aacute;t mẻ </span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Form quần rộng v&ocirc; c&ugrave;ng thoải m&aacute;i </span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Gấu quần kiểu lai tưa, c&oacute; thể cắt gấu l&ecirc;n t&ugrave;y &yacute; th&iacute;ch mặc d&agrave;i hay ngắn để ph&ugrave; hợp với chiều cao từng người ạ.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Đường kim mũi chỉ cẩn thận, chắc chắn</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Sản phẩm cắt chỉ rất tỉ mỉ, gần như kh&ocirc;ng c&oacute; chỉ thừa</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Shop lu&ocirc;n bỏ sản phẩm ra kiểm tra lại trước khi đ&oacute;ng g&oacute;i (gần như rất rất &iacute;t đơn vị kh&aacute;c l&agrave;m c&ocirc;ng đoạn n&agrave;y) N&ecirc;n sản phẩm bạn nhận được gần như kh&ocirc;ng c&oacute; lỗi</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- H&igrave;nh chi tiết sản phẩm Shop tự chụp. </span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Shop đặt SX v&agrave; b&aacute;n tại KHO n&ecirc;n c&oacute; gi&aacute; cả tốt nhất v&agrave; ưu đ&atilde;i nhất ạ 😘 </span></p>\r\n\r\n<p><span style=\"font-size:18px\">🌈 BẢNG SIZE </span></p>\r\n\r\n<p><span style=\"font-size:18px\">Size M: từ 40 - 50kg, Cao 1m50 - 1m59 / d&agrave;i 93cm, eo 27 </span></p>\r\n\r\n<p><span style=\"font-size:18px\">Size L: từ 51 - 63kg , Cao 1m60 - 1m70 / d&agrave;i 96cm, eo 29 Size </span></p>\r\n\r\n<p><span style=\"font-size:18px\">XL: từ 64 - 80kg, Cao 1m71 &ndash; 1m80 / d&agrave;i 99 cm, eo 31 </span></p>\r\n\r\n<p><span style=\"font-size:18px\">Ngo&agrave;i c&acirc;n nặng v&agrave; chiều cao, Bạn tham khảo th&ecirc;m c&aacute;c số đo quần trong phần h&igrave;nh ảnh để lựa size chuẩn nhất ạ. Hoặc Inbox ngay cho shop để được tư vấn ch&iacute;nh x&aacute;c hơn ạ!</span></p>', '105000', 'quan331.jpeg', 0, NULL, NULL),
(12, 'Quần Yuni', 'quan-yuni', 2, 2, '<p><span style=\"font-size:18px\">Quần Ống Rộng Unisex ⚡ Quần Vải Ống Rộng ⚡ Quần Thể Thao Nữ⚡Th&ecirc;u Chữ C&oacute; D&acirc;y R&uacute;t Gấu Quần ⚡ Quần Thun D&agrave;i Umi M&aacute;t Mẻ</span></p>\r\n\r\n<p><span style=\"font-size:18px\">⚜️ TH&Ocirc;NG TIN SẢN PHẨM</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Chất liệu: Vải umi thể thao d&agrave;y dặn, chất co d&atilde;n thoải m&aacute;i, m&aacute;t mẻ</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Form quần rộng v&ocirc; c&ugrave;ng thoải m&aacute;i</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Gấu quần kiểu lai tưa, c&oacute; thể cắt gấu l&ecirc;n t&ugrave;y &yacute; th&iacute;ch mặc d&agrave;i hay ngắn để ph&ugrave; hợp với chiều cao từng người ạ.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Đường kim mũi chỉ cẩn thận, chắc chắn</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Sản phẩm cắt chỉ rất tỉ mỉ, gần như kh&ocirc;ng c&oacute; chỉ thừa</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Shop lu&ocirc;n bỏ sản phẩm ra kiểm tra lại trước khi đ&oacute;ng g&oacute;i (gần như rất rất &iacute;t đơn vị kh&aacute;c l&agrave;m c&ocirc;ng đoạn n&agrave;y) N&ecirc;n sản phẩm bạn nhận được gần như kh&ocirc;ng c&oacute; lỗi</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- H&igrave;nh chi tiết sản phẩm Shop tự chụp.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Shop đặt SX v&agrave; b&aacute;n tại KHO n&ecirc;n c&oacute; gi&aacute; cả tốt nhất v&agrave; ưu đ&atilde;i nhất ạ 😘</span></p>\r\n\r\n<p><span style=\"font-size:18px\">🌈 BẢNG SIZE</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Size M: từ 40 - 50kg, Cao 1m50 - 1m59 / d&agrave;i 93cm, eo 27</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Size L: từ 51 - 63kg , Cao 1m60 - 1m70 / d&agrave;i 96cm, eo 29 Size</span></p>\r\n\r\n<p><span style=\"font-size:18px\">XL: từ 64 - 80kg, Cao 1m71 &ndash; 1m80 / d&agrave;i 99 cm, eo 31</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Ngo&agrave;i c&acirc;n nặng v&agrave; chiều cao, Bạn tham khảo th&ecirc;m c&aacute;c số đo quần trong phần h&igrave;nh ảnh để lựa size chuẩn nhất ạ. Hoặc Inbox ngay cho shop để được tư vấn ch&iacute;nh x&aacute;c hơn ạ!</span></p>', '135000', 'quan458.jpeg', 0, NULL, NULL),
(13, 'Áo thun unsual orginal', 'ao-thun-unsual-orginal', 1, 6, '<p><span style=\"font-size:18px\">TH&Ocirc;NG TIN SẢN PHẨM:</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- T&ecirc;n sản phẩm: &Aacute;o thun form rộng tay lỡ</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Xuất sứ: Việt Nam - Chất liệu: 35% Cotton, 60% Polyester, 5% Spandex</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- D&agrave;y dặn, mềm mịn, co gi&atilde;n 4 chiều, kh&ocirc;ng x&ugrave;, kh&ocirc;ng nhăn, kh&ocirc;ng h&uacute;t bụi bẩn.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Size:</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ XS ( dưới 28kg, dưới 1m30 )</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ S ( 29 - 35kg, 1m31 - 1m41 )</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ M ( 36 - 44kg, 1m42 - 1m52 )</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ L ( 45 - 51kg, 1m53 - 1m59 )</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ XL ( 52 - 62kg, 1m60 - 1m69)</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ XXL ( tr&ecirc;n 63kg, tr&ecirc;n 1m70 )</span></p>\r\n\r\n<p><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ng&agrave;y n&agrave;y, &aacute;o thun tay lỡ Unisex form rộng đang ng&agrave;y c&agrave;ng trở n&ecirc;n phổ biến v&agrave; đa dạng với c&aacute;c mẫu thiết kế độc đ&aacute;o bắt mắt, thậm ch&iacute; c&ograve;n bắt kịp nhiều tr&agrave;o lưu xu hướng đặc biệt l&agrave; phong c&aacute;ch H&agrave;n Quốc. Do đ&oacute;, việc t&igrave;m hiểu tất tần tật về &aacute;o thun tay lỡ nam/nữ l&agrave; cần thiết gi&uacute;p bạn lu&ocirc;n cập nhật những mẫu thiết kế mới nhất. Điều n&agrave;y sẽ gi&uacute;p bạn c&oacute; nhiều sự lựa chọn mới mẻ v&agrave; đa dạng phong c&aacute;ch thời trang của bạn.</span></p>', '125000', 'aothun680.jpg', 0, NULL, NULL),
(14, 'Áo thun in gấu', 'ao-thun-in-gau', 1, 4, '<p><span style=\"font-size:18px\">TH&Ocirc;NG TIN SẢN PHẨM:</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- T&ecirc;n sản phẩm: &Aacute;o thun form rộng tay lỡ</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Xuất sứ: Việt Nam - Chất liệu: 35% Cotton, 60% Polyester, 5% Spandex</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- D&agrave;y dặn, mềm mịn, co gi&atilde;n 4 chiều, kh&ocirc;ng x&ugrave;, kh&ocirc;ng nhăn, kh&ocirc;ng h&uacute;t bụi bẩn.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Size:</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ XS ( dưới 28kg, dưới 1m30 )</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ S ( 29 - 35kg, 1m31 - 1m41 )</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ M ( 36 - 44kg, 1m42 - 1m52 )</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ L ( 45 - 51kg, 1m53 - 1m59 )</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ XL ( 52 - 62kg, 1m60 - 1m69)</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ XXL ( tr&ecirc;n 63kg, tr&ecirc;n 1m70 )</span></p>\r\n\r\n<p><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ng&agrave;y n&agrave;y, &aacute;o thun tay lỡ Unisex form rộng đang ng&agrave;y c&agrave;ng trở n&ecirc;n phổ biến v&agrave; đa dạng với c&aacute;c mẫu thiết kế độc đ&aacute;o bắt mắt, thậm ch&iacute; c&ograve;n bắt kịp nhiều tr&agrave;o lưu xu hướng đặc biệt l&agrave; phong c&aacute;ch H&agrave;n Quốc. Do đ&oacute;, việc t&igrave;m hiểu tất tần tật về &aacute;o thun tay lỡ nam/nữ l&agrave; cần thiết gi&uacute;p bạn lu&ocirc;n cập nhật những mẫu thiết kế mới nhất. Điều n&agrave;y sẽ gi&uacute;p bạn c&oacute; nhiều sự lựa chọn mới mẻ v&agrave; đa dạng phong c&aacute;ch thời trang của bạn.</span></p>', '110000', 'aothun599.jpeg', 0, NULL, NULL),
(15, 'Áo thun ANFORK', 'ao-thun-anfork', 1, 7, '<p><span style=\"font-size:18px\">TH&Ocirc;NG TIN SẢN PHẨM:</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- T&ecirc;n sản phẩm: &Aacute;o thun form rộng tay lỡ</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Xuất sứ: Việt Nam - Chất liệu: 35% Cotton, 60% Polyester, 5% Spandex</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- D&agrave;y dặn, mềm mịn, co gi&atilde;n 4 chiều, kh&ocirc;ng x&ugrave;, kh&ocirc;ng nhăn, kh&ocirc;ng h&uacute;t bụi bẩn.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Size:</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ XS ( dưới 28kg, dưới 1m30 )</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ S ( 29 - 35kg, 1m31 - 1m41 )</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ M ( 36 - 44kg, 1m42 - 1m52 )</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ L ( 45 - 51kg, 1m53 - 1m59 )</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ XL ( 52 - 62kg, 1m60 - 1m69)</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ XXL ( tr&ecirc;n 63kg, tr&ecirc;n 1m70 )</span></p>\r\n\r\n<p><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ng&agrave;y n&agrave;y, &aacute;o thun tay lỡ Unisex form rộng đang ng&agrave;y c&agrave;ng trở n&ecirc;n phổ biến v&agrave; đa dạng với c&aacute;c mẫu thiết kế độc đ&aacute;o bắt mắt, thậm ch&iacute; c&ograve;n bắt kịp nhiều tr&agrave;o lưu xu hướng đặc biệt l&agrave; phong c&aacute;ch H&agrave;n Quốc. Do đ&oacute;, việc t&igrave;m hiểu tất tần tật về &aacute;o thun tay lỡ nam/nữ l&agrave; cần thiết gi&uacute;p bạn lu&ocirc;n cập nhật những mẫu thiết kế mới nhất. Điều n&agrave;y sẽ gi&uacute;p bạn c&oacute; nhiều sự lựa chọn mới mẻ v&agrave; đa dạng phong c&aacute;ch thời trang của bạn.</span></p>', '210000', 'aothun460.jpg', 0, NULL, NULL),
(17, 'Áo hoodie in chữ everse', 'ao-hoodie-in-chu-everse', 4, 1, '<p><span style=\"font-size:18px\">* Chi tiết sản phẩm &Aacute;o Kho&aacute;c</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Ch&acirc;t vải Thun G&acirc;n d&agrave;y dặn,co gi&atilde;n tốt v&agrave; quan trọng độ bền m&agrave;u cao</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Giặt ko đổ l&ocirc;ng hay bay m&agrave;u, thấm h&uacute;t mồ h&ocirc;i v&agrave; thoải m&aacute;i ko g&ograve; b&oacute; khi vận động</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Thiệt kế cấu tr&uacute;c lỗ tho&aacute;ng, mắt vải mịn gi&uacute;p t&ocirc;n d&aacute;ng cho người mặc</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Sản xuất : Việt Nam</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Sản phẩm được đ&oacute;ng g&oacute;i bằng Hộp hay T&uacute;i Ni&ecirc;m Phong c&oacute; in logo ri&ecirc;ng biệt của&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:18px\">M&agrave;u sắc &amp; k&iacute;ch cỡ &Aacute;o Kho&aacute;c : form &aacute;o Regular Fit thoải m&aacute;i ko g&ograve; b&oacute; khi vận động tạo n&ecirc;n sự nặng động, trẻ trung,...</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ &Aacute;o c&oacute; 3 m&agrave;u: X&aacute;m - Đen - R&ecirc;u</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ &Aacute;o c&oacute; 4 size : S M L XL</span></p>\r\n\r\n<p><span style=\"font-size:18px\">S dưới 1m72 dưới 64kg</span></p>\r\n\r\n<p><span style=\"font-size:18px\">M 1m6 - 1m8 65 - 72kg</span></p>\r\n\r\n<p><span style=\"font-size:18px\">L 1m65 - 1m85 73 - 80kg</span></p>\r\n\r\n<p><span style=\"font-size:18px\">XL 1m68 - 1m88 80 - 88kg</span></p>\r\n\r\n<p><span style=\"font-size:18px\">* Hướng dẫn sử dụng v&agrave; bảo quản &Aacute;o Kho&aacute;c Nam SOMEHOW :</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Giặt ở nhiệt độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Hạn chế sử dụng m&aacute;y sấy v&agrave; ủi ở nhiệt độ th&iacute;ch hợp.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Lộn mặt tr&aacute;i khi phơi tr&aacute;nh bị phai m&agrave;u</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Đối với những sản phẩm c&oacute; h&igrave;nh in n&ecirc;n lộn ngược v&agrave;o trong khi giặt để tr&aacute;nh bong ch&oacute;c v&agrave; giữ h&igrave;nh in được l&acirc;u hơn</span></p>', '215000', 'hoodie331.jpg', 0, NULL, NULL),
(19, 'Áo hoodie unisex', 'ao-hoodie-unisex', 4, 5, '<p><span style=\"font-size:18px\">* Chi tiết sản phẩm &Aacute;o Kho&aacute;c </span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Ch&acirc;t vải Thun G&acirc;n d&agrave;y dặn,co gi&atilde;n tốt v&agrave; quan trọng độ bền m&agrave;u cao </span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Giặt ko đổ l&ocirc;ng hay bay m&agrave;u, thấm h&uacute;t mồ h&ocirc;i v&agrave; thoải m&aacute;i ko g&ograve; b&oacute; khi vận động </span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Thiệt kế cấu tr&uacute;c lỗ tho&aacute;ng, mắt vải mịn gi&uacute;p t&ocirc;n d&aacute;ng cho người mặc </span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Sản xuất : Việt Nam </span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Sản phẩm được đ&oacute;ng g&oacute;i bằng Hộp hay T&uacute;i Ni&ecirc;m Phong c&oacute; in logo ri&ecirc;ng biệt của&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:18px\">M&agrave;u sắc &amp; k&iacute;ch cỡ &Aacute;o Kho&aacute;c : form &aacute;o Regular Fit thoải m&aacute;i ko g&ograve; b&oacute; khi vận động tạo n&ecirc;n sự nặng động, trẻ trung,... </span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ &Aacute;o c&oacute; 3 m&agrave;u: X&aacute;m - Đen - R&ecirc;u </span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ &Aacute;o c&oacute; 4 size : S M L XL </span></p>\r\n\r\n<p><span style=\"font-size:18px\">S dưới 1m72 dưới 64kg </span></p>\r\n\r\n<p><span style=\"font-size:18px\">M 1m6 - 1m8 65 - 72kg </span></p>\r\n\r\n<p><span style=\"font-size:18px\">L 1m65 - 1m85 73 - 80kg </span></p>\r\n\r\n<p><span style=\"font-size:18px\">XL 1m68 - 1m88 80 - 88kg </span></p>\r\n\r\n<p><span style=\"font-size:18px\">* Hướng dẫn sử dụng v&agrave; bảo quản &Aacute;o Kho&aacute;c Nam SOMEHOW : </span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Giặt ở nhiệt độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự. </span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy. </span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Hạn chế sử dụng m&aacute;y sấy v&agrave; ủi ở nhiệt độ th&iacute;ch hợp. </span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Lộn mặt tr&aacute;i khi phơi tr&aacute;nh bị phai m&agrave;u </span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Đối với những sản phẩm c&oacute; h&igrave;nh in n&ecirc;n lộn ngược v&agrave;o trong khi giặt để tr&aacute;nh bong ch&oacute;c v&agrave; giữ h&igrave;nh in được l&acirc;u hơn</span></p>', '205000', 'hoodie640.jpeg', 0, NULL, NULL),
(21, 'Áo sơ mi loang màu Unisex', 'ao-so-mi-loang-mau-unisex', 5, 8, '<p><span style=\"font-size:18px\">T&ecirc;n sản phẩm: &Aacute;O SƠ MI FORM RỘNG (&Aacute;o sơ mi oversize) </span></p>\r\n\r\n<p><span style=\"font-size:18px\">Chất liệu: LỤA </span></p>\r\n\r\n<p><span style=\"font-size:18px\">M&agrave;u sắc: Đa dạng, phong ph&uacute; </span></p>\r\n\r\n<p><span style=\"font-size:18px\">From unisex 40 - 65kg </span></p>\r\n\r\n<p><span style=\"font-size:18px\">Size: Freesize</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t. </span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Được giặt m&aacute;y v&agrave; giặt tay</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Kh&ocirc;ng sử dụng thuốc tẩy</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Kh&ocirc;ng sử dụng b&agrave;n chải khi giặt </span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Giặt mặt tr&aacute;i, nhẹ tay, giặt xong phơi ngay, kh&ocirc;ng ng&acirc;m trong nước qu&aacute; l&acirc;u. </span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Lần đầu ti&ecirc;n giặt n&ecirc;n giặt ri&ecirc;ng với c&aacute;c loại quần &aacute;o m&agrave;u s&aacute;ng để tr&aacute;nh trường hợp ra m&agrave;u</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Lần thứ hai giặt b&igrave;nh thường </span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Hạn chế ch&agrave; s&aacute;t khu vực h&igrave;nh in từ 1-3 lần giặt đầu ti&ecirc;n</span></p>', '200000', 'somiloangmau91.jpg', 0, NULL, NULL),
(22, 'Dr.Martens Black', 'drmartens-black', 3, 2, '<p>💥 TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<p>✔️ Đến với Shop bạn ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m h&agrave;ng đảm bảo chất lượng, tốt nhất trong tầm gi&aacute;.( kh&ocirc;ng c&oacute; h&agrave;ng lỗi, h&agrave;ng thứ cấp )</p>\r\n\r\n<p>✔️ Chất liệu: Gi&agrave;y được l&agrave;m từ Vải sợi tho&aacute;ng kh&iacute; bền đẹp theo thời gian</p>\r\n\r\n<p>✔️ Đế gi&agrave;y được l&agrave;m bằng chất liệu cao su đ&uacute;c nguy&ecirc;n khối chắc chắn c&oacute; khắc họa tiết để tăng độ ma s&aacute;t, chống trơn trượt.</p>\r\n\r\n<p>✔️ M&agrave;u sắc: đen</p>\r\n\r\n<p>✔️ Size: 39-43</p>\r\n\r\n<p>💥 ĐẶC ĐIỂM SẢN PHẨM</p>\r\n\r\n<p>✔️ Gi&agrave;y dễ phối đồ th&iacute;ch hợp cho c&aacute;c hoạt động đi lại h&agrave;ng ng&agrave;y, chạy bộ</p>\r\n\r\n<p>✔️ Mũi Gi&agrave;y tr&ograve;n, đế cao su tổng hợp, xẻ r&atilde;nh tạo cảm gi&aacute;c thoải m&aacute;i khi đi</p>\r\n\r\n<p>✔️ Th&iacute;ch hợp với c&aacute;c m&ugrave;a trong năm: Xu&acirc;n - H&egrave; - Thu - Đ&ocirc;ng</p>\r\n\r\n<p>💥 HƯỚNG DẪN BẢO QUẢN</p>\r\n\r\n<p>✔️ Để gi&agrave;y ở nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t để giữ gi&agrave;y được bền đẹp hơn</p>\r\n\r\n<p>✔️ Vệ sinh gi&agrave;y, d&ugrave;ng khăn hay b&agrave;n trải l&ocirc;ng mềm để chải sạch gi&agrave;y c&ugrave;ng với nước tẩy rửa gi&agrave;y chuy&ecirc;n dụng với da hay da Pu</p>\r\n\r\n<p>✔️ C&oacute; thể giặt gi&agrave;y c&ugrave;ng với chất tẩy rửa nhẹ</p>\r\n\r\n<p>❌ KHUYẾN C&Aacute;O</p>\r\n\r\n<p>⛔ Kh&ocirc;ng d&ugrave;ng h&oacute;a chất hay bột giặt c&oacute; hoạt t&iacute;nh tẩy rửa mạnh</p>\r\n\r\n<p>⛔ Kh&ocirc;ng d&ugrave;ng b&agrave;n chải cứng để vệ sinh gi&agrave;y sẽ l&agrave;m hư</p>\r\n\r\n<p>⛔ Kh&ocirc;ng đi mưa ng&acirc;m nước l&acirc;u, kh&ocirc;ng phơi gi&agrave;y trực tiếp dưới ngo&agrave;i trời nắng gắt</p>\r\n\r\n<div id=\"simple-translate\">\r\n<div>\r\n<div class=\"isShow simple-translate-button\" style=\"background-image:url(&quot;chrome-extension://cllnohpbfenopiakdcjmjcbaeapmkcdl/icons/512.png&quot;); height:22px; left:14px; top:38px; width:22px\">&nbsp;</div>\r\n\r\n<div class=\"simple-translate-panel\" style=\"background-color:#ffffff; font-size:13px; height:200px; left:0px; top:0px; width:300px\">\r\n<div class=\"simple-translate-result-wrapper\" style=\"overflow:hidden\">\r\n<div class=\"simple-translate-move\">&nbsp;</div>\r\n\r\n<div class=\"simple-translate-result-contents\">\r\n<p dir=\"auto\">&nbsp;</p>\r\n\r\n<p dir=\"auto\">&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '335000', 'giay176.jpg', 0, NULL, NULL),
(25, 'Giày Dr.martens', 'giay-drmartens', 3, 7, '<p><span style=\"font-size:18px\">💥 TH&Ocirc;NG TIN SẢN PHẨM </span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔️ Đến với Shop bạn ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m h&agrave;ng đảm bảo chất lượng, tốt nhất trong tầm gi&aacute;.( kh&ocirc;ng c&oacute; h&agrave;ng lỗi, h&agrave;ng thứ cấp ) </span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔️ Chất liệu: Gi&agrave;y được l&agrave;m từ Vải sợi tho&aacute;ng kh&iacute; bền đẹp theo thời gian </span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔️ Đế gi&agrave;y được l&agrave;m bằng chất liệu cao su đ&uacute;c nguy&ecirc;n khối chắc chắn c&oacute; khắc họa tiết để tăng độ ma s&aacute;t, chống trơn trượt. </span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔️ M&agrave;u sắc: đen</span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔️ Size: 39-43 </span></p>\r\n\r\n<p><span style=\"font-size:18px\">💥 ĐẶC ĐIỂM SẢN PHẨM </span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔️ Gi&agrave;y dễ phối đồ th&iacute;ch hợp cho c&aacute;c hoạt động đi lại h&agrave;ng ng&agrave;y, chạy bộ </span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔️ Mũi Gi&agrave;y tr&ograve;n, đế cao su tổng hợp, xẻ r&atilde;nh tạo cảm gi&aacute;c thoải m&aacute;i khi đi </span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔️ Th&iacute;ch hợp với c&aacute;c m&ugrave;a trong năm: Xu&acirc;n - H&egrave; - Thu - Đ&ocirc;ng </span></p>\r\n\r\n<p><span style=\"font-size:18px\">💥 HƯỚNG DẪN BẢO QUẢN </span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔️ Để gi&agrave;y ở nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t để giữ gi&agrave;y được bền đẹp hơn </span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔️ Vệ sinh gi&agrave;y, d&ugrave;ng khăn hay b&agrave;n trải l&ocirc;ng mềm để chải sạch gi&agrave;y c&ugrave;ng với nước tẩy rửa gi&agrave;y chuy&ecirc;n dụng với da hay da Pu </span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔️ C&oacute; thể giặt gi&agrave;y c&ugrave;ng với chất tẩy rửa nhẹ </span></p>\r\n\r\n<p><span style=\"font-size:18px\">❌ KHUYẾN C&Aacute;O </span></p>\r\n\r\n<p><span style=\"font-size:18px\">⛔ Kh&ocirc;ng d&ugrave;ng h&oacute;a chất hay bột giặt c&oacute; hoạt t&iacute;nh tẩy rửa mạnh </span></p>\r\n\r\n<p><span style=\"font-size:18px\">⛔ Kh&ocirc;ng d&ugrave;ng b&agrave;n chải cứng để vệ sinh gi&agrave;y sẽ l&agrave;m hư </span></p>\r\n\r\n<p><span style=\"font-size:18px\">⛔ Kh&ocirc;ng đi mưa ng&acirc;m nước l&acirc;u, kh&ocirc;ng phơi gi&agrave;y trực tiếp dưới ngo&agrave;i trời nắng gắt</span></p>', '485000', 'giay452.jpg', 0, NULL, NULL),
(27, 'Giày adidas', 'giay-adidas', 3, 6, '<p><span style=\"font-size:18px\">CAM KẾT </span></p>\r\n\r\n<p><span style=\"font-size:18px\">⛔ H&agrave;ng giống h&igrave;nh 100 %, bảo h&agrave;nh sản phẩm 6 th&aacute;ng, lỗi 1 đổi 1(free ship đổi trả)</span></p>\r\n\r\n<p><span style=\"font-size:18px\">⛔ Đổi ngay đ&ocirc;i mới nếu h&agrave;ng bị lỗi do sản xuất, đổi size ngay nếu shop gửi kh&ocirc;ng đ&uacute;ng size. </span></p>\r\n\r\n<p><span style=\"font-size:18px\">⛔ Giao h&agrave;ng si&ecirc;u tốc( nội th&agrave;nh h&agrave; nội 6-12h, giao tỉnh 1-3 ng&agrave;y t&ugrave;y gần xa)</span></p>\r\n\r\n<p><span style=\"font-size:18px\">🌟Th&ocirc;ng tin sản phẩm:</span></p>\r\n\r\n<p><span style=\"font-size:18px\">------&gt; Size 36-37-38-39-40-41-42-43 </span></p>\r\n\r\n<p><span style=\"font-size:18px\">------&gt; FULL BOX, bao kiểm tra chất lượng.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">------&gt; Kiểu giầy kinh điển rất &ecirc;m khi mang</span></p>\r\n\r\n<p><span style=\"font-size:18px\">------&gt; Giầy c&oacute; Chất liệu đế l&agrave;m từ cao si&ecirc;u bền, c&oacute; độ b&aacute;m tốt, th&acirc;n giầy l&agrave;m bằng vải cao cấp, dệt c&ocirc;ng nghệ cao tho&aacute;t ẩm tốt, độ bền cao</span></p>\r\n\r\n<p><span style=\"font-size:18px\">------&gt; Với mẫu thiết kế mới đang rất được y&ecirc;u th&iacute;ch, kiểu d&aacute;ng thể thao, si&ecirc;u &ecirc;m, đế trợ lực, tho&aacute;ng kh&iacute;, rất thoải m&aacute;i khi mang, phối m&agrave;u h&agrave;i h&ograve;a bắt mắt rất thời trang v&agrave; dễ phối đồ. Ph&ugrave; hợp cho mọi lứa tuổi.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">--------&gt; Form &ocirc;m ch&acirc;n, rất thời trang , độ b&aacute;m tốt, mang kh&ocirc;ng bị hầm b&iacute;. 🌟 Bảo quản sản phẩm</span></p>\r\n\r\n<p><span style=\"font-size:18px\">--------&gt; Tr&aacute;nh để giầy bị thấm nước, khi giặt sử dụng b&agrave;n chải mềm ch&agrave; nhẹ.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">--------&gt; Kh&ocirc;ng phơi giầy trực tiếp dưới nắng</span></p>\r\n\r\n<p><span style=\"font-size:18px\">--------&gt; Kh&ocirc;ng n&ecirc;n ng&acirc;m giầy trong x&agrave; ph&ograve;ng</span></p>', '325000', 'adidas38.jpg', 0, NULL, NULL),
(28, 'Quần Jeans ống rộng', 'quan-jeans-ong-rong', 2, 1, '<p><span style=\"font-size:18px\">⭐⭐⭐⭐⭐ CAM KẾT H&Agrave;NG NHƯ H&Igrave;NH CHỤP - HO&Agrave;N TIỀN NẾU THẤY KH&Ocirc;NG H&Agrave;I L&Ograve;NG. ✔️ </span></p>\r\n\r\n<p><span style=\"font-size:18px\">⭐⭐⭐⭐⭐ H&Atilde;Y INBOX CHO SHOP KHI SẢN PHẨM C&Oacute; VẤN ĐỀ ( ĐỔI SIZE, SP BỊ LỖI...) ĐỂ HỖ TRỢ TRƯỚC KHI Đ&Aacute;NH GI&Aacute;.✔️ ✔️Đ&acirc;y l&agrave; một trong những chiếc quần jean hot nhất hiện nay đ&aacute;ng để sở hữu. Phong c&aacute;ch H&agrave;n Quốc đơn giản ph&ugrave; hợp trong mọi ho&agrave;n cảnh v&agrave; đối tượng gặp gỡ. Quần c&oacute; m&agrave;u xanh bắt mắt, thể hiện sự trẻ trung v&agrave; lịch l&atilde;m. </span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔️ C&aacute;c mẫu jean mang vẻ đẹp t&iacute;nh tế v&agrave; hiện đại </span></p>\r\n\r\n<p><span style=\"font-size:18px\">Size S : C&acirc;n nặng 41- 46kg, cao 1m57 - 1m62</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Size M : C&acirc;n nặng 47- 56kg, cao 1m60 - 1m75 </span></p>\r\n\r\n<p><span style=\"font-size:18px\">Size L : C&acirc;n nặng 57 - 62kg, cao 1m64 - 1m78 </span></p>\r\n\r\n<p><span style=\"font-size:18px\">Size XL : C&acirc;n nặng 62- 70kg, cao 1m67 - 1m80 </span></p>\r\n\r\n<p><span style=\"font-size:18px\">size XXL : 72-85kg.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔️ Th&ocirc;ng Tin Sản Phẩm: </span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Kiểu D&aacute;ng: quần jean baggy d&agrave;nh cho nam </span></p>\r\n\r\n<p><span style=\"font-size:18px\">- M&agrave;u Sắc: Xanh</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Chất liệu: jean cao cấp, kh&ocirc;ng phai m&agrave;u</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Số lượng : h&agrave;ng đủ size , xuất khẩu</span></p>\r\n\r\n<p><span style=\"font-size:18px\">(FILE ẢNH GỐC TR&Ecirc;N) </span></p>\r\n\r\n<p><span style=\"font-size:18px\">#quan_baggy #quan_baggy_nam #quan_baggy_nua #quan_jeans_baggy #quan_bo_baggy #quan_baggy_jean #quan_baggy_jean #baggy_nam #quan_jeans_baggy_nu #quạn_jean_baggy_nu #quan_tay_baggy #quan_jean_baggy_nam #quan_jeans_baggy_nam #quan_baggy_ong_rong #baggy_nu #quan_baggy_nam_ong_rong #baggy_jean_nam #baggy_jeans_nam</span></p>', '422000', 'quanjean69.jpeg', 1, NULL, NULL);
INSERT INTO `tbl_product` (`product_id`, `product_name`, `meta_keywords`, `category_id`, `brand_id`, `product_desc`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(29, 'Áo thun form rộng Nhật Bản', 'ao-thun-form-rong-nhat-ban', 1, 7, '<p>🆘 📛📣📣📣 &Aacute;O Anime MAnga IN H&Igrave;NH THEO Y&Ecirc;U CẦU 📣📣📣</p>\r\n\r\n<p>M&Ocirc; TẢ SẢN PHẨM : &Aacute;O Manga - &Aacute;O ANIME CỰC ĐỘC</p>\r\n\r\n<p>☑️ Chất liệu: &aacute;o thun co gi&atilde;n 4 chiều.</p>\r\n\r\n<p>☑️ H&igrave;nh in chuyển nhiệt Kh&ocirc;ng bong tr&oacute;c.</p>\r\n\r\n<p>☑️ Tạo sự kh&aacute;c biệt, thể hiện c&aacute; t&iacute;nh v&agrave; đầy phong c&aacute;ch.</p>\r\n\r\n<p>☑️ C&oacute; thể mặc đi chơi c&ugrave;ng bạn b&egrave;, c&ugrave;ng team&hellip;</p>\r\n\r\n<p>☑️ Nam &amp; Nữ đều mặc được. ------------------------</p>\r\n\r\n<p>✔️Bảng size &aacute;o One Piece tại shop : Lưu &yacute;: c&aacute;c size phụ thuộc cả chiều cao v&agrave; c&acirc;n nặng cho n&ecirc;n rất mong c&aacute;c bạn để lại chiều cao c&acirc;n nặng ch&iacute;nh x&aacute;c v&agrave; sở th&iacute;ch mặc &ocirc;m hay thoải m&aacute;i cho shop trong qu&aacute; tr&igrave;nh đặt h&agrave;ng để chọn size ưng &yacute; nh&eacute;!</p>\r\n\r\n<p>Size:S, M, L, XL,XXL,XXXL</p>\r\n\r\n<p>SIze S: Khoảng dưới 40kg</p>\r\n\r\n<p>Size M: khoảng dưới 55kg</p>\r\n\r\n<p>Size L khoảng 55- 62kg</p>\r\n\r\n<p>Size XL khoảng 62-75kg</p>\r\n\r\n<p>Size XXL khoảng 75-90kg</p>\r\n\r\n<p>Size XXXL khoảng 90-120kg</p>\r\n\r\n<p>CAM KẾT VỚI KH&Aacute;CH H&Agrave;NG: &Aacute;O ONE PIECE</p>\r\n\r\n<p>☑️ H&agrave;ng chuẩn 100% ☑️ 1 đổi 1 Nếu sản phẩm bị lỗi ☑️ Bảo h&agrave;nh h&igrave;nh in 10 năm</p>', '135000', 'aothun288.jpeg', 0, NULL, NULL),
(30, 'Áo hoodie trơn nữ', 'ao-hoodie-tron-nu', 4, 8, '<p><span style=\"font-size:18px\">Sản phẩm Kho&aacute;c tay d&agrave;i c&oacute; n&oacute;n trơn ulzzang thời trang nữ Fm Style SaiGon </span></p>\r\n\r\n<p><span style=\"font-size:18px\">Mua đồ tại Fmstyle Saigon c&oacute; y&ecirc;n t&acirc;m kh&ocirc;ng?</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Fmstyle Saigon cam kết 100% h&igrave;nh ảnh sản phẩm l&agrave; ảnh thật do shop tự chụp v&agrave; giữ bản quyền h&igrave;nh ảnh</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Sản phẩm được kiểm tra kĩ c&agrave;ng, cẩn thận v&agrave; tư vấn nhiệt t&igrave;nh trước khi g&oacute;i h&agrave;ng giao cho Qu&yacute; Kh&aacute;ch - H&agrave;ng c&oacute; sẵn, giao h&agrave;ng ngay khi nhận được đơn</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Cam kết 100% đổi Size nếu sản phẩm kh&aacute;ch đặt kh&ocirc;ng vừa BẢNG SIZE Chiều d&agrave;i &aacute;o 49cm </span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Tay d&agrave;i 64cm - Ống tay 11cm Lưu &yacute; 1 t&iacute; ạ: Số đo n&agrave;y mọi người tự ướm l&ecirc;n quần &aacute;o của ch&iacute;nh m&igrave;nh đang mặc vừa để chọn size ph&ugrave; hợp chứ đừng nh&acirc;n đ&ocirc;i l&ecirc;n nha. Ch&ecirc;nh lệch 1,2cm vẫn oke nh&eacute; </span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔ CH&Iacute;NH S&Aacute;CH ĐỔI H&Agrave;NG:</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Đổi 1:1 cho kh&aacute;ch nếu ph&aacute;t sinh lỗi của nh&agrave; sản xuất hoặc lỗi do shop - Thời gian đổi h&agrave;ng trong v&ograve;ng 05 ng&agrave;y kể từ ng&agrave;y nhận h&agrave;ng - H&agrave;ng đổi phải c&ograve;n nguy&ecirc;n tem, nh&atilde;n m&aacute;c, chưa qua sử dụng</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Sản phẩm đổi phải c&oacute; gi&aacute; trị tương đương hoặc cao hơn gi&aacute; trị h&agrave;ng đ&atilde; mua trước đ&oacute;. </span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Trường hợp được chấp nhận: </span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ H&agrave;ng kh&ocirc;ng đ&uacute;ng size, kiểu d&aacute;ng như qu&yacute; kh&aacute;ch đặt h&agrave;ng </span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Kh&ocirc;ng đủ số lượng như trong đơn h&agrave;ng </span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔ Do m&agrave;n h&igrave;nh kh&aacute;c nhau v&agrave; hiệu ứng &aacute;nh s&aacute;ng, m&agrave;u sắc thực tế sản phẩm sẽ kh&aacute;c so với h&igrave;nh ảnh, vui l&ograve;ng lấy sản phẩm thật l&agrave;m ti&ecirc;u chuẩn </span></p>\r\n\r\n<p><span style=\"font-size:18px\">✔ Xin h&atilde;y tin rằng Xốp sẽ nỗ lực hết sức để hỗ trợ bạn khi c&oacute; vấn đề về h&agrave;ng h&oacute;a , v&igrave; vậy h&atilde;y để lại cho tụi m&igrave;nh mức đ&aacute;nh gi&aacute; tốt bạn nh&eacute;</span></p>\r\n\r\n<p><span style=\"font-size:18px\">#&aacute;o #kho&aacute;c #thun #croptop #nữ #c&oacute;_n&oacute;n #gấu_r&uacute;t #thời_trang_nữ #nu #fmstyle #saigon #khoac #ulzzang #ao #chống_nắng</span></p>', '205000', 'hoodie598.jpg', 0, NULL, NULL),
(31, 'giày Sandal', 'giay-sandal', 3, 4, '<p><span style=\"font-size:18px\">✅ H&Agrave;NG LU&Ocirc;N LU&Ocirc;N C&Oacute; SẴN ✅ </span></p>\r\n\r\n<p><span style=\"font-size:18px\">🔥 Địa chỉ 1: 391/4 Trần Hưng Đạo, P. Cầu Kho, Quận 1, TP.HCM. </span></p>\r\n\r\n<p><span style=\"font-size:18px\">🔥 Địa chỉ 2: 553 Nguyễn Đ&igrave;nh Chiểu, P2, Q3. </span></p>\r\n\r\n<p><span style=\"font-size:18px\">🌵 Mở cửa mỗi ng&agrave;y : 9:30 am - 9:30 pm. </span></p>\r\n\r\n<p><span style=\"font-size:18px\">🌵 Nhận ship COD to&agrave;n quốc. . </span></p>\r\n\r\n<p><span style=\"font-size:18px\">🎁 FREESHIP TO&Agrave;N QUỐC VỚI HO&Aacute; ĐƠN TR&Ecirc;N 🎁 </span></p>\r\n\r\n<p><span style=\"font-size:18px\">🌵Sản phẩm được bảo h&agrave;nh keo #3th&aacute;ng. Sau #3th&aacute;ng, bảo h&agrave;nh sẽ t&iacute;nh ph&iacute; 20-30k. </span></p>\r\n\r\n<p><span style=\"font-size:18px\">CHUY&Ecirc;N SỈ GI&Agrave;Y : sỉ order - bỏ bu&ocirc;n - sỉ shop số lượng lớn.</span></p>', '275000', 'giay777.webp', 0, NULL, NULL),
(32, 'Giày Ulzzang nữ', 'giay-ulzzang-nu', 3, 6, '<p><span style=\"font-size:18px\">Giày nữ đi học đế cao 3 phân ulzzang đẹp BRATINA SD001 </span></p>\r\n\r\n<p><span style=\"font-size:18px\">LƯU &Yacute;: FORM GI&Agrave;Y CHUẨN N&Ecirc;N B&Igrave;NH THƯỜNG B ĐI SIZE N&Agrave;O B CHỌN SIZE Đ&Oacute; NHA 😍 size: 36/37-40/41 Màu sắc: Đen - Kem- Xanh </span></p>\r\n\r\n<p><span style=\"font-size:18px\">size: 36/37 - 40/41 size 36/37 phù hợp với chân 35/36/37 </span></p>\r\n\r\n<p><span style=\"font-size:18px\">size 38/39 phù hợp với chân 38/39 </span></p>\r\n\r\n<p><span style=\"font-size:18px\">size 40/41 phù hợp với chân 40/41 </span></p>\r\n\r\n<p><span style=\"font-size:18px\">Chất liệu: chất liệu tổng hợp </span></p>\r\n\r\n<p><span style=\"font-size:18px\">Sỉ zalo: 0902.166.790 / 0934.582.229 </span></p>\r\n\r\n<p><span style=\"font-size:18px\">Sandal nữ không những là đồ thời trang quan trọng mà còn thể hiện được phong cách thời trang của người sở hữu nó. Hãy chọn cho mình 1 đôi giày sandal nữ đẹp nhất nhé! Trong thế giới thời trang của phái đẹp thì giày sandal nữ luôn chiếm một vị trí quan trọng. Từ những cô nàng bình thường nhất cho tới những ngôi sao hàng đầu, tất cả đều chia sẻ một tình yêu vĩ đại với những đôi giày quai hậu nữ, như một vật bất ly thân khi phái đẹp đi làm, tham dự sự kiện, hay thậm chí là đi chơi, đi du lịch, đi biển. Việc chọn lựa những đôi giày sandal nữ đẹp hợp dáng người, hợp màu sắc sẽ làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện. Tuy nhiên, không phải ai cũng biết chọn một đôi sandal nữ thực sự phù hợp với phom cơ thể của mình. Mang tới cho các cô nàng sự thoải mái khi đi dạo phố hoặc hẹn hò bè bạn, BRATINA sẽ giúp bạn lựa chọn những đôi dép sandal nữ phù hợp nhất với những trang phục và dáng người của bạn.Chúng có sự đa dạng từ kiểu cách tới màu sắc, size&hellip;tùy theo nhu cầu của mình mà các nàng lựa chọn một sản phẩm thích hợp. Và nếu bạn cũng đang đi tìm một đôi giày sandal nữ đi học đẹp để thể thể hiện được cá tính của bản thân một cách rõ nét nhất và đang... lạc lối, thì hãy cùng khám phá và cảm nhận những nét đẹp và quyến rũ của đôi sandal nữ đi học đế cao 3 phân Tawana mà Jaenia mang lại. Luôn là nơi cập nhật những xu hướng sandal nữ ulzzang đẹp nhất mới nhất BRATINA STORE đã khẳng định vị trí của mình với nhiều bạn trẻ bởi phong cách thời trang sang trọng, thanh lịch nhưng không thiếu sự năng động và cá tính. Khéo léo kết hợp trang phục cùng phụ kiện, bạn dễ dàng mang lại một set đồ hài hòa, thể hiện được cá tính riêng của bạn #sandalnu #sandalnudihoc #sandalnudebet #sandalnu3phan #sandalnuulzzang #sandalnudihocdecao #giaysandalnu #depsandalnudep #sandalnudecao #sandalnuthoitrang #giaysandalnudihoc #sandalnudep #sandalnucatinh #depquaihaunu #depquaihaunuhocsinh #giayquaihaunu</span></p>', '285000', 'giay929.jpg', 0, NULL, NULL),
(33, 'Áo thun in chữ', 'ao-thun-in-chu', 1, 2, '<p><span style=\"font-size:18px\">-Chất liệu thun cotton co gi&atilde;n 4 chiều -Mặc thấm h&uacute;t mồ h&ocirc;i</span></p>\r\n\r\n<p><span style=\"font-size:18px\">-V&atilde;i co gi&atilde;n tốt Bảng size :</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Size M: Dưới 65kg - Dưới 1m65</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Size L: Dưới 75kg - Dưới 1m75</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Size XL: Dưới 85kg - Dưới 1m85</span></p>\r\n\r\n<p><span style=\"font-size:18px\">&mdash;�&mdash;�&mdash;�&mdash;�&mdash;�&mdash;�&mdash;�&mdash;�&mdash;�&mdash;�&mdash;�</span></p>\r\n\r\n<p><span style=\"font-size:18px\">⛔️Cam kết: Shop sẽ đổi trả 💯nếu sản phẩm l&agrave;m kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng (vải xấu, bung chỉ, lỗi form SẢN PHẨM KH&Ocirc;NG GIỐNG TR&Ecirc;N H&Igrave;NH)</span></p>', '125000', 'anh342.jpg', 0, NULL, NULL),
(34, 'Giày trắng trơn', 'giay-trang-tron', 3, 4, '<p><span style=\"font-size:18px\">Gi&agrave;y Sneaker trắng trơn kiểu d&aacute;ng basic dễ phối đồ </span></p>\r\n\r\n<p><span style=\"font-size:18px\">Đi Sneaker trắng th&igrave; phối đồ g&igrave; cũng hợp lu&ocirc;n nh&eacute; c&aacute;c xị em ơi💕</span></p>\r\n\r\n<p><span style=\"font-size:18px\">C&ograve;n chần chừ g&igrave; nữa m&agrave; kh&ocirc;ng tậu ngay cho m&igrave;nh 1 em d&aacute;ng basic nhưng cực k&igrave; tiện lợi n&agrave;y ạ 😚 size 35-&gt;38</span></p>', '315000', 'giay1117.webp', 0, NULL, '2021-12-11 21:27:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_note`, `created_at`, `updated_at`) VALUES
(38, 'bich man', 'Phu Yen', '0385879243', 'man@gmail.com', 'Giao chủ nhận', NULL, NULL),
(39, 'kha vy', 'Phu Yen', '0385879243', 'man@gmail.com', 'Giao giờ hành chính', NULL, NULL),
(40, 'bich man', 'Phu Yen', '0385870243', 'man@gmail.com', 'Hàng dễ vỡ', NULL, NULL),
(41, 'bich man', 'Phu Yen', '0385879243', 'man@gmail.com', 'giao trong tuan', NULL, NULL),
(42, 'mau', 'Phú Yên', '0385879243', 'mau@gmail.com', 'Giao nhanh', NULL, NULL),
(43, 'nguyen van a', 'bình định', '11111111111111', 'mau@gmail.com', 'giao nhanh', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_name` varchar(255) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `slider_status` int(10) NOT NULL,
  `slider_id` int(10) NOT NULL,
  `slider_desc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_name`, `slider_image`, `slider_status`, `slider_id`, `slider_desc`) VALUES
('slider1', 'slideshow_158.jpg', 1, 5, 'Siêu sale mùa hè năm nay'),
('slider2', 'slideshow_341.jpg', 1, 6, 'Mẫu áo thun hot mùa thu'),
('slider4', 'slide220.jpg', 1, 7, 'fashion hot thu dong'),
('slider5', 'slider386.jpg', 0, 8, 'slider mua he'),
('slider6', 'slider429.jpg', 1, 9, 'slider mua xuan'),
('slider7', 'slider518.jpg', 1, 11, 'slider nu 2'),
('slider8', 'slider765.gif', 1, 12, 'black friday'),
('sliderspring', 'slidebanner52.png', 0, 14, 'sliderspring'),
('sliderspring2', 'slidebanner252.png', 0, 15, 'sliderspring2'),
('sliderspring4', 'slidebanner419.png', 1, 17, 'sliderspring4'),
('sliderspring5', 'slidebanner548.png', 0, 18, 'sliderspring5'),
('sliderspring6', 'slidebanner661.png', 0, 19, 'sliderspring6');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_social`
--

CREATE TABLE `tbl_social` (
  `user_id` int(11) NOT NULL,
  `provider_user_id` text NOT NULL,
  `provider` text NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_social`
--

INSERT INTO `tbl_social` (`user_id`, `provider_user_id`, `provider`, `user`) VALUES
(9, '385242173297391', 'facebook', 10),
(10, '106254711049716779349', 'GOOGLE', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_statistical`
--

CREATE TABLE `tbl_statistical` (
  `id_statistical` int(11) NOT NULL,
  `order_date` varchar(100) NOT NULL,
  `sales` varchar(200) NOT NULL,
  `profit` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_statistical`
--

INSERT INTO `tbl_statistical` (`id_statistical`, `order_date`, `sales`, `profit`, `quantity`, `total_order`) VALUES
(1, '2021-11-08', '20000000', '7000000', 90, 10),
(2, '2021-11-07', '68000000', '9000000', 60, 8),
(3, '2021-11-06', '30000000', '3000000', 45, 7),
(4, '2021-11-05', '45000000', '3800000', 30, 9),
(5, '2021-11-04', '30000000', '1500000', 15, 12),
(6, '2021-11-03', '8000000', '700000', 65, 30),
(7, '2021-11-02', '28000000', '23000000', 32, 20),
(8, '2021-11-01', '25000000', '20000000', 7, 6),
(9, '2021-10-31', '36000000', '28000000', 40, 15),
(10, '2021-10-30', '50000000', '13000000', 89, 19),
(11, '2021-10-29', '20000000', '15000000', 63, 11),
(12, '2021-10-28', '25000000', '16000000', 94, 14),
(13, '2021-10-27', '32000000', '17000000', 16, 10),
(14, '2021-10-26', '33000000', '19000000', 14, 5),
(15, '2021-10-25', '36000000', '18000000', 22, 12),
(16, '2021-10-24', '34000000', '20000000', 33, 20),
(17, '2021-10-23', '25000000', '16000000', 94, 14),
(18, '2021-10-22', '12000000', '7000000', 16, 10),
(19, '2021-10-21', '63000000', '19000000', 14, 5),
(20, '2021-10-20', '66000000', '18000000', 22, 12),
(21, '2021-10-19', '74000000', '20000000', 33, 20),
(22, '2021-10-18', '63000000', '19000000', 14, 5),
(23, '2021-10-17', '66000000', '18000000', 23, 12),
(24, '2021-10-16', '74000000', '20000000', 32, 20),
(25, '2021-10-15', '63000000', '19000000', 14, 5),
(26, '2020-10-14', '66000000', '18000000', 23, 12),
(27, '2020-10-13', '74000000', '20000000', 33, 20),
(28, '2020-10-12', '66000000', '18000000', 23, 12),
(29, '2020-10-11', '74000000', '20000000', 10, 20),
(30, '2020-10-10', '63000000', '19000000', 14, 5),
(31, '2020-10-09', '66000000', '18000000', 23, 12),
(32, '2020-10-08', '74000000', '20000000', 15, 20),
(33, '2020-10-07', '66000000', '18000000', 23, 12),
(34, '2020-10-06', '74000000', '20000000', 30, 22),
(35, '2020-10-05', '66000000', '18000000', 23, 12),
(36, '2020-10-04', '74000000', '20000000', 32, 20),
(37, '2020-10-03', '63000000', '19000000', 14, 5),
(38, '2020-10-02', '66000000', '18000000', 23, 12),
(39, '2020-10-01', '74000000', '20000000', 32, 20),
(40, '2020-09-30', '63000000', '19000000', 14, 5),
(41, '2020-09-29', '66000000', '18000000', 23, 12),
(42, '2020-09-28', '74000000', '20000000', 15, 20),
(43, '2020-09-27', '66000000', '18000000', 23, 12),
(44, '2020-09-26', '74000000', '20000000', 30, 22),
(45, '2020-09-25', '66000000', '18000000', 23, 12),
(46, '2020-09-24', '74000000', '20000000', 32, 20),
(47, '2020-09-23', '63000000', '19000000', 14, 5),
(48, '2020-09-22', '66000000', '18000000', 23, 12),
(49, '2020-09-21', '74000000', '20000000', 32, 20),
(50, '2020-09-20', '63000000', '19000000', 14, 5),
(51, '2020-09-19', '66000000', '18000000', 23, 12),
(52, '2020-09-18', '74000000', '20000000', 15, 20),
(53, '2020-09-17', '66000000', '18000000', 23, 12),
(54, '2020-09-16', '74000000', '20000000', 30, 22),
(55, '2020-09-15', '66000000', '18000000', 23, 12),
(56, '2020-09-14', '74000000', '20000000', 32, 20),
(57, '2020-09-13', '63000000', '19000000', 14, 5),
(58, '2020-09-12', '66000000', '18000000', 23, 12),
(59, '2020-09-11', '74000000', '20000000', 32, 20),
(60, '2020-09-10', '63000000', '19000000', 14, 5),
(61, '2020-09-09', '66000000', '18000000', 23, 12),
(62, '2020-09-08', '74000000', '20000000', 15, 20),
(63, '2020-09-07', '66000000', '18000000', 23, 12),
(64, '2020-09-06', '74000000', '20000000', 30, 22),
(65, '2020-09-05', '66000000', '18000000', 23, 12),
(66, '2020-09-04', '74000000', '20000000', 32, 20),
(67, '2020-09-03', '63000000', '19000000', 14, 5),
(68, '2020-09-02', '66000000', '18000000', 23, 12),
(69, '2020-09-01', '74000000', '20000000', 32, 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_category_post`
--
ALTER TABLE `tbl_category_post`
  ADD PRIMARY KEY (`cate_post_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `shipping_id` (`shipping_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `tbl_posts`
--
ALTER TABLE `tbl_posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `cate_post_id` (`cate_post_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Chỉ mục cho bảng `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `tbl_statistical`
--
ALTER TABLE `tbl_statistical`
  ADD PRIMARY KEY (`id_statistical`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tbl_category_post`
--
ALTER TABLE `tbl_category_post`
  MODIFY `cate_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT cho bảng `tbl_posts`
--
ALTER TABLE `tbl_posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_statistical`
--
ALTER TABLE `tbl_statistical`
  MODIFY `id_statistical` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
