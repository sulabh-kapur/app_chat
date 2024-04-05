-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2024 at 08:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app-groupchat`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_groupchat`
--

CREATE TABLE `app_groupchat` (
  `id` int(12) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_groupchat`
--

INSERT INTO `app_groupchat` (`id`, `first_name`, `last_name`, `email`, `password`, `contact`, `image`, `created_date`, `updated_date`) VALUES
(1, 'Sulabh', 'Kapur', 'sulabhkapur6@gmail.com', '123456', '8754525256', '1708067608.jpeg', '2024-02-16 12:43:28', '2024-02-16 12:43:28'),
(2, 'Nikhil', 'kumar', 'nikhil@gmail.com', '5425125', '8956965692', '1708067820.jpeg', '2024-02-16 12:47:00', '2024-02-16 12:47:00'),
(3, 'Gurpreet ', 'Singh', 'gurpreet@gmail.com', '12345', '9856547452', '1708068494.jpeg', '2024-02-16 12:58:14', '2024-02-16 12:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(12) NOT NULL,
  `sender_id` int(12) DEFAULT NULL,
  `reciever_id` int(12) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `sender_id`, `reciever_id`, `message`, `created_date`, `updated_date`) VALUES
(17, 1, NULL, 'hi', '2024-02-16 13:09:28', '2024-02-16 13:09:28'),
(18, 1, NULL, 'how\'s you', '2024-02-16 13:09:39', '2024-02-16 13:09:39'),
(19, 3, NULL, 'hi', '2024-02-16 13:11:15', '2024-02-16 13:11:15'),
(20, 3, NULL, 'how\'s you', '2024-02-16 13:11:24', '2024-02-16 13:11:24'),
(21, 3, NULL, 'hnji', '2024-02-16 13:26:12', '2024-02-16 13:26:12'),
(22, 1, NULL, 'jj', '2024-02-19 13:20:44', '2024-02-19 13:20:44'),
(23, 1, NULL, 'jjjj', '2024-02-19 13:20:54', '2024-02-19 13:20:54'),
(24, 3, NULL, 'jjj', '2024-02-19 13:21:11', '2024-02-19 13:21:11'),
(25, 1, NULL, 'jjj', '2024-02-19 13:22:09', '2024-02-19 13:22:09'),
(26, 3, NULL, 'kkk', '2024-02-19 13:22:19', '2024-02-19 13:22:19'),
(27, 1, NULL, 'kkk', '2024-02-19 13:23:04', '2024-02-19 13:23:04'),
(28, 3, NULL, 'kk', '2024-02-19 13:23:10', '2024-02-19 13:23:10'),
(29, 3, NULL, 'kk', '2024-02-19 13:24:05', '2024-02-19 13:24:05'),
(30, 3, NULL, 'kkk', '2024-02-19 13:24:45', '2024-02-19 13:24:45'),
(31, 3, NULL, 'kjj', '2024-02-19 13:25:40', '2024-02-19 13:25:40'),
(32, 1, NULL, 'kk', '2024-02-19 13:27:45', '2024-02-19 13:27:45'),
(33, 3, NULL, 'kkk', '2024-02-19 13:27:53', '2024-02-19 13:27:53'),
(34, 1, NULL, 'jjj', '2024-02-19 13:29:52', '2024-02-19 13:29:52'),
(35, 3, NULL, 'mmm', '2024-02-19 13:29:58', '2024-02-19 13:29:58'),
(36, 3, NULL, 'xxx', '2024-02-19 13:31:54', '2024-02-19 13:31:54'),
(37, 3, NULL, 'kkk', '2024-02-19 13:32:15', '2024-02-19 13:32:15'),
(38, 3, NULL, 'mm', '2024-02-19 13:34:04', '2024-02-19 13:34:04'),
(39, 3, NULL, 'mm,,,', '2024-02-19 13:34:18', '2024-02-19 13:34:18'),
(40, 1, NULL, 'ddd', '2024-02-19 13:35:16', '2024-02-19 13:35:16'),
(41, 3, NULL, 'ddd', '2024-02-19 13:35:23', '2024-02-19 13:35:23'),
(42, 3, NULL, 'jhh', '2024-02-19 13:35:46', '2024-02-19 13:35:46'),
(43, 3, NULL, 'fff', '2024-02-19 13:37:47', '2024-02-19 13:37:47'),
(44, 3, NULL, 'mm', '2024-02-19 13:38:16', '2024-02-19 13:38:16'),
(45, 3, NULL, 'mmdddd', '2024-02-19 13:39:04', '2024-02-19 13:39:04'),
(46, 3, NULL, 'k', '2024-02-19 13:41:00', '2024-02-19 13:41:00'),
(47, 3, NULL, 'jj', '2024-02-19 13:41:40', '2024-02-19 13:41:40'),
(48, 3, NULL, 'jj', '2024-02-19 13:44:08', '2024-02-19 13:44:08'),
(49, 3, NULL, 'jj', '2024-02-19 13:44:22', '2024-02-19 13:44:22'),
(50, 3, NULL, 'jj', '2024-02-19 13:44:51', '2024-02-19 13:44:51'),
(51, 3, NULL, 'kk', '2024-02-19 13:45:09', '2024-02-19 13:45:09'),
(52, 1, NULL, 'jj', '2024-02-19 13:46:28', '2024-02-19 13:46:28'),
(53, 3, NULL, 'jjj', '2024-02-19 13:46:55', '2024-02-19 13:46:55'),
(54, 3, NULL, 'jj', '2024-02-19 13:47:41', '2024-02-19 13:47:41'),
(55, 3, NULL, 'jj', '2024-02-19 13:48:00', '2024-02-19 13:48:00'),
(56, 3, NULL, 'ok', '2024-02-19 13:48:06', '2024-02-19 13:48:06'),
(57, 3, NULL, 'chl yr', '2024-02-19 13:48:12', '2024-02-19 13:48:12'),
(58, 1, NULL, 'hello', '2024-02-19 13:54:36', '2024-02-19 13:54:36'),
(59, 3, NULL, 'hnji', '2024-02-19 13:55:56', '2024-02-19 13:55:56'),
(60, 1, NULL, 'tttt', '2024-02-19 13:56:30', '2024-02-19 13:56:30'),
(61, 1, NULL, 'hello', '2024-02-19 14:01:39', '2024-02-19 14:01:39'),
(62, 1, NULL, 'hnji', '2024-02-19 14:01:55', '2024-02-19 14:01:55'),
(63, 1, NULL, 'hello', '2024-02-19 14:03:54', '2024-02-19 14:03:54'),
(64, 1, NULL, 'hi', '2024-02-19 14:04:16', '2024-02-19 14:04:16'),
(65, 1, NULL, 'hi', '2024-02-19 14:06:16', '2024-02-19 14:06:16'),
(66, 1, NULL, 'hi', '2024-02-19 14:06:56', '2024-02-19 14:06:56'),
(67, 1, NULL, 'jjj', '2024-02-19 14:23:49', '2024-02-19 14:23:49'),
(68, 1, NULL, 'ok', '2024-02-19 14:23:53', '2024-02-19 14:23:53'),
(69, 1, NULL, 'ujkxj', '2024-02-19 14:23:56', '2024-02-19 14:23:56'),
(70, 1, NULL, 'djdjkhdkdh', '2024-02-19 14:23:56', '2024-02-19 14:23:56'),
(71, 1, NULL, 'hdjbdjbd', '2024-02-19 14:23:57', '2024-02-19 14:23:57'),
(72, 1, NULL, 'jdbjdbkd', '2024-02-19 14:23:58', '2024-02-19 14:23:58'),
(73, 1, NULL, 'jbdjbdkd', '2024-02-19 14:23:59', '2024-02-19 14:23:59'),
(74, 1, NULL, 'jbdkbd', '2024-02-19 14:24:00', '2024-02-19 14:24:00'),
(75, 1, NULL, 'jdjbdjkd', '2024-02-19 14:24:01', '2024-02-19 14:24:01'),
(76, 1, NULL, 'ok', '2024-02-19 14:24:18', '2024-02-19 14:24:18'),
(77, 1, NULL, 'dd', '2024-02-19 14:24:19', '2024-02-19 14:24:19'),
(78, 1, NULL, 'dd', '2024-02-19 14:24:20', '2024-02-19 14:24:20'),
(79, 1, NULL, 'dd', '2024-02-19 14:24:22', '2024-02-19 14:24:22'),
(80, 1, NULL, 'dd', '2024-02-19 14:24:22', '2024-02-19 14:24:22'),
(81, 1, NULL, 'd', '2024-02-19 14:24:24', '2024-02-19 14:24:24'),
(82, 1, NULL, 'd', '2024-02-19 14:24:25', '2024-02-19 14:24:25'),
(83, 1, NULL, '', '2024-02-19 14:24:25', '2024-02-19 14:24:25'),
(84, 1, NULL, 'd', '2024-02-19 14:24:26', '2024-02-19 14:24:26'),
(85, 1, NULL, 'd', '2024-02-19 14:24:26', '2024-02-19 14:24:26'),
(86, 1, NULL, 'ffef', '2024-02-19 14:24:50', '2024-02-19 14:24:50'),
(87, 1, NULL, 'cscsc', '2024-02-19 14:24:50', '2024-02-19 14:24:50'),
(88, 1, NULL, 'cscsc', '2024-02-19 14:24:51', '2024-02-19 14:24:51'),
(89, 1, NULL, 'hello', '2024-02-19 14:25:08', '2024-02-19 14:25:08'),
(90, 1, NULL, 'ha v', '2024-02-19 14:25:12', '2024-02-19 14:25:12'),
(91, 1, NULL, 'fd', '2024-02-19 14:34:02', '2024-02-19 14:34:02'),
(92, 1, NULL, 'ff', '2024-02-19 14:34:06', '2024-02-19 14:34:06'),
(93, 1, NULL, 'hi', '2024-02-19 14:39:03', '2024-02-19 14:39:03'),
(94, 1, NULL, 'hii', '2024-02-19 14:40:37', '2024-02-19 14:40:37'),
(95, 1, NULL, 'cdscdc', '2024-02-19 15:10:16', '2024-02-19 15:10:16'),
(96, 1, NULL, 'xadaa', '2024-02-19 15:10:56', '2024-02-19 15:10:56'),
(97, 1, NULL, 'asx', '2024-02-19 15:32:10', '2024-02-19 15:32:10'),
(98, 1, NULL, 'hi', '2024-02-19 15:39:14', '2024-02-19 15:39:14'),
(99, 1, NULL, 'hi', '2024-02-19 15:40:20', '2024-02-19 15:40:20'),
(100, 3, NULL, 'hi', '2024-02-19 15:42:22', '2024-02-19 15:42:22'),
(101, 1, NULL, 'hnji', '2024-02-19 15:42:44', '2024-02-19 15:42:44'),
(102, 3, NULL, 'kiven a', '2024-02-19 15:43:06', '2024-02-19 15:43:06'),
(103, 1, NULL, 'vdia vdia tu suna', '2024-02-19 15:43:17', '2024-02-19 15:43:17'),
(104, 3, NULL, 'bs yr vdia ', '2024-02-19 15:43:25', '2024-02-19 15:43:25'),
(105, 1, NULL, 'oye ki kr rehaan.. drugs?', '2024-02-19 15:44:18', '2024-02-19 15:44:18'),
(106, 3, NULL, 'nhi taan', '2024-02-19 15:44:33', '2024-02-19 15:44:33'),
(107, 3, NULL, 'hnji', '2024-02-19 15:46:04', '2024-02-19 15:46:04'),
(108, 3, NULL, 'ki haal a', '2024-02-19 15:46:15', '2024-02-19 15:46:15'),
(109, 1, NULL, 'kida', '2024-02-19 16:50:15', '2024-02-19 16:50:15'),
(110, 1, NULL, 'hello', '2024-02-26 15:57:36', '2024-02-26 15:57:36'),
(111, 1, NULL, 'Hello', '2024-02-26 15:58:37', '2024-02-26 15:58:37'),
(112, 3, NULL, 'ha v', '2024-02-26 15:58:51', '2024-02-26 15:58:51'),
(113, 1, NULL, 'hello', '2024-03-07 15:38:47', '2024-03-07 15:38:47'),
(114, 1, NULL, 'hi', '2024-03-07 16:00:23', '2024-03-07 16:00:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_groupchat`
--
ALTER TABLE `app_groupchat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_groupchat`
--
ALTER TABLE `app_groupchat`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;