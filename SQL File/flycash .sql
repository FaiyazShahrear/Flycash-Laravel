-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2021 at 10:04 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flycash`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `openning_date` timestamp NULL DEFAULT NULL,
  `profit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `type`, `phone`, `nid`, `dob`, `openning_date`, `profit`, `created_at`, `updated_at`) VALUES
(3, 'Faiyaz Shahrear', 'shahrearfaiyaz@gmail.com', '123', 'admin', '01749549840', '021556231322', '11-1-1995', NULL, '500', '2021-07-02 18:36:27', '2021-07-02 18:36:27');

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `openning_date` timestamp NULL DEFAULT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `name`, `email`, `password`, `type`, `phone`, `nid`, `dob`, `balance`, `openning_date`, `transaction_status`, `created_at`, `updated_at`) VALUES
(1, 'Borno', 'Borno@gmail.com', '12345678', 'agent', '01749549840', '021556231321', '11-1-1995', '18579', NULL, '1', '2021-07-02 18:36:49', '2021-08-19 10:58:14'),
(2, 'Faiyaz', 'sfaiyaz@gmail.com', '12345678', 'agent', '012587495', '522445857424', '2021-07-06', '32', NULL, '1', '2021-07-02 20:44:42', '2021-08-17 15:01:51'),
(3, 'ahmfs', 'sgh@gmail.com', '87456321', 'agent', '25874102558', '25874159', '2002-10-03', '20', NULL, '1', '2021-07-02 20:48:19', '2021-07-02 20:48:19'),
(4, 'Joy', 'fazsar9sdfsdf7@gmail.com', 'a4applee%', 'agent', '03516544116654', '5455622514654', '2021-08-18', '10', NULL, 'unblocked', '2021-08-18 15:40:13', '2021-08-18 15:40:13'),
(5, 'Mursalin', 'mursalin@gmail.com', 'qwertyuiop', 'agent', '01796270455', '54851202545', '1997-02-19', '10', NULL, 'unblocked', '2021-08-19 11:01:16', '2021-08-19 11:01:16'),
(6, 'Shahrear', 'fazsar97@gmail.com', '125896347', 'agent', '01745874596', '5882547896', '1998-02-19', '10', NULL, 'unblocked', '2021-08-19 11:07:45', '2021-08-19 11:07:45'),
(7, 'Jahidul', 'ahmed@gmail.com', '12345678', 'agent', '12345678', '74125896325', '2011-10-19', '10', NULL, 'unblocked', '2021-08-19 11:13:32', '2021-08-19 11:13:32');

-- --------------------------------------------------------

--
-- Table structure for table `agentstransactions`
--

CREATE TABLE `agentstransactions` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agentstransactions`
--

INSERT INTO `agentstransactions` (`email`, `phone`, `transaction_type`, `amount`, `balance`, `date`, `created_at`, `updated_at`) VALUES
('Borno@gmail.com.', '01749549840', 'Add Money', '50000', '50000', '2021-07-02 18:37:14', '2021-07-02 18:37:14', '2021-07-02 18:37:14');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`title`, `sdate`, `edate`, `description`, `id`, `created_at`, `updated_at`) VALUES
('project', '2021-07-09', '2021-07-21', '1625279340.png', 1, '2021-07-02 20:29:00', '2021-07-02 20:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `openning_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `type`, `phone`, `nid`, `dob`, `balance`, `transaction_status`, `openning_date`, `created_at`, `updated_at`) VALUES
(1, 'joy', 'jy@gmail.com', '1234567', 'customer', '01749549840', '0215561321', '11-1-1995', '5000', 'unblocked', NULL, '2021-07-02 18:38:06', '2021-07-02 18:38:06'),
(2, 'Hasan', 'kabir@gmail.com', '12345678', 'customer', '01796270545', '2155451', '2010-10-03', '20', 'blocked', NULL, '2021-07-02 19:15:32', '2021-07-02 19:15:32'),
(4, 'jkaj', 'kajd@gmail.com', '12345678', 'customer', '0179624841', '5515151', '2010-10-03', '20', 'blocked', NULL, '2021-07-02 19:20:25', '2021-07-02 19:20:25'),
(5, 'Faiyaz', 'jahid@gmail.com', 'a4applee%', 'customer', '01796270428', '545562251651', '2021-08-17', '20', 'unblocked', NULL, '2021-08-18 15:36:55', '2021-08-18 15:36:55'),
(6, 'Ashik', 'ashik@gmail.com', '12365478', 'customer', '01796275214', '2545122515', '1999-09-19', '20', 'unblocked', NULL, '2021-08-19 10:59:31', '2021-08-19 10:59:31');

