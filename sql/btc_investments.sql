-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 18, 2021 at 11:10 AM
-- Server version: 10.3.30-MariaDB-log-cll-lve
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skycqdae_btc_investment`
--

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `usn` varchar(100) NOT NULL,
  `invoice` varchar(500) DEFAULT NULL,
  `amount` double NOT NULL,
  `currency` varchar(50) NOT NULL,
  `account_name` varchar(1000) DEFAULT '',
  `account_no` varchar(1000) DEFAULT '',
  `receipt` varchar(1000) NOT NULL,
  `bank` varchar(1000) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 0,
  `on_apr` int(1) NOT NULL DEFAULT 0,
  `pop` varchar(2000) NOT NULL DEFAULT '',
  `url` varchar(1000) NOT NULL DEFAULT '',
  `ipn` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `usn`, `invoice`, `amount`, `currency`, `account_name`, `account_no`, `receipt`, `bank`, `status`, `on_apr`, `pop`, `url`, `ipn`, `created_at`, `updated_at`) VALUES
(6, 4, 'teckbot', '1628812800', 0.01547096, '$', 'BCM', '14QNtkTikTCQ68DXJJwTEzZe4gjuUnJ1cF', '', 'BTC', 0, 0, '', '', 0, '2021-08-13 03:12:11', '2021-08-13 03:12:11'),
(4, 4, 'teckbot', '1628812800', 0.01121813, '$', 'DRT', 'bc1qukuu0gkzzjhwwd8fnnxj323kduym7s46lup3ml', 'teckbot_receipt_id_4.jpg', 'BTC', 0, 0, '', '', 0, '2021-08-13 00:13:42', '2021-08-13 02:27:07'),
(5, 4, 'teckbot', '1628812800', 0.00445405, '$', 'BCM', '143ZxqcHg1eWC6UHcaZLaQZadBVjykwRCw', 'teckbot_receipt_id_5.jpg', 'BTC', 0, 0, '', '', 0, '2021-08-13 02:18:28', '2021-08-13 02:20:56'),
(7, 5, 'staunch_man', '1628812800', 0.44106559, '$', 'BCM', '1G2d484iGgksSQnM12r36X6rdASiYjPPPq', '', 'BTC', 0, 0, '', '', 0, '2021-08-13 05:47:01', '2021-08-13 05:47:01'),
(8, 5, 'staunch_man', '1628812800', 1.10325028, '$', 'BCM', '13dRYYortzNs3ig1ZxbkYyf5GidPsB91zz', '', 'BTC', 0, 0, '', '', 0, '2021-08-13 05:54:41', '2021-08-13 05:54:41'),
(9, 4, 'teckbot', '1628812800', 0.00002165, '$', 'BCM', '18aAPjbKMEwsQjGqmn2VygHMaTSkYdzxos', '', 'BTC', 0, 0, '', '', 0, '2021-08-13 07:07:28', '2021-08-13 07:07:28'),
(10, 5, 'staunch_man', '1628812800', 0.10789745, '$', 'BCM', '13dSpfcv2BJrRdWRe5gmsqAe8zH3UPeEaG', '', 'BTC', 0, 0, '', '', 0, '2021-08-13 07:23:04', '2021-08-13 07:23:04'),
(11, 6, 'Drex', '1628812800', 0.01076996, '$', 'BCM', '1KuwkwCwfb8tWPtgKZSFWu1gi3jcusHrzD', '', 'BTC', 0, 0, '', '', 0, '2021-08-13 11:26:48', '2021-08-13 11:26:48'),
(12, 4, 'teckbot', '1629244800', 0.00002229, '$', 'BCM', '1DNGZvHwRTX9jVPSmviJ7NmvDiBHaWmEMh', '', 'BTC', 0, 0, '', '', 0, '2021-08-18 11:45:12', '2021-08-18 11:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `deposit_settings`
--

CREATE TABLE `deposit_settings` (
  `id` int(11) NOT NULL,
  `SWITCH_BTC` tinyint(1) NOT NULL,
  `SWITCH_ETH` tinyint(1) NOT NULL,
  `COINPAYMENTS_DB_PREFIX` varchar(500) NOT NULL,
  `COINPAYMENTS_MERCHANT_ID` varchar(500) NOT NULL,
  `COINPAYMENTS_PUBLIC_KEY` varchar(500) NOT NULL,
  `COINPAYMENTS_PRIVATE_KEY` varchar(500) NOT NULL,
  `COINPAYMENTS_IPN_SECRET` varchar(500) DEFAULT NULL,
  `COINPAYMENTS_IPN_URL` varchar(500) DEFAULT NULL,
  `COINPAYMENTS_API_FORMAT` varchar(500) NOT NULL,
  `COINPAYMENTS_IPN_ROUTE_ENABLED` varchar(500) NOT NULL,
  `COINPAYMENTS_IPN_ROUTE_PATH` varchar(500) NOT NULL,
  `COINBASE_SWITCH` tinyint(1) NOT NULL,
  `COINBASE_API_KEY` varchar(500) NOT NULL,
  `COINBASE_WEBHOOK_SECRETE` varchar(500) NOT NULL,
  `BCM_SWITCH` tinyint(1) NOT NULL,
  `Blockonomics_API` varchar(500) NOT NULL,
  `BCM_SECRETE` varchar(500) NOT NULL,
  `BC_SWITCH` tinyint(1) NOT NULL,
  `BC_MY_XPUB` varchar(500) NOT NULL,
  `BC_MY_API_KEY` varchar(500) NOT NULL,
  `BTC_SWITCH` tinyint(1) NOT NULL,
  `BTC_WALLET` varchar(500) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposit_settings`
--

