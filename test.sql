-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2024 at 12:55 PM
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
-- Database: `test`
--

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
(5, '2023_07_05_051639_create_products_table', 1),
(6, '2023_07_05_063113_create_contacts_table', 1),
(7, '2023_07_05_063233_create_posts_table', 1),
(8, '2023_07_05_153545_create_students_table', 1);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'MyApp', '38126bfcd97059d3e13b073411a8b2fb0e0aa5e7ebc306c14e42071004cd6c70', '[\"*\"]', NULL, NULL, '2024-03-22 05:42:20', '2024-03-22 05:42:20'),
(2, 'App\\Models\\User', 1, 'MyApp', '7d738bc5217e8ec8093954a0d553cb9b43e3b658929bcb3a4cc0d334ba831aba', '[\"*\"]', NULL, NULL, '2024-03-22 05:44:42', '2024-03-22 05:44:42'),
(3, 'App\\Models\\User', 1, 'MyApp', '2424f31989bf7fc66aad1dd0e83764433ccd93094340423d201f22281a7887c0', '[\"*\"]', NULL, NULL, '2024-03-22 05:45:01', '2024-03-22 05:45:01'),
(4, 'App\\Models\\User', 1, 'MyApp', 'c044d59b496ddec645e71d50c93c554b8498f2f40807b4338b74f00bcacc4ead', '[\"*\"]', '2024-03-22 05:57:42', NULL, '2024-03-22 05:47:49', '2024-03-22 05:57:42'),
(5, 'App\\Models\\User', 2, 'MyApp', 'd49cf2124904f7c4346922d92ddeb606708f27c8e234551e5daa18fe30d1edb6', '[\"*\"]', NULL, NULL, '2024-03-22 05:56:49', '2024-03-22 05:56:49'),
(6, 'App\\Models\\User', 2, 'MyApp', '7263237cd2f96791de646839e9bcac9e90bba6bc341ca261fc91e9814f3ae5e4', '[\"*\"]', '2024-03-22 06:05:41', NULL, '2024-03-22 05:57:24', '2024-03-22 06:05:41'),
(7, 'App\\Models\\User', 3, 'MyApp', '0d2e4735d6c4a04187b97e6e16baccbddf48eddb66752508d2a5a83c089ac06d', '[\"*\"]', NULL, NULL, '2024-03-22 06:05:05', '2024-03-22 06:05:05'),
(8, 'App\\Models\\User', 3, 'MyApp', '1c981fc6854eeb8ccfde9e21d8e2fd89991300caab055d214f74f11a179dd055', '[\"*\"]', '2024-03-22 06:13:24', NULL, '2024-03-22 06:05:27', '2024-03-22 06:13:24');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'Iphone', 'Iphone Ios mobile', '2024-03-22 05:49:39', '2024-03-22 05:49:39'),
(2, 'Oneplus', 'Oneplus CE2 Mobile', '2024-03-22 05:49:56', '2024-03-22 05:51:42'),
(4, 'moto', 'moto x bets phone', '2024-03-22 05:58:12', '2024-03-22 05:59:36'),
(5, 'Oneplus', 'Oneplus Nord CE2', '2024-03-22 06:06:12', '2024-03-22 06:06:12');

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
(1, 'abhi', 'abhi@gmail.com', NULL, '$2y$10$keKJXTWKHKCjuCevsK3Vb.TiNpG6zEKHo2m7UzsRhoDOBIFi1Rtd2', NULL, '2024-03-22 05:42:20', '2024-03-22 05:42:20'),
(2, 'test', 'test@gmail.com', NULL, '$2y$10$yAv5sLBzJRbP9clXdWrCsObLS0uL9e/iHChbNJhfkmfCiWn4rRtS6', NULL, '2024-03-22 05:56:49', '2024-03-22 05:56:49'),
(3, 'demo', 'demo@gmail.com', NULL, '$2y$10$77IOZT.0XmkxBlDUmXRxIeto7wtT.gDbYEXJs.Q1fjQGMWJ0PnbUm', NULL, '2024-03-22 06:05:05', '2024-03-22 06:05:05');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
