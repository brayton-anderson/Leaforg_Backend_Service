-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2021 at 07:29 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leaforgadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `key`, `value`) VALUES
(7, 'date_format', 'l jS F Y (H:i:s)'),
(8, 'language', 'en'),
(17, 'is_human_date_format', '1'),
(18, 'app_name', 'Leaforg'),
(19, 'app_short_description', 'Leaforg® is a non-profit global marketplace for recycled materials and products. We are spearheading the effort to connect worldwide demand for sustainable materials with reputable providers.'),
(20, 'mail_driver', 'smtp'),
(21, 'mail_host', 'mail.soqo.co.ke'),
(22, 'mail_port', '465'),
(23, 'mail_username', 'info@soqo.co.ke'),
(24, 'mail_password', 'WF=b2MVg6^Wv'),
(25, 'mail_encryption', 'ssl'),
(26, 'mail_from_address', 'no_reply@soqo.co.ke'),
(27, 'mail_from_name', 'SOQO App'),
(30, 'timezone', 'Africa/Nairobi'),
(32, 'theme_contrast', 'light'),
(33, 'theme_color', 'warning'),
(34, 'app_logo', '74ceb42b-70a1-42c1-8cc3-37d9d1a55b9e'),
(35, 'nav_color', 'navbar-light bg-white'),
(38, 'logo_bg_color', 'bg-white'),
(66, 'default_role', 'admin'),
(68, 'facebook_app_id', '518416208939727'),
(69, 'facebook_app_secret', '93649810f78fa9ca0d48972fee2a75cd'),
(71, 'twitter_app_id', 'twitter'),
(72, 'twitter_app_secret', 'twitter 1'),
(74, 'google_app_id', '527129559488-roolg8aq110p8r1q952fqa9tm06gbloe.apps.googleusercontent.com'),
(75, 'google_app_secret', 'FpIi8SLgc69ZWodk-xHaOrxn'),
(77, 'enable_google', '1'),
(78, 'enable_facebook', '1'),
(93, 'enable_stripe', '1'),
(94, 'stripe_key', 'pk_test_pltzOnX3zsUZMoTTTVUL4O41'),
(95, 'stripe_secret', 'sk_test_o98VZx3RKDUytaokX4My3a20'),
(101, 'custom_field_models.0', 'App\\Models\\User'),
(104, 'default_tax', '10'),
(107, 'default_currency', 'kes'),
(108, 'fixed_header', '0'),
(109, 'fixed_footer', '0'),
(110, 'fcm_key', 'AAAA-T1dcr8:APA91bGXeRHlfy76ZCMen999dXRAnZ58z8fdmD8gsFLTRzB41LwsyavNh1Hvkj2hv_es5JUg3m2K5QbuO60RGuVoXD7wPURM2jPdk2hevUaz5QSgGl5104h0lQAiJuPwRvMzhVPzl_de'),
(111, 'enable_notifications', '1'),
(112, 'paypal_username', 'sb-z3gdq482047_api1.business.example.com'),
(113, 'paypal_password', 'JV2A7G4SEMLMZ565'),
(114, 'paypal_secret', 'AbMmSXVaig1ExpY3utVS3dcAjx7nAHH0utrZsUN6LYwPgo7wfMzrV5WZ'),
(115, 'enable_paypal', '1'),
(116, 'main_color', '#ffaa00'),
(117, 'main_dark_color', '#2c2c2c'),
(118, 'second_color', '#00662c'),
(119, 'second_dark_color', '#00662c'),
(120, 'accent_color', '#003a19'),
(121, 'accent_dark_color', '#ffaa00'),
(122, 'scaffold_dark_color', '#2c2c2c'),
(123, 'scaffold_color', '#fafafa'),
(124, 'google_maps_key', 'AIzaSyDV6bDHj-YrZIUVBn25eg--XKSk5SWSXjw'),
(125, 'mobile_language', 'en'),
(126, 'app_version', '2.4.1'),
(127, 'enable_version', '1'),
(128, 'default_currency_id', '8'),
(129, 'default_currency_code', 'KES'),
(130, 'default_currency_decimal_digits', '2'),
(131, 'default_currency_rounding', '0'),
(132, 'currency_right', '0'),
(133, 'home_section_1', 'search'),
(134, 'home_section_2', 'slider'),
(135, 'home_section_3', 'top_stores_heading'),
(136, 'home_section_4', 'top_stores'),
(137, 'home_section_5', 'trending_week_heading'),
(138, 'home_section_6', 'trending_week'),
(139, 'home_section_7', 'categories_heading'),
(140, 'home_section_8', 'categories'),
(141, 'home_section_9', 'popular_heading'),
(142, 'home_section_10', 'popular'),
(143, 'home_section_11', 'recent_reviews_heading'),
(144, 'home_section_12', 'recent_reviews'),
(145, 'distance_unit', 'km'),
(146, 'firebase_api_key', 'AIzaSyDV6bDHj-YrZIUVBn25eg--XKSk5SWSXjw'),
(147, 'firebase_auth_domain', 'western-augury-283410.firebaseapp.com'),
(148, 'firebase_database_url', 'https://western-augury-283410.firebaseio.com'),
(149, 'firebase_project_id', 'western-augury-283410'),
(150, 'firebase_storage_bucket', 'western-augury-283410.appspot.com'),
(151, 'firebase_messaging_sender_id', '1070476391103'),
(152, 'firebase_app_id', '1:1070476391103:web:e412fe5d5b52f014fd0c0a'),
(153, 'firebase_measurement_id', 'G-HFBWDNL3ZC');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, '2021-07-04 06:46:45', '2021-07-04 06:46:45');

-- --------------------------------------------------------

--
-- Table structure for table `cart_extras`
--