-- --------------------------------------------------------

--
-- Table structure for table `customerstransactions`
--

CREATE TABLE `customerstransactions` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customerstransactions`
--

INSERT INTO `customerstransactions` (`email`, `phone`, `transaction_type`, `amount`, `balance`, `date`, `created_at`, `updated_at`) VALUES
('joy@gmail.com.', '01749549840', 'Add Money', '50000', '50000', '2021-07-02 18:41:23', '2021-07-02 18:41:23', '2021-07-02 18:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `loginusers`
--

CREATE TABLE `loginusers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_loggedin` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loginusers`
--

INSERT INTO `loginusers` (`id`, `email`, `password`, `phone`, `nid`, `type`, `last_loggedin`, `created_at`, `updated_at`) VALUES
(1, 'joy@gmail.com', '1234567', '01749569840', '0215561321', 'customer', NULL, '2021-07-02 18:41:47', '2021-07-02 18:41:47'),
(2, 'Borno@gmail.com', '12345678', '01749449840', '021556231321', 'agent', NULL, '2021-07-02 18:41:47', '2021-07-02 18:41:47'),
(3, 'shahrearfaiyaz@gmail.com', '12345678', '01749549840', '021556231322', 'admin', NULL, '2021-07-02 18:41:48', '2021-07-02 18:41:48'),
(4, 'raridoy@gmail.com', 'needhelp', '01743369163', '3453453453', 'officer', NULL, '2021-07-02 18:41:48', '2021-07-02 18:41:48'),
(5, 'jahid@gmail.com', 'a4applee%', '01796270428', '545562251651', 'customer', NULL, '2021-08-18 15:36:55', '2021-08-18 15:36:55'),
(6, 'fazsar9sdfsdf7@gmail.com', 'a4applee%', '03516544116654', '5455622514654', 'agent', NULL, '2021-08-18 15:40:13', '2021-08-18 15:40:13'),
(7, 'ashik@gmail.com', '12365478', '01796275214', '2545122515', 'customer', NULL, '2021-08-19 10:59:31', '2021-08-19 10:59:31'),
(8, 'mursalin@gmail.com', 'qwertyuiop', '01796270455', '54851202545', 'agent', NULL, '2021-08-19 11:01:16', '2021-08-19 11:01:16'),
(9, 'fazsar97@gmail.com', '125896347', '01745874596', '5882547896', 'agent', NULL, '2021-08-19 11:07:45', '2021-08-19 11:07:45'),
(10, 'ahmed@gmail.com', '12345678', '12345678', '74125896325', 'agent', NULL, '2021-08-19 11:13:32', '2021-08-19 11:13:32');

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
(5, '2021_07_02_121937_create_users_table', 1),
(34, '2021_06_30_175357_create_loginusers_table', 2),
(35, '2021_06_30_212459_create_admins_table', 2),
(36, '2021_06_30_224406_create_agents_table', 2),
(37, '2021_07_01_144705_create_customers_table', 2),
(38, '2021_07_02_122312_create_campaigns_table', 2),
(39, '2021_07_03_000352_create_agentstransactions_table', 2),
(40, '2021_07_03_001141_create_officers_table', 3),
(41, '2021_07_03_003305_create_customerstransactions_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `officers`
--

CREATE TABLE `officers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `officers`
--

INSERT INTO `officers` (`id`, `name`, `email`, `password`, `phone`, `nid`, `dob`, `type`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Ruhul Amin', 'raridoy@gmail.com', 'needhelp', '01743369163', '3453453453', '05-02-1998', 'officer', NULL, '2021-07-02 18:42:10', '2021-07-02 18:42:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`),
  ADD UNIQUE KEY `admins_nid_unique` (`nid`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `agents_email_unique` (`email`),
  ADD UNIQUE KEY `agents_phone_unique` (`phone`),
  ADD UNIQUE KEY `agents_nid_unique` (`nid`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`),
  ADD UNIQUE KEY `customers_nid_unique` (`nid`);

--
-- Indexes for table `loginusers`
--
ALTER TABLE `loginusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `loginusers_email_unique` (`email`),
  ADD UNIQUE KEY `loginusers_phone_unique` (`phone`),
  ADD UNIQUE KEY `loginusers_nid_unique` (`nid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `officers`
--
ALTER TABLE `officers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `officers_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `loginusers`
--
ALTER TABLE `loginusers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `officers`
--
ALTER TABLE `officers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
