-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Mar 10, 2022 at 12:44 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL,
  `mobile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `type`, `email`, `password`, `name`, `mobile`) VALUES
(14, 'teacher', 'pratik@gmail.com', '123456', 'Pratik', '9874589698'),
(15, 'teacher', 'nimesh@gmail.com', '123456', 'Nimesh Ramani', '8596741455'),
(21, 'admin', 'admin@gmail.com', '123456', 'Admin', '7895241036'),
(30, 'teacher', 'devarshi@gmail.com', '123456', 'devarshi vaidya', '8596741455'),
(35, 'student', 'siddharth@gmail.com', '23032001', 'Siddharth Chauhan', '7777778888'),
(36, 'parent', 'shankar@gmail.com', '23032001', 'Shankar Chauhan', '7777889654'),
(39, 'student', 'darshan1@gmail.com', '23032000', 'Darshan Chauhan', '8745210021'),
(40, 'parent', 'rajendr1@gmail.com', '23032000', 'RajendrBhai', '7777889654'),
(41, 'teacher', 'dhruv@gmail.com', '123456', 'Dhruv Chauhan', '7896541202');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `college` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`, `gender`, `college`) VALUES
('admin@mail.com', 'admin@123', 'male', 'xyz');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('620f4d2907d39', '620f4d29089d9'),
('620f4d290c5ab', '620f4d290caba'),
('620f4d290f2d6', '620f4d290f8c5'),
('6226086996a10', '62260869974b0'),
('622608699cd98', '622608699d4d0'),
('62260869a1113', '62260869a1c49'),
('62260a2a3016f', '62260a2a30903'),
('62260a2a34483', '62260a2a34b11');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `user_meta` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `name`, `class`, `section`, `date`, `user_meta`) VALUES
(1, 'Siddharth Chauhan', '4', '3', '2022-02-28', 35),
(2, 'Darshan Chauhan', '4', '3', '2022-02-28', 39),
(3, 'Siddharth Chauhan', '4', '3', '2022-03-10', 35);

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `user_meta` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `busattendance`
--

CREATE TABLE `busattendance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `busattendance`
--

INSERT INTO `busattendance` (`id`, `name`, `meta_value`, `date`, `created_at`, `updated_at`) VALUES
(13, 'Siddharth Chauhan', 35, '2022-02-28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `busstudent`
--

CREATE TABLE `busstudent` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mono` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `busstudent`
--

INSERT INTO `busstudent` (`id`, `name`, `address`, `mono`, `created_at`, `updated_at`) VALUES
(35, 'Siddharth Chauhan', 'ahmedabad', 777777888, NULL, NULL),
(39, 'Darshan Chauhan', 'abc', 857485969, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `category` text NOT NULL,
  `duration` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `image` text NOT NULL,
  `detail` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `category`, `duration`, `date`, `image`, `detail`) VALUES
(3, 'RecyclerView', 'app-devlopment', '1 hour', '2022-01-27 00:00:00', 'Untitled.png', 'RecyclerView makes it easy to efficiently display large sets of data. You supply the data and define how each item looks, and the RecyclerView library dynamically creates the elements when they\'re needed.'),
(4, 'HTML', 'web-design-and-devlopment', '15 hour', '2022-01-27 00:00:00', 'Untitled.png', 'In this HTML tutorial, you will find more than 200 examples. With our online \"Try it Yourself\" editor, you can edit and test each example yourself!'),
(5, 'CSS', 'web-design-and-devlopment', '2 hour', '2022-01-27 00:00:00', 'Untitled.png', 'Cascading Style Sheets, fondly referred to as CSS, is a simple design language intended to simplify the process of making web pages presentable. CSSis a MUST for students and working professionals to become a great Software Engineer specially when they are working in Web Development Domain.'),
(6, 'JS', 'web-design-and-devlopment', '22 hour', '2022-01-30 00:00:00', 'Untitled.png', 'JavaScript JavaScript (JS) is a lightweight, interpreted, or just-in-time compiled programming language with first-class functions. While it is most well-known as the scripting language for Web pages, many non-browser environments also use it, such as Node.js, Apache CouchDB and Adobe Acrobat.'),
(8, 'ViewModel', 'app-devlopment', '1 hour', '2022-03-06 00:00:00', 'Untitled.png', 'Android Architecture Components provides the ViewModel helper class for the UI controller that is responsible for preparing data for the UI. ViewModel objects are automatically retained during configuration changes we will see that in the below example. Now let’s get into the code.'),
(9, 'Bootstrap', 'web-design-and-devlopment', '2 hour', '2022-03-06 00:00:00', 'Untitled.png', 'Bootstrap is the most popular HTML, CSS, and JavaScript framework for developing responsive, mobile-first websites.');

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
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `meta_value` text NOT NULL,
  `feedback` text NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `meta_value`, `feedback`, `type`) VALUES