INSERT INTO `deposit_settings` (`id`, `SWITCH_BTC`, `SWITCH_ETH`, `COINPAYMENTS_DB_PREFIX`, `COINPAYMENTS_MERCHANT_ID`, `COINPAYMENTS_PUBLIC_KEY`, `COINPAYMENTS_PRIVATE_KEY`, `COINPAYMENTS_IPN_SECRET`, `COINPAYMENTS_IPN_URL`, `COINPAYMENTS_API_FORMAT`, `COINPAYMENTS_IPN_ROUTE_ENABLED`, `COINPAYMENTS_IPN_ROUTE_PATH`, `COINBASE_SWITCH`, `COINBASE_API_KEY`, `COINBASE_WEBHOOK_SECRETE`, `BCM_SWITCH`, `Blockonomics_API`, `BCM_SECRETE`, `BC_SWITCH`, `BC_MY_XPUB`, `BC_MY_API_KEY`, `BTC_SWITCH`, `BTC_WALLET`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 'cp_', 'f3e03555b8bebf67e333a4e763550255', 'e490dd138de0ed87c927e517afe41a6beedf8d1a65479d0a33337615817b85ec', '9cbd8d741f232CE048F7B2e719D0899E236bf94b09DBE5b76f6d32fee42d0C1f', NULL, NULL, 'json', 'true', '/api/ipn', 0, 'a8ba4ffb-2a1e-4267-a51a-10b709d64e11', 'b7e118ff-a37d-4228-91be-f53225e8a8cc', 1, 'MEYPKrBcVCaVBOVyrxRcN7XTixRvWRC8DBgQknzElpg', '12345678909890', 1, 'xpub6BouAmDjjuJDDPickTwmW3b28ouyFMJPFEygkkBBoEnd1sF3b6h9wtDyye6ccdpaFYgCrE1P6SUL3mACb6y5QRxpxoC88VygzVizbW6eAuX', 'f12ec4d6-8325-430e-b5b4-7205aed2e7ef', 1, 'bc1qukuu0gkzzjhwwd8fnnxj323kduym7s46lup3ml', '2021-08-12 08:29:29', '2021-08-13 08:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_26_203500_create_deposits_table', 1),
(5, '2021_07_26_203545_create_withdraws_table', 1),
(6, '2021_07_27_190159_create_referals_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referal`
--

CREATE TABLE `referal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ref_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_count` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `referal`
--

INSERT INTO `referal` (`id`, `user_id`, `ref_code`, `ref_by`, `ref_count`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin-6224', '0', '0', NULL, NULL),
(2, 2, 'Super-37927', '0', '0', NULL, NULL),
(3, 3, 'Laura-5135', 'Admin-6224', '0', '2021-08-06 07:05:34', '2021-08-06 07:05:34'),
(4, 4, 'teckbot-48017', 'Super-37927', '0', '2021-08-10 22:16:40', '2021-08-10 22:16:40'),
(5, 5, 'staunch_man-28534', 'teckbot-48017', '0', '2021-08-13 09:43:20', '2021-08-13 09:43:20'),
(6, 6, 'Drex-48974', 'teckbot-48017', '0', '2021-08-13 15:18:37', '2021-08-13 15:18:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `city`, `state`, `zip`, `photo`, `role`, `email_verified_at`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, 1, '2021-08-06 07:00:42', '$2y$10$dIb.9Umoh6LMhNLBwvHqGecma4OjvsdyZ3n3p2s7AxN5m4U0/ihri', 'jaItc7TZShsyGW4iMIp7xoUoCKeNuLZFj0u0zjGjl5zOmGXHC2aP3IcMd2B5', NULL, NULL, NULL),
(2, 'Super Admin', 'super@gmail.com', NULL, NULL, NULL, NULL, NULL, 2, '2021-08-06 07:00:42', '$2y$10$dIb.9Umoh6LMhNLBwvHqGecma4OjvsdyZ3n3p2s7AxN5m4U0/ihri', '6W40dItpDareqL90ZjQZ7q4ytmhVE4yyJ3aFHEHpFMdqjjdwc2cLlGjjwIZO', NULL, NULL, NULL),
(3, 'Laura', 'laura@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, NULL, '$2y$10$5ee637SB3n7QuPRSqhwniOr20zhAl4b0SesqeE3SUaNyXQTRgDiYu', NULL, NULL, '2021-08-06 07:05:34', '2021-08-06 07:05:34'),
(4, 'teckbot', 'user@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, NULL, '$2y$10$qdxQYR3BCEkdqbpQEaZQoOQ5x.1IjNj6H49jW.JuQgIeWjazXRIDW', NULL, NULL, '2021-08-10 22:16:40', '2021-08-10 22:16:40'),
(5, 'staunch_man', 'stanleydavid85@gmail.com', 'Tygv', 'Aba', 'Abia', '450270', NULL, 0, NULL, '$2y$10$QxjbJ9tHE7vKHMPmM6n1K.R/2jGfiBqkNbFmcgyVlwHt1tYDSG0vi', NULL, NULL, '2021-08-13 09:43:20', '2021-08-13 11:34:13'),
(6, 'Drex', 'Leoxcristian@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, NULL, '$2y$10$L47mfb9H9.fl5cZ625NOp.EvVnH6Kwz8l2Ai6LDRfSKx8WdS8yeDW', NULL, NULL, '2021-08-13 15:18:37', '2021-08-13 15:18:37');

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `coin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit_settings`
--
ALTER TABLE `deposit_settings`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `referal`
--
ALTER TABLE `referal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `referal_ref_code_unique` (`ref_code`),
  ADD KEY `referal_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdraws_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `deposit_settings`
--
ALTER TABLE `deposit_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `referal`
--
ALTER TABLE `referal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
