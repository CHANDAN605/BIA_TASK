-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2023 at 01:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aicl_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `excel_data`
--

CREATE TABLE `excel_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `net_intrst_amt` varchar(255) NOT NULL,
  `other_income_amt` varchar(255) NOT NULL,
  `div_amt` varchar(255) NOT NULL,
  `net_amt` varchar(255) NOT NULL,
  `distribution` varchar(255) NOT NULL,
  `financial_year` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `excel_data`
--

INSERT INTO `excel_data` (`id`, `name`, `unit`, `net_intrst_amt`, `other_income_amt`, `div_amt`, `net_amt`, `distribution`, `financial_year`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'JASMINE', '200', '98', '0', '850', '948', 'Q3 FY 2020-21', 'FY 2020-21', '2023-10-01 17:02:28', '2023-10-01 17:02:28', NULL),
(2, 'RAMPRASATH ', '400', '196', '0', '1700', '1896', 'Q3 FY 2020-21', 'FY 2020-21', '2023-10-01 17:02:28', '2023-10-01 17:02:28', NULL),
(3, 'KOHLI', '1000', '490', '7.55', '4250', '4740', 'Q3 FY 2020-21', 'FY 2020-21', '2023-10-01 17:02:28', '2023-10-01 17:02:28', NULL),
(4, 'CHANDRASHEKAR P', '200', '98', '0', '850', '948', 'Q3 FY 2020-21', 'FY 2020-21', '2023-10-01 17:02:28', '2023-10-01 17:02:28', NULL),
(5, 'SHRADDHA', '600', '294', '0', '2550', '2844', 'Q3 FY 2020-21', 'FY 2020-21', '2023-10-01 17:02:28', '2023-10-01 17:02:28', NULL),
(6, 'VINIT', '200', '98', '3.25', '850', '948', 'Q3 FY 2020-21', 'FY 2020-21', '2023-10-01 17:02:28', '2023-10-01 17:02:28', NULL),
(7, 'CHINTHAKINDI', '200', '98', '0', '850', '948', 'Q3 FY 2020-21', 'FY 2020-21', '2023-10-01 17:02:28', '2023-10-01 17:02:28', NULL),
(8, ' ESHWAR', '200', '98', '0', '850', '948', 'Q3 FY 2020-21', 'FY 2020-21', '2023-10-01 17:02:28', '2023-10-01 17:02:28', NULL),
(9, 'DHANAPAL', '200', '98', '4.35', '850', '948', 'Q3 FY 2020-21', 'FY 2020-21', '2023-10-01 17:02:28', '2023-10-01 17:02:28', NULL),
(10, 'SUJITH', '200', '98', '0', '850', '948', 'Q3 FY 2020-21', 'FY 2020-21', '2023-10-01 17:02:28', '2023-10-01 17:02:28', NULL),
(11, 'JASMINE', '200', '66', '0', '846', '912', 'Q1 FY 2021-22', 'FY 2021-22', '2023-10-01 17:02:28', '2023-10-01 17:02:28', NULL),
(12, 'RAMPRASATH ', '400', '133', '0', '1692', '1825', 'Q1 FY 2021-22', 'FY 2021-22', '2023-10-01 17:02:28', '2023-10-01 17:02:28', NULL),
(13, 'KOHLI', '1000', '333', '0', '4230', '4563', 'Q1 FY 2021-22', 'FY 2021-22', '2023-10-01 17:02:28', '2023-10-01 17:02:28', NULL),
(14, 'CHANDRASHEKAR P', '200', '66', '0.78', '846', '912', 'Q1 FY 2021-22', 'FY 2021-22', '2023-10-01 17:02:28', '2023-10-01 17:02:28', NULL),
(15, 'SHRADDHA', '200', '66', '0', '846', '912', 'Q1 FY 2021-22', 'FY 2021-22', '2023-10-01 17:02:28', '2023-10-01 17:02:28', NULL),
(16, 'VINIT', '2200', '732', '0', '9306', '10038', 'Q1 FY 2021-22', 'FY 2021-22', '2023-10-01 17:02:28', '2023-10-01 17:02:28', NULL),
(17, 'CHINTHAKINDI', '200', '66', '0.23', '846', '912', 'Q1 FY 2021-22', 'FY 2021-22', '2023-10-01 17:02:28', '2023-10-01 17:02:28', NULL),
(18, ' ESHWAR', '3', '0.11', '0.98', '12.69', '12.8', 'Q1 FY 2021-22', 'FY 2021-22', '2023-10-01 17:02:28', '2023-10-01 17:02:28', NULL),
(19, 'DHANAPAL', '200', '66', '0', '846', '912', 'Q1 FY 2021-22', 'FY 2021-22', '2023-10-01 17:02:28', '2023-10-01 17:02:28', NULL),
(20, 'SUJITH', '3', '0.11', '0', '12.69', '12.8', 'Q1 FY 2021-22', 'FY 2021-22', '2023-10-01 17:02:28', '2023-10-01 17:02:28', NULL),
(21, 'RADHIKA', '200', '66', '0', '846', '912', 'Q1 FY 2021-22', 'FY 2021-22', '2023-10-01 17:02:28', '2023-10-01 17:02:28', NULL),
(22, 'SHANKARRAO', '200', '66', '0.34', '846', '912', 'Q1 FY 2021-22', 'FY 2021-22', '2023-10-01 17:02:28', '2023-10-01 17:02:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `file_records`
--

CREATE TABLE `file_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `uploaded_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_01_120828_create_file_records_table', 1),
(6, '2023_10_01_122328_create_user_records_table', 2),
(7, '2023_10_01_195514_create_jobs_table', 3),
(8, '2023_10_01_195549_create_job_batches_table', 3),
(9, '2023_10_01_200433_create_excel_data_table', 4);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sdf', 'Cy2001435@gmail.com', NULL, '$2y$10$Q2hy7JB1g.Mmzp7PzAuJF.bQGeA4aB7kUDSEq6J8y5CN/t6WTcNU.', NULL, '2023-10-02 02:45:17', '2023-10-02 02:45:17'),
(2, 'chandan', 'cy2000@gmail.com', NULL, '$2y$10$E/OE6ygBiBT9f3Ex.OLLs.Sf89pmtfmRs3f9AZrX0h7kVpqtjfkZK', NULL, '2023-10-02 02:46:30', '2023-10-02 02:46:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `excel_data`
--
ALTER TABLE `excel_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_records`
--
ALTER TABLE `file_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `excel_data`
--
ALTER TABLE `excel_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `file_records`
--
ALTER TABLE `file_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