(1, 'Siddharth Chauhan', '35', 'Good Teaching System and helpful faculty.', 'student'),
(2, 'Siddharth Chauhan', '35', 'Thank You', 'student'),
(3, 'Shankar Chauhan', '36', 'Good Study Enviourment', 'parent'),
(5, 'Darshan Chauhan', '39', 'Helpful Teaches.', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('darshan@gmail.com', '620f4cada8063', 3, 3, 3, 0, '2022-02-18 09:32:22'),
('siddharth@gmail.com', '620f4cada8063', 1, 3, 2, 1, '2022-03-02 05:28:53'),
('darshan1@gmail.com', '620f4cada8063', 3, 3, 3, 0, '2022-03-07 12:49:06'),
('siddharth@gmail.com', '622609ab1cc97', 2, 2, 2, 0, '2022-03-08 11:12:16'),
('siddharth@gmail.com', '62260826c6d58', 2, 3, 2, 1, '2022-03-10 08:56:22');

-- --------------------------------------------------------

--
-- Table structure for table `metadata`
--

CREATE TABLE `metadata` (
  `id` int(50) NOT NULL,
  `item_id` int(50) NOT NULL,
  `meta_key` varchar(50) NOT NULL,
  `meta_value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `metadata`
--

INSERT INTO `metadata` (`id`, `item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'section', '2'),
(5, 4, 'section', '3'),
(7, 4, 'section', '2'),
(31, 10, 'from', '08:30'),
(32, 10, 'to', '09:15'),
(35, 5, 'from', '07:00'),
(36, 5, 'to', '07:45'),
(37, 6, 'from', '07:45'),
(38, 6, 'to', '08:30'),
(41, 14, 'class_id', '4'),
(42, 14, 'section_id', '3'),
(43, 14, 'teacher_id', '14'),
(44, 14, 'period_id', '6'),
(45, 14, 'day_name', 'monday'),
(46, 14, 'subject_id', '43'),
(47, 15, 'class_id', '1'),
(48, 15, 'section_id', '3'),
(49, 15, 'teacher_id', '15'),
(50, 15, 'period_id', '5'),
(51, 15, 'day_name', 'tuesday'),
(52, 15, 'subject_id', '42'),
(53, 16, 'class_id', '4'),
(54, 16, 'section_id', '3'),
(55, 16, 'teacher_id', '14'),
(56, 16, 'period_id', '5'),
(57, 16, 'day_name', 'wedensday'),
(58, 16, 'subject_id', '42'),
(59, 17, 'class_id', '1'),
(60, 17, 'section_id', '2'),
(61, 17, 'teacher_id', '15'),
(62, 17, 'period_id', '5'),
(63, 17, 'day_name', 'monday'),
(64, 17, 'subject_id', '42'),
(65, 18, 'class_id', '1'),
(66, 18, 'section_id', '2'),
(67, 18, 'teacher_id', '14'),
(68, 18, 'period_id', '10'),
(69, 18, 'day_name', 'monday'),
(70, 18, 'subject_id', '43'),
(71, 19, 'class_id', '1'),
(72, 19, 'section_id', '2'),
(73, 19, 'teacher_id', '15'),
(74, 19, 'period_id', '11'),
(75, 19, 'day_name', 'monday'),
(76, 19, 'subject_id', '42'),
(77, 20, 'class_id', '1'),
(78, 20, 'section_id', '2'),
(79, 20, 'teacher_id', '14'),
(80, 20, 'period_id', '10'),
(81, 20, 'day_name', 'wedensday'),
(82, 20, 'subject_id', '43'),
(83, 21, 'class_id', '4'),
(84, 21, 'section_id', '2'),
(85, 21, 'teacher_id', '14'),
(86, 21, 'period_id', '11'),
(87, 21, 'day_name', 'monday'),
(88, 21, 'subject_id', '42'),
(89, 23, 'from', '09:15'),
(90, 23, 'to', '10:00'),
(91, 24, 'class_id', '1'),
(92, 24, 'section_id', '2'),
(93, 24, 'teacher_id', '30'),
(94, 24, 'period_id', '5'),
(95, 24, 'day_name', 'thursday'),
(96, 24, 'subject_id', '43'),
(97, 25, 'class_id', '1'),
(98, 25, 'section_id', '2'),
(99, 25, 'teacher_id', '30'),
(100, 25, 'period_id', '23'),
(101, 25, 'day_name', 'friday'),
(102, 25, 'subject_id', '43'),
(103, 26, 'class_id', '1'),
(104, 26, 'section_id', '2'),
(105, 26, 'teacher_id', '30'),
(106, 26, 'period_id', '6'),
(107, 26, 'day_name', 'sunday'),
(108, 26, 'subject_id', '42'),
(115, 35, 'section', '2'),
(116, 35, 'section', '28'),
(127, 42, 'class_id', '1'),
(128, 42, 'section_id', '2'),
(129, 43, 'class_id', '4'),
(130, 43, 'section_id', '3'),
(137, 46, 'class_id', '4'),
(138, 46, 'section_id', '3'),
(139, 46, 'teacher_id', '14'),
(140, 46, 'period_id', '5'),
(141, 46, 'day_name', 'friday'),
(142, 46, 'subject_id', '42'),
(143, 47, 'section', '2'),
(144, 47, 'section', '28'),
(145, 48, 'class_id', '4'),
(146, 48, 'section_id', '2'),
(147, 48, 'teacher_id', '14'),
(148, 48, 'period_id', '5'),
(149, 48, 'day_name', 'monday'),
(150, 48, 'subject_id', '42'),
(151, 49, 'class_id', '4'),
(152, 49, 'section_id', '3'),
(153, 49, 'teacher_id', '30'),
(154, 49, 'period_id', '5'),
(155, 49, 'day_name', 'monday'),
(156, 49, 'subject_id', '43'),
(157, 50, 'section', '2');

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
(7, '2022_03_09_064139_create_bus_table', 2),
(8, '2022_03_10_082518_create_busstudent_table', 2),
(9, '2022_03_10_082551_create_busattendance_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('620f4d2907d39', 'Object Oriented Launguage', '620f4d29089d9'),
('620f4d2907d39', 'Object orignal Launguage', '620f4d29089db'),
('620f4d2907d39', 'Orignal Oriented Launguage', '620f4d29089dc'),
('620f4d2907d39', 'Object Oriented Limited', '620f4d29089dd'),
('620f4d290c5ab', 'a', '620f4d290caba'),
('620f4d290c5ab', 'b', '620f4d290cabc'),
('620f4d290c5ab', 'c', '620f4d290cabd'),
('620f4d290c5ab', 'd', '620f4d290cabe'),
('620f4d290f2d6', 'a', '620f4d290f8c5'),
('620f4d290f2d6', 'b', '620f4d290f8c9'),
('620f4d290f2d6', 'c', '620f4d290f8ca'),
('620f4d290f2d6', 'd', '620f4d290f8cb'),
('6226086996a10', 'a', '62260869974b0'),
('6226086996a10', 'b', '62260869974b5'),
('6226086996a10', 'cqddq', '62260869974b7'),
('6226086996a10', 'd', '62260869974b8'),
('622608699cd98', 'as', '622608699d4cd'),
('622608699cd98', 'b', '622608699d4d0'),
('622608699cd98', 'c', '622608699d4d1'),
('622608699cd98', 'd', '622608699d4d2'),
('62260869a1113', 'a', '62260869a1c40'),
('62260869a1113', 'b', '62260869a1c48'),
('62260869a1113', 'c', '62260869a1c49'),
('62260869a1113', 'd', '62260869a1c4b'),
('62260a2a3016f', '8', '62260a2a30900'),
('62260a2a3016f', '4', '62260a2a30902'),
('62260a2a3016f', '12', '62260a2a30903'),
('62260a2a3016f', '15', '62260a2a30904'),
('62260a2a34483', '.card', '62260a2a34b11'),
('62260a2a34483', '.box', '62260a2a34b15'),
('62260a2a34483', '.card-ax', '62260a2a34b16'),
('62260a2a34483', '.cardbox', '62260a2a34b17');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(50) NOT NULL,
  `author` int(11) NOT NULL DEFAULT 1,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `type` varchar(50) NOT NULL,
  `publish_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(50) NOT NULL,
  `parent` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author`, `title`, `description`, `type`, `publish_date`, `modified_date`, `status`, `parent`) VALUES
(1, 1, 'Class-1', 'Class-1 Description', 'class', '2022-01-31 13:13:50', '2022-01-31 13:13:50', 'publish', 0),
(2, 1, 'Section-A', 'Section-A Description', 'section', '2022-01-31 13:13:50', '2022-01-31 13:13:50', 'publish', 0),
(3, 1, 'Section-B', 'Section-B desc', 'section', '2022-02-01 05:52:04', '2022-02-01 05:52:04', 'publish', 0),
(4, 1, 'Class-2', 'Class-2 Description', 'class', '2022-02-01 06:05:11', '2022-02-01 06:05:11', 'publish', 0),
(5, 1, 'First Period', 'period desc', 'period', '2022-02-02 05:56:32', '2022-02-02 05:56:32', 'publish', 0),
(6, 1, 'Second Period', 'Second Period Desc', 'period', '2022-02-02 05:57:07', '2022-02-02 05:57:07', 'publish', 0),
(10, 1, 'Third Period', '', 'period', '2022-02-02 05:52:00', '2022-02-02 10:27:15', 'publish', 0),
(14, 1, '', '', 'timetable', '2022-02-01 22:18:07', '2022-02-02 14:48:07', 'publish', 0),
(15, 1, '', '', 'timetable', '2022-02-01 22:19:04', '2022-02-02 14:49:04', 'publish', 0),
(16, 1, '', '', 'timetable', '2022-02-01 22:21:46', '2022-02-02 14:51:46', 'publish', 0),
(17, 1, '', '', 'timetable', '2022-02-01 22:35:07', '2022-02-02 15:05:07', 'publish', 0),
(18, 1, '', '', 'timetable', '2022-02-01 22:35:56', '2022-02-02 15:05:56', 'publish', 0),
(19, 1, '', '', 'timetable', '2022-02-01 22:36:49', '2022-02-02 15:06:49', 'publish', 0),
(20, 1, '', '', 'timetable', '2022-02-01 22:38:39', '2022-02-02 15:08:39', 'publish', 0),
(21, 1, '', '', 'timetable', '2022-02-01 22:39:51', '2022-02-02 15:09:51', 'publish', 0),
(23, 1, 'Four Period', '', 'period', '2022-02-03 04:18:53', '2022-02-07 06:43:03', 'publish', 0),
(24, 1, '', '', 'timetable', '2022-02-03 04:19:37', '2022-02-03 08:49:37', 'publish', 0),
(25, 1, '', '', 'timetable', '2022-02-07 02:14:37', '2022-02-07 06:44:37', 'publish', 0),
(26, 1, '', '', 'timetable', '2022-02-07 02:31:24', '2022-02-07 07:01:24', 'publish', 0),
(28, 1, 'Section-C', 'Section-C Descrpiption', 'section', '2022-02-09 01:27:43', '2022-02-09 05:57:43', 'publish', 0),
(35, 1, 'Class-3', 'Class-3 Descrpiption', 'class', '2022-02-08 18:30:00', '2022-02-09 09:34:30', 'publish', 0),
(42, 1, 'English', 'Descrpiption', 'subject', '2022-02-08 18:30:00', '2022-02-09 11:02:12', 'publish', 0),
(43, 1, 'Gujrati', 'Descrpiption', 'subject', '2022-02-08 18:30:00', '2022-02-09 11:02:25', 'publish', 0),
(46, 1, '', '', 'timetable', '2022-02-14 07:00:46', '2022-02-14 11:30:46', 'publish', 0),
(47, 1, 'Class-4', 'Class-4 Descrpiption', 'class', '2022-02-14 18:30:00', '2022-02-15 08:16:17', 'publish', 0),
(48, 1, '', '', 'timetable', '2022-02-19 07:21:32', '2022-02-19 11:51:32', 'publish', 0),
(49, 1, '', '', 'timetable', '2022-02-21 06:14:42', '2022-02-21 10:44:42', 'publish', 0),
(50, 1, 'Class-5', 'Class-5 Descrpiption', 'class', '2022-03-06 18:30:00', '2022-03-07 13:42:33', 'publish', 0);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('620f4cada8063', '620f4d2907d39', 'Oops Full Form', 4, 1),
('620f4cada8063', '620f4d290c5ab', 'java', 4, 2),
('620f4cada8063', '620f4d290f2d6', 'this is for test', 4, 3),
('62260826c6d58', '6226086996a10', 'Ans A', 4, 1),
('62260826c6d58', '622608699cd98', 'Answer B', 4, 2),
('62260826c6d58', '62260869a1113', 'Answer C', 4, 3),
('622609ab1cc97', '62260a2a3016f', 'How many Columns Available in bootstrap.', 4, 1),
('622609ab1cc97', '62260a2a34483', 'syntex for create card?', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('620f4cada8063', 'Java', 1, 1, 3, 10, 'good luck', 'java', '2022-02-18 07:37:17'),
('62260826c6d58', 'React', 1, 0, 3, 5, 'All the best', 'react', '2022-03-07 13:27:02'),
('622609ab1cc97', 'Bootstrap', 1, 0, 2, 5, 'Ok', 'bs', '2022-03-07 13:33:31');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('prartik@gmail.com', 2, '2022-02-09 07:57:53'),
('xyz@gmail.com', 1, '2022-02-09 08:08:17'),
('darshan@gmail.com', 3, '2022-02-18 09:32:22'),
('siddharth@gmail.com', 5, '2022-03-10 08:56:22'),
('darshan1@gmail.com', 3, '2022-03-07 12:49:06');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` int(10) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Abc', 'M', 'abc', 'abc@gmail.com', 1234567895, 'b24331b1a138cde62aa1f679164fc62f'),
('Pratik Bhatti', 'M', 'srki', 'prartik@gmail.com', 1234567895, 'e10adc3949ba59abbe56e057f20f883e'),
('Xyz', 'M', 'xyz', 'xyz@gmail.com', 1234567892, 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `usermeta`
--

CREATE TABLE `usermeta` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usermeta`
--

INSERT INTO `usermeta` (`id`, `user_id`, `meta_key`, `meta_value`) VALUES
(90, 36, 'name', 'Siddharth Chauhan'),
(91, 36, 'dob', '2001-03-23'),
(92, 36, 'address', 'Meghaninagar'),
(93, 36, 'city', 'Ahmedabad'),
(94, 36, 'state', 'Gujrat'),
(95, 36, 'zip', '380016'),
(96, 36, 'father_name', 'Shankar Chauhan'),
(97, 36, 'father_mobile', '7777889654'),
(98, 36, 'mother_name', 'Saraswati Chauhan'),
(99, 36, 'mother_mobile', '8889899988'),
(100, 36, 'parent_email', 'shankar@gmail.com'),
(101, 36, 'parent_address', 'Meghaninagar'),
(102, 36, 'parent_city', 'Ahmedabad'),
(103, 36, 'parent_state', '2022-02-19'),
(104, 36, 'parent_zip', '380016'),
(105, 36, 'class', '4'),
(106, 36, 'section', '3'),
(107, 36, 'doa', 'Gujrat'),
(180, 40, 'name', 'Darshan Chauhan'),
(181, 40, 'dob', '2000-03-23'),
(182, 40, 'address', 'home'),
(183, 40, 'city', 'mehsana'),
(184, 40, 'state', 'gujrat'),
(185, 40, 'zip', '320013'),
(186, 40, 'father_name', 'RajendrBhai'),
(187, 40, 'father_mobile', '7777889654'),
(188, 40, 'mother_name', 'Ben'),
(189, 40, 'mother_mobile', '8889899988'),
(190, 40, 'parent_email', 'rajendr1@gmail.com'),
(191, 40, 'parent_address', 'disha'),
(192, 40, 'parent_city', 'mehsana'),
(193, 40, 'parent_state', '2022-02-28'),
(194, 40, 'parent_zip', '320013'),
(195, 40, 'class', '4'),
(196, 40, 'section', '3'),
(197, 40, 'doa', 'gujrat'),
(198, 41, 'teacher_class', '4'),
(199, 41, 'teacher_section', '3');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `busattendance`
--
ALTER TABLE `busattendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `busstudent`
--
ALTER TABLE `busstudent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metadata`
--
ALTER TABLE `metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `usermeta`
--
ALTER TABLE `usermeta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `busattendance`
--
ALTER TABLE `busattendance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `busstudent`
--
ALTER TABLE `busstudent`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `metadata`
--
ALTER TABLE `metadata`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `usermeta`
--
ALTER TABLE `usermeta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
