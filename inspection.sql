-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 05:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inspection`
--

-- --------------------------------------------------------

--
-- Table structure for table `clauses`
--

CREATE TABLE `clauses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clauses`
--

INSERT INTO `clauses` (`id`, `room_type_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'السقف', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(2, 1, 'الأرضية', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(3, 1, 'النعلات', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(4, 1, 'الجدران', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(5, 1, 'مصابيح الإضاءة', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(6, 1, 'أفياش الكهرباء', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(7, 1, 'الأبواب', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(8, 1, 'النوافذ', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(9, 1, 'التكييف', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(10, 2, 'السقف', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(11, 2, 'الأرضية', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(12, 2, 'النعلات', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(13, 2, 'الجدران', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(14, 2, 'مصابيح الإضاءة', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(15, 2, 'أفياش الكهرباء', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(16, 2, 'الأبواب', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(17, 2, 'النوافذ', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(18, 2, 'التكييف', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(19, 3, 'السقف', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(20, 3, 'الأرضية', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(21, 3, 'النعلات', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(22, 3, 'الجدران', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(23, 3, 'مصابيح الإضاءة', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(24, 3, 'أفياش الكهرباء', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(25, 3, 'الأبواب', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(26, 3, 'النوافذ', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(27, 3, 'التكييف', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(28, 4, 'السقف', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(29, 4, 'الأرضية', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(30, 4, 'النعلات', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(31, 4, 'الجدران', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(32, 4, 'مصابيح الإضاءة', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(33, 4, 'أفياش الكهرباء', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(34, 4, 'الأبواب', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(35, 4, 'النوافذ', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(36, 4, 'التكييف', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(37, 4, 'صنبور المياه', '', '2024-02-18 10:44:42', '2024-02-18 10:44:42'),
(38, 4, 'محبس المياه الرئيسي', '', '2024-02-18 10:44:42', '2024-02-18 10:44:42'),
(39, 4, 'الشفاط', '', '2024-02-18 10:44:42', '2024-02-18 10:44:42'),
(40, 4, 'السخان', '', '2024-02-18 10:44:42', '2024-02-18 10:44:42'),
(41, 5, 'السقف', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(42, 5, 'الأرضية', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(43, 5, 'النعلات', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(44, 5, 'الجدران', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(45, 5, 'مصابيح الإضاءة', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(46, 5, 'أفياش الكهرباء', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(47, 5, 'الأبواب', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(48, 5, 'النوافذ', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(49, 5, 'التكييف', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(50, 5, 'صنبور المياه', '', '2024-02-18 10:44:42', '2024-02-18 10:44:42'),
(51, 5, 'محبس المياه الرئيسي', '', '2024-02-18 10:44:42', '2024-02-18 10:44:42'),
(52, 5, 'الشفاط', '', '2024-02-18 10:44:42', '2024-02-18 10:44:42'),
(53, 5, 'السخان', '', '2024-02-18 10:44:42', '2024-02-18 10:44:42'),
(54, 5, 'كرسي الحمام', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(55, 5, 'الشطاف', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(56, 5, 'المغسلة', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(57, 5, 'المرآه', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(58, 5, 'إضاءة المرآه', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(59, 5, 'دش الاستحمام', '', '2024-02-18 10:44:42', '2024-02-18 10:44:42'),
(60, 5, 'الزجاج العازل', '', '2024-02-18 15:27:54', '2024-02-18 15:27:54'),
(61, 5, 'تصريف المياه', '', '2024-02-18 15:27:54', '2024-02-18 15:27:54'),
(62, 6, 'الباب الخارجي 1', '', '2024-02-18 10:44:42', '2024-02-18 10:44:42'),
(63, 6, 'الباب الخارجي 2', '', '2024-02-18 10:44:42', '2024-02-18 10:44:42'),
(64, 6, 'قفل الباب', '', '2024-02-18 10:44:42', '2024-02-18 10:44:42'),
(65, 6, 'السقف', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(66, 6, 'الأرضية', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(67, 6, 'النعلات', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(68, 6, 'الجدران', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(69, 6, 'مصابيح الإضاءة', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(70, 6, 'أفياش الكهرباء', '', '2024-02-18 10:44:42', '2024-02-18 10:44:42'),
(71, 6, 'لوحة الكهرباء الرئيسية', '', '2024-02-18 15:27:54', '2024-02-18 15:27:54'),
(72, 6, 'الانتركوم', '', '2024-02-18 15:27:54', '2024-02-18 15:27:54'),
(73, 7, 'الأبواب', '', '2024-02-18 10:44:42', '2024-02-18 10:44:42'),
(74, 7, 'الأرضية', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(75, 7, 'النعلات', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(76, 7, 'الجدران', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(77, 7, 'مصابيح الإضاءة', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(78, 7, 'أفياش الكهرباء', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(79, 7, 'أحواض الزراعة', '', '2024-02-18 10:44:42', '2024-02-18 10:44:42'),
(80, 7, 'وصلات المياه', '', '2024-02-18 15:27:54', '2024-02-18 15:27:54'),
(81, 7, 'فتحات التصريف', '', '2024-02-18 15:27:54', '2024-02-18 15:27:54'),
(82, 8, 'موقف السيارة', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(83, 8, 'الأرضية', '', '2024-02-18 10:44:42', '2024-02-18 10:44:42'),
(84, 8, 'الجدران', '', '2024-02-18 15:27:54', '2024-02-18 15:27:54'),
(85, 8, 'الانارة الخارجية', '', '2024-02-18 15:27:54', '2024-02-18 15:27:54'),
(86, 8, 'أحواض الزراعة', '', '2024-02-18 10:44:42', '2024-02-18 10:44:42'),
(87, 8, 'وصلات المياه', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(88, 8, 'عداد الكهرباء', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(89, 8, 'عداد المياه', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(90, 8, 'تأسيس الأتصالات', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(91, 8, 'خزان المياه', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(92, 8, 'مضخة المياه', '', '2024-02-18 10:44:42', '2024-02-18 10:44:42'),
(93, 8, 'العوامة', '', '2024-02-18 15:27:54', '2024-02-18 15:27:54'),
(94, 8, 'محبس المياه', '', '2024-02-18 15:27:54', '2024-02-18 15:27:54'),
(95, 9, 'الأبواب', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(96, 9, 'الأرضية', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(97, 9, 'النعلات', '', '2024-02-18 10:35:15', '2024-02-18 10:35:15'),
(98, 9, 'الجدران', '', '2024-02-18 10:44:42', '2024-02-18 10:44:42'),
(99, 9, 'مصابيح الإضاءة', '', '2024-02-18 15:27:54', '2024-02-18 15:27:54'),
(100, 9, 'أفياش الكهرباء', '', '2024-02-18 15:27:54', '2024-02-18 15:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `merchant` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `light_logo` varchar(255) DEFAULT NULL,
  `dark_logo` varchar(255) DEFAULT NULL,
  `small_dark_logo` varchar(255) DEFAULT NULL,
  `small_light_logo` varchar(255) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `app_layout` varchar(10) NOT NULL DEFAULT 'sidebar',
  `left_sidebar_theme` varchar(20) NOT NULL DEFAULT 'dark',
  `primary_color` varchar(20) NOT NULL DEFAULT '#1890ff',
  `date_format` varchar(20) NOT NULL DEFAULT 'DD-MM-YYYY',
  `time_format` varchar(20) NOT NULL DEFAULT 'hh:mm a',
  `auto_detect_timezone` tinyint(1) NOT NULL DEFAULT 1,
  `timezone` varchar(255) NOT NULL DEFAULT 'Asia/Kolkata',
  `session_driver` varchar(20) NOT NULL DEFAULT 'file',
  `app_debug` tinyint(1) NOT NULL DEFAULT 0,
  `update_app_notification` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `short_name`, `merchant`, `email`, `phone`, `website`, `light_logo`, `dark_logo`, `small_dark_logo`, `small_light_logo`, `address`, `app_layout`, `left_sidebar_theme`, `primary_color`, `date_format`, `time_format`, `auto_detect_timezone`, `timezone`, `session_driver`, `app_debug`, `update_app_notification`, `created_at`, `updated_at`) VALUES
(1, 'شركة دور', 'door', 12315605, 'info@door.com.sa', '059588468', 'door.com.sa', NULL, NULL, NULL, NULL, NULL, 'sidebar', 'dark', '#1890ff', 'DD-MM-YYYY', 'hh:mm a', 1, 'Asia/Kolkata', 'file', 0, 1, '2024-02-18 10:47:35', '2024-02-18 10:47:35');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `property_id` bigint(20) UNSIGNED DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_number` int(11) NOT NULL,
  `form_type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inspections`
--

CREATE TABLE `inspections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `from_id` bigint(20) UNSIGNED DEFAULT NULL,
  `property_id` bigint(20) UNSIGNED DEFAULT NULL,
  `room_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `room_id` bigint(20) UNSIGNED DEFAULT NULL,
  `clause_id` bigint(20) UNSIGNED DEFAULT NULL,
  `statuse` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inspections`
--

INSERT INTO `inspections` (`id`, `company_id`, `from_id`, `property_id`, `room_type_id`, `room_id`, `clause_id`, `statuse`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 11, 1, 90, 1, 'غير مقبول', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(2, 1, NULL, 11, 1, 90, 2, 'غير مقبول', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(3, 1, NULL, 11, 1, 90, 3, 'غير مقبول', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(4, 1, NULL, 11, 1, 90, 4, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(5, 1, NULL, 11, 1, 90, 5, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(6, 1, NULL, 11, 1, 90, 6, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(7, 1, NULL, 11, 1, 90, 7, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(8, 1, NULL, 11, 1, 90, 8, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(9, 1, NULL, 11, 1, 90, 9, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(10, 1, NULL, 11, 1, 91, 1, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(11, 1, NULL, 11, 1, 91, 2, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(12, 1, NULL, 11, 1, 91, 3, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(13, 1, NULL, 11, 1, 91, 4, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(14, 1, NULL, 11, 1, 91, 5, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(15, 1, NULL, 11, 1, 91, 6, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(16, 1, NULL, 11, 1, 91, 7, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(17, 1, NULL, 11, 1, 91, 8, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(18, 1, NULL, 11, 1, 91, 9, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(19, 1, NULL, 11, 1, 92, 1, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(20, 1, NULL, 11, 1, 92, 2, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(21, 1, NULL, 11, 1, 92, 3, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(22, 1, NULL, 11, 1, 92, 4, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(23, 1, NULL, 11, 1, 92, 5, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(24, 1, NULL, 11, 1, 92, 6, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(25, 1, NULL, 11, 1, 92, 7, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(26, 1, NULL, 11, 1, 92, 8, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32'),
(27, 1, NULL, 11, 1, 92, 9, 'ممتاز', '$note', '2024-02-19 12:05:32', '2024-02-19 12:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_04_172735_create_companies_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2024_02_04_144947_create_permission_tables', 1),
(8, '2024_02_04_145944_create_room_types_table', 1),
(9, '2024_02_04_150258_create_properties_table', 1),
(10, '2024_02_04_150438_create_forms_table', 1),
(11, '2024_02_04_172012_create_rooms_table', 1),
(12, '2024_02_04_173105_create_inspections_table', 1),
(13, '2024_02_17_155558_create_projects_table', 1),
(14, '2024_02_18_094024_create_clauses_table', 1),
(15, '2024_10_06_080015_create_customers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2024-02-18 07:05:30', '2024-02-18 07:05:30'),
(2, 'role-create', 'web', '2024-02-18 07:05:30', '2024-02-18 07:05:30'),
(3, 'role-edit', 'web', '2024-02-18 07:05:30', '2024-02-18 07:05:30'),
(4, 'role-delete', 'web', '2024-02-18 07:05:30', '2024-02-18 07:05:30'),
(5, 'property-list', 'web', '2024-02-18 07:05:30', '2024-02-18 07:05:30'),
(6, 'property-create', 'web', '2024-02-18 07:05:30', '2024-02-18 07:05:30'),
(7, 'property-edit', 'web', '2024-02-18 07:05:30', '2024-02-18 07:05:30'),
(8, 'property-delete', 'web', '2024-02-18 07:05:30', '2024-02-18 07:05:30');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `company_id`, `name`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(10, 1, 'فيلا السامر', 'في حي السامر يوجد مجموعة وحدات', 1, '2024-02-18 09:24:11', '2024-02-18 09:24:11'),
(11, 1, 'شقة A2', 'شقة الدور الاول', 1, '2024-02-18 13:58:41', '2024-02-18 13:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2024-02-18 07:05:42', '2024-02-18 07:05:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `property_id` bigint(20) UNSIGNED DEFAULT NULL,
  `room_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `company_id`, `property_id`, `room_type_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(77, 1, 10, 1, 'غرفة_النوم1', '', '2024-02-18 09:24:11', '2024-02-18 09:24:11'),
(78, 1, 10, 1, 'غرفة_النوم2', '', '2024-02-18 09:24:11', '2024-02-18 09:24:11'),
(79, 1, 10, 1, 'غرفة_النوم3', '', '2024-02-18 09:24:11', '2024-02-18 09:24:11'),
(80, 1, 10, 1, 'غرفة_النوم4', '', '2024-02-18 09:24:11', '2024-02-18 09:24:11'),
(81, 1, 10, 5, 'الحمام1', '', '2024-02-18 09:24:11', '2024-02-18 09:24:11'),
(82, 1, 10, 5, 'الحمام2', '', '2024-02-18 09:24:11', '2024-02-18 09:24:11'),
(83, 1, 10, 3, 'الصالة_1', '', '2024-02-18 09:24:11', '2024-02-18 09:24:11'),
(84, 1, 10, 3, 'المجلس1', '', '2024-02-18 09:24:11', '2024-02-18 09:24:11'),
(85, 1, 10, 4, 'المطبخ1', '', '2024-02-18 09:24:11', '2024-02-18 09:24:11'),
(86, 1, 10, 6, 'المدخل1', '', '2024-02-18 09:24:11', '2024-02-18 09:24:11'),
(87, 1, 10, 7, 'فناء_المنزل1', '', '2024-02-18 09:24:11', '2024-02-18 09:24:11'),
(88, 1, 10, 8, 'المساحة_الخارجية1', '', '2024-02-18 09:24:11', '2024-02-18 09:24:11'),
(89, 1, 10, 9, 'السطح1', '', '2024-02-18 09:24:11', '2024-02-18 09:24:11'),
(90, 1, 11, 1, 'غرفة_النوم1', '', '2024-02-18 13:58:41', '2024-02-18 13:58:41'),
(91, 1, 11, 1, 'غرفة_النوم2', '', '2024-02-18 13:58:41', '2024-02-18 13:58:41'),
(92, 1, 11, 1, 'غرفة_النوم3', '', '2024-02-18 13:58:41', '2024-02-18 13:58:41'),
(93, 1, 11, 5, 'الحمام1', '', '2024-02-18 13:58:41', '2024-02-18 13:58:41'),
(94, 1, 11, 5, 'الحمام2', '', '2024-02-18 13:58:41', '2024-02-18 13:58:41'),
(95, 1, 11, 2, 'الصالة_1', '', '2024-02-18 13:58:41', '2024-02-18 13:58:41'),
(96, 1, 11, 3, 'المجلس1', '', '2024-02-18 13:58:41', '2024-02-18 13:58:41'),
(97, 1, 11, 4, 'المطبخ1', '', '2024-02-18 13:58:41', '2024-02-18 13:58:41'),
(98, 1, 11, 6, 'المدخل1', '', '2024-02-18 13:58:41', '2024-02-18 13:58:41'),
(99, 1, 11, 7, 'فناء_المنزل1', '', '2024-02-18 13:58:41', '2024-02-18 13:58:41'),
(100, 1, 11, 8, 'المساحة_الخارجية1', '', '2024-02-18 13:58:41', '2024-02-18 13:58:41'),
(101, 1, 11, 9, 'السطح1', '', '2024-02-18 13:58:41', '2024-02-18 13:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'غرفة النوم', '', '2024-02-18 10:27:40', '2024-02-18 10:27:40'),
(2, 'الصالة', '', '2024-02-18 10:27:40', '2024-02-18 10:27:40'),
(3, 'المجلس', '', '2024-02-18 10:27:40', '2024-02-18 10:27:40'),
(4, 'المطبخ', '', '2024-02-18 10:27:40', '2024-02-18 10:27:40'),
(5, 'دورة المياه', '', '2024-02-18 10:27:40', '2024-02-18 10:27:40'),
(6, 'المدخل', '', '2024-02-18 10:27:40', '2024-02-18 10:27:40'),
(7, 'فناء المنزل', '', '2024-02-18 10:27:40', '2024-02-18 10:27:40'),
(8, 'المساحة الخارجية', '', '2024-02-18 10:27:40', '2024-02-18 10:27:40'),
(9, 'السطح', '', '2024-02-18 10:27:40', '2024-02-18 10:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `company_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hardik Savani', 'admin@gmail.com', NULL, '$2y$12$NplFKsyVPQ47yrSEDpCHEuLIUhwNa9KGw60YS8lrb09pp.LCFDsHm', NULL, '2024-02-18 07:05:42', '2024-02-18 07:05:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clauses`
--
ALTER TABLE `clauses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clauses_room_type_id_foreign` (`room_type_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_company_id_foreign` (`company_id`),
  ADD KEY `customers_property_id_foreign` (`property_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forms_created_by_foreign` (`created_by`),
  ADD KEY `forms_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `inspections`
--
ALTER TABLE `inspections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inspections_company_id_foreign` (`company_id`),
  ADD KEY `inspections_property_id_foreign` (`property_id`),
  ADD KEY `inspections_room_id_foreign` (`room_id`),
  ADD KEY `inspections_room_type_id_foreign` (`room_type_id`),
  ADD KEY `inspections_form_id_foreign` (`from_id`),
  ADD KEY `inspections_clause_id_foreign` (`clause_id`);

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
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_company_id_foreign` (`company_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `properties_company_id_foreign` (`company_id`),
  ADD KEY `properties_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_company_id_foreign` (`company_id`),
  ADD KEY `rooms_property_id_foreign` (`property_id`),
  ADD KEY `rooms_room_type_id_foreign` (`room_type_id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_company_id_foreign` (`company_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clauses`
--
ALTER TABLE `clauses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inspections`
--
ALTER TABLE `inspections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clauses`
--
ALTER TABLE `clauses`
  ADD CONSTRAINT `clauses_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customers_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forms`
--
ALTER TABLE `forms`
  ADD CONSTRAINT `forms_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `forms_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inspections`
--
ALTER TABLE `inspections`
  ADD CONSTRAINT `inspections_clause_id_foreign` FOREIGN KEY (`clause_id`) REFERENCES `clauses` (`id`),
  ADD CONSTRAINT `inspections_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `inspections_form_id_foreign` FOREIGN KEY (`from_id`) REFERENCES `forms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `inspections_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `inspections_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `inspections_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `properties_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rooms_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rooms_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
