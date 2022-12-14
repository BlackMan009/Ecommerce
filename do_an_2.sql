-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2022 at 09:05 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `do_an_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Iphone', 0, '2022-11-20 01:22:52', '2022-11-20 01:22:52', 1),
(2, 'Samsung', 0, '2022-11-20 01:23:04', '2022-11-20 01:23:04', 1),
(3, 'Vivo', 0, '2022-11-20 01:23:13', '2022-11-20 01:23:13', 1),
(4, 'Oppo', 0, '2022-11-20 01:23:28', '2022-11-20 01:23:28', 1),
(5, 'Realme', 0, '2022-11-20 01:23:37', '2022-11-20 01:23:37', 1),
(6, 'Mi', 0, '2022-11-20 01:23:49', '2022-11-20 01:23:49', 1),
(11, 'Casio ', 0, '2022-11-22 08:53:17', '2022-11-22 08:53:17', 3);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=visible, 1=hidden',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '??i???n Tho???i', 'uploads/category/1668932556.jpg', 0, '2022-11-20 01:22:36', '2022-11-22 09:31:14'),
(3, '?????ng H???', 'uploads/category/1669132332.jpg', 0, '2022-11-22 08:52:12', '2022-11-22 08:52:12'),
(8, 'Tablet', 'uploads/category/1669383578.jpg', 0, '2022-11-25 06:39:38', '2022-11-25 06:39:38'),
(9, 'Laptop', 'uploads/category/1669383658.jpg', 0, '2022-11-25 06:40:58', '2022-11-25 07:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Red', 'Red', 0, '2022-11-20 01:26:01', '2022-11-20 01:26:01'),
(2, 'Blue', 'Blue', 0, '2022-11-20 01:26:08', '2022-11-20 01:26:08'),
(3, 'Black', 'Black', 0, '2022-11-20 01:26:15', '2022-11-20 01:26:15'),
(4, 'Purple', 'Purple', 0, '2022-11-20 01:26:26', '2022-11-20 01:26:26'),
(5, 'Green', 'Green', 0, '2022-11-20 01:26:33', '2022-11-20 01:26:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_30_165455_add_details_to_user_table', 1),
(6, '2022_10_30_173718_create_categories_table', 1),
(7, '2022_10_31_070309_create_brands_table', 1),
(8, '2022_11_01_200626_create_products_table', 1),
(9, '2022_11_01_200632_create_product_images_table', 1),
(10, '2022_11_03_140016_create_colors_table', 1),
(11, '2022_11_03_161542_create_product_colors_table', 1),
(12, '2022_11_04_153828_create_sliders_table', 1),
(13, '2022_11_06_084716_add_category_id_to_brands_table', 1),
(14, '2022_11_06_131555_create_wishlists_table', 1),
(15, '2022_11_06_164201_create_carts_table', 1),
(16, '2022_11_08_160227_create_orders_table', 1),
(17, '2022_11_08_160704_create_order_items_table', 1),
(18, '2022_11_25_164752_create_user_details_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tracking_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `tracking_no`, `fullname`, `email`, `phone`, `pincode`, `address`, `status_message`, `payment_mode`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'cod-HUytuN19SR', 'admin', 'admin@gmail.com', '0388335845', '123456', 'Da Nang, Viet Nam', 'is progress', 'Cash on Delivery', NULL, '2022-11-20 03:38:57', '2022-11-25 08:31:51'),
(2, 3, 'cod-50ljmBy2s8', 'Duy Bao', 'bao@gmail.com', '0388335845', '123123', 'Ngu Hanh Son, Da Nang', 'is progress', 'Cash on Delivery', NULL, '2022-11-25 09:01:24', '2022-11-25 09:01:24'),
(3, 4, 'cod-6Ju3YLDYXt', 'Cong Toan', 'toan@gmail.com', '0388335845', '123454', 'Hoa Phuoc, Da Nang', 'is progress', 'Paid By Paypal', '3YT79334VG191340L', '2022-11-25 09:06:51', '2022-11-25 09:06:51'),
(4, 4, 'cod-AuVKLpOChN', 'Cong Toan', 'toan@gmail.com', '0904041765', '123213', 'Thanh Khe, Da Nang', 'is progress', 'Cash on Delivery', NULL, '2022-11-25 10:33:16', '2022-11-25 10:33:16'),
(5, 4, 'cod-Pj56i7V4j8', 'Cong Toan', 'toan@gmail.com', '0904041765', '312311', 'Thanh Khe, Da Nang', 'is progress', 'Paid By Paypal', '4K038629HB8368349', '2022-11-25 10:35:08', '2022-11-25 10:35:08'),
(6, 2, 'cod-ew4udtrTOX', 'Admin', 'admin@gmail.com', '0388335845', '123123', 'Hoa Vang, Da Nang', 'is progress', 'Cash on Delivery', NULL, '2022-11-25 11:52:39', '2022-11-25 11:52:39'),
(7, 5, 'cod-NYbQSKWofn', 'Thien', 'hieuvn201103it@gmail.com', '0904041765', '312323', 'Hoa Khanh,  Da Nang', 'is progress', 'Cash on Delivery', NULL, '2022-11-25 21:44:11', '2022-11-25 21:44:11'),
(8, 2, 'cod-g87o5GGpLT', 'Admin', 'admin@gmail.com', '0388335845', '123123', 'Hoa Vang, Da Nang', 'is progress', 'Paid By Paypal', '86K108972G898073R', '2022-11-25 21:51:43', '2022-11-25 21:51:43');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_color_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, '14', '41', '2', '3000', '2022-11-20 03:38:57', '2022-11-20 03:38:57'),
(2, 2, '47', '132', '2', '490', '2022-11-25 09:01:24', '2022-11-25 09:01:24'),
(3, 2, '47', '133', '1', '490', '2022-11-25 09:01:24', '2022-11-25 09:01:24'),
(4, 2, '36', NULL, '3', '800', '2022-11-25 09:01:24', '2022-11-25 09:01:24'),
(5, 2, '30', '86', '2', '590', '2022-11-25 09:01:24', '2022-11-25 09:01:24'),
(6, 3, '34', '99', '2', '900', '2022-11-25 09:06:51', '2022-11-25 09:06:51'),
(7, 3, '34', '98', '1', '900', '2022-11-25 09:06:51', '2022-11-25 09:06:51'),
(8, 3, '45', '128', '1', '460', '2022-11-25 09:06:51', '2022-11-25 09:06:51'),
(9, 4, '46', '131', '1', '600', '2022-11-25 10:33:16', '2022-11-25 10:33:16'),
(10, 4, '35', '101', '2', '900', '2022-11-25 10:33:16', '2022-11-25 10:33:16'),
(11, 5, '34', '97', '1', '900', '2022-11-25 10:35:08', '2022-11-25 10:35:08'),
(12, 6, '35', '101', '1', '900', '2022-11-25 11:52:39', '2022-11-25 11:52:39'),
(13, 7, '2', '5', '2', '4000', '2022-11-25 21:44:11', '2022-11-25 21:44:11'),
(14, 7, '34', '99', '1', '900', '2022-11-25 21:44:12', '2022-11-25 21:44:12'),
(15, 8, '47', '134', '1', '490', '2022-11-25 21:51:43', '2022-11-25 21:51:43');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `trending` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=trending,0=not-trending',
  `featured` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=featured,0=not-featured',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=hidden ,0=visible',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `brand`, `description`, `original_price`, `selling_price`, `quantity`, `trending`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'iPhone 13 Pro Max', 'Iphone', 'iPhone 13 Pro Max 256GB - si??u ph???m mang tr??n m??nh b??? vi x??? l?? Apple A15 Bionic h??ng ?????u, m??n h??nh Super Retina XDR 120 Hz, c???m camera kh???u ????? f/1.5 c???c l???n, t???t c??? s??? mang l???i cho b???n nh???ng tr???i nghi???m tuy???t v???i ch??a t???ng c??.', 5000, 4000, 10, 1, 1, 0, '2022-11-20 01:28:29', '2022-11-20 01:28:29'),
(3, 1, 'iPhone 14 Pro Max', 'Iphone', 'Cu???i c??ng th?? chi???c iPhone 14 Pro Max c??ng ???? ch??nh th???c l??? di???n t???i s??? ki???n ra m???t th?????ng ni??n v??o ng??y 08/09 ?????n t??? nh?? Apple, k???t th??c bao l???i ?????n ??o??n b???ng m???t b??? th??ng s??? c???c k??? ???n t?????ng c??ng v??? ngo??i ?????p m???t sang tr???ng.', 6000, 5500, 9, 1, 0, 0, '2022-11-20 01:32:15', '2022-11-20 01:32:15'),
(4, 1, 'iPhone 14', 'Iphone', 'Sau bao kho???ng th???i gian d??i ch??? ?????i th?? v??o ng??y 08/09 chi???c ??i???n tho???i iPhone 14 c??ng ???? ch??nh th???c ???????c l??? di???n, v???i h??ng lo???t th??ng s??? k??? thu???t ???n t?????ng t??? camera cho ?????n hi???u n??ng c???c kh???ng.', 3000, 2500, 7, 0, 1, 0, '2022-11-20 01:34:13', '2022-11-20 01:34:13'),
(5, 1, 'iPhone SE', 'Iphone', 'Nh?? v???y l?? sau bao ng??y ch??? ?????i th?? iPhone SE 64GB (2022) c??ng ???? ???????c gi???i thi???u t???i s??? ki???n Apple Peek Performance. Thi???t b??? n???i b???t v???i c???u h??nh m???nh m???, ch???y chip hi???n ?????i nh???t c???a Apple hi???n t???i nh??ng gi?? b??n l???i r???t ph???i ch??ng.', 1000, 800, 5, 1, 0, 0, '2022-11-20 01:37:25', '2022-11-20 01:37:25'),
(6, 1, 'iPhone 12', 'Iphone', 'Trong nh???ng th??ng cu???i n??m 2020, Apple ???? ch??nh th???c gi???i thi???u ?????n ng?????i d??ng c??ng nh?? iFan th??? h??? iPhone 12 series m???i v???i h??ng lo???t t??nh n??ng b???t ph??, thi???t k??? ???????c l???t x??c ho??n to??n.', 2000, 1800, 5, 0, 1, 0, '2022-11-20 01:40:35', '2022-11-20 01:40:35'),
(7, 1, 'Samsung Galaxy Z Flip4', 'Samsung', 'Samsung Galaxy Z Flip4 128GB ???? ch??nh th???c ra m???t th??? tr?????ng c??ng ngh???, ????nh d???u s??? tr??? l???i c???a Samsung tr??n con ???????ng ?????nh h?????ng ng?????i d??ng v??? s??? ti???n l???i tr??n nh???ng chi???c ??i???n tho???i g???p.', 6000, 5900, 20, 1, 0, 0, '2022-11-20 01:42:14', '2022-11-20 01:45:00'),
(8, 1, 'Samsung Galaxy S22', 'Samsung', 'Galaxy S22 Ultra 5G chi???c smartphone cao c???p nh???t trong b??? 3 Galaxy S22 series m?? Samsung ???? cho ra m???t. T??ch h???p b??t S Pen ho??n h???o trong th??n m??y, trang b??? vi x??? l?? m???nh m??? cho c??c t??c v??? s??? d???ng v?? c??ng m?????t m??.', 5000, 4500, 20, 0, 1, 0, '2022-11-20 01:44:39', '2022-11-20 03:37:10'),
(9, 1, 'Samsung Galaxy A23', 'Samsung', 'Samsung Galaxy A23 4GB s??? h???u b??? th??ng s??? k??? thu???t kh?? ???n t?????ng trong ph??n kh??c, m??y c?? m???t hi???u n??ng ???n ?????nh, c???m 4 camera th??ng minh c??ng m???t di???n m???o tr??? trung ph?? h???p cho m???i ?????i t?????ng.', 2000, 1500, 10, 1, 0, 0, '2022-11-20 01:46:29', '2022-11-20 01:46:29'),
(10, 1, 'Samsung Galaxy Z Fold4', 'Samsung', 'Samsung Galaxy Z Fold4 256GB ch??nh th???c ???????c tr??nh l??ng th??? tr?????ng c??ng ngh???, mang tr??n m??nh nhi???u c???i ti???n ????ng gi?? gi??p Galaxy Z Fold tr??? th??nh d??ng ??i???n tho???i g???p ???? t???t nay c??ng t???t h??n.', 5000, 4900, 8, 0, 1, 0, '2022-11-20 01:47:38', '2022-11-20 01:48:06'),
(11, 1, 'Samsung Galaxy S22+', 'Samsung', 'Samsung Galaxy S22+ 5G 128GB ???????c Samsung cho ra m???t v???i ngo???i h??nh kh??ng c?? qu?? nhi???u thay ?????i nh??ng ???????c n??ng c???p ????ng k??? v??? th??ng s??? c???u h??nh b??n trong v?? th???i gian s??? d???ng.', 3000, 2900, 8, 1, 0, 0, '2022-11-20 01:49:40', '2022-11-20 01:49:40'),
(12, 1, 'Samsung Galaxy M53', 'Samsung', 'C?? l??? 2022 l?? m???t n??m b??ng n??? c???a nh?? Samsung, khi h??ng li??n t???c tr??nh l??ng nhi???u s???n ph???m c?? c???u h??nh m???nh m??? c??ng m???t m???c gi?? b??n h???p l?? tr??n th??? tr?????ng smartphone t???m trung v?? gi?? r???, ti??u bi???u trong s??? ???? c?? Samsung Galaxy M53 ???????c xem l?? c??i t??n ???????c c???ng ?????ng ng?????i d??ng t??ch c???c quan t??m v?? s??n ????n k??? c??? khi ch??a ra m???t.', 2000, 1500, 20, 0, 1, 0, '2022-11-20 01:51:41', '2022-11-20 01:51:41'),
(13, 1, 'OPPO Reno8', 'Oppo', 'OPPO Reno8 Pro 5G ra m???t v???i s??? ?????t ph?? v??? ph???n camera khi ????y l?? thi???t b??? ?????u ti??n thu???c d??ng Reno ???????c t??ch h???p NPU MariSilicon X, ???????c xem l?? NPU cao c???p nh???t ?????n t??? OPPO (2022) c?? kh??? n??ng x??? l?? h??nh ???nh ?????nh cao.', 3000, 2000, 7, 0, 1, 0, '2022-11-20 01:53:08', '2022-11-20 01:53:08'),
(14, 1, 'OPPO Find X5 Pro', 'Oppo', 'OPPO Find X5 Pro 5G c?? l??? l?? c??i t??n s??ng gi?? ???????c x?????ng t??n trong danh s??ch ??i???n tho???i c?? thi???t k??? ???n t?????ng trong n??m 2022. M??y ???????c h??ng cho ra m???t v???i m???t di???n m???o ?????c l??? ch??a t???ng c??.', 4000, 3000, 10, 1, 0, 0, '2022-11-20 01:54:26', '2022-11-20 02:36:11'),
(15, 1, 'OPPO Reno7', 'Oppo', 'OPPO ???? tr??nh l??ng m???u Reno7 Z 5G v???i thi???t k??? OPPO Glow ?????c quy???n, camera mang hi???u ???ng nh?? m??y DSLR chuy??n nghi???p c??ng vi???n s??ng k??p, m??y c?? m???t c???u h??nh m???nh m??? v?? ?????t ch???ng nh???n x???p h???ng A v??? ????? m?????t.', 2000, 1800, 7, 0, 1, 0, '2022-11-20 03:41:57', '2022-11-20 03:41:57'),
(16, 1, 'OPPO A95', 'Oppo', 'B??n c???nh phi??n b???n 5G, OPPO c??n b??? sung phi??n b???n OPPO A95 4G v???i gi?? th??nh ph???i ch??ng t???p trung v??o thi???t k??? n??ng ?????ng, s???c nhanh v?? hi???u n??ng ??a nhi???m ???n t?????ng s??? gi??p cho cu???c s???ng c???a b???n th??m ph???n h???p d???n, ng???p tr??n ni???m vui.', 1000, 700, 5, 1, 0, 0, '2022-11-20 03:42:40', '2022-11-20 03:42:40'),
(17, 1, 'OPPO A17K', 'Oppo', 'OPPO A17K l?? chi???c ??i???n tho???i ???????c k??? th???a thi???t k??? tinh t??? c???a OPPO A16K, ???????c n??ng c???p v??? dung l?????ng pin, ?????ng th???i c??ng s??? h???u m??n h??nh chi ti???t c??ng m???t hi???u n??ng ???n ?????nh ???????c nh?? OPPO cho ra m???t v??o nh???ng th??ng cu???i n??m 2022.', 800, 500, 4, 1, 0, 0, '2022-11-20 03:48:45', '2022-11-20 03:48:45'),
(18, 1, 'OPPO Reno6', 'Oppo', 'Sau khi ra m???t OPPO Reno5 ch??a l??u th?? OPPO l???i cho ra m???u smartphone m???i mang t??n OPPO Reno6 v???i h??ng lo???t c???i ti???n m???i v??? ngo???i h??nh b??n ngo??i l???n hi???u n??ng b??n trong, mang ?????n tr???i nghi???m v?????t b???t cho ng?????i d??ng.', 4000, 3000, 8, 1, 1, 0, '2022-11-20 03:49:51', '2022-11-20 03:49:51'),
(19, 1, 'Vivo X80', 'Vivo', 'Vivo X80 ???????c xem l?? thi???t b??? h?????ng ?????n ?????i t?????ng ng?????i d??ng chuy??n nhi???p ???nh tr??n ??i???n tho???i, b???ng vi???c h???p t??c c??ng nh?? s???n xu???t ???ng k??nh n???i ti???ng mang th????ng hi???u ZEISS.', 2000, 1600, 7, 0, 1, 0, '2022-11-20 03:51:24', '2022-11-20 03:51:24'),
(20, 1, 'Vivo Y53s', 'Vivo', 'Vivo mang ?????n ni???m vui cho m???i ng?????i tin d??ng khi h??ng ch??nh th???c tung ra chi???c ??i???n tho???i Vivo Y53s v???i nh???ng t??nh n??ng ti??n ti???n ??i c??ng hi???u n??ng m???nh m???. ?????c bi???t, smartphone l???i c??n s??? h???u m???c gi?? h???p d???n trong ph??n kh??c t???m trung ?????y h???a h???n.', 1500, 1200, 6, 1, 0, 0, '2022-11-20 03:52:22', '2022-11-20 03:52:22'),
(21, 1, 'Vivo V25', 'Vivo', 'D?????ng nh?? 2022 l?? m???t n??m b??ng n??? cho ??i???n tho???i V series khi nhi???u s???n ph???m ???????c cho ra m???t v???i th??ng s??? v?? thi???t k??? r???t ???n t?????ng, trong ???? c?? Vivo V25 v???a ???????c gi???i thi???u v??o th??ng 10/2022', 800, 600, 3, 0, 1, 0, '2022-11-20 03:53:43', '2022-11-20 03:53:43'),
(22, 1, 'Vivo Y22s', 'Vivo', 'Vivo d?????ng nh?? ng??y c??ng ch?? tr???ng v??o v??? ?????p c???a t???ng s???n ph???m khi c?? kh?? nhi???u m???u smartphone m???i ???????c tr??nh l??ng v???i b??? ngo??i h???t s???c ?????p m???t, n???i b???t trong kho???ng th???i gian g???n ????y (09/2022)', 700, 600, 8, 1, 1, 0, '2022-11-20 03:55:42', '2022-11-20 03:55:42'),
(23, 1, 'Vivo Y16', 'Vivo', 'Vivo Y16 64GB ti???p t???c s??? l?? c??i t??n ???????c h??ng b??? sung cho b??? s??u t???p ??i???n tho???i Vivo d??ng Y trong th???i ??i???m cu???i n??m 2022, v???i m???c ti??u mang ?????n nhi???u tr???i nghi???m t???t h??n ?????i v???i d??ng s???n ph???m gi?? r???', 750, 700, 4, 0, 0, 0, '2022-11-20 03:57:16', '2022-11-20 03:57:16'),
(24, 1, 'Vivo Y33s', 'Oppo', 'Vivo Y33s - chi???c ??i???n tho???i n??y c?? thi???t k??? kh?? t????ng ?????ng v???i c??c s???n ph???m t???m trung m?? Vivo cho ra m???t g???n ????y, v???n l?? m???t s???n ph???m c?? thi???t k??? tr??? trung v???i m??u ??en tr??ng g????ng v?? xanh m???ng m??.', 900, 8600, 5, 0, 1, 0, '2022-11-20 03:58:29', '2022-11-20 03:58:29'),
(25, 1, 'Realme C33', 'Realme', 'Trong th??ng 10/2022, Realme C33 (3GB/32GB) l?? c??i t??n thu h??t ???????c nhi???u s??? ch?? ?? tr??n c??c di???n ????n c??ng ngh???, s??? h???u tr??n m??y l?? m???t thi???t k??? h???p xu h?????ng ??i k??m v???i m??n h??nh to r?? gi??p b???n c?? th??? s??? d???ng c??c t??c v??? gi???i tr?? ???????c t???t h??n', 900, 880, 6, 1, 0, 0, '2022-11-20 04:00:17', '2022-11-20 04:20:56'),
(26, 1, 'Realme 8 Pro', 'Realme', 'B??n c???nh Realme 8, Realme 8 Pro c??ng ???????c gi???i thi???u ?????n ng?????i d??ng v???i ??i???m nh???n ch??nh l?? s??? xu???t hi???n c???a camera 108 MP si??u n??t c??ng c??ng ngh??? s???c SuperDart 50 W v?? ??i k??m m???c gi?? b??n t???m trung r???t l?? t?????ng.', 1000, 900, 8, 1, 1, 0, '2022-11-20 04:02:08', '2022-11-20 04:02:08'),
(27, 1, 'Realme 9i', 'Realme', 'Realme ??ang ng??y c??ng c???i thi???n h??n r???t nhi???u ??? c??c s???n ph???m c???a h??? v?? s???n ph???m g???n ????y nh???t ???? l?? d??ng ??i???n tho???i Realme 9i. Chi???c ??i???n tho???i n??y ???????c s??? h???u con chip Snapdragon 680.', 1300, 1000, 4, 1, 1, 0, '2022-11-20 04:03:33', '2022-11-20 04:03:33'),
(28, 1, 'Realme C35', 'Realme', '??i???n tho???i Realme C35 thu???c ph??n kh??c gi?? r??? ???????c nh?? Realme cho ra m???t v???i thi???t k??? tr??? trung, dung l?????ng pin l???n c??ng camera h??? tr??? nhi???u t??nh n??ng .????y s??? l?? thi???t b??? li??n l???c, gi???i tr?? v?? l??m vi???c ???n ?????nh,??? cho c??c nhu c???u s??? d???ng c???a b???n.', 600, 590, 6, 1, 1, 0, '2022-11-20 04:04:43', '2022-11-20 04:04:43'),
(29, 1, 'Realme C33', 'Realme', 'Trong th??ng 10/2022, Realme C33 (3GB/32GB) l?? c??i t??n thu h??t ???????c nhi???u s??? ch?? ?? tr??n c??c di???n ????n c??ng ngh???, s??? h???u tr??n m??y l?? m???t thi???t k??? h???p xu h?????ng ??i k??m v???i m??n h??nh to r?? gi??p b???n c?? th??? s??? d???ng c??c t??c v??? gi???i tr?? ???????c t???t h??n.', 700, 450, 5, 1, 0, 0, '2022-11-20 04:05:41', '2022-11-20 04:05:41'),
(30, 1, 'Realme C30s', 'Realme', 'M???i ????y th?? chi???c ??i???n tho???i Realme C30s (2GB/32GB) c??ng ???? ch??nh th???c l??? di???n ????ng nh?? d??? ki???n c???a ng?????i d??ng v???i b??? th??ng s??? k??? thu???t kh?? ???n t?????ng c??ng m???c gi?? h???p l??. ??i???u n??y gi??p n??ng cao tr???i nghi???m m???t c??ch t???t h??n ?????i v???i nh???ng d??ng s???n ph???m thu???c ph??n kh??c gi?? r???.', 600, 590, 5, 1, 1, 0, '2022-11-20 04:06:46', '2022-11-20 04:06:46'),
(31, 1, 'Xiaomi Redmi Note 11', 'Mi', '??i???n tho???i Redmi ???????c m???nh danh l?? d??ng s???n ph???m qu???c d??n ngon - b???  - r??? c???a Xiaomi v?? Redmi Note 11 (4GB/64GB) c??ng kh??ng ph???i ngo???i l???, m??y s??? h???u m???t hi???u n??ng ???n ?????nh, m??n h??nh 90 Hz m?????t m??, c???m camera AI ?????n 50 MP c??ng m???t m???c gi?? v?? c??ng t???t.', 1400, 1200, 6, 0, 1, 0, '2022-11-20 04:08:38', '2022-11-20 04:08:38'),
(32, 1, 'Xiaomi 12T Pro', 'Mi', 'Cu???i c??ng Xiaomi 12T Pro 5G c??ng ???? ch??nh th???c l??? di???n tr??n th??? tr?????ng sau h??ng lo???t th??ng tin r?? r??? v??? th??ng s???, ????ng nh?? d??? ??o??n th?? ????? ph??n gi???i tr??n camera c???a phi??n b???n n??y ???????c nh?? s???n xu???t n??ng c???p l??n ?????n 200 MP', 900, 800, 4, 1, 0, 0, '2022-11-20 04:09:47', '2022-11-20 04:09:47'),
(33, 1, 'Xiaomi 12', 'Mi', '??i???n tho???i Xiaomi ??ang d???n kh???ng ?????nh ch??? ?????ng c???a m??nh trong ph??n kh??c flagship b???ng vi???c ra m???t Xiaomi 12 v???i b??? th??ng s??? ???n t?????ng, m??y c?? m???t thi???t k??? g???n g??ng, hi???u n??ng m???nh m???, m??n h??nh hi???n th??? chi ti???t c??ng kh??? n??ng ch???p ???nh s???c n??t nh??? trang b??? ???ng k??nh ?????n t??? Sony.', 1500, 1450, 8, 0, 1, 0, '2022-11-20 04:10:48', '2022-11-20 04:10:48'),
(34, 1, 'Xiaomi 11T Pro', 'Mi', '??i???n tho???i Xiaomi 11T Pro 5G 8GB s??? d???ng con chip Snapdragon 888 m???nh m???, camera ch??nh 108 MP, h??? tr??? s???c nhanh 120 W, m??n h??nh r???ng v???i t???c ????? l??m t????i l??n ?????n 120 Hz, t???n h?????ng tr???i nghi???m tuy???t v???i trong t???ng kho???nh kh???c.', 1000, 900, 5, 1, 0, 0, '2022-11-20 04:11:47', '2022-11-20 04:11:47'),
(35, 1, 'Xiaomi 11 Lite', 'Mi', 'Xiaomi 11 Lite 5G NE m???t phi??n b???n c?? ngo???i h??nh r???t gi???ng v???i Xiaomi Mi 11 Lite ???????c ra m???t tr?????c ????y. Chi???c smartphone n??y c???a Xiaomi mang trong m??nh m???t hi???u n??ng ???n ?????nh, thi???t k??? sang tr???ng v?? m??n h??nh l???n ????p ???ng t???t c??c t??c v??? h???ng ng??y c???a b???n m???t c??ch d??? d??ng.', 1000, 900, 6, 1, 0, 0, '2022-11-20 04:13:07', '2022-11-20 04:13:07'),
(36, 1, 'Xiaomi Redmi 10C', 'Mi', 'Xiaomi Redmi 10C 64GB ra m???t v???i m???t c???u h??nh m???nh m??? nh??? trang b??? con chip 6 nm ?????n t??? Qualcomm, m??n h??nh hi???n th??? ?????p m???t, pin ????p ???ng nhu c???u s??? d???ng c??? ng??y, h???a h???n mang ?????n tr???i nghi???m tuy???t v???i so v???i m???c gi?? m?? n?? trang b???.', 900, 800, 0, 0, 1, 0, '2022-11-20 04:14:10', '2022-11-25 09:01:24'),
(44, 3, 'Casio LTP-VT01L', 'Casio', '??? ????y l?? m??n ph??? ki???n th???i trang l?? t?????ng ?????n t??? h??ng ?????ng h??? Casio n???i ti???ng c???a Nh???t B???n. N???i b???t v???i thi???t k??? ????n gi???n v?? tinh t??? ph?? h???p v???i m???i c?? n??ng.\r\n\r\n??? ?????ng h??? Casio 34 mm n??? LTP-VT01L-5BUDF s??? h???u ???????ng k??nh m???t 34 mm.\r\n\r\n??? Khung vi???n ???????c l??m t??? th??p kh??ng g??? b???n b??? v???i th???i gian, ch???ng oxi ho??, ch???ng ch???u m???i th???i ti???t. D??y ??eo ?????ng h??? ???????c l??m t??? da t???ng h???p, t???o c???m gi??c tho???i m??i khi ??eo, ??m s??t c??? tay.\r\n\r\n??? Tho???i m??i khi r???a tay m?? kh??ng lo h?? h???ng v?? ?????ng h??? n??? n??y c?? h??? s??? kh??ng n?????c l?? 1 ATM. Kh??ng n??n ??eo khi ??i t???m, ??i b??i, l???n.', 400, 380, 10, 1, 0, 0, '2022-11-22 08:55:39', '2022-11-22 09:24:53'),
(45, 3, 'Casio Unisex A168W', 'Casio', '??? ?????ng h??? Casio 36.3 mm Unisex A168WER-2ADF l?? m??n ph??? ki???n th???i trang l?? t?????ng ?????n t??? h??ng ?????ng h??? Casio n???i ti???ng c???a Nh???t B???n. \r\n\r\n??? ?????ng h??? c?? ???????ng k??nh m???t 38.6 x 36.3 mm.\r\n\r\n??? Ch???t li???u c???a khung vi???n ???????c l??m t??? nh???a resin v?? d??y ??eo c???a ?????ng h??? ???????c l??m t??? th??p kh??ng g??? c???ng c??p, b???n b??? v???i th???i gian.\r\n\r\n??? ?????ng h??? unisex s??? h???u ????? ch???ng n?????c 1 ATM: An to??n khi r???a tay. Kh??ng n??n s??? d???ng khi ??i m??a, ??i t???m hay b??i, l???n.', 500, 460, 8, 0, 1, 0, '2022-11-22 08:58:02', '2022-11-22 09:25:08'),
(46, 3, 'CASIO W-96H-1BVD', 'Casio', 'Th????ng hi???u ?????ng h??? n???i ti???ng ?????n t??? Nh???t B???n kh??ng ng???ng c???i ti???n v?? cho ra m???t nh???ng d??ng s???n ph???m ch???t l?????ng ph?? h???p v???i nhi???u ?????i t?????ng kh??ch h??ng. Nh???ng d??ng s???n ph???m n???i ti???ng c???a Casio l??: G-Shock v???i thi???t k??? m???nh m??? c??ng ????? b???n cao, Edifice thi???t k??? hi???n ?????i c??ng nhi???u t??nh n??ng v?????t tr???i, Sheen v???i thi???t k??? c??? ??i???n v?? sang tr???ng,???', 700, 600, 5, 0, 1, 0, '2022-11-22 09:00:23', '2022-11-22 09:25:19'),
(47, 3, 'CASIO W-219H-2A', 'Casio', 'Th????ng hi???u ?????ng h??? n???i ti???ng ?????n t??? Nh???t B???n kh??ng ng???ng c???i ti???n v?? cho ra m???t nh???ng d??ng s???n ph???m ch???t l?????ng ph?? h???p v???i nhi???u ?????i t?????ng kh??ch h??ng. Nh???ng d??ng s???n ph???m n???i ti???ng c???a Casio l??: G-Shock v???i thi???t k??? m???nh m??? c??ng ????? b???n cao, Edifice thi???t k??? hi???n ?????i c??ng nhi???u t??nh n??ng v?????t tr???i, Sheen v???i thi???t k??? c??? ??i???n v?? sang tr???ng,???', 500, 490, 6, 1, 0, 0, '2022-11-22 09:03:05', '2022-11-22 09:25:29'),
(48, 3, 'CASIO MTS-100L-1A', 'Casio', 'Th????ng hi???u ?????ng h??? n???i ti???ng ?????n t??? Nh???t B???n kh??ng ng???ng c???i ti???n v?? cho ra m???t nh???ng d??ng s???n ph???m ch???t l?????ng ph?? h???p v???i nhi???u ?????i t?????ng kh??ch h??ng. Nh???ng d??ng s???n ph???m n???i ti???ng c???a Casio l??: G-Shock v???i thi???t k??? m???nh m??? c??ng ????? b???n cao, Edifice thi???t k??? hi???n ?????i c??ng nhi???u t??nh n??ng v?????t tr???i, Sheen v???i thi???t k??? c??? ??i???n v?? sang tr???ng,???', 500, 460, 9, 0, 1, 0, '2022-11-22 09:05:21', '2022-11-22 09:05:21');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_id`, `quantity`, `created_at`, `updated_at`) VALUES
(4, 2, 1, 3, '2022-11-20 01:28:29', '2022-11-20 01:28:29'),
(5, 2, 2, 0, '2022-11-20 01:28:29', '2022-11-25 21:44:12'),
(6, 2, 4, 1, '2022-11-20 01:28:29', '2022-11-20 01:28:29'),
(7, 3, 2, 2, '2022-11-20 01:32:15', '2022-11-20 01:32:15'),
(8, 3, 3, 3, '2022-11-20 01:32:15', '2022-11-20 01:32:15'),
(9, 4, 2, 3, '2022-11-20 01:34:13', '2022-11-20 01:34:13'),
(10, 4, 3, 2, '2022-11-20 01:34:13', '2022-11-20 01:34:13'),
(11, 4, 4, 1, '2022-11-20 01:34:13', '2022-11-20 01:34:13'),
(12, 4, 5, 1, '2022-11-20 01:34:13', '2022-11-20 01:34:13'),
(13, 5, 1, 3, '2022-11-20 01:37:25', '2022-11-20 03:30:47'),
(14, 5, 2, 2, '2022-11-20 01:37:25', '2022-11-20 01:37:25'),
(15, 5, 3, 1, '2022-11-20 01:37:25', '2022-11-20 01:37:25'),
(16, 6, 1, 4, '2022-11-20 01:40:35', '2022-11-20 01:40:35'),
(17, 6, 2, 1, '2022-11-20 01:40:35', '2022-11-20 01:40:35'),
(18, 7, 1, 5, '2022-11-20 01:42:14', '2022-11-20 01:42:14'),
(19, 7, 2, 4, '2022-11-20 01:42:14', '2022-11-20 01:42:14'),
(20, 7, 3, 8, '2022-11-20 01:42:14', '2022-11-20 01:42:14'),
(21, 7, 4, 2, '2022-11-20 01:42:14', '2022-11-20 01:42:14'),
(22, 8, 1, 5, '2022-11-20 01:44:39', '2022-11-20 01:44:39'),
(23, 8, 2, 2, '2022-11-20 01:44:39', '2022-11-20 01:44:39'),
(24, 8, 4, 7, '2022-11-20 01:44:39', '2022-11-20 01:44:39'),
(25, 9, 1, 2, '2022-11-20 01:46:29', '2022-11-20 01:46:29'),
(26, 9, 2, 2, '2022-11-20 01:46:29', '2022-11-20 01:46:29'),
(27, 9, 3, 2, '2022-11-20 01:46:29', '2022-11-20 01:46:29'),
(28, 9, 5, 2, '2022-11-20 01:46:29', '2022-11-20 01:46:29'),
(29, 10, 2, 3, '2022-11-20 01:47:38', '2022-11-20 01:47:38'),
(30, 10, 3, 1, '2022-11-20 01:47:38', '2022-11-20 01:47:38'),
(31, 10, 4, 2, '2022-11-20 01:47:38', '2022-11-20 01:47:38'),
(32, 11, 2, 3, '2022-11-20 01:49:40', '2022-11-20 01:49:40'),
(33, 11, 3, 3, '2022-11-20 01:49:40', '2022-11-20 01:49:40'),
(34, 11, 5, 3, '2022-11-20 01:49:40', '2022-11-20 01:49:40'),
(35, 12, 1, 8, '2022-11-20 01:51:41', '2022-11-20 01:51:41'),
(36, 12, 2, 34, '2022-11-20 01:51:41', '2022-11-20 01:51:41'),
(37, 12, 3, 0, '2022-11-20 01:51:41', '2022-11-20 01:51:41'),
(38, 13, 1, 2, '2022-11-20 01:53:08', '2022-11-20 01:53:08'),
(39, 13, 2, 2, '2022-11-20 01:53:08', '2022-11-20 01:53:08'),
(40, 13, 3, 2, '2022-11-20 01:53:08', '2022-11-20 01:53:08'),
(41, 14, 1, 0, '2022-11-20 01:54:26', '2022-11-20 03:38:57'),
(42, 14, 2, 3, '2022-11-20 01:54:26', '2022-11-20 01:54:26'),
(43, 14, 4, 4, '2022-11-20 01:54:26', '2022-11-20 01:54:26'),
(44, 15, 2, 2, '2022-11-20 03:41:57', '2022-11-20 03:41:57'),
(45, 15, 3, 2, '2022-11-20 03:41:57', '2022-11-20 03:41:57'),
(46, 15, 4, 1, '2022-11-20 03:41:57', '2022-11-20 03:41:57'),
(47, 16, 1, 2, '2022-11-20 03:42:40', '2022-11-20 03:42:40'),
(48, 16, 2, 1, '2022-11-20 03:42:40', '2022-11-20 03:42:40'),
(49, 16, 3, 2, '2022-11-20 03:42:40', '2022-11-20 03:42:40'),
(50, 17, 1, 2, '2022-11-20 03:48:45', '2022-11-20 03:48:45'),
(51, 17, 2, 2, '2022-11-20 03:48:45', '2022-11-20 03:48:45'),
(52, 18, 1, 3, '2022-11-20 03:49:51', '2022-11-20 03:49:51'),
(53, 18, 2, 1, '2022-11-20 03:49:51', '2022-11-20 03:49:51'),
(54, 18, 3, 2, '2022-11-20 03:49:51', '2022-11-20 03:49:51'),
(55, 19, 1, 2, '2022-11-20 03:51:24', '2022-11-20 03:51:24'),
(56, 19, 2, 3, '2022-11-20 03:51:24', '2022-11-20 03:51:24'),
(57, 19, 5, 1, '2022-11-20 03:51:24', '2022-11-20 03:51:24'),
(58, 20, 3, 2, '2022-11-20 03:52:22', '2022-11-20 03:52:22'),
(59, 20, 4, 1, '2022-11-20 03:52:22', '2022-11-20 03:52:22'),
(60, 20, 5, 3, '2022-11-20 03:52:22', '2022-11-20 03:52:22'),
(61, 21, 2, 1, '2022-11-20 03:53:43', '2022-11-20 03:53:43'),
(62, 21, 3, 1, '2022-11-20 03:53:43', '2022-11-20 03:53:43'),
(63, 21, 5, 1, '2022-11-20 03:53:43', '2022-11-20 03:53:43'),
(64, 22, 2, 3, '2022-11-20 03:55:42', '2022-11-20 03:55:42'),
(65, 22, 3, 1, '2022-11-20 03:55:42', '2022-11-20 03:55:42'),
(66, 23, 1, 2, '2022-11-20 03:57:16', '2022-11-20 03:57:16'),
(67, 23, 2, 1, '2022-11-20 03:57:16', '2022-11-20 03:57:16'),
(68, 24, 2, 2, '2022-11-20 03:58:29', '2022-11-20 03:58:29'),
(69, 24, 4, 3, '2022-11-20 03:58:29', '2022-11-20 03:58:29'),
(70, 25, 1, 2, '2022-11-20 04:00:17', '2022-11-20 04:00:17'),
(71, 25, 2, 2, '2022-11-20 04:00:17', '2022-11-20 04:00:17'),
(72, 25, 3, 1, '2022-11-20 04:00:17', '2022-11-20 04:00:17'),
(73, 25, 5, 1, '2022-11-20 04:00:17', '2022-11-20 04:00:17'),
(74, 26, 2, 3, '2022-11-20 04:02:08', '2022-11-20 04:02:08'),
(75, 26, 4, 3, '2022-11-20 04:02:08', '2022-11-20 04:02:08'),
(76, 26, 5, 2, '2022-11-20 04:02:08', '2022-11-20 04:02:08'),
(77, 27, 1, 2, '2022-11-20 04:03:33', '2022-11-20 04:03:33'),
(78, 27, 2, 2, '2022-11-20 04:03:33', '2022-11-20 04:03:33'),
(79, 28, 2, 2, '2022-11-20 04:04:43', '2022-11-20 04:04:43'),
(80, 28, 3, 1, '2022-11-20 04:04:43', '2022-11-20 04:04:43'),
(81, 29, 1, 2, '2022-11-20 04:05:41', '2022-11-20 04:05:41'),
(82, 29, 3, 2, '2022-11-20 04:05:41', '2022-11-20 04:05:41'),
(83, 29, 5, 1, '2022-11-20 04:05:41', '2022-11-20 04:05:41'),
(84, 30, 1, 2, '2022-11-20 04:06:46', '2022-11-20 04:06:46'),
(85, 30, 2, 1, '2022-11-20 04:06:46', '2022-11-20 04:06:46'),
(86, 30, 5, 0, '2022-11-20 04:06:46', '2022-11-25 09:01:24'),
(87, 31, 2, 1, '2022-11-20 04:08:38', '2022-11-20 04:08:38'),
(88, 31, 3, 2, '2022-11-20 04:08:38', '2022-11-20 04:08:38'),
(89, 31, 4, 2, '2022-11-20 04:08:38', '2022-11-20 04:08:38'),
(90, 32, 2, 1, '2022-11-20 04:09:47', '2022-11-20 04:09:47'),
(91, 32, 3, 1, '2022-11-20 04:09:47', '2022-11-20 04:09:47'),
(92, 32, 4, 1, '2022-11-20 04:09:47', '2022-11-20 04:09:47'),
(93, 32, 5, 1, '2022-11-20 04:09:47', '2022-11-20 04:09:47'),
(94, 33, 1, 2, '2022-11-20 04:10:48', '2022-11-20 04:10:48'),
(95, 33, 2, 2, '2022-11-20 04:10:48', '2022-11-20 04:10:48'),
(96, 33, 5, 2, '2022-11-20 04:10:48', '2022-11-20 04:10:48'),
(97, 34, 1, 0, '2022-11-20 04:11:47', '2022-11-25 10:35:08'),
(98, 34, 2, 0, '2022-11-20 04:11:47', '2022-11-25 09:06:51'),
(99, 34, 5, 0, '2022-11-20 04:11:47', '2022-11-25 21:44:12'),
(100, 35, 3, 2, '2022-11-20 04:13:07', '2022-11-20 04:13:07'),
(101, 35, 4, 0, '2022-11-20 04:13:07', '2022-11-25 11:52:39'),
(124, 44, 1, 2, '2022-11-22 08:55:39', '2022-11-22 08:55:39'),
(125, 44, 2, 2, '2022-11-22 08:55:39', '2022-11-22 08:55:39'),
(126, 44, 3, 2, '2022-11-22 08:55:39', '2022-11-22 08:55:39'),
(127, 45, 1, 2, '2022-11-22 08:58:02', '2022-11-22 08:58:02'),
(128, 45, 2, 0, '2022-11-22 08:58:02', '2022-11-25 09:06:51'),
(129, 46, 1, 2, '2022-11-22 09:00:23', '2022-11-22 09:00:23'),
(130, 46, 2, 2, '2022-11-22 09:00:23', '2022-11-22 09:00:23'),
(131, 46, 3, 0, '2022-11-22 09:00:23', '2022-11-25 10:33:16'),
(132, 47, 1, 0, '2022-11-22 09:03:05', '2022-11-25 09:01:24'),
(133, 47, 4, 0, '2022-11-22 09:03:05', '2022-11-25 09:01:24'),
(134, 47, 5, 1, '2022-11-22 09:03:05', '2022-11-25 21:51:43'),
(135, 48, 1, 2, '2022-11-22 09:05:21', '2022-11-22 09:05:21'),
(136, 48, 3, 2, '2022-11-22 09:05:21', '2022-11-22 09:05:21');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(6, 2, 'uploads/products/16689329091.jpg', '2022-11-20 01:28:29', '2022-11-20 01:28:29'),
(7, 2, 'uploads/products/16689329092.jpg', '2022-11-20 01:28:29', '2022-11-20 01:28:29'),
(8, 3, 'uploads/products/16689331351.jpg', '2022-11-20 01:32:15', '2022-11-20 01:32:15'),
(9, 3, 'uploads/products/16689331352.jpg', '2022-11-20 01:32:15', '2022-11-20 01:32:15'),
(10, 4, 'uploads/products/16689332531.jpg', '2022-11-20 01:34:13', '2022-11-20 01:34:13'),
(11, 4, 'uploads/products/16689332532.jpg', '2022-11-20 01:34:13', '2022-11-20 01:34:13'),
(12, 4, 'uploads/products/16689332533.jpg', '2022-11-20 01:34:13', '2022-11-20 01:34:13'),
(13, 4, 'uploads/products/16689332534.jpg', '2022-11-20 01:34:13', '2022-11-20 01:34:13'),
(14, 4, 'uploads/products/16689332535.jpg', '2022-11-20 01:34:13', '2022-11-20 01:34:13'),
(15, 5, 'uploads/products/16689334451.jpeg', '2022-11-20 01:37:25', '2022-11-20 01:37:25'),
(16, 5, 'uploads/products/16689334452.jpg', '2022-11-20 01:37:25', '2022-11-20 01:37:25'),
(17, 5, 'uploads/products/16689334453.jpg', '2022-11-20 01:37:25', '2022-11-20 01:37:25'),
(18, 6, 'uploads/products/16689336351.jpg', '2022-11-20 01:40:35', '2022-11-20 01:40:35'),
(19, 6, 'uploads/products/16689336352.jpg', '2022-11-20 01:40:35', '2022-11-20 01:40:35'),
(20, 6, 'uploads/products/16689336353.jpg', '2022-11-20 01:40:35', '2022-11-20 01:40:35'),
(21, 6, 'uploads/products/16689336354.jpg', '2022-11-20 01:40:35', '2022-11-20 01:40:35'),
(22, 7, 'uploads/products/16689337341.jpg', '2022-11-20 01:42:14', '2022-11-20 01:42:14'),
(23, 7, 'uploads/products/16689337342.jpg', '2022-11-20 01:42:14', '2022-11-20 01:42:14'),
(24, 7, 'uploads/products/16689337343.jpg', '2022-11-20 01:42:14', '2022-11-20 01:42:14'),
(25, 7, 'uploads/products/16689337344.jpg', '2022-11-20 01:42:14', '2022-11-20 01:42:14'),
(26, 8, 'uploads/products/16689338791.jpg', '2022-11-20 01:44:39', '2022-11-20 01:44:39'),
(27, 8, 'uploads/products/16689338792.jpg', '2022-11-20 01:44:39', '2022-11-20 01:44:39'),
(28, 8, 'uploads/products/16689338793.jpg', '2022-11-20 01:44:39', '2022-11-20 01:44:39'),
(29, 8, 'uploads/products/16689338794.jpg', '2022-11-20 01:44:39', '2022-11-20 01:44:39'),
(30, 9, 'uploads/products/16689339891.jpg', '2022-11-20 01:46:29', '2022-11-20 01:46:29'),
(31, 9, 'uploads/products/16689339892.jpg', '2022-11-20 01:46:29', '2022-11-20 01:46:29'),
(32, 9, 'uploads/products/16689339893.jpg', '2022-11-20 01:46:29', '2022-11-20 01:46:29'),
(33, 10, 'uploads/products/16689340581.jpg', '2022-11-20 01:47:38', '2022-11-20 01:47:38'),
(34, 10, 'uploads/products/16689340582.jpg', '2022-11-20 01:47:38', '2022-11-20 01:47:38'),
(35, 10, 'uploads/products/16689340583.jpg', '2022-11-20 01:47:38', '2022-11-20 01:47:38'),
(36, 11, 'uploads/products/16689341801.jpg', '2022-11-20 01:49:40', '2022-11-20 01:49:40'),
(37, 11, 'uploads/products/16689341802.jpg', '2022-11-20 01:49:40', '2022-11-20 01:49:40'),
(38, 11, 'uploads/products/16689341803.jpg', '2022-11-20 01:49:40', '2022-11-20 01:49:40'),
(39, 11, 'uploads/products/16689341804.jpg', '2022-11-20 01:49:40', '2022-11-20 01:49:40'),
(40, 12, 'uploads/products/16689343011.jpg', '2022-11-20 01:51:41', '2022-11-20 01:51:41'),
(41, 12, 'uploads/products/16689343012.jpg', '2022-11-20 01:51:41', '2022-11-20 01:51:41'),
(42, 12, 'uploads/products/16689343013.jpg', '2022-11-20 01:51:41', '2022-11-20 01:51:41'),
(43, 13, 'uploads/products/16689343881.jpg', '2022-11-20 01:53:08', '2022-11-20 01:53:08'),
(44, 13, 'uploads/products/16689343882.jpg', '2022-11-20 01:53:08', '2022-11-20 01:53:08'),
(45, 14, 'uploads/products/16689344661.jpg', '2022-11-20 01:54:26', '2022-11-20 01:54:26'),
(46, 14, 'uploads/products/16689344662.jpg', '2022-11-20 01:54:26', '2022-11-20 01:54:26'),
(47, 15, 'uploads/products/16689409171.jpg', '2022-11-20 03:41:57', '2022-11-20 03:41:57'),
(48, 15, 'uploads/products/16689409172.jpg', '2022-11-20 03:41:57', '2022-11-20 03:41:57'),
(49, 17, 'uploads/products/16689413251.jpg', '2022-11-20 03:48:45', '2022-11-20 03:48:45'),
(50, 17, 'uploads/products/16689413252.jpg', '2022-11-20 03:48:45', '2022-11-20 03:48:45'),
(51, 18, 'uploads/products/16689413911.jpg', '2022-11-20 03:49:51', '2022-11-20 03:49:51'),
(52, 19, 'uploads/products/16689414841.jpg', '2022-11-20 03:51:24', '2022-11-20 03:51:24'),
(53, 20, 'uploads/products/16689415421.jpg', '2022-11-20 03:52:22', '2022-11-20 03:52:22'),
(54, 21, 'uploads/products/16689416231.jpg', '2022-11-20 03:53:43', '2022-11-20 03:53:43'),
(55, 21, 'uploads/products/16689416232.jpg', '2022-11-20 03:53:43', '2022-11-20 03:53:43'),
(56, 22, 'uploads/products/16689417421.jpeg', '2022-11-20 03:55:42', '2022-11-20 03:55:42'),
(57, 22, 'uploads/products/16689417422.jpeg', '2022-11-20 03:55:42', '2022-11-20 03:55:42'),
(58, 23, 'uploads/products/16689418361.jpg', '2022-11-20 03:57:16', '2022-11-20 03:57:16'),
(59, 23, 'uploads/products/16689418362.jpg', '2022-11-20 03:57:16', '2022-11-20 03:57:16'),
(60, 26, 'uploads/products/16689421281.jpg', '2022-11-20 04:02:08', '2022-11-20 04:02:08'),
(61, 26, 'uploads/products/16689421282.jpg', '2022-11-20 04:02:08', '2022-11-20 04:02:08'),
(62, 26, 'uploads/products/16689421283.jpg', '2022-11-20 04:02:08', '2022-11-20 04:02:08'),
(63, 27, 'uploads/products/16689422131.jpg', '2022-11-20 04:03:33', '2022-11-20 04:03:33'),
(64, 27, 'uploads/products/16689422132.jpg', '2022-11-20 04:03:33', '2022-11-20 04:03:33'),
(65, 28, 'uploads/products/16689422831.jpg', '2022-11-20 04:04:43', '2022-11-20 04:04:43'),
(66, 28, 'uploads/products/16689422832.jpg', '2022-11-20 04:04:43', '2022-11-20 04:04:43'),
(67, 29, 'uploads/products/16689423411.jpg', '2022-11-20 04:05:41', '2022-11-20 04:05:41'),
(68, 29, 'uploads/products/16689423412.jpg', '2022-11-20 04:05:41', '2022-11-20 04:05:41'),
(69, 30, 'uploads/products/16689424061.jpg', '2022-11-20 04:06:46', '2022-11-20 04:06:46'),
(70, 30, 'uploads/products/16689424062.jpg', '2022-11-20 04:06:46', '2022-11-20 04:06:46'),
(71, 31, 'uploads/products/16689425181.jpg', '2022-11-20 04:08:38', '2022-11-20 04:08:38'),
(72, 31, 'uploads/products/16689425182.jpg', '2022-11-20 04:08:38', '2022-11-20 04:08:38'),
(73, 31, 'uploads/products/16689425183.jpeg', '2022-11-20 04:08:38', '2022-11-20 04:08:38'),
(74, 32, 'uploads/products/16689425871.jpg', '2022-11-20 04:09:47', '2022-11-20 04:09:47'),
(75, 32, 'uploads/products/16689425872.jpg', '2022-11-20 04:09:47', '2022-11-20 04:09:47'),
(76, 33, 'uploads/products/16689426481.jpg', '2022-11-20 04:10:48', '2022-11-20 04:10:48'),
(77, 33, 'uploads/products/16689426482.jpg', '2022-11-20 04:10:48', '2022-11-20 04:10:48'),
(78, 33, 'uploads/products/16689426483.jpg', '2022-11-20 04:10:48', '2022-11-20 04:10:48'),
(79, 34, 'uploads/products/16689427071.jpeg', '2022-11-20 04:11:47', '2022-11-20 04:11:47'),
(80, 35, 'uploads/products/16689427871.jpg', '2022-11-20 04:13:07', '2022-11-20 04:13:07'),
(81, 35, 'uploads/products/16689427872.jpg', '2022-11-20 04:13:07', '2022-11-20 04:13:07'),
(82, 35, 'uploads/products/16689427873.jpg', '2022-11-20 04:13:07', '2022-11-20 04:13:07'),
(83, 35, 'uploads/products/16689427874.jpg', '2022-11-20 04:13:07', '2022-11-20 04:13:07'),
(84, 35, 'uploads/products/16689427875.jpg', '2022-11-20 04:13:07', '2022-11-20 04:13:07'),
(85, 36, 'uploads/products/16689428501.jpg', '2022-11-20 04:14:10', '2022-11-20 04:14:10'),
(86, 36, 'uploads/products/16689428502.jpg', '2022-11-20 04:14:10', '2022-11-20 04:14:10'),
(87, 36, 'uploads/products/16689428503.jpg', '2022-11-20 04:14:10', '2022-11-20 04:14:10'),
(88, 24, 'uploads/products/16689430231.jpg', '2022-11-20 04:17:03', '2022-11-20 04:17:03'),
(89, 24, 'uploads/products/16689430232.jpg', '2022-11-20 04:17:03', '2022-11-20 04:17:03'),
(90, 24, 'uploads/products/16689430233.jpg', '2022-11-20 04:17:03', '2022-11-20 04:17:03'),
(91, 16, 'uploads/products/16689431341.jpg', '2022-11-20 04:18:54', '2022-11-20 04:18:54'),
(92, 16, 'uploads/products/16689431342.jpg', '2022-11-20 04:18:54', '2022-11-20 04:18:54'),
(93, 25, 'uploads/products/16689432561.jpg', '2022-11-20 04:20:56', '2022-11-20 04:20:56'),
(94, 25, 'uploads/products/16689432562.jpg', '2022-11-20 04:20:56', '2022-11-20 04:20:56'),
(124, 44, 'uploads/products/16691325393.jpg', '2022-11-22 08:55:39', '2022-11-22 08:55:39'),
(125, 44, 'uploads/products/16691325721.jpg', '2022-11-22 08:56:12', '2022-11-22 08:56:12'),
(126, 44, 'uploads/products/16691325722.jpg', '2022-11-22 08:56:12', '2022-11-22 08:56:12'),
(129, 45, 'uploads/products/16691326823.jpg', '2022-11-22 08:58:02', '2022-11-22 08:58:02'),
(130, 45, 'uploads/products/16691327051.jpg', '2022-11-22 08:58:25', '2022-11-22 08:58:25'),
(131, 45, 'uploads/products/16691327052.jpg', '2022-11-22 08:58:25', '2022-11-22 08:58:25'),
(137, 46, 'uploads/products/16691328643.jpg', '2022-11-22 09:01:04', '2022-11-22 09:01:04'),
(138, 46, 'uploads/products/16691328881.jpg', '2022-11-22 09:01:28', '2022-11-22 09:01:28'),
(139, 46, 'uploads/products/16691328882.jpg', '2022-11-22 09:01:28', '2022-11-22 09:01:28'),
(140, 47, 'uploads/products/16691329851.jpg', '2022-11-22 09:03:05', '2022-11-22 09:03:05'),
(141, 47, 'uploads/products/16691330121.jpg', '2022-11-22 09:03:32', '2022-11-22 09:03:32'),
(142, 47, 'uploads/products/16691330122.jpg', '2022-11-22 09:03:32', '2022-11-22 09:03:32'),
(143, 48, 'uploads/products/16691331211.jpg', '2022-11-22 09:05:21', '2022-11-22 09:05:21'),
(144, 48, 'uploads/products/16691331212.jpg', '2022-11-22 09:05:21', '2022-11-22 09:05:21'),
(145, 48, 'uploads/products/16691331213.jpg', '2022-11-22 09:05:21', '2022-11-22 09:05:21');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=hidden,0=visible',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'World Cup 2022 b??ng ch??y khi s??? h???u Vivo V25 Pro v?? nh???ng l?? do b???n n??n mua ngay!', 'M??a World Cup 2022 ???? c???n k???, ch???c h???n nhi???u b???n v???n ??ang b??n kho??n t??m ki???m cho m??nh m???t m???u ??i???n tho???i c?? m??n h??nh l???n s???c n??t ????? th?????ng th???c nh???ng tr???n b??ng m??n nh??n, c??ng v???i ???? l?? nhu c???u v??? m???t c???u h??nh m???nh m??? ????? c?? th??? chi???n game trong ph??t gi???i lao c??ng th???ng.', 'uploads/slider/1668940524.png', 0, '2022-11-20 03:35:24', '2022-11-20 03:35:24'),
(2, 'Samsung Galaxy A series sale ngon ?????n c??? n??o trong d???p hotsale cu???i tu???n n??y', 'Galaxy A23 s??? h???u v??? ngo??i n??ng ?????ng v???i thi???t k??? nguy??n kh???i v?? m???t l??ng ???????c l??m t??? nh???a gi??p t???i ??u kh???i l?????ng m??y. ??i???n tho???i c??ng ???????c trang b??? t???m n???n PLS TFT LCD v???i k??ch th?????c 6.6 inch c?? ????? ph??n gi???i Full HD+', 'uploads/slider/1668940574.png', 0, '2022-11-20 03:36:14', '2022-11-20 03:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=user,1=admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_as`) VALUES
(1, 'Nguyen Hieu', 'hieu@gmail.com', NULL, '$2y$10$eDW57D86FrFPDl2tF2DdnORA6SXBTXEjQRWOUw6OIu53DUFnzlLo2', 'dstYHd6w7k3QkWTynJmsANwXaHB4FQ9IeNmy2meQUAZTK0YydXKKMX1vVAUe', '2022-11-20 01:19:56', '2022-11-20 01:19:56', 0),
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$10$l4NtEKTRyRNP8vXcMrG/ROVI.0UdJMIB4Hu6z1nVJ7rmLvgdkx1xa', NULL, '2022-11-20 01:20:12', '2022-11-25 10:58:32', 1),
(3, 'Duy Bao', 'bao@gmail.com', NULL, '$2y$10$F/EfFTCl7cJL5bnyJTC9jemPJxtT3PViAhh/HPZ79r/Vo2NVHXzP.', NULL, '2022-11-25 08:58:01', '2022-11-25 08:58:01', 0),
(4, 'Cong Toan', 'toan@gmail.com', NULL, '$2y$10$kf9pnMcIxpLBGnAon9d98OcUztr7ZY/rmEUmRX/hEttki5LMiHfiu', NULL, '2022-11-25 08:58:52', '2022-11-25 08:58:52', 0),
(5, 'Thien', 'hieuvn201103it@gmail.com', NULL, '$2y$10$X5GGcFl3Yndjw/iC.hTtz.OJIovUdp8FZbe3RY7vBc40s.s6KFm.m', NULL, '2022-11-25 21:41:04', '2022-11-25 21:41:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `phone`, `pin_code`, `address`, `created_at`, `updated_at`) VALUES
(1, 2, '0388335845', '123123', 'Hoa Vang, Da Nang', '2022-11-25 10:22:06', '2022-11-25 10:22:06'),
(2, 1, '0388335845', '123123', 'Hoa Vang, Da Nang', '2022-11-25 10:27:04', '2022-11-25 10:27:04'),
(3, 3, '0904041765', '312323', 'Ngu Hanh Son, Da Nang', '2022-11-25 10:28:00', '2022-11-25 10:28:00'),
(4, 4, '0703046745', '657567', 'Thanh Khe, Da Nang', '2022-11-25 10:28:47', '2022-11-25 10:28:47'),
(5, 5, '0904041765', '312323', 'Hoa Khanh,  Da Nang', '2022-11-25 21:43:55', '2022-11-25 21:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_colors_product_id_foreign` (`product_id`),
  ADD KEY `product_colors_color_id_foreign` (`color_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_details_user_id_unique` (`user_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD CONSTRAINT `product_colors_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_colors_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
