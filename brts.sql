-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2024 at 06:56 AM
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
-- Database: `brts`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `bus_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`bus_id`) VALUES
('1D'),
('2D'),
('3D'),
('4D'),
('5D');

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `Route_id` int(11) NOT NULL,
  `Route_name` varchar(100) NOT NULL,
  `distance` float NOT NULL,
  `start_location` varchar(100) NOT NULL,
  `end_location` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`Route_id`, `Route_name`, `distance`, `start_location`, `end_location`, `created_at`) VALUES
(1, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:40:41'),
(2, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:40:41'),
(3, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:40:41'),
(4, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:40:41'),
(5, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:40:41'),
(6, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:40:41'),
(7, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:40:41'),
(8, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:40:41'),
(9, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:40:41'),
(10, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:52:59'),
(11, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:52:59'),
(12, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:52:59'),
(13, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:52:59'),
(14, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:52:59'),
(15, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:52:59'),
(16, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:52:59'),
(17, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:52:59'),
(18, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:52:59'),
(19, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:56:29'),
(20, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:56:29'),
(21, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:56:29'),
(22, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:56:29'),
(23, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:56:29'),
(24, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:56:29'),
(25, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:56:29'),
(26, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:56:29'),
(27, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 10:56:29'),
(28, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:40:55'),
(29, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:40:55'),
(30, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:40:55'),
(31, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:40:55'),
(32, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:40:55'),
(33, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:40:55'),
(34, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:40:55'),
(35, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:40:55'),
(36, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:40:55'),
(37, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:42:45'),
(38, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:42:45'),
(39, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:42:45'),
(40, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:42:45'),
(41, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:42:45'),
(42, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:42:45'),
(43, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:42:45'),
(44, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:42:45'),
(45, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:42:45'),
(46, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:43:54'),
(47, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:43:54'),
(48, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:43:54'),
(49, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:43:54'),
(50, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:43:54'),
(51, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:43:54'),
(52, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:43:54'),
(53, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:43:54'),
(54, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:43:54'),
(55, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:44:15'),
(56, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:44:15'),
(57, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:44:15'),
(58, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:44:15'),
(59, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:44:15'),
(60, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:44:15'),
(61, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:44:15'),
(62, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:44:15'),
(63, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:44:15'),
(64, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:45:34'),
(65, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:45:34'),
(66, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:45:34'),
(67, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:45:34'),
(68, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:45:34'),
(69, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:45:34'),
(70, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:45:34'),
(71, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:45:34'),
(72, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:45:34'),
(73, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:47:22'),
(74, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:47:22'),
(75, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:47:22'),
(76, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:47:22'),
(77, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:47:22'),
(78, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:47:22'),
(79, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:47:22'),
(80, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:47:22'),
(81, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:47:22'),
(82, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:49:10'),
(83, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:49:10'),
(84, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:49:10'),
(85, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:49:10'),
(86, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:49:10'),
(87, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:49:10'),
(88, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:49:10'),
(89, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:49:10'),
(90, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:49:10'),
(91, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:51:01'),
(92, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:51:01'),
(93, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:51:01'),
(94, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:51:01'),
(95, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:51:01'),
(96, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:51:01'),
(97, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:51:01'),
(98, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:51:01'),
(99, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:51:01'),
(100, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:58:31'),
(101, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:58:31'),
(102, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:58:31'),
(103, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:58:31'),
(104, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:58:31'),
(105, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:58:31'),
(106, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:58:31'),
(107, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:58:31'),
(108, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 11:58:31'),
(109, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:00:13'),
(110, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:00:13'),
(111, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:00:13'),
(112, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:00:13'),
(113, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:00:13'),
(114, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:00:13'),
(115, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:00:13'),
(116, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:00:13'),
(117, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:00:13'),
(118, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:02:06'),
(119, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:02:06'),
(120, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:02:06'),
(121, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:02:06'),
(122, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:02:06'),
(123, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:02:06'),
(124, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:02:06'),
(125, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:02:06'),
(126, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:02:06'),
(127, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:05:44'),
(128, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:05:44'),
(129, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:05:44'),
(130, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:05:44'),
(131, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:05:44'),
(132, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:05:44'),
(133, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:05:44'),
(134, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:05:44'),
(135, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:05:44'),
(136, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:09:16'),
(137, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:09:16'),
(138, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:09:16'),
(139, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:09:16'),
(140, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:09:16'),
(141, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:09:16'),
(142, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:09:16'),
(143, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:09:16'),
(144, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:09:16'),
(145, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:26:23'),
(146, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:26:23'),
(147, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:26:23'),
(148, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:26:23'),
(149, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:26:23'),
(150, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:26:23'),
(151, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:26:23'),
(152, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:26:23'),
(153, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:26:23'),
(154, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:27:54'),
(155, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:27:54'),
(156, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:27:54'),
(157, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:27:54'),
(158, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:27:54'),
(159, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:27:54'),
(160, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:27:54'),
(161, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:27:54'),
(162, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:27:54'),
(163, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:29:23'),
(164, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:29:23'),
(165, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:29:23'),
(166, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:29:23'),
(167, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:29:23'),
(168, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:29:23'),
(169, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:29:23'),
(170, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:29:23'),
(171, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 12:29:23'),
(172, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 17:58:20'),
(173, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 17:58:20'),
(174, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 17:58:20'),
(175, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 17:58:20'),
(176, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 17:58:20'),
(177, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 17:58:20'),
(178, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 17:58:20'),
(179, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 17:58:20'),
(180, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 17:58:20'),
(181, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:03:20'),
(182, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:03:20'),
(183, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:03:20'),
(184, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:03:20'),
(185, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:03:20'),
(186, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:03:20'),
(187, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:03:20'),
(188, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:03:20'),
(189, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:03:20'),
(190, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:06:40'),
(191, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:06:40'),
(192, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:06:40'),
(193, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:06:40'),
(194, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:06:40'),
(195, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:06:40'),
(196, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:06:40'),
(197, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:06:40'),
(198, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:06:40'),
(199, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:13:00'),
(200, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:13:00'),
(201, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:13:00'),
(202, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:13:00'),
(203, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:13:00'),
(204, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:13:00'),
(205, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:13:00'),
(206, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:13:00'),
(207, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:13:00'),
(208, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:16:44'),
(209, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:16:44'),
(210, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:16:44'),
(211, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:16:44'),
(212, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:16:44'),
(213, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:16:44'),
(214, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:16:44'),
(215, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:16:44'),
(216, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:16:44'),
(217, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:23:25'),
(218, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:23:25'),
(219, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:23:25'),
(220, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:23:25'),
(221, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:23:25'),
(222, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:23:25'),
(223, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:23:25'),
(224, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:23:25'),
(225, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:23:25'),
(226, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:26:11'),
(227, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:26:11'),
(228, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:26:11'),
(229, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:26:11'),
(230, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:26:11'),
(231, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:26:11'),
(232, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:26:11'),
(233, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:26:11'),
(234, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:26:11'),
(235, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:29:36'),
(236, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:29:36'),
(237, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:29:36'),
(238, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:29:36'),
(239, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:29:36'),
(240, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:29:36'),
(241, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:29:36'),
(242, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:29:36'),
(243, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 18:29:36'),
(244, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 19:58:10'),
(245, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 19:58:10'),
(246, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 19:58:10'),
(247, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 19:58:10'),
(248, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 19:58:10'),
(249, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 19:58:10'),
(250, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 19:58:10'),
(251, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 19:58:10'),
(252, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 19:58:10'),
(253, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 19:59:50'),
(254, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 19:59:50'),
(255, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 19:59:50'),
(256, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 19:59:50'),
(257, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 19:59:50'),
(258, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 19:59:50'),
(259, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 19:59:50'),
(260, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 19:59:50'),
(261, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 19:59:50'),
(262, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:01:41'),
(263, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:01:41'),
(264, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:01:41'),
(265, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:01:41'),
(266, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:01:41'),
(267, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:01:41'),
(268, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:01:41'),
(269, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:01:41'),
(270, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:01:41'),
(271, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:04:22'),
(272, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:04:22'),
(273, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:04:22'),
(274, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:04:22'),
(275, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:04:22'),
(276, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:04:22'),
(277, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:04:22'),
(278, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:04:22'),
(279, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:04:22'),
(280, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:08:50'),
(281, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:08:50'),
(282, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:08:50'),
(283, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:08:50'),
(284, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:08:50'),
(285, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:08:50'),
(286, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:08:50'),
(287, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:08:50'),
(288, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:08:50'),
(289, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:14:25'),
(290, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:14:25'),
(291, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:14:25'),
(292, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:14:25'),
(293, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:14:25'),
(294, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:14:25'),
(295, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:14:25'),
(296, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:14:25'),
(297, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:14:25'),
(298, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:15:23'),
(299, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:15:23'),
(300, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:15:23'),
(301, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:15:23'),
(302, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:15:23'),
(303, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:15:23'),
(304, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:15:23'),
(305, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:15:23'),
(306, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:15:23'),
(307, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:19:08'),
(308, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:19:08'),
(309, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:19:08'),
(310, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:19:08'),
(311, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:19:08'),
(312, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:19:08'),
(313, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:19:08'),
(314, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:19:08'),
(315, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 20:19:08'),
(316, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 03:18:52'),
(317, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 03:18:52'),
(318, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 03:18:52'),
(319, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 03:18:52'),
(320, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 03:18:52'),
(321, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 03:18:52'),
(322, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 03:18:52'),
(323, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 03:18:52'),
(324, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 03:18:52'),
(325, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:04:20'),
(326, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:04:20'),
(327, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:04:20'),
(328, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:04:20'),
(329, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:04:20'),
(330, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:04:20'),
(331, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:04:20'),
(332, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:04:20'),
(333, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:04:20'),
(334, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:38:45'),
(335, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:38:45'),
(336, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:38:45'),
(337, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:38:45'),
(338, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:38:45'),
(339, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:38:45'),
(340, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:38:45'),
(341, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:38:45'),
(342, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:38:45'),
(343, 'Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:49:00'),
(344, 'Shiv Shaktinagar BRTS', 7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:49:00'),
(345, 'Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:49:00'),
(346, 'R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:49:00'),
(347, 'Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:49:00'),
(348, 'Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:49:00'),
(349, 'ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:49:00'),
(350, 'Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:49:00'),
(351, 'Sanand Circle', 15, 'Chandkheda BRTS', 'Sanand Circle', '2024-08-29 04:49:00');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `User_Password` varchar(100) DEFAULT NULL,
  `User_Email` varchar(100) DEFAULT NULL,
  `_From` varchar(100) DEFAULT NULL,
  `_to` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `id` int(11) NOT NULL,
  `bus_id` varchar(10) NOT NULL,
  `bus_number` varchar(10) NOT NULL,
  `bus_StartPoint` varchar(75) NOT NULL,
  `bus_endPoint` varchar(75) NOT NULL,
  `Time_of_departure` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`id`, `bus_id`, `bus_number`, `bus_StartPoint`, `bus_endPoint`, `Time_of_departure`) VALUES
(1, '1D', '1', 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 02:30:00'),
(2, '2D', '2', 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 03:00:00'),
(3, '3D', '3', 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 03:30:00'),
(4, '4D', '4', 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 04:00:00'),
(5, '5D', '5', 'Chandkheda BRTS', 'Sanand Circle', '2024-08-28 04:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `email`) VALUES
(3, 'Vyom', 'something', 'Vyom123@gmail.com'),
(4, 'Vyom', '333', 'something@333'),
(5, 'idk', 'nither', 'either'),
(6, 'Vyom', 'idk', 'Vyom@123'),
(7, 'Vyom', '123', 'Vyom123@gmail.cm'),
(8, 'Vyom@123', '343', '342g@gmail.com'),
(9, 'Vyom', 'some', 'idkidk'),
(10, 'test', '1234', 'jknkjn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`Route_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bus_id` (`bus_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `Route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `time_table`
--
ALTER TABLE `time_table`
  ADD CONSTRAINT `time_table_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `bus` (`bus_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
