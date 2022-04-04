-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 18, 2021 lúc 08:44 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webdienthoai`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Vsmart'),
(2, 'IPHONE'),
(3, 'SAMSUNG'),
(102, 'Xiaomi'),
(104, 'Oppo'),
(105, 'Nokia');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `note` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `note`, `user_id`, `product_id`, `created_at`, `updated_at`, `status`) VALUES
(4, 'Tốt, chất lượng', 37, 21, '2021-11-16 07:20:49', '2021-11-16 07:20:49', 0),
(5, 'Ngon', 44, 21, '2021-11-16 07:26:49', '2021-11-16 07:26:49', 0),
(6, 'asdasd', 45, 21, '2021-11-16 08:11:58', '2021-11-16 08:11:58', 0),
(7, 'asdasd', 45, 33, '2021-11-16 08:12:20', '2021-11-16 08:12:20', 0),
(8, 'Tốt', 45, 33, '2021-11-16 08:13:44', '2021-11-16 12:36:38', 1),
(9, 'cvxv', 36, 33, '2021-11-16 08:14:07', '2021-11-16 12:36:37', 1),
(11, 'Ngon', 36, 33, '2021-11-16 15:53:41', '2021-11-16 15:55:12', 1),
(34, 'ca', 44, 1, '2021-11-16 16:23:08', '2021-11-16 18:27:18', 1),
(35, 'Chủ đề contact- Nội dung contact', 37, 1, '2021-11-16 16:23:43', '2021-11-16 16:23:43', 0),
(36, 'Chủ đề contact1- Nội dung contact1', 37, 48, '2021-11-16 16:26:30', '2021-11-16 16:26:30', 0),
(37, 'Chủ đề contact1- Nội dung contact1', 37, 48, '2021-11-16 16:26:36', '2021-11-16 16:26:36', 0),
(38, 'Chủ đề contact1223- Nội dung contact12323', 37, 48, '2021-11-16 16:26:41', '2021-11-16 16:26:41', 0),
(49, '', 36, 21, '2021-11-18 06:07:59', '2021-11-18 06:07:59', 0),
(50, '', 36, 1, '2021-11-18 06:08:49', '2021-11-18 06:08:49', 0),
(51, 'a', 36, 4, '2021-11-18 06:10:43', '2021-11-18 06:10:43', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `total_money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `fullname`, `email`, `phone`, `user_id`, `status`, `deleted`, `address`, `created_at`, `total_money`) VALUES
(16, 'Nguyễn Tấn Lộc', 'loc.nguyencse2@gmail.com', '0347651292', 36, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-10-16 15:25:06', 14270000),
(17, 'Nguyễn', 'ntnlc81@yahoo.com', '034765', 36, 3, 0, '462 trần hưn', '2021-09-16 15:35:11', 17860000),
(18, 'Nguyễn Tấn Lộc', 'loc.nguyencse1@gmail.com', '0347651292', 36, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-08-16 15:54:28', 122930000),
(19, 'Nguyễn Tấn Lộc', 'loc.nguyencse3@gmail.com', '0347651292', 37, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-07-16 18:44:43', 64820000),
(20, 'Nguyễn Tấn Lộc', 'loc.nguyencse2@gmail.com', '0347651292', 37, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-06-16 18:46:17', 14270000),
(21, 'Nguyễn Tấn Lộc', 'loc.nguyencse2@gmail.com', '0347651292', 37, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-05-16 18:46:27', 123880000),
(22, 'Nguyễn Tấn Lộc', 'loc.nguyencse@gmail.com', '0347651292', 37, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-04-16 18:46:41', 154280000),
(23, 'Nguyễn Tấn Lộc', 'loc.nguyencse@gmail.com', '0347651292', 37, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-03-16 18:46:54', 93720000),
(24, 'Nguyễn Tấn Lộc', 'admin@gmail.com', '0347651292', 37, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-02-16 18:47:37', 102860000),
(25, 'Nguyễn Tấn Lộc', 'loc.nguyencse@gmail.com', '0347651292', 37, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-01-16 18:47:52', 68640000),
(26, 'Nguyễn Tấn Lộc', 'ntnlc81@yahoo.com', '0347651292', 37, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-16 18:48:01', 169950000),
(27, 'Nguyễn Tấn Lộc', 'loc.nguyencse2@gmail.com', '0347651292', 37, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-12-16 18:48:13', 75450000),
(28, 'Tan Loc', 'loc@gmail.com', '01234567894', 37, 3, 0, 'Tay Ninh', '2021-11-16 19:01:54', 1200000),
(29, 'Nguyễn Tấn Lộc', 'loc.nguyencse@gmail.com', '0347651292', 36, 3, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-18 00:25:33', 21990000),
(30, 'Nguyễn Tấn Lộc', 'loc.nguyencse2@gmail.com', '0347651292', 36, 0, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-18 00:32:34', 36480000),
(31, 'Nguyễn Tấn Lộc', 'loc.nguyencse2@gmail.com', '0347651292', 36, 0, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-18 00:32:51', 36480000),
(32, 'Nguyễn Tấn Lộc', 'loc.nguyencse2@gmail.com', '0347651292', 36, 0, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-18 00:37:54', 36480000),
(33, 'Nguyễn Tấn Lộc', 'loc.nguyencse2@gmail.com', '0347651292', 36, 0, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-18 00:38:49', 36480000),
(34, 'Nguyễn Tấn Lộc', 'loc.nguyencse2@gmail.com', '0347651292', 36, 0, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-18 12:13:52', 12490000),
(35, 'Lộc', 'loc.nguyencse@gmail.com', '0347651292', 37, 0, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-18 06:52:12', 37490000),
(36, 'Nguyễn Tấn Lộc', 'loc.nguyencse@gmail.com', '0347651292', 37, 0, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-18 06:58:01', 5490000),
(37, 'Nguyễn Tấn Lộc', 'loc.nguyencse@gmail.com', '0347651292', 37, 0, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-18 06:59:27', 5490000),
(38, 'Nguyễn Tấn Lộc', 'loc.nguyencse@gmail.com', '0347651292', 37, 0, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-18 07:01:34', 5490000),
(39, 'Nguyễn Tấn Lộc', 'loc.nguyencse@gmail.com', '0347651292', 37, 0, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-18 07:01:35', 5490000),
(40, 'Lộc 2', 'loc.nguyencse2@gmail.com', '0347651292', 37, 0, 0, '462 trần hưng đạo phường 2 quận 5', '2021-11-18 07:03:34', 9980000),
(41, 'Nguyễn Tấn Lộc', 'ntnlc81@yahoo.com', '035', 37, 0, 0, 'ab', '2021-11-18 07:15:11', 8780000),
(42, 'loc', 'loc@gmail.com', '121234321423', 49, 0, 0, 'loc', '2021-11-18 07:40:09', 48260000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `num`, `total_money`) VALUES
(13, 16, 31, 4290000, 1, 4290000),
(14, 16, 32, 4490000, 1, 4490000),
(15, 16, 33, 5490000, 1, 5490000),
(16, 17, 30, 3590000, 1, 3590000),
(17, 17, 31, 4290000, 1, 4290000),
(18, 17, 32, 4490000, 1, 4490000),
(19, 17, 33, 5490000, 1, 5490000),
(20, 18, 1, 30900000, 3, 92700000),
(21, 18, 30, 3590000, 2, 7180000),
(22, 18, 31, 4290000, 2, 8580000),
(23, 18, 32, 4490000, 2, 8980000),
(24, 18, 33, 5490000, 1, 5490000),
(25, 19, 4, 28000000, 1, 28000000),
(26, 19, 6, 23990000, 1, 23990000),
(27, 19, 30, 3590000, 1, 3590000),
(28, 19, 31, 4290000, 1, 4290000),
(29, 19, 35, 4950000, 1, 4950000),
(30, 20, 31, 4290000, 1, 4290000),
(31, 20, 32, 4490000, 1, 4490000),
(32, 20, 33, 5490000, 1, 5490000),
(33, 21, 1, 30900000, 1, 30900000),
(34, 21, 2, 30990000, 1, 30990000),
(35, 21, 4, 28000000, 1, 28000000),
(36, 21, 21, 33990000, 1, 33990000),
(37, 22, 1, 30900000, 2, 61800000),
(38, 22, 2, 30990000, 1, 30990000),
(39, 22, 4, 28000000, 2, 56000000),
(40, 22, 33, 5490000, 1, 5490000),
(41, 23, 2, 30990000, 1, 30990000),
(42, 23, 21, 33990000, 1, 33990000),
(43, 23, 31, 4290000, 1, 4290000),
(44, 23, 32, 4490000, 3, 13470000),
(45, 23, 33, 5490000, 2, 10980000),
(46, 24, 1, 30900000, 1, 30900000),
(47, 24, 2, 30990000, 2, 61980000),
(48, 24, 32, 4490000, 1, 4490000),
(49, 24, 33, 5490000, 1, 5490000),
(50, 25, 31, 4290000, 16, 68640000),
(51, 26, 21, 33990000, 5, 169950000),
(52, 27, 2, 30990000, 2, 61980000),
(53, 27, 32, 4490000, 3, 13470000),
(54, 29, 45, 21990000, 1, 21990000),
(55, 30, 2, 30990000, 1, 30990000),
(56, 30, 33, 5490000, 1, 5490000),
(57, 31, 2, 30990000, 1, 30990000),
(58, 31, 33, 5490000, 1, 5490000),
(59, 32, 2, 30990000, 1, 30990000),
(60, 32, 33, 5490000, 1, 5490000),
(61, 33, 2, 30990000, 1, 30990000),
(62, 33, 33, 5490000, 1, 5490000),
(63, 34, 40, 12490000, 1, 12490000),
(64, 27, 7, 25000000, 1, 25000000),
(65, 27, 40, 12490000, 1, 12490000),
(66, 27, 33, 5490000, 1, 5490000),
(67, 27, 33, 5490000, 1, 5490000),
(68, 27, 33, 5490000, 1, 5490000),
(69, 27, 33, 5490000, 1, 5490000),
(70, 40, 32, 4490000, 1, 4490000),
(71, 40, 33, 5490000, 1, 5490000),
(72, 41, 31, 4290000, 1, 4290000),
(73, 41, 32, 4490000, 1, 4490000),
(74, 42, 21, 33990000, 1, 33990000),
(75, 42, 31, 4290000, 1, 4290000),
(76, 42, 32, 4490000, 1, 4490000),
(77, 42, 33, 5490000, 1, 5490000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `money` float NOT NULL COMMENT 'số tiền thanh toán',
  `note` varchar(255) DEFAULT NULL COMMENT 'ghi chú thanh toán',
  `vnp_response_code` varchar(255) NOT NULL COMMENT 'mã phản hồi',
  `code_vnpay` varchar(255) NOT NULL COMMENT 'mã giao dịch vnpay',
  `code_bank` varchar(255) NOT NULL COMMENT 'mã ngân hàng',
  `time` datetime NOT NULL COMMENT 'thời gian chuyển khoản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `category_id`, `title`, `price`, `discount`, `thumbnail`, `description`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 2, 'iPhone 12 Pro Max', 30900000, 32990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/i/p/iphone-12-pro-max_3__7.jpg', '', '2021-10-22 07:46:26', '2021-10-22 07:46:26', 0),
(2, 2, 'iPhone 13 Pro | Chính hãng VN/A', 30990000, NULL, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone_13-_pro-5.jpg', NULL, '2021-10-22 12:57:16', '2021-10-22 12:57:16', 0),
(3, 2, 'iPhone 11 128GB', 19000000, 19900000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/l/a/layer_21_1.jpg', '', '2021-10-22 12:57:16', '2021-10-22 12:57:16', 0),
(4, 2, 'iPhone 12 Pro', 28000000, 30990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/i/p/iphone-12-pro-max_2_.jpg', '', '2021-10-22 12:58:32', '2021-10-22 12:58:32', 0),
(5, 3, 'Samsung Galaxy Note 20 Ultra 5G', 21500000, 32990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/b/l/black_final_1.jpg', NULL, '2021-10-22 10:10:44', '2021-10-22 10:10:44', 0),
(6, 3, 'Samsung Galaxy Z Flip3 5G', 23990000, 24990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/8/0/800x800_flip_3_cream.png', NULL, '2021-10-22 10:10:44', '2021-10-22 10:10:44', 0),
(7, 3, 'Samsung Galaxy S21 Ultra 5G', 25000000, 30990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/6/3/637462630853935725_ss-s21-ultra-den-1_1.jpg', NULL, '2021-10-22 10:12:40', '2021-10-22 10:12:40', 0),
(8, 3, 'Samsung Galaxy A72', 10100000, 11490000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/s/a/samsung-galaxy-a72-29.jpg', NULL, '2021-10-22 10:12:40', '2021-10-22 10:12:40', 0),
(10, 3, 'Samsung Galaxy S20 FE 256GB (Fan Edition)', 12250000, 15490000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/s/a/samsung-galaxy-20-fe_4_.jpg', NULL, '2021-10-22 12:47:54', '2021-10-22 12:47:54', 0),
(11, 3, 'Samsung Galaxy Z Fold3 5G', 40990000, 41990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/s/m/sm-f926_zfold3_5g_openback_phantomsilver_210611.jpg', NULL, '2021-10-22 12:47:54', '2021-10-22 12:47:54', 0),
(12, 3, 'Samsung Galaxy A52s 5G', 10000000, 10990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/u/k/uk-feature-setting-a-new-standard-for-stunning-design-496044035-1.jpg', NULL, '2021-10-22 12:47:54', '2021-10-22 12:47:54', 0),
(13, 3, 'Samsung Galaxy A32', 6450000, 6690000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/s/a/samsung-galaxy-a32-1.jpg', NULL, '2021-10-22 12:47:54', '2021-10-22 12:47:54', 0),
(14, 3, 'Samsung Galaxy A12', 4150000, 4290000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/s/a/samsung-galaxy-a12_3_.jpg', NULL, '2021-10-22 12:47:54', '2021-10-22 12:47:54', 0),
(15, 3, 'Samsung Galaxy A22 4G', 5600000, 5890000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/a/2/a22-2.jpg', NULL, '2021-10-22 12:47:54', '2021-10-22 12:47:54', 0),
(16, 3, 'Samsung Galaxy Note 20 Ultra', 19200000, 29990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/y/e/yellow_final.jpg', NULL, '2021-10-22 12:47:54', '2021-10-22 12:47:54', 0),
(17, 3, 'Samsung Galaxy S21 Plus 5G', 20400000, 25990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/s/a/samsung-galaxy-s21-plus-2.jpg', NULL, '2021-10-22 12:47:54', '2021-10-22 12:47:54', 0),
(18, 3, 'Samsung Galaxy Z Flip3 5G 256GB', 25990000, 26990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/8/0/800x800_flip_3_black_3.png', NULL, '2021-10-22 12:47:54', '2021-10-22 12:47:54', 0),
(19, 3, 'Samsung Galaxy A52', 8750000, 9290000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/s/a/samsung-galaxy-a52-26.jpg', NULL, '2021-10-22 12:47:54', '2021-10-22 12:47:54', 0),
(20, 2, 'iPhone 13 | Chính hãng VN/A', 24990000, NULL, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/i/p/ip13-pro_2.jpg', NULL, '2021-10-22 12:58:32', '2021-10-22 12:58:32', 0),
(21, 2, 'iPhone 13 Pro Max | Chính hãng VN/A', 33990000, NULL, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone_13-_pro-5_4.jpg', 'Miễn phí 4G tốc độ cao 10GB/ Tháng trong 18 tháng \n- Công nghệ Vsim ảo đầu tiên\nCấu hình vượt trội, trải nghiệm mạnh mẽ \n- Chip Helio G35 8 nhân, RAM 3GB\nMàn hình siêu rộng, xem phim thả ga - Màn hình IPS LCD 6.528 inch, viền siêu mỏng\nSử dụng cả ngày dài - Pin 5000mAh, sạc nhanh 15W', '2021-10-22 12:58:32', '2021-10-22 12:58:32', 0),
(22, 2, 'iPhone 11 I Chính hãng VN/A', 16900000, 18000000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/l/a/layer_20.jpg', 'Miễn phí 4G tốc độ cao 10GB/ Tháng trong 18 tháng \n- Công nghệ Vsim ảo đầu tiên\nCấu hình vượt trội, trải nghiệm mạnh mẽ \n- Chip Helio G35 8 nhân, RAM 3GB\nMàn hình siêu rộng, xem phim thả ga - Màn hình IPS LCD 6.528 inch, viền siêu mỏng\nSử dụng cả ngày dài - Pin 5000mAh, sạc nhanh 15W', '2021-10-22 12:58:32', '2021-10-22 12:58:32', 0),
(28, 1, 'Vsmart Star 5', 2690000, 0, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/v/s/vsmart-star-5-3_3.jpg', 'Miễn phí 4G tốc độ cao 10GB/ Tháng trong 18 tháng \n- Công nghệ Vsim ảo đầu tiên\nCấu hình vượt trội, trải nghiệm mạnh mẽ \n- Chip Helio G35 8 nhân, RAM 3GB\nMàn hình siêu rộng, xem phim thả ga - Màn hình IPS LCD 6.528 inch, viền siêu mỏng\nSử dụng cả ngày dài - Pin 5000mAh, sạc nhanh 15W', '2021-10-25 11:30:19', '2021-10-25 11:30:19', 0),
(29, 1, 'Vsmart Joy 4', 3290000, 0, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/v/s/vsmart-joy-4_2_.png', NULL, '2021-10-25 11:34:50', '2021-10-25 11:34:50', 0),
(30, 1, 'Vsmart Joy 4 4GB', 3590000, 0, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/v/s/vsmart-joy-4_2__2.png', NULL, '2021-10-25 11:34:50', '2021-10-25 11:34:50', 0),
(31, 1, 'Vsmart Live 4', 4290000, 0, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/v/s/vsmart-live-_4_2_.jpg', NULL, '2021-10-25 11:34:50', '2021-10-25 11:34:50', 0),
(32, 1, 'Vsmart Aris 6GB 64GB', 4490000, 5990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/1/1/11_2_1.png', NULL, '2021-10-25 11:34:50', '2021-10-25 11:34:50', 0),
(33, 1, 'Vsmart Aris Pro', 5490000, 8490000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/1/1/11_2_2.png', NULL, '2021-10-25 11:38:36', '2021-10-25 11:38:36', 0),
(34, 102, 'Xiaomi Mi 11 Lite 5G', 8990000, 10490000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-mi-11-lite-5g-2_10.png', NULL, '2021-10-25 11:40:29', '2021-10-25 11:40:29', 0),
(35, 102, 'Xiaomi Redmi Note 10 5G', 4950000, 5290000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/r/e/redmi-note-10-5g.jpg', NULL, '2021-10-25 11:40:29', '2021-10-25 11:40:29', 0),
(36, 102, 'Xiaomi Redmi 10 (4GB - 128GB)\r\n', 4290000, 0, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/0/0/004_2.jpg', NULL, '2021-10-25 11:40:29', '2021-10-25 11:40:29', 0),
(37, 102, 'Xiaomi Redmi Note 10 Pro 8GB', 7300000, 7490000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-redmi-note-10-pro_2_.png', NULL, '2021-10-25 11:40:29', '2021-10-25 11:40:29', 0),
(38, 102, 'Xiaomi Redmi 10 (4GB - 64GB)', 3990000, 0, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/0/0/001.jpg', NULL, '2021-10-25 11:40:29', '2021-10-25 11:40:29', 0),
(39, 102, 'Xiaomi Redmi Note 10', 5100000, 5490000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-redmi-note-10_1.jpg', NULL, '2021-10-25 11:40:29', '2021-10-25 11:40:29', 0),
(40, 104, 'OPPO Reno6 5G', 12490000, 12990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/r/e/reno6-1_1.jpg', '', NULL, NULL, 0),
(41, 104, 'Oppo Reno5', 7790000, 8690000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/o/p/oppo-reno-5_2__1_1.jpg', '', NULL, NULL, 0),
(42, 104, 'OPPO Reno6 Z 5G', 9190000, 9490000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/o/p/oppo_reno6.jpg', '', NULL, NULL, 0),
(43, 104, 'Oppo A54', 4350000, 4690000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/o/p/oppo-a54-4g-blue-200x200.jpg', '', NULL, NULL, 0),
(44, 104, 'Oppo A73', 5190000, 5490000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/o/p/oppo-a73_1_.jpg', '', NULL, NULL, 0),
(45, 104, 'OPPO Find X3 Pro 5G', 21990000, 26990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/o/p/oppo-find-x3-pro-5g-3_2.jpg', '', NULL, NULL, 0),
(46, 2, NULL, NULL, NULL, NULL, NULL, '2021-11-16 16:24:20', '2021-11-16 16:24:20', 1),
(47, 2, 'áda', 30900000, 32990000, 'aq', 'aaq', '2021-11-16 16:25:24', '2021-11-16 16:25:24', 1),
(48, 104, NULL, NULL, NULL, NULL, NULL, '2021-11-16 16:25:58', '2021-11-16 16:25:58', 1),
(49, 105, 'a', 1, 1, 'a', 'a', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'User'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tokens`
--

CREATE TABLE `tokens` (
  `user_id` int(11) NOT NULL,
  `token` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tokens`
--

INSERT INTO `tokens` (`user_id`, `token`, `created_at`) VALUES
(36, '6536ae3b602011958eb0672ffa0d99e4', '2021-11-18 08:44:15'),
(37, '0e5f3d0c7739d45fe818920b2415368b', '2021-10-26 18:08:35'),
(37, '2d770df66e03ba6a60512dad1d6932bb', '2021-10-26 19:40:05'),
(37, 'b694f06e17a35a50cdc8eed94db0feca', '2021-10-27 09:58:49'),
(37, 'c9476ebfb8ae818ef86dfb664018c914', '2021-10-26 19:54:18'),
(37, 'edc256237487cec4d5c5e1835cc67817', '2021-10-26 19:38:24'),
(46, '20d040af7ed247629fcfff85b9927e57', '2021-11-07 11:27:56'),
(46, '5c860e23d929759f378139e36a2e5b8f', '2021-11-15 08:57:27'),
(46, '9cc0df707a7cccf78385d7093b946422', '2021-11-16 18:57:38'),
(46, 'aa33bd2176ebacb83e9713f68c6f0a83', '2021-11-15 19:58:47'),
(46, 'f2cc2c1bb5a597dd045a605409165f63', '2021-11-15 20:06:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `phone_number`, `address`, `password`, `role_id`, `deleted`) VALUES
(35, 'Nguyễn Tấn Lộc', 'loc.nguyencse1@gmail.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', 'b4cbd48886a5331c5eb2fedadabe311c', 2, 0),
(36, 'Nguyễn Tấn Lộc', 'loc.nguyencse2@gmail.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', 'b4cbd48886a5331c5eb2fedadabe311c', 1, 0),
(37, 'Nguyễn Tấn Lộc', 'loc.nguyencse3@gmail.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', 'b4cbd48886a5331c5eb2fedadabe311c', 1, 0),
(38, 'Nguyễn Tấn Lộc', 'loc.nguyencse8@gmail.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', 'b4cbd48886a5331c5eb2fedadabe311c', 1, 0),
(39, 'Nguyễn Tấn Lộc', 'loc.nguyencse5@gmail.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', 'b4cbd48886a5331c5eb2fedadabe311c', 1, 0),
(40, '213312321', 'ntnlc81@yahoo.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', '2343b6a811d442d9b97f6fcd6bcbcc15', 1, 1),
(41, 'Nguyễn Tấn Lộc12', 'ntnlc8112@yahoo.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', 'b4cbd48886a5331c5eb2fedadabe311c', 1, 0),
(42, 'Nguyễn Tấn Lộc12', 'loc.nguyencse12@gmail.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', 'b4cbd48886a5331c5eb2fedadabe311c', 1, 0),
(43, 'Nguyễn Tấn Lộc132', 'loc.nguyencs123e@gmail.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', 'e5cec731ca0d779baf1250fb20d63c61', 1, 1),
(44, 'Nguyễn Tấn Lộc132', 'loc.nguyenc132s123e@gmail.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', '43c4e9a12b3acc364057ee4799a1d781', 1, 1),
(45, 'Nguyễn Tấn Lộc132', 'loc.nguyenc133212s123e@gmail.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', '105faa207fab8ef35d8434e80d11ff38', 1, 1),
(46, 'admin', 'admin@gmail.com', '9876543212', 'Tây Ninh', 'b4cbd48886a5331c5eb2fedadabe311c', 2, 0),
(47, 'aa', 'a@gmail.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', 'b4cbd48886a5331c5eb2fedadabe311c', 1, 0),
(48, 'Nguyễn Tấn Lộc', 'loc@gmail.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', 'b4cbd48886a5331c5eb2fedadabe311c', 1, 0),
(49, 'loc', 'l@gmail.com', '0347651292', '462 trần hưng đạo phường 2 quận 5', 'b4cbd48886a5331c5eb2fedadabe311c', 1, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userreview` (`user_id`),
  ADD KEY `productreview` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orderSuccess` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `a` (`order_id`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paymentUserid` (`user_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`user_id`,`token`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `productreview` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `userreview` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orderSuccess` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `a` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `paymentUserid` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `fk_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