CREATE TABLE `cart_extras` (
  `extra_id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Drinks', 'Illo doloribus quisquam veniam provident voluptas consequuntur. Fugit dicta et similique quod illo ipsam. Aut similique eius voluptatum et fuga suscipit veniam. Id et eum et cumque nihil unde. Esse modi eaque perspiciatis dolor in quos.', '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(2, 'Protein', 'Nulla perferendis nihil quod provident qui sunt id recusandae. Temporibus est ab autem ut reprehenderit ratione at saepe. Quos similique quaerat distinctio voluptas officiis. Eligendi accusantium quibusdam in iusto rerum voluptates sapiente dolorum. Voluptatem iste reiciendis cumque laboriosam nostrum eius tempora.', '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(3, 'Grains', 'Laboriosam labore esse quibusdam commodi minima tempore. Ducimus iure eveniet cupiditate iusto et. Ab eos eos magni. Quam modi ut aliquid quidem voluptas exercitationem aut est. Dolorem nemo officia ipsum laudantium culpa officiis et.', '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(4, 'Grains', 'Quis debitis aut aliquam et praesentium maiores. Sit et et dolorem rem asperiores voluptatem voluptatem. Sunt alias ea pariatur. Quibusdam quisquam mollitia quod totam id quibusdam asperiores accusantium. Voluptate sapiente voluptates earum eos quasi.', '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(5, 'Protein', 'Dolores nostrum et reiciendis quos necessitatibus nulla voluptate nihil. Nobis consequuntur explicabo quam ut. Sint facilis dicta ea et ut tenetur minus. Minus sequi et quia. A necessitatibus officia aut quaerat voluptates reiciendis.', '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(6, 'Drinks', 'Expedita quia delectus labore a qui nobis. Repudiandae qui beatae ea voluptas. Placeat ea consequatur est eos sed. Sed commodi eos magni. Odio quisquam omnis quasi at et eum.', '2021-03-02 19:08:42', '2021-03-02 19:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decimal_digits` tinyint(3) UNSIGNED DEFAULT NULL,
  `rounding` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `decimal_digits`, `rounding`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', '$', 'USD', 2, 0, '2019-10-22 21:50:48', '2019-10-22 21:50:48'),
(2, 'Euro', '€', 'EUR', 2, 0, '2019-10-22 21:51:39', '2019-10-22 21:51:39'),
(3, 'Indian Rupee', 'টকা', 'INR', 2, 0, '2019-10-22 21:52:50', '2019-10-22 21:52:50'),
(4, 'Indonesian Rupiah', 'Rp', 'IDR', 0, 0, '2019-10-22 21:53:22', '2019-10-22 21:53:22'),
(5, 'Brazilian Real', 'R$', 'BRL', 2, 0, '2019-10-22 21:54:00', '2019-10-22 21:54:00'),
(6, 'Cambodian Riel', '៛', 'KHR', 2, 0, '2019-10-22 21:55:51', '2019-10-22 21:55:51'),
(7, 'Vietnamese Dong', '₫', 'VND', 0, 0, '2019-10-22 21:56:26', '2019-10-22 21:56:26'),
(8, 'Kenyan Shillings', 'kes', 'KES', 2, 0, '2021-03-04 01:25:53', '2021-03-04 01:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `values` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `in_table` tinyint(1) DEFAULT NULL,
  `bootstrap_column` tinyint(4) DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `custom_field_model` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `type`, `values`, `disabled`, `required`, `in_table`, `bootstrap_column`, `order`, `custom_field_model`, `created_at`, `updated_at`) VALUES
(4, 'phone', 'text', NULL, 0, 0, 0, 6, 2, 'App\\Models\\User', '2019-09-07 03:30:00', '2019-09-07 03:31:47'),
(5, 'bio', 'textarea', NULL, 0, 0, 0, 6, 1, 'App\\Models\\User', '2019-09-07 03:43:58', '2019-09-07 03:43:58'),
(6, 'address', 'text', NULL, 0, 0, 0, 6, 3, 'App\\Models\\User', '2019-09-07 03:49:22', '2019-09-07 03:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_id` int(10) UNSIGNED NOT NULL,
  `customizable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customizable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_field_values`
--

INSERT INTO `custom_field_values` (`id`, `value`, `view`, `custom_field_id`, `customizable_type`, `customizable_id`, `created_at`, `updated_at`) VALUES
(29, '+136 226 5669', '+136 226 5669', 4, 'App\\Models\\User', 2, '2019-09-07 03:52:30', '2019-09-07 03:52:30'),
(30, 'Lobortis mattis aliquam faucibus purus. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Nunc vel risus commodo viverra maecenas accumsan lacus vel.', 'Lobortis mattis aliquam faucibus purus. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Nunc vel risus commodo viverra maecenas accumsan lacus vel.', 5, 'App\\Models\\User', 2, '2019-09-07 03:52:30', '2019-10-17 01:32:35'),
(31, '2911 Corpening Drive South Lyon, MI 48178', '2911 Corpening Drive South Lyon, MI 48178', 6, 'App\\Models\\User', 2, '2019-09-07 03:52:30', '2019-10-17 01:32:35'),
(32, '+254706852923', '+254706852923', 4, 'App\\Models\\User', 1, '2019-09-07 03:53:58', '2021-03-02 19:17:21'),
(33, 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 5, 'App\\Models\\User', 1, '2019-09-07 03:53:58', '2019-10-17 01:23:53'),
(34, 'Nairobi, Kenya', 'Nairobi, Kenya', 6, 'App\\Models\\User', 1, '2019-09-07 03:53:58', '2021-03-02 19:17:21'),
(35, '+1 098-6543-236', '+1 098-6543-236', 4, 'App\\Models\\User', 3, '2019-10-15 23:21:32', '2019-10-18 05:21:43'),
(36, 'Aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Tortor pretium viverra suspendisse', 'Aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Tortor pretium viverra suspendisse', 5, 'App\\Models\\User', 3, '2019-10-15 23:21:32', '2019-10-18 05:21:12'),
(37, '1850 Big Elm Kansas City, MO 64106', '1850 Big Elm Kansas City, MO 64106', 6, 'App\\Models\\User', 3, '2019-10-15 23:21:32', '2019-10-18 05:21:43'),
(38, '+1 248-437-7610', '+1 248-437-7610', 4, 'App\\Models\\User', 4, '2019-10-17 01:31:46', '2019-10-17 01:31:46'),
(39, 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 5, 'App\\Models\\User', 4, '2019-10-17 01:31:46', '2019-10-17 01:31:46'),
(40, '1050 Frosty Lane Sidney, NY 13838', '1050 Frosty Lane Sidney, NY 13838', 6, 'App\\Models\\User', 4, '2019-10-17 01:31:46', '2019-10-17 01:31:46'),
(41, '+136 226 5669', '+136 226 5669', 4, 'App\\Models\\User', 5, '2019-12-16 01:49:44', '2019-12-16 01:49:44'),
(42, '<p>Short Bio</p>', 'Short Bio', 5, 'App\\Models\\User', 5, '2019-12-16 01:49:44', '2019-12-16 01:49:44'),
(43, '4722 Villa Drive', '4722 Villa Drive', 6, 'App\\Models\\User', 5, '2019-12-16 01:49:44', '2019-12-16 01:49:44'),
(44, '+136 955 6525', '+136 955 6525', 4, 'App\\Models\\User', 6, '2020-03-29 23:28:04', '2020-03-29 23:28:04'),
(45, '<p>Short bio for this driver</p>', 'Short bio for this driver', 5, 'App\\Models\\User', 6, '2020-03-29 23:28:05', '2020-03-29 23:28:05'),
(46, '4722 Villa Drive', '4722 Villa Drive', 6, 'App\\Models\\User', 6, '2020-03-29 23:28:05', '2020-03-29 23:28:05'),
(47, NULL, NULL, 4, 'App\\Models\\User', 7, '2021-03-04 01:42:06', '2021-03-04 01:42:06'),
(48, NULL, '', 5, 'App\\Models\\User', 7, '2021-03-04 01:42:06', '2021-03-04 01:42:06'),
(49, NULL, NULL, 6, 'App\\Models\\User', 7, '2021-03-04 01:42:06', '2021-03-04 01:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `degradable`
--

CREATE TABLE `degradable` (
  `id` int(50) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `degradable`
--

INSERT INTO `degradable` (`id`, `name`, `description`, `active`, `created_at`) VALUES
(1, 'Biodegradable', NULL, 1, '2021-07-31 16:58:43'),
(2, 'None Biodegradable', NULL, 1, '2021-07-31 16:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `description`, `address`, `latitude`, `longitude`, `is_default`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Libero aut fugiat saepe consectetur repellendus aut maiores.', '814 Herman Port\nNorth Angus, NC 38595', '43.847957', '9.271269', 1, 1, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(12, 'Sunt accusamus temporibus corrupti amet.', '7476 Zelma Pine\nLake Jude, NJ 69209-6905', '42.621192', '7.105968', 0, 1, '2021-03-02 19:08:43', '2021-03-02 19:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `discountables`
--

CREATE TABLE `discountables` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `discountable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discountable_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `delivery_fee` double(5,2) NOT NULL DEFAULT 0.00,
  `total_orders` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `earning` double(9,2) NOT NULL DEFAULT 0.00,
  `available` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drivers_payouts`
--

CREATE TABLE `drivers_payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(9,2) NOT NULL DEFAULT 0.00,
  `paid_date` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_stores`
--

CREATE TABLE `driver_stores` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `total_orders` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_earning` double(9,2) NOT NULL DEFAULT 0.00,
  `admin_earning` double(9,2) NOT NULL DEFAULT 0.00,
  `store_earning` double(9,2) NOT NULL DEFAULT 0.00,
  `delivery_fee` double(9,2) NOT NULL DEFAULT 0.00,
  `tax` double(9,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `earnings`
--

INSERT INTO `earnings` (`id`, `store_id`, `total_orders`, `total_earning`, `admin_earning`, `store_earning`, `delivery_fee`, `tax`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-26 07:14:46', '2021-06-26 07:14:46'),
(2, 2, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-26 07:15:39', '2021-06-26 07:15:39'),
(3, 3, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-26 07:16:15', '2021-06-26 07:16:15'),
(4, 4, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-26 07:16:50', '2021-06-26 07:16:50'),
(5, 5, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-26 07:17:21', '2021-06-26 07:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `extras`
--

CREATE TABLE `extras` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT 0.00,
  `product_id` int(10) UNSIGNED NOT NULL,
  `extra_group_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extras`
--

INSERT INTO `extras` (`id`, `name`, `description`, `price`, `product_id`, `extra_group_id`, `created_at`, `updated_at`) VALUES
(3, '2L', 'Nam sit ab debitis id.', 44.93, 10, 2, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(6, 'Tuna', 'Quaerat blanditiis dolores sit sed enim.', 49.88, 17, 1, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(9, 'S', 'Distinctio accusamus similique.', 21.23, 30, 3, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(11, 'Oil', 'Ipsam illum vero beatae omnis.', 33.65, 22, 1, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(13, 'L', 'Beatae fugit nihil asperiores accusantium.', 28.57, 14, 2, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(15, 'S', 'Est eum et.', 45.97, 15, 1, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(16, 'Tuna', 'Non qui natus iure necessitatibus.', 21.53, 3, 3, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(20, 'Cheese', 'Exercitationem et non ullam qui.', 20.74, 20, 3, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(21, 'L', 'Aperiam vel eveniet ea eaque.', 36.44, 16, 2, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(23, 'Oil', 'Eveniet non non placeat.', 19.90, 25, 1, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(25, 'L', 'Fuga quod et est.', 17.24, 25, 3, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(27, 'L', 'Voluptas aut illum illum qui.', 31.19, 10, 2, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(28, 'Tuna', 'Quo nam est.', 41.44, 3, 2, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(30, 'L', 'Omnis incidunt voluptatem architecto.', 16.83, 8, 1, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(32, 'Tuna', 'Minima vitae dolores temporibus eum quia.', 46.15, 14, 1, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(34, 'Tuna', 'Officia eum modi odit.', 38.10, 29, 3, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(36, 'Tuna', 'Suscipit odio consequatur.', 40.12, 10, 3, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(37, '5L', 'Ut dolor iure.', 29.13, 15, 3, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(38, 'Tomato', 'Harum doloribus error.', 40.45, 20, 2, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(39, '5L', 'Et impedit dolores quibusdam.', 21.58, 9, 3, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(40, 'Cheese', 'Quisquam dolorem et eius nam.', 13.23, 19, 3, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(41, 'XL', 'Animi dignissimos voluptates aut aut omnis.', 32.17, 10, 2, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(42, 'XL', 'Debitis beatae provident odit.', 15.71, 14, 2, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(44, 'Tuna', 'Repudiandae voluptatem molestiae natus voluptas.', 46.16, 25, 1, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(47, 'Tomato', 'Ea voluptatem dolorum quia.', 25.03, 14, 2, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(50, 'Tuna', 'Ea qui tempore consectetur earum vitae.', 30.18, 22, 1, '2021-03-02 19:08:43', '2021-03-02 19:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `extra_groups`
--

CREATE TABLE `extra_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extra_groups`
--

INSERT INTO `extra_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2019-08-31 16:55:28', '2019-08-31 16:55:28'),
(2, 'Taste', '2019-10-09 19:26:28', '2019-10-09 19:26:28'),
(3, 'Capacity', '2019-10-09 19:26:28', '2019-10-09 19:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `faq_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Neque voluptatem vitae consequatur ut aliquid. Molestiae voluptatem voluptatum est assumenda.', 'Father William replied to his son, \'I feared it might injure the brain; But, now that I\'m doubtful about the crumbs,\' said the Caterpillar. \'Is that the hedgehog to, and, as they were getting.', 1, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(2, 'Sed deleniti ut quibusdam a veritatis eum. Aperiam modi rerum et voluptas laboriosam.', 'Gryphon interrupted in a minute, nurse! But I\'ve got to come out among the trees under which she concluded that it would be grand, certainly,\' said Alice, \'I\'ve often seen a rabbit with either a.', 4, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(3, 'Maiores mollitia nostrum voluptas et quae voluptatem. Quia voluptates sunt quibusdam eaque.', 'Alice cautiously replied: \'but I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Gryphon, sighing in his turn; and both footmen, Alice noticed, had powdered hair that curled all over.', 3, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(4, 'Sed est blanditiis animi eius voluptatum. Nulla praesentium ipsam unde quam quod.', 'There was no label this time the Queen left off, quite out of breath, and said \'What else have you got in your pocket?\' he went on growing, and growing, and growing, and very soon had to double.', 3, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(5, 'Totam odit sit doloremque. Possimus inventore amet ratione veniam. Modi et est quia et ipsum.', 'Mouse with an important air, \'are you all ready? This is the same height as herself; and when she first saw the White Rabbit read:-- \'They told me he was going to begin lessons: you\'d only have to.', 1, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(6, 'Et sed dolor placeat soluta assumenda non tenetur. Ea qui sequi eligendi quia.', 'Alice quietly said, just as well. The twelve jurors were all ornamented with hearts. Next came an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' And then a voice she had made the whole party.', 4, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(7, 'Doloribus eaque tempore omnis ut ut aperiam. Modi aut odio nemo.', 'I had it written up somewhere.\' Down, down, down. There was exactly three inches high). \'But I\'m NOT a serpent!\' said Alice sadly. \'Hand it over afterwards, it occurred to her ear, and whispered.', 1, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(8, 'Assumenda vel necessitatibus dolore. Officia velit id unde. Et saepe temporibus omnis cupiditate.', 'Queen will hear you! You see, she came in with the bones and the pool as it was only a child!\' The Queen had only one who got any advantage from the sky! Ugh, Serpent!\' \'But I\'m not the smallest.', 1, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(9, 'Eveniet id quam culpa voluptatem amet cumque. At non aut fuga facilis rerum.', 'Turtle--we used to call him Tortoise--\' \'Why did they live at the bottom of a feather flock together.\"\' \'Only mustard isn\'t a letter, after all: it\'s a set of verses.\' \'Are they in the world! Oh, my.', 4, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(10, 'Eligendi iure omnis hic. Officia quia nesciunt quia aut.', 'King, the Queen, stamping on the top of his pocket, and was immediately suppressed by the Hatter, and he went on again: \'Twenty-four hours, I THINK; or is it directed to?\' said one of the.', 2, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(11, 'Architecto ad quam qui. Saepe voluptatem facere dolorum reiciendis necessitatibus aperiam.', 'Queen. \'You make me giddy.\' And then, turning to Alice: he had come back again, and did not look at a reasonable pace,\' said the one who had been jumping about like that!\' By this time with one.', 3, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(12, 'Dolorum laudantium quidem unde laboriosam in minima. Consectetur atque eum nostrum quae.', 'Alice herself, and once again the tiny hands were clasped upon her arm, and timidly said \'Consider, my dear: she is such a nice little dog near our house I should understand that better,\' Alice said.', 4, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(13, 'Sed quia molestiae voluptas iusto quaerat maiores. Exercitationem consequatur quia temporibus.', 'Duchess: \'what a clear way you go,\' said the Cat. \'I\'d nearly forgotten that I\'ve got to?\' (Alice had been for some time without hearing anything more: at last in the air: it puzzled her a good.', 3, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(14, 'Et explicabo alias deleniti mollitia omnis consectetur provident suscipit. Et et corporis delectus.', 'Alice, \'as all the way wherever she wanted much to know, but the cook till his eyes were looking up into the wood for fear of their wits!\' So she was exactly the right distance--but then I wonder.', 2, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(15, 'Saepe amet ea error. Ut enim corporis rerum illo expedita. Ut facere ab maxime quibusdam.', 'I think that will be the best thing to get through was more hopeless than ever: she sat on, with closed eyes, and half of anger, and tried to fancy what the moral of that is--\"Birds of a large.', 4, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(16, 'Ea veniam aut aut impedit. Sint quam dicta ut sequi. Eos sunt deleniti vitae alias.', 'And yet you incessantly stand on their backs was the Rabbit whispered in a deep voice, \'are done with a little pattering of footsteps in the common way. So she set the little glass box that was.', 2, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(17, 'Eius alias totam magni et accusantium quos optio. Corrupti quo sunt saepe rerum dolore modi ullam.', 'Queen said to herself, \'I don\'t know of any that do,\' Alice hastily replied; \'only one doesn\'t like changing so often, of course you know I\'m mad?\' said Alice. \'And be quick about it,\' added the.', 2, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(18, 'Deleniti atque amet ut eos nemo dolorem. Qui ut nostrum ut dicta. Et excepturi mollitia modi.', 'Alice, \'we learned French and music.\' \'And washing?\' said the Gryphon, and the fall NEVER come to an end! \'I wonder if I was, I shouldn\'t like THAT!\' \'Oh, you can\'t be Mabel, for I know I have.', 3, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(19, 'Quia rerum minus qui dolorem. Qui sequi sit veniam vero. Qui laboriosam placeat ut doloremque sunt.', 'Quick, now!\' And Alice was rather doubtful whether she could see, when she found this a good many little girls eat eggs quite as much as she said to the Hatter. \'Stolen!\' the King exclaimed, turning.', 3, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(20, 'Laudantium sint delectus sed. Velit et rem fugiat. Voluptas placeat recusandae et vel.', 'Hatter grumbled: \'you shouldn\'t have put it more clearly,\' Alice replied very readily: \'but that\'s because it stays the same thing with you,\' said Alice, \'and those twelve creatures,\' (she was so.', 3, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(21, 'Unde maxime doloremque nesciunt sit est odio. Asperiores autem eligendi qui illo inventore.', 'ONE respectable person!\' Soon her eye fell on a summer day: The Knave of Hearts, carrying the King\'s crown on a branch of a muchness?\' \'Really, now you ask me,\' said Alice, in a sulky tone; \'Seven.', 2, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(22, 'In nihil quasi labore atque ab. At non placeat quidem est et qui.', 'Lobster Quadrille?\' the Gryphon replied rather impatiently: \'any shrimp could have been changed several times since then.\' \'What do you know what to do, so Alice ventured to ask. \'Suppose we change.', 1, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(23, 'Et corporis sit sit maiores error sit quod. Quis quaerat soluta et qui impedit ea.', 'Alice, whose thoughts were still running on the floor, as it went. So she set off at once: one old Magpie began wrapping itself up very sulkily and crossed over to the Queen, \'and he shall tell you.', 4, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(24, 'Assumenda voluptates et enim rerum sint. Qui voluptas eaque corporis vel.', 'When she got up very carefully, nibbling first at one end to the door, and tried to say \'Drink me,\' but the great hall, with the bread-and-butter getting so thin--and the twinkling of the day; and.', 1, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(25, 'Est et est et numquam qui ut. Qui incidunt ex laborum neque dolore. Voluptatem eos aut sunt ut.', 'King: \'however, it may kiss my hand if it began ordering people about like mad things all this time, and was a large pigeon had flown into her eyes--and still as she ran. \'How surprised he\'ll be.', 2, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(26, 'Dolor et ut et. Sint iste ab consectetur et aut et qui ut. Illo in harum est vel accusamus.', 'At last the Mouse, turning to the Dormouse, and repeated her question. \'Why did you manage to do that,\' said the Hatter: \'but you could only hear whispers now and then added them up, and there was.', 4, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(27, 'Nesciunt voluptatem consequuntur sed voluptas veniam quia. Quod expedita ut alias ipsa.', 'Alice. \'Oh, don\'t bother ME,\' said Alice very politely; but she had felt quite relieved to see the Mock Turtle yet?\' \'No,\' said Alice. \'Exactly so,\' said the King said, turning to Alice, she went.', 1, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(28, 'Autem dolorum dolor est totam nesciunt eos est nobis. Itaque et quae quia quos non quam.', 'WOULD put their heads off?\' shouted the Queen, and Alice called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came flying down upon their faces.', 2, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(29, 'Nemo eum ut vel autem sunt in autem et. Excepturi eligendi facilis similique tempora ut porro.', 'King, the Queen, tossing her head through the little glass table. \'Now, I\'ll manage better this time,\' she said to herself. Imagine her surprise, when the White Rabbit, with a sudden burst of tears.', 2, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(30, 'Ut minima quae voluptatem ut nulla et. Aut consequatur assumenda animi labore magnam eaque quis.', 'Alice could not answer without a moment\'s delay would cost them their lives. All the time they had been anxiously looking across the field after it, never once considering how in the lock, and to.', 3, '2021-03-02 19:08:43', '2021-03-02 19:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Products', '2019-08-31 18:31:52', '2019-08-31 18:31:52'),
(2, 'Services', '2019-08-31 18:32:03', '2019-08-31 18:32:03'),
(3, 'Delivery', '2019-08-31 18:32:11', '2019-08-31 18:32:11'),
(4, 'Misc', '2019-08-31 18:32:17', '2019-08-31 18:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(31, 8, 1, '2021-07-04 08:27:18', '2021-07-04 08:27:18');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_extras`
--

CREATE TABLE `favorite_extras` (
  `extra_id` int(10) UNSIGNED NOT NULL,
  `favorite_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `franchises`
--

CREATE TABLE `franchises` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `franchises`
--

INSERT INTO `franchises` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Chinese', 'Eum similique maiores atque quia explicabo. Dolores quia placeat consequatur id quis perspiciatis. Ducimus sit ducimus officia labore maiores et porro. Est iusto natus nesciunt debitis consequuntur totam. Et illo et autem inventore earum corrupti.', '2020-04-11 21:03:21', '2020-04-11 21:03:21'),
(2, 'Indian', 'Eaque et aut natus. Minima blanditiis ut sunt distinctio ad. Quasi doloremque rerum ex rerum. Molestias similique similique aut rerum delectus blanditiis et. Dolorem et quas nostrum est nobis.', '2020-04-11 21:03:21', '2020-04-11 21:03:21'),
(3, 'Thai', 'Est nihil omnis natus ducimus ducimus excepturi quos. Et praesentium in quia veniam. Tempore aut nesciunt consequatur pariatur recusandae. Voluptatem commodi eius quaerat est deleniti impedit. Qui quo harum est sequi incidunt labore eligendi cum.', '2020-04-11 21:03:21', '2020-04-11 21:03:21'),
(4, 'Greek', 'Ex nostrum suscipit aut et labore. Ut dolor ut eum eum voluptatem ex. Sapiente in tempora soluta voluptatem. Officia accusantium quae sit. Rerum esse ipsa molestias dolorem et est autem consequatur.', '2020-04-11 21:03:21', '2020-04-11 21:03:21'),
(5, 'Vietnamese', 'Dolorum earum ut blanditiis blanditiis. Facere quis voluptates assumenda saepe. Ab aspernatur voluptatibus rem doloremque cum impedit. Itaque blanditiis commodi repudiandae asperiores. Modi atque placeat consectetur et aut blanditiis.', '2020-04-11 21:03:21', '2020-04-11 21:03:21'),
(6, 'French', 'Est et iste enim. Quam repudiandae commodi rerum non esse. Et in aut sequi est aspernatur. Facere non modi expedita asperiores. Ipsa laborum saepe deserunt qui consequatur voluptas inventore dolorum.', '2020-04-11 21:03:21', '2020-04-11 21:03:21');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `description`, `store_id`, `created_at`, `updated_at`) VALUES
(2, 'Harum rerum non alias quos voluptatem accusantium.', 3, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(4, '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Menu</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;is a list, in specific order, of the dishes to be served at a given meal.&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Menu</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;is central to the&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">product</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;service concept—it defines the product offering, establishes key elements of financial viability namely price and contribution margin, and provides a powerful marketing tool.</span>', 5, '2021-03-02 19:08:42', '2021-06-26 07:28:04'),
(5, '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Menu</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;is a list, in specific order, of the dishes to be served at a given meal.&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Menu</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;is central to the&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">product</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;service concept—it defines the product offering, establishes key elements of financial viability namely price and contribution margin, and provides a powerful marketing tool.</span>', 5, '2021-03-02 19:08:42', '2021-06-26 07:28:59'),
(6, 'Repudiandae aliquid beatae dolor et nam et.', 2, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(7, '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Menu</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;is a list, in specific order, of the dishes to be served at a given meal.&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Menu</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;is central to the&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">product</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;service concept—it defines the product offering, establishes key elements of financial viability namely price and contribution margin, and provides a powerful marketing tool.</span>', 5, '2021-03-02 19:08:42', '2021-06-26 07:27:24'),
(9, 'Magnam nihil ut ut modi ut eos.', 3, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(12, 'Tenetur quasi velit dolores provident voluptatibus recusandae.', 2, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(13, 'Sunt mollitia illum aspernatur sit et error rerum.', 4, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(15, 'Aut quas at eos fugit hic non recusandae.', 1, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(16, 'Culpa aperiam perferendis eius aliquam non perspiciatis ut.', 1, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(18, 'Quos et commodi temporibus a.', 3, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(19, 'Qui eos et aut perferendis qui sunt nisi veniam.', 2, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(20, 'Eligendi distinctio consequatur distinctio sapiente beatae.', 6, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(21, '<p><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Menu</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;is a list, in specific order, of the dishes to be served at a given meal.&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Menu</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;is central to the&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">product</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;service concept—it defines the product offering, establishes key elements of financial viability namely price and contribution margin, and provides a powerful marketing tool.</span><br></p>', 5, '2021-06-26 07:26:35', '2021-06-26 07:26:35');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Upload', 1, 'avatar', 'profile', 'profile.jpg', 'image/jpeg', 'public', 29144, '[]', '{\"uuid\":\"f5903aae-338d-43a1-ad23-615280de617c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 1, '2021-03-02 19:17:00', '2021-03-02 19:17:00'),
(2, 'App\\Models\\User', 1, 'avatar', 'profile', 'profile.jpg', 'image/jpeg', 'public', 29144, '[]', '{\"uuid\":\"f5903aae-338d-43a1-ad23-615280de617c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 2, '2021-03-02 19:17:21', '2021-03-02 19:17:21'),
(3, 'App\\Models\\Upload', 2, 'avatar', 'profile', 'profile.jpg', 'image/jpeg', 'public', 29144, '[]', '{\"uuid\":\"c90edc64-9d63-4200-b460-fe2b8256f32f\",\"user_id\":7,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 3, '2021-03-04 01:42:02', '2021-03-04 01:42:02'),
(4, 'App\\Models\\User', 7, 'avatar', 'profile', 'profile.jpg', 'image/jpeg', 'public', 29144, '[]', '{\"uuid\":\"c90edc64-9d63-4200-b460-fe2b8256f32f\",\"user_id\":7,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 4, '2021-03-04 01:42:06', '2021-03-04 01:42:06'),
(5, 'App\\Models\\Upload', 3, 'image', 'pexels-the-lazy-artist-gallery-999267', 'pexels-the-lazy-artist-gallery-999267.jpg', 'image/jpeg', 'public', 3180545, '[]', '{\"uuid\":\"4768ab9e-fb4f-4c0c-8a7f-75a3219b6697\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 5, '2021-06-26 07:02:26', '2021-06-26 07:02:29'),
(7, 'App\\Models\\Upload', 4, 'image', 'pexels-fauxels-3183197', 'pexels-fauxels-3183197.jpg', 'image/jpeg', 'public', 3353028, '[]', '{\"uuid\":\"e8fbbac5-9b31-41e4-91c1-1c787054079d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 7, '2021-06-26 07:03:30', '2021-06-26 07:03:35'),
(9, 'App\\Models\\Upload', 5, 'image', 'pexels-brett-sayles-2599538', 'pexels-brett-sayles-2599538.jpg', 'image/jpeg', 'public', 3388440, '[]', '{\"uuid\":\"35ad7e95-f41d-4a93-8591-cc6b9f47860e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 9, '2021-06-26 07:08:07', '2021-06-26 07:08:11'),
(11, 'App\\Models\\Upload', 6, 'image', 'african_capital_signupfive', 'african_capital_signupfive.jpg', 'image/jpeg', 'public', 1737077, '[]', '{\"uuid\":\"e0c6b68d-8ed9-4552-8bd0-b881502c7e36\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 11, '2021-06-26 07:09:08', '2021-06-26 07:09:11'),
(13, 'App\\Models\\Upload', 7, 'image', 'pexels-ogo-1764564', 'pexels-ogo-1764564.jpg', 'image/jpeg', 'public', 309403, '[]', '{\"uuid\":\"87467c8e-3208-4054-9995-fa3388234228\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 13, '2021-06-26 07:14:37', '2021-06-26 07:14:38'),
(14, 'App\\Models\\Store', 1, 'image', 'pexels-ogo-1764564', 'pexels-ogo-1764564.jpg', 'image/jpeg', 'public', 309403, '[]', '{\"uuid\":\"87467c8e-3208-4054-9995-fa3388234228\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 14, '2021-06-26 07:14:45', '2021-06-26 07:14:45'),
(15, 'App\\Models\\Upload', 8, 'image', 'pexels-anna-shvets-3727465', 'pexels-anna-shvets-3727465.jpg', 'image/jpeg', 'public', 1573778, '[]', '{\"uuid\":\"0116a9f0-efe5-49a1-8905-f576c915fca8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 15, '2021-06-26 07:15:28', '2021-06-26 07:15:31'),
(16, 'App\\Models\\Store', 2, 'image', 'pexels-anna-shvets-3727465', 'pexels-anna-shvets-3727465.jpg', 'image/jpeg', 'public', 1573778, '[]', '{\"uuid\":\"0116a9f0-efe5-49a1-8905-f576c915fca8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 16, '2021-06-26 07:15:36', '2021-06-26 07:15:36'),
(17, 'App\\Models\\Upload', 9, 'image', 'pexels-brett-sayles-2599538', 'pexels-brett-sayles-2599538.jpg', 'image/jpeg', 'public', 1073186, '[]', '{\"uuid\":\"d6e18def-93f0-4774-880b-3249842e695c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 17, '2021-06-26 07:16:07', '2021-06-26 07:16:09'),
(18, 'App\\Models\\Store', 3, 'image', 'pexels-brett-sayles-2599538', 'pexels-brett-sayles-2599538.jpg', 'image/jpeg', 'public', 1073186, '[]', '{\"uuid\":\"d6e18def-93f0-4774-880b-3249842e695c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 18, '2021-06-26 07:16:13', '2021-06-26 07:16:13'),
(19, 'App\\Models\\Upload', 10, 'image', 'pexels-picha-stock-3894378', 'pexels-picha-stock-3894378.jpg', 'image/jpeg', 'public', 1062453, '[]', '{\"uuid\":\"c020d782-f175-4092-852d-6033239c53cb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 19, '2021-06-26 07:16:40', '2021-06-26 07:16:43'),
(20, 'App\\Models\\Store', 4, 'image', 'pexels-picha-stock-3894378', 'pexels-picha-stock-3894378.jpg', 'image/jpeg', 'public', 1062453, '[]', '{\"uuid\":\"c020d782-f175-4092-852d-6033239c53cb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 20, '2021-06-26 07:16:48', '2021-06-26 07:16:48'),
(21, 'App\\Models\\Upload', 11, 'image', 'pexels-olivet-pictures-2691608', 'pexels-olivet-pictures-2691608.jpg', 'image/jpeg', 'public', 1280381, '[]', '{\"uuid\":\"7b427bd8-4a75-4006-99dc-f748d058a9e6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 21, '2021-06-26 07:17:12', '2021-06-26 07:17:14'),
(22, 'App\\Models\\Store', 5, 'image', 'pexels-olivet-pictures-2691608', 'pexels-olivet-pictures-2691608.jpg', 'image/jpeg', 'public', 1280381, '[]', '{\"uuid\":\"7b427bd8-4a75-4006-99dc-f748d058a9e6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 22, '2021-06-26 07:17:19', '2021-06-26 07:17:19'),
(23, 'App\\Models\\Upload', 12, 'image', 'pexels-jennifer-enujiugha-4176695', 'pexels-jennifer-enujiugha-4176695.jpg', 'image/jpeg', 'public', 1240681, '[]', '{\"uuid\":\"4a37002c-8622-43cd-8814-ecb891555496\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 23, '2021-06-26 07:18:00', '2021-06-26 07:18:04'),
(24, 'App\\Models\\Upload', 13, 'image', 'pexels-magda-ehlers-2660262', 'pexels-magda-ehlers-2660262.jpg', 'image/jpeg', 'public', 1274684, '[]', '{\"uuid\":\"a0201bfd-deba-4970-a188-612d652c60f2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 24, '2021-06-26 07:18:37', '2021-06-26 07:18:39'),
(25, 'App\\Models\\Product', 17, 'image', 'pexels-magda-ehlers-2660262', 'pexels-magda-ehlers-2660262.jpg', 'image/jpeg', 'public', 1274684, '[]', '{\"uuid\":\"a0201bfd-deba-4970-a188-612d652c60f2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 25, '2021-06-26 07:18:43', '2021-06-26 07:18:43'),
(26, 'App\\Models\\Upload', 14, 'image', 'pexels-magda-ehlers-2660262', 'pexels-magda-ehlers-2660262.jpg', 'image/jpeg', 'public', 1274684, '[]', '{\"uuid\":\"0eb59fa7-b84d-4554-a9cf-ff024dd8b405\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 26, '2021-06-26 07:19:07', '2021-06-26 07:19:09'),
(27, 'App\\Models\\Product', 29, 'image', 'pexels-magda-ehlers-2660262', 'pexels-magda-ehlers-2660262.jpg', 'image/jpeg', 'public', 1274684, '[]', '{\"uuid\":\"0eb59fa7-b84d-4554-a9cf-ff024dd8b405\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 27, '2021-06-26 07:19:13', '2021-06-26 07:19:13'),
(28, 'App\\Models\\Upload', 15, 'image', 'pexels-anna-shvets-3727465', 'pexels-anna-shvets-3727465.jpg', 'image/jpeg', 'public', 1573778, '[]', '{\"uuid\":\"79273f39-f7ab-4876-9800-ad3fed4bf628\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 28, '2021-06-26 07:19:59', '2021-06-26 07:20:02'),
(29, 'App\\Models\\Product', 26, 'image', 'pexels-anna-shvets-3727465', 'pexels-anna-shvets-3727465.jpg', 'image/jpeg', 'public', 1573778, '[]', '{\"uuid\":\"79273f39-f7ab-4876-9800-ad3fed4bf628\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 29, '2021-06-26 07:20:04', '2021-06-26 07:20:04'),
(30, 'App\\Models\\Upload', 16, 'image', 'african_capital_signupone', 'african_capital_signupone.jpg', 'image/jpeg', 'public', 1386009, '[]', '{\"uuid\":\"1b221f12-31a5-46e8-a4dc-c501ff12f462\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 30, '2021-06-26 07:20:37', '2021-06-26 07:20:38'),
(31, 'App\\Models\\Category', 2, 'image', 'african_capital_signupone', 'african_capital_signupone.jpg', 'image/jpeg', 'public', 1386009, '[]', '{\"uuid\":\"1b221f12-31a5-46e8-a4dc-c501ff12f462\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 31, '2021-06-26 07:20:39', '2021-06-26 07:20:39'),
(32, 'App\\Models\\Upload', 17, 'image', 'pexels-david-kuko-2647104', 'pexels-david-kuko-2647104.jpg', 'image/jpeg', 'public', 977588, '[]', '{\"uuid\":\"daa74a3c-1fdf-4448-82f7-befa11f434b0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 32, '2021-06-26 07:21:08', '2021-06-26 07:21:09'),
(33, 'App\\Models\\Category', 5, 'image', 'pexels-david-kuko-2647104', 'pexels-david-kuko-2647104.jpg', 'image/jpeg', 'public', 977588, '[]', '{\"uuid\":\"daa74a3c-1fdf-4448-82f7-befa11f434b0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 33, '2021-06-26 07:21:11', '2021-06-26 07:21:11'),
(34, 'App\\Models\\Upload', 18, 'image', 'african_capital_signuptwo', 'african_capital_signuptwo.jpg', 'image/jpeg', 'public', 983335, '[]', '{\"uuid\":\"4dd5f1cb-3540-405b-be6b-101c3931f6f5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 34, '2021-06-26 07:21:32', '2021-06-26 07:21:32'),
(35, 'App\\Models\\Category', 3, 'image', 'african_capital_signuptwo', 'african_capital_signuptwo.jpg', 'image/jpeg', 'public', 983335, '[]', '{\"uuid\":\"4dd5f1cb-3540-405b-be6b-101c3931f6f5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 35, '2021-06-26 07:21:35', '2021-06-26 07:21:35'),
(36, 'App\\Models\\Upload', 19, 'image', 'african_capital_signupfour', 'african_capital_signupfour.jpg', 'image/jpeg', 'public', 1372232, '[]', '{\"uuid\":\"3db3ff91-74e2-43be-9d63-5b192df43b6e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 36, '2021-06-26 07:22:01', '2021-06-26 07:22:02'),
(37, 'App\\Models\\Category', 4, 'image', 'african_capital_signupfour', 'african_capital_signupfour.jpg', 'image/jpeg', 'public', 1372232, '[]', '{\"uuid\":\"3db3ff91-74e2-43be-9d63-5b192df43b6e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 37, '2021-06-26 07:22:04', '2021-06-26 07:22:04'),
(38, 'App\\Models\\Upload', 20, 'image', 'pexels-picha-stock-3894378', 'pexels-picha-stock-3894378.jpg', 'image/jpeg', 'public', 1062453, '[]', '{\"uuid\":\"6e845b6c-c431-426d-bfca-743af568c561\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 38, '2021-06-26 07:26:31', '2021-06-26 07:26:33'),
(39, 'App\\Models\\Gallery', 21, 'image', 'pexels-picha-stock-3894378', 'pexels-picha-stock-3894378.jpg', 'image/jpeg', 'public', 1062453, '[]', '{\"uuid\":\"6e845b6c-c431-426d-bfca-743af568c561\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 39, '2021-06-26 07:26:35', '2021-06-26 07:26:35'),
(40, 'App\\Models\\Upload', 21, 'image', 'african_capital_signupfive', 'african_capital_signupfive.jpg', 'image/jpeg', 'public', 1737077, '[]', '{\"uuid\":\"4cf122f1-aad0-4f2d-9411-36faf4005d3e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 40, '2021-06-26 07:27:18', '2021-06-26 07:27:22'),
(41, 'App\\Models\\Gallery', 7, 'image', 'african_capital_signupfive', 'african_capital_signupfive.jpg', 'image/jpeg', 'public', 1737077, '[]', '{\"uuid\":\"4cf122f1-aad0-4f2d-9411-36faf4005d3e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 41, '2021-06-26 07:27:24', '2021-06-26 07:27:24'),
(42, 'App\\Models\\Upload', 22, 'image', 'pexels-ogo-1764564', 'pexels-ogo-1764564.jpg', 'image/jpeg', 'public', 309403, '[]', '{\"uuid\":\"215bcf65-0509-45af-aaa6-e30a4bebb898\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 42, '2021-06-26 07:28:01', '2021-06-26 07:28:02'),
(43, 'App\\Models\\Gallery', 4, 'image', 'pexels-ogo-1764564', 'pexels-ogo-1764564.jpg', 'image/jpeg', 'public', 309403, '[]', '{\"uuid\":\"215bcf65-0509-45af-aaa6-e30a4bebb898\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 43, '2021-06-26 07:28:04', '2021-06-26 07:28:04'),
(44, 'App\\Models\\Upload', 23, 'image', 'pexels-picha-stock-3894378', 'pexels-picha-stock-3894378.jpg', 'image/jpeg', 'public', 1062453, '[]', '{\"uuid\":\"7df22e0b-1385-48de-a3a4-22364eb926b6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 44, '2021-06-26 07:28:55', '2021-06-26 07:28:57'),
(45, 'App\\Models\\Gallery', 5, 'image', 'pexels-picha-stock-3894378', 'pexels-picha-stock-3894378.jpg', 'image/jpeg', 'public', 1062453, '[]', '{\"uuid\":\"7df22e0b-1385-48de-a3a4-22364eb926b6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 45, '2021-06-26 07:28:59', '2021-06-26 07:28:59'),
(46, 'App\\Models\\Upload', 24, 'image', 'how-does-recycling-help-the-environment', 'how-does-recycling-help-the-environment.png', 'image/png', 'public', 509348, '[]', '{\"uuid\":\"c8142280-b451-4c53-9203-01f1c36a0ca9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 46, '2021-07-01 03:37:15', '2021-07-01 03:37:15'),
(47, 'App\\Models\\Slide', 4, 'image', 'how-does-recycling-help-the-environment', 'how-does-recycling-help-the-environment.png', 'image/png', 'public', 509348, '[]', '{\"uuid\":\"c8142280-b451-4c53-9203-01f1c36a0ca9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 47, '2021-07-01 03:37:18', '2021-07-01 03:37:18'),
(48, 'App\\Models\\Upload', 25, 'image', 'coca-cola-sustainability-campaign-2019', 'coca-cola-sustainability-campaign-2019.jpg', 'image/jpeg', 'public', 186332, '[]', '{\"uuid\":\"8b527530-156f-41ac-be41-16b136ebafcf\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 48, '2021-07-01 03:37:39', '2021-07-01 03:37:40'),
(49, 'App\\Models\\Slide', 3, 'image', 'coca-cola-sustainability-campaign-2019', 'coca-cola-sustainability-campaign-2019.jpg', 'image/jpeg', 'public', 186332, '[]', '{\"uuid\":\"8b527530-156f-41ac-be41-16b136ebafcf\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 49, '2021-07-01 03:37:42', '2021-07-01 03:37:42'),
(50, 'App\\Models\\Upload', 26, 'image', 'maxresdefault', 'maxresdefault.jpg', 'image/jpeg', 'public', 67130, '[]', '{\"uuid\":\"df4c289e-237c-4df9-8ddd-285e30f2eb5a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 50, '2021-07-01 03:38:12', '2021-07-01 03:38:12'),
(52, 'App\\Models\\Upload', 27, 'image', 'maxresdefault', 'maxresdefault.jpg', 'image/jpeg', 'public', 67130, '[]', '{\"uuid\":\"9a5c6482-ebdf-4d47-b965-7d9890e5272b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 51, '2021-07-01 03:38:35', '2021-07-01 03:38:35'),
(53, 'App\\Models\\Slide', 2, 'image', 'maxresdefault', 'maxresdefault.jpg', 'image/jpeg', 'public', 67130, '[]', '{\"uuid\":\"9a5c6482-ebdf-4d47-b965-7d9890e5272b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 52, '2021-07-01 03:38:41', '2021-07-01 03:38:41'),
(54, 'App\\Models\\Upload', 28, 'image', '3c8ac823371633.56322a14e58d7', '3c8ac823371633.56322a14e58d7.jpg', 'image/jpeg', 'public', 789392, '[]', '{\"uuid\":\"411b962a-5cdb-4c9d-aeb1-7a3ae842c310\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 53, '2021-07-01 03:39:07', '2021-07-01 03:39:07'),
(55, 'App\\Models\\Upload', 29, 'image', 'door-to-door-recycle-1024x662', 'door-to-door-recycle-1024x662.png', 'image/png', 'public', 111085, '[]', '{\"uuid\":\"e01a627a-6ccc-423d-9b18-155e79b76c22\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 54, '2021-07-01 03:39:57', '2021-07-01 03:39:57'),
(56, 'App\\Models\\Slide', 5, 'image', 'door-to-door-recycle-1024x662', 'door-to-door-recycle-1024x662.png', 'image/png', 'public', 111085, '[]', '{\"uuid\":\"e01a627a-6ccc-423d-9b18-155e79b76c22\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 55, '2021-07-01 03:40:00', '2021-07-01 03:40:00'),
(57, 'App\\Models\\Upload', 30, 'app_logo', 'app_icon', 'app_icon.png', 'image/png', 'public', 3953, '[]', '{\"uuid\":\"957fe5f9-fa20-4d70-9fce-73cdd7fa2ebe\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 56, '2021-07-31 19:40:55', '2021-07-31 19:40:55'),
(58, 'App\\Models\\Upload', 31, 'app_logo', 'leaforg_icon_green', 'leaforg_icon_green.png', 'image/png', 'public', 5018, '[]', '{\"uuid\":\"f7733edd-c566-413d-9037-38b2fb2d6236\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 57, '2021-08-05 17:41:07', '2021-08-05 17:41:09'),
(59, 'App\\Models\\Upload', 32, 'app_logo', 'leaforg_logo', 'leaforg_logo.png', 'image/png', 'public', 19770, '[]', '{\"uuid\":\"21e37c60-1c2b-4efd-be12-aee2de76da5a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 58, '2021-08-05 17:42:25', '2021-08-05 17:42:26'),
(60, 'App\\Models\\Upload', 33, 'app_logo', 'leaforg_icon_green', 'leaforg_icon_green.png', 'image/png', 'public', 5018, '[]', '{\"uuid\":\"74ceb42b-70a1-42c1-8cc3-37d9d1a55b9e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 59, '2021-08-05 17:42:54', '2021-08-05 17:42:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_26_175145_create_permission_tables', 1),
(4, '2018_06_12_140344_create_media_table', 1),
(5, '2018_06_13_035117_create_uploads_table', 1),
(6, '2018_07_17_180731_create_settings_table', 1),
(7, '2018_07_24_211308_create_custom_fields_table', 1),
(8, '2018_07_24_211327_create_custom_field_values_table', 1),
(9, '2019_08_29_213820_create_cuisines_table', 1),
(10, '2019_08_29_213821_create_stores_table', 1),
(11, '2019_08_29_213825_create_categories_table', 1),
(12, '2019_08_29_213826_create_extra_groups_table', 1),
(13, '2019_08_29_213829_create_faq_categories_table', 1),
(14, '2019_08_29_213833_create_order_statuses_table', 1),
(15, '2019_08_29_213837_create_products_table', 1),
(16, '2019_08_29_213842_create_galleries_table', 1),
(17, '2019_08_29_213847_create_product_reviews_table', 1),
(18, '2019_08_29_213903_create_nutrition_table', 1),
(19, '2019_08_29_213907_create_extras_table', 1),
(20, '2019_08_29_213921_create_payments_table', 1),
(21, '2019_08_29_213926_create_faqs_table', 1),
(22, '2019_08_29_213940_create_store_reviews_table', 1),
(23, '2019_08_30_152927_create_favorites_table', 1),
(24, '2019_08_31_111103_create_delivery_addresses_table', 1),
(25, '2019_08_31_111104_create_orders_table', 1),
(26, '2019_09_04_153857_create_carts_table', 1),
(27, '2019_09_04_153858_create_favorite_extras_table', 1),
(28, '2019_09_04_153859_create_cart_extras_table', 1),
(29, '2019_09_04_153958_create_product_orders_table', 1),
(30, '2019_09_04_154957_create_product_order_extras_table', 1),
(31, '2019_09_04_163857_create_user_stores_table', 1),
(32, '2019_10_22_144652_create_currencies_table', 1),
(33, '2019_12_14_134302_create_driver_stores_table', 1),
(34, '2020_03_25_094752_create_drivers_table', 1),
(35, '2020_03_25_094802_create_earnings_table', 1),
(36, '2020_03_25_094809_create_drivers_payouts_table', 1),
(37, '2020_03_25_094817_create_stores_payouts_table', 1),
(38, '2020_03_27_094855_create_notifications_table', 1),
(39, '2020_04_11_135804_create_store_cuisines_table', 1),
(40, '2020_08_23_181022_create_coupons_table', 1),
(41, '2020_08_23_181029_create_discountables_table', 1),
(42, '2020_09_01_192732_create_slides_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 8),
(5, 'App\\Models\\User', 5),
(5, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nutrition`
--

CREATE TABLE `nutrition` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nutrition`
--

INSERT INTO `nutrition` (`id`, `name`, `quantity`, `product_id`, `created_at`, `updated_at`) VALUES
(4, 'Sugar', 118, 14, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(5, 'Sugar', 14, 20, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(7, 'Proteins', 40, 3, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(8, 'Sugar', 63, 26, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(11, 'Proteins', 61, 30, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(20, 'Lipid', 89, 10, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(26, 'Lipid', 184, 9, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(28, 'Sugar', 163, 10, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(29, 'Sugar', 22, 22, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(30, 'Lipid', 61, 17, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(31, 'Sugar', 162, 2, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(32, 'Calcium', 177, 8, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(33, 'Sugar', 63, 14, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(34, 'Sugar', 16, 29, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(35, 'Calcium', 156, 26, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(37, 'Lipid', 14, 16, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(38, 'Sugar', 19, 2, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(39, 'Sugar', 61, 17, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(41, 'Proteins', 92, 17, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(42, 'Proteins', 6, 14, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(43, 'Lipid', 72, 22, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(46, 'Proteins', 170, 9, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(47, 'Lipid', 181, 19, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(49, 'Sugar', 134, 10, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(50, 'Calcium', 111, 3, '2021-03-02 19:08:43', '2021-03-02 19:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_status_id` int(10) UNSIGNED NOT NULL,
  `tax` double(5,2) DEFAULT 0.00,
  `delivery_fee` double(5,2) DEFAULT 0.00,
  `hint` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `driver_id` int(10) UNSIGNED DEFAULT NULL,
  `delivery_address_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Order Received', '2019-08-30 22:39:28', '2019-10-16 00:03:14'),
(2, 'Preparing', '2019-10-16 00:03:50', '2019-10-16 00:03:50'),
(3, 'Ready', '2019-10-16 00:04:30', '2019-10-16 00:04:30'),
(4, 'On the Way', '2019-10-16 00:04:13', '2019-10-16 00:04:13'),
(5, 'Delivered', '2019-10-16 00:04:30', '2019-10-16 00:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'users.profile', 'web', '2020-03-29 20:58:02', '2020-03-29 20:58:02', NULL),
(2, 'dashboard', 'web', '2020-03-29 20:58:02', '2020-03-29 20:58:02', NULL),
(3, 'medias.create', 'web', '2020-03-29 20:58:02', '2020-03-29 20:58:02', NULL),
(4, 'medias.delete', 'web', '2020-03-29 20:58:02', '2020-03-29 20:58:02', NULL),
(5, 'medias', 'web', '2020-03-29 20:58:03', '2020-03-29 20:58:03', NULL),
(6, 'permissions.index', 'web', '2020-03-29 20:58:03', '2020-03-29 20:58:03', NULL),
(7, 'permissions.edit', 'web', '2020-03-29 20:58:03', '2020-03-29 20:58:03', NULL),
(8, 'permissions.update', 'web', '2020-03-29 20:58:03', '2020-03-29 20:58:03', NULL),
(9, 'permissions.destroy', 'web', '2020-03-29 20:58:03', '2020-03-29 20:58:03', NULL),
(10, 'roles.index', 'web', '2020-03-29 20:58:03', '2020-03-29 20:58:03', NULL),
(11, 'roles.edit', 'web', '2020-03-29 20:58:03', '2020-03-29 20:58:03', NULL),
(12, 'roles.update', 'web', '2020-03-29 20:58:03', '2020-03-29 20:58:03', NULL),
(13, 'roles.destroy', 'web', '2020-03-29 20:58:03', '2020-03-29 20:58:03', NULL),
(14, 'customFields.index', 'web', '2020-03-29 20:58:03', '2020-03-29 20:58:03', NULL),
(15, 'customFields.create', 'web', '2020-03-29 20:58:03', '2020-03-29 20:58:03', NULL),
(16, 'customFields.store', 'web', '2020-03-29 20:58:03', '2020-03-29 20:58:03', NULL),
(17, 'customFields.show', 'web', '2020-03-29 20:58:03', '2020-03-29 20:58:03', NULL),
(18, 'customFields.edit', 'web', '2020-03-29 20:58:03', '2020-03-29 20:58:03', NULL),
(19, 'customFields.update', 'web', '2020-03-29 20:58:04', '2020-03-29 20:58:04', NULL),
(20, 'customFields.destroy', 'web', '2020-03-29 20:58:04', '2020-03-29 20:58:04', NULL),
(21, 'users.login-as-user', 'web', '2020-03-29 20:58:04', '2020-03-29 20:58:04', NULL),
(22, 'users.index', 'web', '2020-03-29 20:58:04', '2020-03-29 20:58:04', NULL),
(23, 'users.create', 'web', '2020-03-29 20:58:04', '2020-03-29 20:58:04', NULL),
(24, 'users.store', 'web', '2020-03-29 20:58:04', '2020-03-29 20:58:04', NULL),
(25, 'users.show', 'web', '2020-03-29 20:58:04', '2020-03-29 20:58:04', NULL),
(26, 'users.edit', 'web', '2020-03-29 20:58:04', '2020-03-29 20:58:04', NULL),
(27, 'users.update', 'web', '2020-03-29 20:58:04', '2020-03-29 20:58:04', NULL),
(28, 'users.destroy', 'web', '2020-03-29 20:58:04', '2020-03-29 20:58:04', NULL),
(29, 'app-settings', 'web', '2020-03-29 20:58:04', '2020-03-29 20:58:04', NULL),
(30, 'stores.index', 'web', '2020-03-29 20:58:04', '2020-03-29 20:58:04', NULL),
(31, 'stores.create', 'web', '2020-03-29 20:58:04', '2020-03-29 20:58:04', NULL),
(32, 'stores.store', 'web', '2020-03-29 20:58:04', '2020-03-29 20:58:04', NULL),
(33, 'stores.edit', 'web', '2020-03-29 20:58:04', '2020-03-29 20:58:04', NULL),
(34, 'stores.update', 'web', '2020-03-29 20:58:05', '2020-03-29 20:58:05', NULL),
(35, 'stores.destroy', 'web', '2020-03-29 20:58:05', '2020-03-29 20:58:05', NULL),
(36, 'categories.index', 'web', '2020-03-29 20:58:05', '2020-03-29 20:58:05', NULL),
(37, 'categories.create', 'web', '2020-03-29 20:58:05', '2020-03-29 20:58:05', NULL),
(38, 'categories.store', 'web', '2020-03-29 20:58:05', '2020-03-29 20:58:05', NULL),
(39, 'categories.edit', 'web', '2020-03-29 20:58:05', '2020-03-29 20:58:05', NULL),
(40, 'categories.update', 'web', '2020-03-29 20:58:05', '2020-03-29 20:58:05', NULL),
(41, 'categories.destroy', 'web', '2020-03-29 20:58:05', '2020-03-29 20:58:05', NULL),
(42, 'faqCategories.index', 'web', '2020-03-29 20:58:06', '2020-03-29 20:58:06', NULL),
(43, 'faqCategories.create', 'web', '2020-03-29 20:58:06', '2020-03-29 20:58:06', NULL),
(44, 'faqCategories.store', 'web', '2020-03-29 20:58:06', '2020-03-29 20:58:06', NULL),
(45, 'faqCategories.edit', 'web', '2020-03-29 20:58:06', '2020-03-29 20:58:06', NULL),
(46, 'faqCategories.update', 'web', '2020-03-29 20:58:06', '2020-03-29 20:58:06', NULL),
(47, 'faqCategories.destroy', 'web', '2020-03-29 20:58:06', '2020-03-29 20:58:06', NULL),
(48, 'orderStatuses.index', 'web', '2020-03-29 20:58:06', '2020-03-29 20:58:06', NULL),
(49, 'orderStatuses.show', 'web', '2020-03-29 20:58:06', '2020-03-29 20:58:06', NULL),
(50, 'orderStatuses.edit', 'web', '2020-03-29 20:58:06', '2020-03-29 20:58:06', NULL),
(51, 'orderStatuses.update', 'web', '2020-03-29 20:58:07', '2020-03-29 20:58:07', NULL),
(52, 'products.index', 'web', '2020-03-29 20:58:07', '2020-03-29 20:58:07', NULL),
(53, 'products.create', 'web', '2020-03-29 20:58:07', '2020-03-29 20:58:07', NULL),
(54, 'products.store', 'web', '2020-03-29 20:58:07', '2020-03-29 20:58:07', NULL),
(55, 'products.edit', 'web', '2020-03-29 20:58:07', '2020-03-29 20:58:07', NULL),
(56, 'products.update', 'web', '2020-03-29 20:58:07', '2020-03-29 20:58:07', NULL),
(57, 'products.destroy', 'web', '2020-03-29 20:58:07', '2020-03-29 20:58:07', NULL),
(58, 'galleries.index', 'web', '2020-03-29 20:58:07', '2020-03-29 20:58:07', NULL),
(59, 'galleries.create', 'web', '2020-03-29 20:58:07', '2020-03-29 20:58:07', NULL),
(60, 'galleries.store', 'web', '2020-03-29 20:58:08', '2020-03-29 20:58:08', NULL),
(61, 'galleries.edit', 'web', '2020-03-29 20:58:08', '2020-03-29 20:58:08', NULL),
(62, 'galleries.update', 'web', '2020-03-29 20:58:08', '2020-03-29 20:58:08', NULL),
(63, 'galleries.destroy', 'web', '2020-03-29 20:58:08', '2020-03-29 20:58:08', NULL),
(64, 'productReviews.index', 'web', '2020-03-29 20:58:08', '2020-03-29 20:58:08', NULL),
(65, 'productReviews.create', 'web', '2020-03-29 20:58:08', '2020-03-29 20:58:08', NULL),
(66, 'productReviews.store', 'web', '2020-03-29 20:58:08', '2020-03-29 20:58:08', NULL),
(67, 'productReviews.edit', 'web', '2020-03-29 20:58:08', '2020-03-29 20:58:08', NULL),
(68, 'productReviews.update', 'web', '2020-03-29 20:58:08', '2020-03-29 20:58:08', NULL),
(69, 'productReviews.destroy', 'web', '2020-03-29 20:58:08', '2020-03-29 20:58:08', NULL),
(76, 'extras.index', 'web', '2020-03-29 20:58:09', '2020-03-29 20:58:09', NULL),
(77, 'extras.create', 'web', '2020-03-29 20:58:09', '2020-03-29 20:58:09', NULL),
(78, 'extras.store', 'web', '2020-03-29 20:58:09', '2020-03-29 20:58:09', NULL),
(79, 'extras.show', 'web', '2020-03-29 20:58:10', '2020-03-29 20:58:10', NULL),
(80, 'extras.edit', 'web', '2020-03-29 20:58:10', '2020-03-29 20:58:10', NULL),
(81, 'extras.update', 'web', '2020-03-29 20:58:10', '2020-03-29 20:58:10', NULL),
(82, 'extras.destroy', 'web', '2020-03-29 20:58:10', '2020-03-29 20:58:10', NULL),
(83, 'payments.index', 'web', '2020-03-29 20:58:10', '2020-03-29 20:58:10', NULL),
(84, 'payments.show', 'web', '2020-03-29 20:58:10', '2020-03-29 20:58:10', NULL),
(85, 'payments.update', 'web', '2020-03-29 20:58:10', '2020-03-29 20:58:10', NULL),
(86, 'faqs.index', 'web', '2020-03-29 20:58:10', '2020-03-29 20:58:10', NULL),
(87, 'faqs.create', 'web', '2020-03-29 20:58:11', '2020-03-29 20:58:11', NULL),
(88, 'faqs.store', 'web', '2020-03-29 20:58:11', '2020-03-29 20:58:11', NULL),
(89, 'faqs.edit', 'web', '2020-03-29 20:58:11', '2020-03-29 20:58:11', NULL),
(90, 'faqs.update', 'web', '2020-03-29 20:58:11', '2020-03-29 20:58:11', NULL),
(91, 'faqs.destroy', 'web', '2020-03-29 20:58:11', '2020-03-29 20:58:11', NULL),
(92, 'storeReviews.index', 'web', '2020-03-29 20:58:11', '2020-03-29 20:58:11', NULL),
(93, 'storeReviews.create', 'web', '2020-03-29 20:58:11', '2020-03-29 20:58:11', NULL),
(94, 'storeReviews.store', 'web', '2020-03-29 20:58:12', '2020-03-29 20:58:12', NULL),
(95, 'storeReviews.edit', 'web', '2020-03-29 20:58:12', '2020-03-29 20:58:12', NULL),
(96, 'storeReviews.update', 'web', '2020-03-29 20:58:12', '2020-03-29 20:58:12', NULL),
(97, 'storeReviews.destroy', 'web', '2020-03-29 20:58:12', '2020-03-29 20:58:12', NULL),
(98, 'favorites.index', 'web', '2020-03-29 20:58:12', '2020-03-29 20:58:12', NULL),
(99, 'favorites.create', 'web', '2020-03-29 20:58:12', '2020-03-29 20:58:12', NULL),
(100, 'favorites.store', 'web', '2020-03-29 20:58:12', '2020-03-29 20:58:12', NULL),
(101, 'favorites.edit', 'web', '2020-03-29 20:58:12', '2020-03-29 20:58:12', NULL),
(102, 'favorites.update', 'web', '2020-03-29 20:58:12', '2020-03-29 20:58:12', NULL),
(103, 'favorites.destroy', 'web', '2020-03-29 20:58:13', '2020-03-29 20:58:13', NULL),
(104, 'orders.index', 'web', '2020-03-29 20:58:13', '2020-03-29 20:58:13', NULL),
(105, 'orders.create', 'web', '2020-03-29 20:58:13', '2020-03-29 20:58:13', NULL),
(106, 'orders.store', 'web', '2020-03-29 20:58:13', '2020-03-29 20:58:13', NULL),
(107, 'orders.show', 'web', '2020-03-29 20:58:13', '2020-03-29 20:58:13', NULL),
(108, 'orders.edit', 'web', '2020-03-29 20:58:13', '2020-03-29 20:58:13', NULL),
(109, 'orders.update', 'web', '2020-03-29 20:58:13', '2020-03-29 20:58:13', NULL),
(110, 'orders.destroy', 'web', '2020-03-29 20:58:13', '2020-03-29 20:58:13', NULL),
(111, 'notifications.index', 'web', '2020-03-29 20:58:14', '2020-03-29 20:58:14', NULL),
(112, 'notifications.show', 'web', '2020-03-29 20:58:14', '2020-03-29 20:58:14', NULL),
(113, 'notifications.destroy', 'web', '2020-03-29 20:58:14', '2020-03-29 20:58:14', NULL),
(114, 'carts.index', 'web', '2020-03-29 20:58:14', '2020-03-29 20:58:14', NULL),
(115, 'carts.edit', 'web', '2020-03-29 20:58:14', '2020-03-29 20:58:14', NULL),
(116, 'carts.update', 'web', '2020-03-29 20:58:14', '2020-03-29 20:58:14', NULL),
(117, 'carts.destroy', 'web', '2020-03-29 20:58:14', '2020-03-29 20:58:14', NULL),
(118, 'currencies.index', 'web', '2020-03-29 20:58:14', '2020-03-29 20:58:14', NULL),
(119, 'currencies.create', 'web', '2020-03-29 20:58:15', '2020-03-29 20:58:15', NULL),
(120, 'currencies.store', 'web', '2020-03-29 20:58:15', '2020-03-29 20:58:15', NULL),
(121, 'currencies.edit', 'web', '2020-03-29 20:58:15', '2020-03-29 20:58:15', NULL),
(122, 'currencies.update', 'web', '2020-03-29 20:58:15', '2020-03-29 20:58:15', NULL),
(123, 'currencies.destroy', 'web', '2020-03-29 20:58:15', '2020-03-29 20:58:15', NULL),
(124, 'deliveryAddresses.index', 'web', '2020-03-29 20:58:15', '2020-03-29 20:58:15', NULL),
(125, 'deliveryAddresses.create', 'web', '2020-03-29 20:58:15', '2020-03-29 20:58:15', NULL),
(126, 'deliveryAddresses.store', 'web', '2020-03-29 20:58:15', '2020-03-29 20:58:15', NULL),
(127, 'deliveryAddresses.edit', 'web', '2020-03-29 20:58:16', '2020-03-29 20:58:16', NULL),
(128, 'deliveryAddresses.update', 'web', '2020-03-29 20:58:16', '2020-03-29 20:58:16', NULL),
(129, 'deliveryAddresses.destroy', 'web', '2020-03-29 20:58:16', '2020-03-29 20:58:16', NULL),
(130, 'drivers.index', 'web', '2020-03-29 20:58:16', '2020-03-29 20:58:16', NULL),
(131, 'drivers.create', 'web', '2020-03-29 20:58:16', '2020-03-29 20:58:16', NULL),
(132, 'drivers.store', 'web', '2020-03-29 20:58:16', '2020-03-29 20:58:16', NULL),
(133, 'drivers.show', 'web', '2020-03-29 20:58:16', '2020-03-29 20:58:16', NULL),
(134, 'drivers.edit', 'web', '2020-03-29 20:58:16', '2020-03-29 20:58:16', NULL),
(135, 'drivers.update', 'web', '2020-03-29 20:58:16', '2020-03-29 20:58:16', NULL),
(136, 'drivers.destroy', 'web', '2020-03-29 20:58:17', '2020-03-29 20:58:17', NULL),
(137, 'earnings.index', 'web', '2020-03-29 20:58:17', '2020-03-29 20:58:17', NULL),
(138, 'earnings.create', 'web', '2020-03-29 20:58:17', '2020-03-29 20:58:17', NULL),
(139, 'earnings.store', 'web', '2020-03-29 20:58:17', '2020-03-29 20:58:17', NULL),
(140, 'earnings.show', 'web', '2020-03-29 20:58:17', '2020-03-29 20:58:17', NULL),
(141, 'earnings.edit', 'web', '2020-03-29 20:58:17', '2020-03-29 20:58:17', NULL),
(142, 'earnings.update', 'web', '2020-03-29 20:58:17', '2020-03-29 20:58:17', NULL),
(143, 'earnings.destroy', 'web', '2020-03-29 20:58:17', '2020-03-29 20:58:17', NULL),
(144, 'driversPayouts.index', 'web', '2020-03-29 20:58:17', '2020-03-29 20:58:17', NULL),
(145, 'driversPayouts.create', 'web', '2020-03-29 20:58:17', '2020-03-29 20:58:17', NULL),
(146, 'driversPayouts.store', 'web', '2020-03-29 20:58:18', '2020-03-29 20:58:18', NULL),
(147, 'driversPayouts.show', 'web', '2020-03-29 20:58:18', '2020-03-29 20:58:18', NULL),
(148, 'driversPayouts.edit', 'web', '2020-03-29 20:58:18', '2020-03-29 20:58:18', NULL),
(149, 'driversPayouts.update', 'web', '2020-03-29 20:58:18', '2020-03-29 20:58:18', NULL),
(150, 'driversPayouts.destroy', 'web', '2020-03-29 20:58:18', '2020-03-29 20:58:18', NULL),
(151, 'storesPayouts.index', 'web', '2020-03-29 20:58:18', '2020-03-29 20:58:18', NULL),
(152, 'storesPayouts.create', 'web', '2020-03-29 20:58:18', '2020-03-29 20:58:18', NULL),
(153, 'storesPayouts.store', 'web', '2020-03-29 20:58:18', '2020-03-29 20:58:18', NULL),
(154, 'storesPayouts.show', 'web', '2020-03-29 20:58:18', '2020-03-29 20:58:18', NULL),
(155, 'storesPayouts.edit', 'web', '2020-03-29 20:58:18', '2020-03-29 20:58:18', NULL),
(156, 'storesPayouts.update', 'web', '2020-03-29 20:58:19', '2020-03-29 20:58:19', NULL),
(157, 'storesPayouts.destroy', 'web', '2020-03-29 20:58:19', '2020-03-29 20:58:19', NULL),
(158, 'permissions.create', 'web', '2020-03-29 20:59:15', '2020-03-29 20:59:15', NULL),
(159, 'permissions.store', 'web', '2020-03-29 20:59:15', '2020-03-29 20:59:15', NULL),
(160, 'permissions.show', 'web', '2020-03-29 20:59:15', '2020-03-29 20:59:15', NULL),
(161, 'roles.create', 'web', '2020-03-29 20:59:15', '2020-03-29 20:59:15', NULL),
(162, 'roles.store', 'web', '2020-03-29 20:59:15', '2020-03-29 20:59:15', NULL),
(163, 'roles.show', 'web', '2020-03-29 20:59:16', '2020-03-29 20:59:16', NULL),
(164, 'cuisines.index', 'web', '2020-04-11 21:04:39', '2020-04-11 21:04:39', NULL),
(165, 'cuisines.create', 'web', '2020-04-11 21:04:39', '2020-04-11 21:04:39', NULL),
(166, 'cuisines.store', 'web', '2020-04-11 21:04:39', '2020-04-11 21:04:39', NULL),
(167, 'cuisines.edit', 'web', '2020-04-11 21:04:39', '2020-04-11 21:04:39', NULL),
(168, 'cuisines.update', 'web', '2020-04-11 21:04:39', '2020-04-11 21:04:39', NULL),
(169, 'cuisines.destroy', 'web', '2020-04-11 21:04:40', '2020-04-11 21:04:40', NULL),
(170, 'extraGroups.index', 'web', '2020-04-11 21:04:40', '2020-04-11 21:04:40', NULL),
(171, 'extraGroups.create', 'web', '2020-04-11 21:04:40', '2020-04-11 21:04:40', NULL),
(172, 'extraGroups.store', 'web', '2020-04-11 21:04:40', '2020-04-11 21:04:40', NULL),
(173, 'extraGroups.edit', 'web', '2020-04-11 21:04:40', '2020-04-11 21:04:40', NULL),
(174, 'extraGroups.update', 'web', '2020-04-11 21:04:40', '2020-04-11 21:04:40', NULL),
(175, 'extraGroups.destroy', 'web', '2020-04-11 21:04:40', '2020-04-11 21:04:40', NULL),
(176, 'nutrition.index', 'web', '2020-03-29 20:58:09', '2020-03-29 20:58:09', NULL),
(177, 'nutrition.create', 'web', '2020-03-29 20:58:09', '2020-03-29 20:58:09', NULL),
(178, 'nutrition.store', 'web', '2020-03-29 20:58:09', '2020-03-29 20:58:09', NULL),
(179, 'nutrition.edit', 'web', '2020-03-29 20:58:09', '2020-03-29 20:58:09', NULL),
(180, 'nutrition.update', 'web', '2020-03-29 20:58:09', '2020-03-29 20:58:09', NULL),
(181, 'nutrition.destroy', 'web', '2020-03-29 20:58:09', '2020-03-29 20:58:09', NULL),
(182, 'requestedStores.index', 'web', '2020-08-13 20:58:02', '2020-08-13 20:58:02', NULL),
(183, 'coupons.index', 'web', '2020-08-23 20:58:02', '2020-08-23 20:58:02', NULL),
(184, 'coupons.create', 'web', '2020-08-23 20:58:02', '2020-08-23 20:58:02', NULL),
(185, 'coupons.store', 'web', '2020-08-23 20:58:02', '2020-08-23 20:58:02', NULL),
(186, 'coupons.edit', 'web', '2020-08-23 20:58:02', '2020-08-23 20:58:02', NULL),
(187, 'coupons.update', 'web', '2020-08-23 20:58:02', '2020-08-23 20:58:02', NULL),
(188, 'coupons.destroy', 'web', '2020-08-23 20:58:02', '2020-08-23 20:58:02', NULL),
(189, 'slides.index', 'web', '2020-08-23 20:58:02', '2020-08-23 20:58:02', NULL),
(190, 'slides.create', 'web', '2020-08-23 20:58:02', '2020-08-23 20:58:02', NULL),
(191, 'slides.store', 'web', '2020-08-23 20:58:02', '2020-08-23 20:58:02', NULL),
(192, 'slides.edit', 'web', '2020-08-23 20:58:02', '2020-08-23 20:58:02', NULL),
(193, 'slides.update', 'web', '2020-08-23 20:58:02', '2020-08-23 20:58:02', NULL),
(194, 'slides.destroy', 'web', '2020-08-23 20:58:02', '2020-08-23 20:58:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `discount_price` double(8,2) DEFAULT 0.00,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ingredients` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_items_count` double(9,2) DEFAULT 0.00,
  `weight` double(9,2) DEFAULT 0.00,
  `unit` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) DEFAULT 0,
  `deliverable` tinyint(1) DEFAULT 1,
  `store_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(50) NOT NULL,
  `is_user_product` int(50) NOT NULL,
  `main_category` int(50) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `discount_price`, `description`, `ingredients`, `package_items_count`, `weight`, `unit`, `featured`, `deliverable`, `store_id`, `user_id`, `is_user_product`, `main_category`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 'Acini di Pepe', 44.81, 0.00, 'Quam rerum ea molestiae sed. Omnis voluptate et occaecati assumenda est fugit libero.', NULL, 1.00, 337.00, 'Kg', 0, 0, 1, 0, 0, 0, 1, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(3, 'Pasta Campanelle', 26.48, 0.00, 'Consequatur eius veniam nostrum inventore dolorem ut. Iste laudantium ut perspiciatis consequatur consectetur. Illo voluptates nesciunt consequatur quidem quibusdam.', NULL, 5.00, 156.65, 'Kg', 1, 0, 2, 0, 0, 0, 3, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(8, 'Calas', 29.98, 24.04, 'Repellat facere molestiae quaerat. Sapiente atque tempore dolorem dicta sit cum officia. Ea sunt nemo magni quidem similique.', NULL, 1.00, 221.58, 'Kg', 1, 0, 3, 0, 0, 0, 3, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(9, 'Italian Sausage Soup', 43.10, 36.14, 'Natus quam facilis distinctio hic ipsam voluptatum quaerat. Natus veritatis ex alias rem sequi. Voluptatem est odit non cum est.', NULL, 3.00, 255.20, 'Kg', 0, 1, 6, 0, 0, 0, 5, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(10, 'Pasta Pappardelle', 17.79, 0.00, 'Ducimus voluptatibus qui maiores sapiente. Placeat sit nobis fugit magni enim accusantium qui. Et iste nemo sapiente provident assumenda porro.', NULL, 5.00, 7.93, 'ml', 0, 1, 5, 0, 0, 0, 4, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(14, 'California Italian Wedding Soup', 46.10, 0.00, 'Velit qui iure velit voluptatem non. Accusamus itaque accusantium eos enim similique libero autem. Consequatur reiciendis quis at. Deleniti voluptatibus rem maiores numquam porro quidem.', NULL, 3.00, 367.99, 'ml', 0, 0, 1, 0, 0, 0, 1, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(15, 'Chicken Noodle Soup', 33.73, 30.36, 'Quos quasi magnam quidem rem expedita cum cupiditate ipsa. Harum natus et corporis doloribus eaque possimus.', NULL, 1.00, 18.11, 'L', 0, 1, 5, 0, 0, 0, 4, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(16, 'Pizza al Pesto', 30.03, 0.00, 'Esse voluptatem maiores placeat aut eum odio iusto. Est voluptatem ut nihil rerum. Iusto laudantium ut saepe assumenda.', NULL, 2.00, 421.45, 'Kg', 1, 1, 4, 0, 0, 0, 5, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(17, 'Soup', 40.46, 0.00, 'Ullam nihil et sit vel veritatis distinctio. Aut est pariatur maiores provident. Vel omnis et nam. Porro et eveniet cum cupiditate dignissimos repellat vero odit.', NULL, 1.00, 285.66, 'Kg', 0, 1, 3, 0, 0, 0, 2, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(19, 'Big Smokey Burgers', 30.11, 0.00, 'Ipsa qui officia est minima maiores ab numquam. Tempore sit molestiae nam voluptatem nihil sit. Recusandae qui sit quia ea. Consequuntur et in sequi voluptatem magni et sapiente voluptatem.', NULL, 5.00, 331.88, 'g', 0, 0, 3, 0, 0, 0, 3, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(20, 'Cucur Udang Kuah Kacang', 45.99, 41.02, 'Debitis cum odit et et quo perspiciatis consequatur. Fuga sed deleniti blanditiis odio modi. Possimus neque voluptatem nesciunt quis. Non possimus sequi quae et.', NULL, 4.00, 179.72, 'Kg', 0, 0, 1, 0, 0, 0, 4, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(22, 'Acini di Pepe', 21.98, 0.00, 'Rem voluptas odio nostrum ab ea. Enim eum nihil enim. Labore fugit nam ipsum ipsum. Repellendus fugiat magnam quam occaecati distinctio.', NULL, 6.00, 119.35, 'L', 0, 1, 5, 0, 0, 0, 3, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(25, 'Chicken Noodle Soup', 29.28, 21.64, 'Earum quisquam quis ut quia molestiae. Libero aut molestiae est earum illum nulla labore. Asperiores possimus est ex quaerat velit.', NULL, 4.00, 255.49, 'L', 0, 0, 2, 0, 0, 0, 4, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(26, 'Pizza Margherita', 21.04, 18.04, 'Libero omnis perspiciatis sit. Autem fuga consequuntur et consequatur illum corrupti dolores. Quia omnis velit deleniti excepturi molestiae et placeat accusamus.', NULL, 2.00, 245.59, 'L', 1, 1, 5, 0, 0, 0, 5, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(29, 'Pizza Valtellina', 18.90, 0.00, 'Est similique explicabo rerum mollitia accusantium qui repudiandae. Natus est vero molestias nihil quia id ducimus quo. Et perspiciatis sint deserunt officia deserunt rerum.', NULL, 1.00, 230.70, 'L', 0, 1, 2, 0, 0, 0, 5, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(30, 'Calas', 24.13, 0.00, 'Eum repellendus quas sequi maxime et molestiae illo aut. Quia tempora quis provident architecto. Ut animi sit sint molestiae in.', NULL, 1.00, 322.09, 'Kg', 0, 1, 1, 0, 0, 0, 4, '2021-03-02 19:08:42', '2021-03-02 19:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `product_degradale`
--

CREATE TABLE `product_degradale` (
  `id` int(50) NOT NULL,
  `degradable_id` int(50) DEFAULT NULL,
  `product_id` int(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_degradale`
--

INSERT INTO `product_degradale` (`id`, `degradable_id`, `product_id`, `created_at`) VALUES
(1, 1, 2, '2021-08-05 21:57:54'),
(2, 2, 3, '2021-08-05 21:57:54'),
(3, 2, 8, '2021-08-05 21:59:55'),
(4, 1, 9, '2021-08-05 21:59:55'),
(5, 2, 10, '2021-08-05 21:59:55'),
(6, 2, 14, '2021-08-05 22:01:42'),
(7, 1, 15, '2021-08-05 22:01:42'),
(8, 2, 16, '2021-08-05 22:01:42'),
(9, 1, 17, '2021-08-05 22:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_order_extras`
--

CREATE TABLE `product_order_extras` (
  `product_order_id` int(10) UNSIGNED NOT NULL,
  `extra_id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `review`, `rate`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(6, 'HAVE tasted eggs, certainly,\' said Alice, \'but I must go and take it away!\' There was a real nose; also its eyes again, to see it trying in a low voice. \'Not at all,\' said the cook. The King laid.', 4, 1, 9, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(14, 'Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s very curious.\' \'It\'s all his fancy, that: they never executes nobody, you know. Come on!\' \'Everybody says \"come on!\" here,\'.', 3, 1, 16, '2021-03-02 19:08:42', '2021-03-02 19:08:42'),
(27, 'Alice began to repeat it, but her head to keep herself from being broken. She hastily put down yet, before the officer could get to the little passage: and THEN--she found herself safe in a very.', 5, 1, 26, '2021-03-02 19:08:42', '2021-03-02 19:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `default` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'admin', 'web', 0, '2018-07-21 22:37:56', '2019-09-08 04:42:01', NULL),
(3, 'manager', 'web', 0, '2019-09-08 04:41:38', '2019-09-08 04:41:38', NULL),
(4, 'client', 'web', 1, '2019-09-08 04:41:54', '2019-09-08 04:41:54', NULL),
(5, 'driver', 'web', 0, '2019-12-16 01:50:21', '2019-12-16 01:50:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 2),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(5, 2),
(5, 3),
(6, 2),
(9, 2),
(10, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(26, 2),
(27, 2),
(27, 3),
(27, 4),
(27, 5),
(28, 2),
(29, 2),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(31, 2),
(31, 3),
(31, 4),
(32, 2),
(32, 3),
(32, 4),
(33, 2),
(33, 3),
(34, 2),
(34, 3),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(42, 3),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(48, 3),
(48, 5),
(50, 2),
(51, 2),
(52, 2),
(52, 3),
(52, 4),
(52, 5),
(53, 2),
(53, 3),
(54, 2),
(54, 3),
(55, 2),
(55, 3),
(56, 2),
(56, 3),
(57, 2),
(57, 3),
(58, 2),
(58, 3),
(59, 2),
(59, 3),
(60, 2),
(60, 3),
(61, 2),
(61, 3),
(62, 2),
(62, 3),
(63, 2),
(63, 3),
(64, 2),
(64, 3),
(64, 4),
(64, 5),
(67, 2),
(67, 3),
(67, 4),
(67, 5),
(68, 2),
(68, 3),
(68, 4),
(68, 5),
(69, 2),
(76, 2),
(76, 3),
(77, 2),
(77, 3),
(78, 2),
(78, 3),
(80, 2),
(80, 3),
(81, 2),
(81, 3),
(82, 2),
(82, 3),
(83, 2),
(83, 3),
(83, 4),
(83, 5),
(85, 2),
(86, 2),
(86, 3),
(86, 4),
(86, 5),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(92, 3),
(92, 4),
(92, 5),
(95, 2),
(95, 3),
(95, 4),
(95, 5),
(96, 2),
(96, 3),
(96, 4),
(96, 5),
(97, 2),
(98, 2),
(98, 3),
(98, 4),
(98, 5),
(103, 2),
(103, 3),
(103, 4),
(103, 5),
(104, 2),
(104, 3),
(104, 4),
(104, 5),
(107, 2),
(107, 3),
(107, 4),
(107, 5),
(108, 2),
(108, 3),
(109, 2),
(109, 3),
(110, 2),
(110, 3),
(111, 2),
(111, 3),
(111, 4),
(111, 5),
(112, 2),
(113, 2),
(113, 3),
(113, 4),
(113, 5),
(114, 2),
(114, 3),
(114, 4),
(114, 5),
(117, 2),
(117, 3),
(117, 4),
(117, 5),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(122, 2),
(123, 2),
(124, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(130, 3),
(130, 5),
(131, 2),
(134, 2),
(134, 3),
(135, 2),
(135, 3),
(137, 2),
(137, 3),
(138, 2),
(144, 2),
(144, 5),
(145, 2),
(145, 3),
(145, 5),
(146, 2),
(146, 3),
(146, 5),
(148, 2),
(149, 2),
(151, 2),
(151, 3),
(152, 2),
(152, 3),
(153, 2),
(153, 3),
(155, 2),
(156, 2),
(160, 2),
(164, 2),
(164, 3),
(164, 4),
(164, 5),
(165, 2),
(166, 2),
(167, 2),
(168, 2),
(169, 2),
(170, 2),
(170, 3),
(171, 2),
(171, 3),
(172, 2),
(172, 3),
(173, 2),
(174, 2),
(175, 2),
(176, 2),
(177, 2),
(182, 2),
(182, 3),
(182, 4),
(183, 2),
(183, 3),
(183, 4),
(183, 5),
(184, 2),
(185, 2),
(186, 2),
(186, 3),
(187, 2),
(187, 3),
(188, 2),
(189, 2),
(190, 2),
(191, 2),
(192, 2),
(193, 2),
(194, 2);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT 0,
  `text` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_position` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'start',
  `text_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indicator_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_fit` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'cover',
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `store_id` int(10) UNSIGNED DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `order`, `text`, `button`, `text_position`, `text_color`, `button_color`, `background_color`, `indicator_color`, `image_fit`, `product_id`, `store_id`, `enabled`, `created_at`, `updated_at`) VALUES
(2, 3, 'Ut aliquam quae eos et voluptatum.', 'Get Discount', 'center', '#ea5c44', '#ea5c44', '#ccccdd', '#ea5c44', 'cover', 10, NULL, 1, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(3, 2, 'Delectus quasi labore.', 'Discover It', 'top_start', '#ea5c44', '#ea5c44', '#ccccdd', '#ea5c44', 'cover', NULL, 2, 1, '2021-03-02 19:08:43', '2021-06-26 07:03:33'),
(4, 1, 'Alias voluptas aut fugiat.', 'Get Discount', 'center', '#ea5c44', '#ea5c44', '#ccccdd', '#ea5c44', 'cover', NULL, NULL, 1, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(5, 4, 'Dicta laboriosam sequi iure.', 'Order Now', 'top_start', '#ea5c44', '#ea5c44', '#ccccdd', '#ea5c44', 'cover', NULL, 4, 1, '2021-03-02 19:08:43', '2021-06-26 07:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_cat_id` int(50) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_commission` double(8,2) DEFAULT 0.00,
  `delivery_fee` double(8,2) DEFAULT 0.00,
  `delivery_range` double(8,2) DEFAULT 0.00,
  `default_tax` double(8,2) DEFAULT 0.00,
  `closed` tinyint(1) DEFAULT 0,
  `active` tinyint(1) DEFAULT 0,
  `available_for_delivery` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `description`, `store_cat_id`, `address`, `latitude`, `longitude`, `phone`, `mobile`, `information`, `admin_commission`, `delivery_fee`, `delivery_range`, `default_tax`, `closed`, `active`, `available_for_delivery`, `created_at`, `updated_at`) VALUES
(1, 'Producty Bartoletti-Bradtke', 'Distinctio nostrum ad similique in. Rerum nisi aut est aperiam animi vero aut repellat. Sequi consectetur similique ea omnis est rerum.', 9, '6968 Zander Cliff Apt. 252Hoppeside, KY 49988', '51.84379', '7.409074', '+254706852923', NULL, 'Odit est reiciendis sed in. Qui voluptate non distinctio odio unde eaque. Ipsum odit esse in dolorem.', 12.47, 6.75, 78.75, 15.81, 1, 1, 1, '2021-03-02 19:08:42', '2021-03-02 21:22:05'),
(2, 'Meal Kulas, Nikolaus and Baumbach', 'Unde aliquam expedita voluptas rerum qui nemo. Maxime nulla quasi ea molestias vel expedita voluptatem voluptatum. Animi omnis repellat in est tempore corporis.', 2, '758 Huel FallO\'Connerborough, NY 92477-5527', '54.962656', '11.666789', '(208) 660-5270', '+1-671-206-7892', 'Minima maiores et asperiores aut qui et. Neque aliquid veniam libero dolor illum sapiente. Occaecati vel dolores delectus maxime qui et sunt.', 49.58, 4.21, 79.39, 19.62, 0, 1, 0, '2021-03-02 19:08:42', '2021-06-26 07:15:36'),
(3, 'Producty Davis-Harber', 'Mollitia et tempore dolor odit non et. Rerum labore ab ex consectetur adipisci. Quia eum odio odit esse quis ullam magnam. Cupiditate corrupti temporibus debitis ducimus ratione.', 10, '1690 Aniyah Meadows Suite 801Daneport, NJ 76978-1440', '52.045199', '8.752977', '+1-690-319-0449', '1-570-776-1096 x93165', 'Error autem rerum iusto rerum nemo sequi aut. Illo nulla aut et et est quo. Tempora fugiat aliquid optio voluptatibus minus quaerat.', 37.67, 1.17, 43.99, 20.46, 1, 1, 0, '2021-03-02 19:08:42', '2021-06-26 07:16:13'),
(4, 'Store Johns and Sons', 'Et tenetur ducimus temporibus quis ut nesciunt. Corrupti ipsa ea voluptatem et et. Sed beatae aperiam adipisci. Quia qui sed in et quas nisi alias.', 3, '943 Milo RestWolfborough, IN 25566', '46.05239', '11.533856', '565-917-4606', '1-470-469-3589 x741', 'Harum debitis rerum et aperiam possimus qui necessitatibus. Sint eveniet fugit omnis ut. Exercitationem qui hic a.', 45.82, 6.45, 73.47, 22.21, 0, 1, 0, '2021-03-02 19:08:42', '2021-06-26 07:16:48'),
(5, 'Pizza Kulas, Klein and Shields', 'Enim ipsam earum doloremque ex odit vitae. Ut doloribus dolorem placeat suscipit quaerat quod quos. Minus consequatur qui praesentium sed veritatis voluptatem.', 3, '952 Minnie Streets Suite 436Starkmouth, ND 28379-0134', '-1.2750688', '36.81896830000001', '1-535-466-0415', '+1-683-221-1500', 'Aut repudiandae provident placeat nisi ut voluptatem assumenda. Dolores quia architecto mollitia a quis. Odio natus similique voluptatem autem adipisci quia.', 26.29, 6.73, 17.87, 26.60, 1, 1, 0, '2021-03-02 19:08:42', '2021-06-26 07:38:02'),
(6, 'Burger Powlowski LLC', 'Iusto et ullam dolorum sed sapiente veniam. Aut quis quia aut cum pariatur iste earum accusamus. Quis sint porro ut labore illum. Quia fuga debitis pariatur magni deleniti cum.', 1, '98667 Kianna Branch\nNew Tomas, KS 39288', '37.687996', '8.101529', '+1 (659) 412-8491', '678-475-0662 x854', 'Enim id iste dolore optio voluptas voluptate assumenda. Corporis non eveniet iure tenetur labore. Nam non inventore suscipit veniam aut.', 49.29, 6.99, 39.62, 23.60, 0, 1, 0, '2021-03-02 19:08:42', '2021-03-02 19:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `stores_categories`
--

CREATE TABLE `stores_categories` (
  `id` int(50) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `stores_image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stores_categories`
--

INSERT INTO `stores_categories` (`id`, `name`, `description`, `stores_image`, `created_at`) VALUES
(1, 'Products', NULL, NULL, '2021-06-29 16:37:55'),
(2, 'Stores', NULL, NULL, '2021-06-29 16:37:55'),
(3, 'Need Helpers?', NULL, NULL, '2021-06-29 16:37:55'),
(4, 'Community', NULL, NULL, '2021-06-29 16:37:55'),
(5, 'Promotions', NULL, NULL, '2021-06-29 16:37:55');

-- --------------------------------------------------------

--
-- Table structure for table `stores_payouts`
--

CREATE TABLE `stores_payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(9,2) NOT NULL DEFAULT 0.00,
  `paid_date` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stores_subcategories`
--

CREATE TABLE `stores_subcategories` (
  `id` int(50) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `subcategory_icon` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(50) DEFAULT NULL,
  `position` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stores_subcategories`
--

INSERT INTO `stores_subcategories` (`id`, `name`, `description`, `subcategory_icon`, `category_id`, `position`, `created_at`) VALUES
(1, 'Supermarket', NULL, NULL, 2, NULL, '2021-06-29 16:41:34'),
(2, 'Water & Gas Delivery', NULL, NULL, 2, NULL, '2021-06-29 16:41:34'),
(3, 'Mini Stores', NULL, NULL, 2, NULL, '2021-06-29 16:41:34'),
(4, 'Groceries', NULL, NULL, 2, NULL, '2021-06-29 16:41:34'),
(5, 'Normal Meals', NULL, NULL, 1, NULL, '2021-06-29 16:46:51'),
(6, 'Juice Palour', NULL, NULL, 1, NULL, '2021-06-29 16:46:51'),
(7, 'Vegetarian ', NULL, NULL, 1, NULL, '2021-06-29 16:46:51'),
(8, 'Dispose Waste', NULL, NULL, 3, NULL, '2021-06-29 16:51:22'),
(9, 'Express Shipment', NULL, NULL, 3, NULL, '2021-06-29 16:51:22'),
(10, 'Shop for Me!', NULL, NULL, 3, NULL, '2021-06-29 16:51:22'),
(11, 'Repair Shops', NULL, NULL, 3, NULL, '2021-06-29 16:51:22'),
(12, 'Activities', NULL, NULL, 4, NULL, '2021-06-29 16:58:11'),
(13, 'Post Activity', NULL, NULL, 4, NULL, '2021-06-29 16:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `store_franchises`
--

CREATE TABLE `store_franchises` (
  `franchise_id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_franchises`
--

INSERT INTO `store_franchises` (`franchise_id`, `store_id`) VALUES
(2, 1),
(2, 2),
(3, 2),
(3, 6),
(4, 1),
(4, 3),
(6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `store_reviews`
--

CREATE TABLE `store_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_reviews`
--

INSERT INTO `store_reviews` (`id`, `review`, `rate`, `user_id`, `store_id`, `created_at`, `updated_at`) VALUES
(2, 'Duchess was sitting on a little queer, won\'t you?\' \'Not a bit,\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you finished the first figure,\' said the last words.', 5, 1, 5, '2021-03-02 19:08:43', '2021-03-02 19:08:43'),
(18, 'Alice began telling them her adventures from the change: and Alice called out to her that she knew she had been (Before she had put on her lap as if she could have told you butter wouldn\'t suit the.', 3, 1, 2, '2021-03-02 19:08:43', '2021-03-02 19:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `uuid`, `created_at`, `updated_at`) VALUES
(1, 'f5903aae-338d-43a1-ad23-615280de617c', '2021-03-02 19:17:00', '2021-03-02 19:17:00'),
(2, 'c90edc64-9d63-4200-b460-fe2b8256f32f', '2021-03-04 01:42:02', '2021-03-04 01:42:02'),
(3, '4768ab9e-fb4f-4c0c-8a7f-75a3219b6697', '2021-06-26 07:02:26', '2021-06-26 07:02:26'),
(4, 'e8fbbac5-9b31-41e4-91c1-1c787054079d', '2021-06-26 07:03:30', '2021-06-26 07:03:30'),
(5, '35ad7e95-f41d-4a93-8591-cc6b9f47860e', '2021-06-26 07:08:07', '2021-06-26 07:08:07'),
(6, 'e0c6b68d-8ed9-4552-8bd0-b881502c7e36', '2021-06-26 07:09:08', '2021-06-26 07:09:08'),
(7, '87467c8e-3208-4054-9995-fa3388234228', '2021-06-26 07:14:37', '2021-06-26 07:14:37'),
(8, '0116a9f0-efe5-49a1-8905-f576c915fca8', '2021-06-26 07:15:28', '2021-06-26 07:15:28'),
(9, 'd6e18def-93f0-4774-880b-3249842e695c', '2021-06-26 07:16:07', '2021-06-26 07:16:07'),
(10, 'c020d782-f175-4092-852d-6033239c53cb', '2021-06-26 07:16:40', '2021-06-26 07:16:40'),
(11, '7b427bd8-4a75-4006-99dc-f748d058a9e6', '2021-06-26 07:17:12', '2021-06-26 07:17:12'),
(12, '4a37002c-8622-43cd-8814-ecb891555496', '2021-06-26 07:18:00', '2021-06-26 07:18:00'),
(13, 'a0201bfd-deba-4970-a188-612d652c60f2', '2021-06-26 07:18:37', '2021-06-26 07:18:37'),
(14, '0eb59fa7-b84d-4554-a9cf-ff024dd8b405', '2021-06-26 07:19:07', '2021-06-26 07:19:07'),
(15, '79273f39-f7ab-4876-9800-ad3fed4bf628', '2021-06-26 07:19:59', '2021-06-26 07:19:59'),
(16, '1b221f12-31a5-46e8-a4dc-c501ff12f462', '2021-06-26 07:20:37', '2021-06-26 07:20:37'),
(17, 'daa74a3c-1fdf-4448-82f7-befa11f434b0', '2021-06-26 07:21:08', '2021-06-26 07:21:08'),
(18, '4dd5f1cb-3540-405b-be6b-101c3931f6f5', '2021-06-26 07:21:32', '2021-06-26 07:21:32'),
(19, '3db3ff91-74e2-43be-9d63-5b192df43b6e', '2021-06-26 07:22:01', '2021-06-26 07:22:01'),
(20, '6e845b6c-c431-426d-bfca-743af568c561', '2021-06-26 07:26:31', '2021-06-26 07:26:31'),
(21, '4cf122f1-aad0-4f2d-9411-36faf4005d3e', '2021-06-26 07:27:18', '2021-06-26 07:27:18'),
(22, '215bcf65-0509-45af-aaa6-e30a4bebb898', '2021-06-26 07:28:01', '2021-06-26 07:28:01'),
(23, '7df22e0b-1385-48de-a3a4-22364eb926b6', '2021-06-26 07:28:55', '2021-06-26 07:28:55'),
(24, 'c8142280-b451-4c53-9203-01f1c36a0ca9', '2021-07-01 03:37:15', '2021-07-01 03:37:15'),
(25, '8b527530-156f-41ac-be41-16b136ebafcf', '2021-07-01 03:37:39', '2021-07-01 03:37:39'),
(26, 'df4c289e-237c-4df9-8ddd-285e30f2eb5a', '2021-07-01 03:38:12', '2021-07-01 03:38:12'),
(27, '9a5c6482-ebdf-4d47-b965-7d9890e5272b', '2021-07-01 03:38:35', '2021-07-01 03:38:35'),
(28, '411b962a-5cdb-4c9d-aeb1-7a3ae842c310', '2021-07-01 03:39:07', '2021-07-01 03:39:07'),
(29, 'e01a627a-6ccc-423d-9b18-155e79b76c22', '2021-07-01 03:39:57', '2021-07-01 03:39:57'),
(30, '957fe5f9-fa20-4d70-9fce-73cdd7fa2ebe', '2021-07-31 19:40:55', '2021-07-31 19:40:55'),
(31, 'f7733edd-c566-413d-9037-38b2fb2d6236', '2021-08-05 17:41:07', '2021-08-05 17:41:07'),
(32, '21e37c60-1c2b-4efd-be12-aee2de76da5a', '2021-08-05 17:42:25', '2021-08-05 17:42:25'),
(33, '74ceb42b-70a1-42c1-8cc3-37d9d1a55b9e', '2021-08-05 17:42:54', '2021-08-05 17:42:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `gender` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agreement` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `braintree_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `api_token`, `device_token`, `dateofbirth`, `gender`, `agreement`, `latitude`, `longitude`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `braintree_id`, `paypal_email`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Brayton A Mongo', 'brayton@protonmail.com', '+254750515222', '$2y$10$zfkxtAGkZA9pC/fRaTTdtuKMCkgq1KJHmo9jIyFxizJQ/gs6MTbjy', 'PivvPlsQWxPl1bB5KrbKNBuraJit0PrUZekQUgtLyTRuyBq921atFtoR1HuA', 'fFS_Ll9BKeXR-loSb9CYzM:APA91bHa2xee_WciVUrmJEjWbFR-7cLQ5K1KOF8jxQeRcNN160a6Pv9MU3DV9GZV247-tNhW78v5DYJe0wfyFCHEDG-R2ILXxc53lct-MKXyvJLxfG5mODIxEKb_XjWqNPyElgKl_qMq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dSgUlFpQAR2038fhyYFnxkXYJ7p8JZx8H103sMLmhSEARRJpOJF0hR1TV7Nf', '2018-08-07 04:58:41', '2021-07-31 20:39:49'),
(8, 'Anderson Mongo', 'braytn@protonmail.com', '+254750515223', '$2y$10$FGyuGZZAWUDOg49iE8cEcugnPRlQQp..CjkRsAENmb4wcnzKrC2SS', 'XgraBk7Qz55gBrRq7nps3L5oxKZ9NRLnPLehy1u2na00E7xa6rBOeQyGPk7U', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-04 06:22:09', '2021-07-04 06:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_friends`
--

CREATE TABLE `user_friends` (
  `id` int(250) NOT NULL,
  `user_id` int(50) DEFAULT NULL,
  `friend_id` int(50) DEFAULT NULL,
  `is_user_accept` int(50) DEFAULT NULL,
  `is_friend_accept` int(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_stores`
--

CREATE TABLE `user_stores` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_stores`
--

INSERT INTO `user_stores` (`user_id`, `store_id`) VALUES
(1, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_settings_key_index` (`key`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `cart_extras`
--
ALTER TABLE `cart_extras`
  ADD PRIMARY KEY (`extra_id`,`cart_id`),
  ADD KEY `cart_extras_cart_id_foreign` (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`);

--
-- Indexes for table `degradable`
--
ALTER TABLE `degradable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `discountables`
--
ALTER TABLE `discountables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discountables_coupon_id_foreign` (`coupon_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drivers_user_id_foreign` (`user_id`);

--
-- Indexes for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drivers_payouts_user_id_foreign` (`user_id`);

--
-- Indexes for table `driver_stores`
--
ALTER TABLE `driver_stores`
  ADD PRIMARY KEY (`user_id`,`store_id`),
  ADD KEY `driver_stores_store_id_foreign` (`store_id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `earnings_store_id_foreign` (`store_id`);

--
-- Indexes for table `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extras_product_id_foreign` (`product_id`),
  ADD KEY `extras_extra_group_id_foreign` (`extra_group_id`);

--
-- Indexes for table `extra_groups`
--
ALTER TABLE `extra_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_faq_category_id_foreign` (`faq_category_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_product_id_foreign` (`product_id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`);

--
-- Indexes for table `favorite_extras`
--
ALTER TABLE `favorite_extras`
  ADD PRIMARY KEY (`extra_id`,`favorite_id`),
  ADD KEY `favorite_extras_favorite_id_foreign` (`favorite_id`);

--
-- Indexes for table `franchises`
--
ALTER TABLE `franchises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_store_id_foreign` (`store_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `nutrition`
--
ALTER TABLE `nutrition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nutrition_product_id_foreign` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_order_status_id_foreign` (`order_status_id`),
  ADD KEY `orders_driver_id_foreign` (`driver_id`),
  ADD KEY `orders_delivery_address_id_foreign` (`delivery_address_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_store_id_foreign` (`store_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_degradale`
--
ALTER TABLE `product_degradale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_orders_product_id_foreign` (`product_id`),
  ADD KEY `product_orders_order_id_foreign` (`order_id`);

--
-- Indexes for table `product_order_extras`
--
ALTER TABLE `product_order_extras`
  ADD PRIMARY KEY (`product_order_id`,`extra_id`),
  ADD KEY `product_order_extras_extra_id_foreign` (`extra_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slides_product_id_foreign` (`product_id`),
  ADD KEY `slides_store_id_foreign` (`store_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores_categories`
--
ALTER TABLE `stores_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores_payouts`
--
ALTER TABLE `stores_payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stores_payouts_store_id_foreign` (`store_id`);

--
-- Indexes for table `stores_subcategories`
--
ALTER TABLE `stores_subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_franchises`
--
ALTER TABLE `store_franchises`
  ADD PRIMARY KEY (`franchise_id`,`store_id`),
  ADD KEY `store_cuisines_store_id_foreign` (`store_id`);

--
-- Indexes for table `store_reviews`
--
ALTER TABLE `store_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_reviews_user_id_foreign` (`user_id`),
  ADD KEY `store_reviews_store_id_foreign` (`store_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `user_friends`
--
ALTER TABLE `user_friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_stores`
--
ALTER TABLE `user_stores`
  ADD PRIMARY KEY (`user_id`,`store_id`),
  ADD KEY `user_stores_store_id_foreign` (`store_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `degradable`
--
ALTER TABLE `degradable`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `discountables`
--
ALTER TABLE `discountables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `extras`
--
ALTER TABLE `extras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `extra_groups`
--
ALTER TABLE `extra_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `franchises`
--
ALTER TABLE `franchises`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `nutrition`
--
ALTER TABLE `nutrition`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `product_degradale`
--
ALTER TABLE `product_degradale`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stores_categories`
--
ALTER TABLE `stores_categories`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stores_payouts`
--
ALTER TABLE `stores_payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores_subcategories`
--
ALTER TABLE `stores_subcategories`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `store_reviews`
--
ALTER TABLE `store_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_friends`
--
ALTER TABLE `user_friends`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart_extras`
--
ALTER TABLE `cart_extras`
  ADD CONSTRAINT `cart_extras_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_extras_extra_id_foreign` FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD CONSTRAINT `delivery_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `discountables`
--
ALTER TABLE `discountables`
  ADD CONSTRAINT `discountables_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `drivers`
--
ALTER TABLE `drivers`
  ADD CONSTRAINT `drivers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  ADD CONSTRAINT `drivers_payouts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `driver_stores`
--
ALTER TABLE `driver_stores`
  ADD CONSTRAINT `driver_stores_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `driver_stores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `earnings`
--
ALTER TABLE `earnings`
  ADD CONSTRAINT `earnings_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `extras`
--
ALTER TABLE `extras`
  ADD CONSTRAINT `extras_extra_group_id_foreign` FOREIGN KEY (`extra_group_id`) REFERENCES `extra_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `extras_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_faq_category_id_foreign` FOREIGN KEY (`faq_category_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorite_extras`
--
ALTER TABLE `favorite_extras`
  ADD CONSTRAINT `favorite_extras_extra_id_foreign` FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_extras_favorite_id_foreign` FOREIGN KEY (`favorite_id`) REFERENCES `favorites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nutrition`
--
ALTER TABLE `nutrition`
  ADD CONSTRAINT `nutrition_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_delivery_address_id_foreign` FOREIGN KEY (`delivery_address_id`) REFERENCES `delivery_addresses` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_order_status_id_foreign` FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD CONSTRAINT `product_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_order_extras`
--
ALTER TABLE `product_order_extras`
  ADD CONSTRAINT `product_order_extras_extra_id_foreign` FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_order_extras_product_order_id_foreign` FOREIGN KEY (`product_order_id`) REFERENCES `product_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slides`
--
ALTER TABLE `slides`
  ADD CONSTRAINT `slides_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `slides_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `stores_payouts`
--
ALTER TABLE `stores_payouts`
  ADD CONSTRAINT `stores_payouts_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `store_franchises`
--
ALTER TABLE `store_franchises`
  ADD CONSTRAINT `store_cuisines_cuisine_id_foreign` FOREIGN KEY (`franchise_id`) REFERENCES `franchises` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `store_cuisines_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `store_reviews`
--
ALTER TABLE `store_reviews`
  ADD CONSTRAINT `store_reviews_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `store_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_stores`
--
ALTER TABLE `user_stores`
  ADD CONSTRAINT `user_stores_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_stores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
