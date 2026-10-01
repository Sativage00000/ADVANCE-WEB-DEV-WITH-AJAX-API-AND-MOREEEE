-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 01, 2025 at 07:05 PM
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
-- Database: `car_marketplace_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `make` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `make`, `model`, `year`, `price`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'GMC', 'Sierra 1500 Limited', 2022, 34599.00, 'https://auto.dev/images/forsale/2025/03/19/13/13/2022_gmc_sierra_1500_limited-pic-2554457602280699976-1024x768.jpeg', '2025-03-31 00:33:09', '2025-03-31 00:33:09'),
(2, 'Jeep', 'Wrangler Unlimited', 2021, 35799.00, 'https://auto.dev/images/forsale/2025/01/01/11/05/2021_jeep_wrangler-pic-8528473645083373364-1024x768.jpeg', '2025-03-31 00:33:09', '2025-03-31 00:33:09'),
(3, 'Dodge', 'Challenger', 2016, 30360.00, 'https://auto.dev/images/forsale/2025/01/04/14/56/2016_dodge_challenger-pic-2031680401041393003-1024x768.jpeg', '2025-03-31 00:33:09', '2025-03-31 00:33:09'),
(4, 'Chrysler', 'Pacifica', 2022, 19509.00, 'https://auto.dev/images/forsale/2025/03/22/19/25/2022_chrysler_pacifica-pic-2277675144669349096-1024x768.jpeg', '2025-03-31 00:33:09', '2025-03-31 00:33:09'),
(5, 'Jeep', 'Compass', 2022, 20999.00, 'https://auto.dev/images/forsale/2025/03/28/17/29/2022_jeep_compass-pic-1975980116128542377-1024x768.jpeg', '2025-03-31 00:33:09', '2025-03-31 00:33:09'),
(6, 'Ford', 'Fusion', 2020, 13754.00, 'https://auto.dev/images/forsale/2025/02/04/23/45/2020_ford_fusion-pic-7043552392246741591-1024x768.jpeg', '2025-03-31 00:33:09', '2025-03-31 00:33:09'),
(7, 'Nissan', 'Sentra', 2022, 15299.00, 'https://auto.dev/images/forsale/2025/03/10/16/20/2022_nissan_sentra-pic-1110207697949272930-1024x768.jpeg', '2025-03-31 00:33:09', '2025-03-31 00:33:09'),
(8, 'Toyota', 'Tacoma', 2022, 33599.00, 'https://auto.dev/images/forsale/2025/02/01/10/37/2022_toyota_tacoma-pic-3680381455347334930-1024x768.jpeg', '2025-03-31 00:33:09', '2025-03-31 00:33:09'),
(9, 'Subaru', 'WRX', 2018, 19380.00, 'https://auto.dev/images/forsale/2025/01/01/19/16/2018_subaru_wrx-pic-6143083892716255889-1024x768.jpeg', '2025-03-31 00:33:09', '2025-03-31 00:33:09'),
(10, 'Toyota', 'RAV4', 2020, 23499.00, 'https://auto.dev/images/forsale/2025/03/13/14/42/2020_toyota_rav4-pic-8446270918873759688-1024x768.jpeg', '2025-03-31 00:33:09', '2025-03-31 00:33:09'),
(11, 'Hyundai', 'Palisade', 2021, 26459.00, 'https://auto.dev/images/forsale/2025/01/18/21/29/2021_hyundai_palisade-pic-8305586378159799183-1024x768.jpeg', '2025-03-31 00:33:09', '2025-03-31 00:33:09'),
(12, 'Jeep', 'Patriot', 2016, 10549.00, 'https://auto.dev/images/forsale/2025/02/01/12/55/2016_jeep_patriot-pic-3052767448231249664-1024x768.jpeg', '2025-03-31 00:33:09', '2025-03-31 00:33:09'),
(13, 'Ram', '1500', 2017, 28489.00, 'https://auto.dev/images/forsale/2025/03/20/04/52/2017_ram_1500-pic-7731873338790108638-1024x768.jpeg', '2025-03-31 00:33:09', '2025-03-31 00:33:09'),
(14, 'Chevrolet', 'Camaro', 2018, 31854.00, 'https://auto.dev/images/forsale/2025/01/04/09/28/2018_chevrolet_camaro-pic-4881602139303190143-1024x768.jpeg', '2025-03-31 00:33:09', '2025-03-31 00:33:09'),
(15, 'Chevrolet', 'Silverado 1500 Limited', 2022, 47199.00, 'https://auto.dev/images/forsale/2025/03/16/18/50/2022_chevrolet_silverado_1500-pic-2167364892673715959-1024x768.jpeg', '2025-03-31 00:33:09', '2025-03-31 00:33:09'),
(16, 'Nissan', 'Altima', 2023, 22099.00, 'https://auto.dev/images/forsale/2025/03/15/08/41/2023_nissan_altima-pic-3308604993781056213-1024x768.jpeg', '2025-03-31 00:33:09', '2025-03-31 00:33:09'),
(17, 'Toyota', 'RAV4', 2024, 30199.00, 'https://auto.dev/images/forsale/2025/01/16/10/22/2024_toyota_rav4-pic-4297268842394912715-1024x768.jpeg', '2025-03-31 00:33:09', '2025-03-31 00:33:09'),
(18, 'Tesla', 'Model 3', 2023, 24299.00, 'https://auto.dev/images/forsale/2025/02/18/14/54/2023_tesla_model_3-pic-6804285568633882086-1024x768.jpeg', '2025-03-31 00:33:09', '2025-03-31 00:33:09'),
(19, 'GMC', 'Sierra 1500 Limited', 2022, 34599.00, 'https://auto.dev/images/forsale/2025/03/19/13/13/2022_gmc_sierra_1500_limited-pic-2554457602280699976-1024x768.jpeg', '2025-03-31 00:50:41', '2025-03-31 00:50:41'),
(20, 'Jeep', 'Wrangler Unlimited', 2021, 35799.00, 'https://auto.dev/images/forsale/2025/01/01/11/05/2021_jeep_wrangler-pic-8528473645083373364-1024x768.jpeg', '2025-03-31 00:50:41', '2025-03-31 00:50:41'),
(21, 'Dodge', 'Challenger', 2016, 30360.00, 'https://auto.dev/images/forsale/2025/01/04/14/56/2016_dodge_challenger-pic-2031680401041393003-1024x768.jpeg', '2025-03-31 00:50:41', '2025-03-31 00:50:41'),
(22, 'Chrysler', 'Pacifica', 2022, 19509.00, 'https://auto.dev/images/forsale/2025/03/22/19/25/2022_chrysler_pacifica-pic-2277675144669349096-1024x768.jpeg', '2025-03-31 00:50:41', '2025-03-31 00:50:41'),
(23, 'Jeep', 'Compass', 2022, 20999.00, 'https://auto.dev/images/forsale/2025/03/28/17/29/2022_jeep_compass-pic-1975980116128542377-1024x768.jpeg', '2025-03-31 00:50:41', '2025-03-31 00:50:41'),
(24, 'Ford', 'Fusion', 2020, 13754.00, 'https://auto.dev/images/forsale/2025/02/04/23/45/2020_ford_fusion-pic-7043552392246741591-1024x768.jpeg', '2025-03-31 00:50:41', '2025-03-31 00:50:41'),
(25, 'Nissan', 'Sentra', 2022, 15299.00, 'https://auto.dev/images/forsale/2025/03/10/16/20/2022_nissan_sentra-pic-1110207697949272930-1024x768.jpeg', '2025-03-31 00:50:41', '2025-03-31 00:50:41'),
(26, 'Toyota', 'Tacoma', 2022, 33599.00, 'https://auto.dev/images/forsale/2025/02/01/10/37/2022_toyota_tacoma-pic-3680381455347334930-1024x768.jpeg', '2025-03-31 00:50:41', '2025-03-31 00:50:41'),
(27, 'Subaru', 'WRX', 2018, 19380.00, 'https://auto.dev/images/forsale/2025/01/01/19/16/2018_subaru_wrx-pic-6143083892716255889-1024x768.jpeg', '2025-03-31 00:50:41', '2025-03-31 00:50:41'),
(28, 'Toyota', 'RAV4', 2020, 23499.00, 'https://auto.dev/images/forsale/2025/03/13/14/42/2020_toyota_rav4-pic-8446270918873759688-1024x768.jpeg', '2025-03-31 00:50:41', '2025-03-31 00:50:41'),
(29, 'Hyundai', 'Palisade', 2021, 26459.00, 'https://auto.dev/images/forsale/2025/01/18/21/29/2021_hyundai_palisade-pic-8305586378159799183-1024x768.jpeg', '2025-03-31 00:50:41', '2025-03-31 00:50:41'),
(30, 'Jeep', 'Patriot', 2016, 10549.00, 'https://auto.dev/images/forsale/2025/02/01/12/55/2016_jeep_patriot-pic-3052767448231249664-1024x768.jpeg', '2025-03-31 00:50:41', '2025-03-31 00:50:41'),
(31, 'Ram', '1500', 2017, 28489.00, 'https://auto.dev/images/forsale/2025/03/20/04/52/2017_ram_1500-pic-7731873338790108638-1024x768.jpeg', '2025-03-31 00:50:41', '2025-03-31 00:50:41'),
(32, 'Chevrolet', 'Camaro', 2018, 31854.00, 'https://auto.dev/images/forsale/2025/01/04/09/28/2018_chevrolet_camaro-pic-4881602139303190143-1024x768.jpeg', '2025-03-31 00:50:41', '2025-03-31 00:50:41'),
(33, 'Chevrolet', 'Silverado 1500 Limited', 2022, 47199.00, 'https://auto.dev/images/forsale/2025/03/16/18/50/2022_chevrolet_silverado_1500-pic-2167364892673715959-1024x768.jpeg', '2025-03-31 00:50:41', '2025-03-31 00:50:41'),
(34, 'Nissan', 'Altima', 2023, 22099.00, 'https://auto.dev/images/forsale/2025/03/15/08/41/2023_nissan_altima-pic-3308604993781056213-1024x768.jpeg', '2025-03-31 00:50:41', '2025-03-31 00:50:41'),
(35, 'Toyota', 'RAV4', 2024, 30199.00, 'https://auto.dev/images/forsale/2025/01/16/10/22/2024_toyota_rav4-pic-4297268842394912715-1024x768.jpeg', '2025-03-31 00:50:41', '2025-03-31 00:50:41'),
(36, 'Tesla', 'Model 3', 2023, 24299.00, 'https://auto.dev/images/forsale/2025/02/18/14/54/2023_tesla_model_3-pic-6804285568633882086-1024x768.jpeg', '2025-03-31 00:50:41', '2025-03-31 00:50:41'),
(37, 'Honda', 'CR-V', 2021, 22049.00, 'https://auto.dev/images/forsale/2025/03/01/05/35/2021_honda_cr-v-pic-6209786249670852160-1024x768.jpeg', '2025-03-31 01:10:02', '2025-03-31 01:10:02'),
(38, 'BMW', 'M4', 2018, 42605.00, 'https://auto.dev/images/forsale/2024/12/21/00/07/2018_bmw_m4-pic-1999132692391447943-1024x768.jpeg', '2025-03-31 01:10:02', '2025-03-31 01:10:02'),
(39, 'Nissan', 'Rogue', 2021, 14499.00, 'https://auto.dev/images/forsale/2025/03/28/14/38/2021_nissan_rogue-pic-7099210049221939952-1024x768.jpeg', '2025-03-31 01:10:02', '2025-03-31 01:10:02'),
(40, 'Hyundai', 'Elantra', 2017, 10650.00, 'https://auto.dev/images/forsale/2025/03/04/09/59/2017_hyundai_elantra-pic-8443714681534122264-1024x768.jpeg', '2025-03-31 01:10:02', '2025-03-31 01:10:02'),
(41, 'Hyundai', 'Santa Fe Sport', 2018, 11928.00, 'https://auto.dev/images/forsale/2025/02/24/21/14/2018_hyundai_santa_fe_sport-pic-8425070619047131703-1024x768.jpeg', '2025-03-31 01:10:02', '2025-03-31 01:10:02'),
(42, 'Mercedes-Benz', 'GLA', 2016, 12008.00, 'https://auto.dev/images/forsale/2025/02/09/01/17/2016_mercedes-benz_gla-pic-4748534504360784012-1024x768.jpeg', '2025-03-31 01:10:02', '2025-03-31 01:10:02'),
(43, 'Ford', 'Escape', 2015, 9897.00, 'https://auto.dev/images/forsale/2025/03/02/03/18/2015_ford_escape-pic-3896787459176196259-1024x768.jpeg', '2025-03-31 01:10:02', '2025-03-31 01:10:02'),
(44, 'Mercedes-Benz', 'C-Class', 2016, 12794.00, 'https://auto.dev/images/forsale/2024/11/19/13/27/2016_mercedes-benz_c-class-pic-1528579917913983408-1024x768.jpeg', '2025-03-31 01:10:02', '2025-03-31 01:10:02'),
(45, 'Volkswagen', 'Tiguan', 2019, 14670.00, 'https://auto.dev/images/forsale/2025/01/11/17/39/2019_volkswagen_tiguan-pic-7623167879706099906-1024x768.jpeg', '2025-03-31 01:10:02', '2025-03-31 01:10:02'),
(46, 'Toyota', 'Corolla', 2012, 8170.00, 'https://auto.dev/images/forsale/2025/02/09/00/09/2012_toyota_corolla-pic-669505960204886521-1024x768.jpeg', '2025-03-31 01:10:02', '2025-03-31 01:10:02'),
(47, 'Ford', 'Escape', 2018, 10128.00, 'https://auto.dev/images/forsale/2024/11/29/13/51/2018_ford_escape-pic-1656815306284861357-1024x768.jpeg', '2025-03-31 01:10:02', '2025-03-31 01:10:02'),
(48, 'Nissan', 'Rogue', 2016, 12347.00, 'https://auto.dev/images/forsale/2024/11/19/17/39/2016_nissan_rogue-pic-200599155370213028-1024x768.jpeg', '2025-03-31 01:10:02', '2025-03-31 01:10:02'),
(49, 'Hyundai', 'Elantra', 2017, 11827.00, 'https://auto.dev/images/forsale/2025/03/29/21/12/2017_hyundai_elantra-pic-4921744998188203036-1024x768.jpeg', '2025-03-31 01:10:02', '2025-03-31 01:10:02'),
(50, 'Ford', 'Bronco Sport', 2021, 17350.00, 'https://auto.dev/images/forsale/2025/02/02/01/42/2021_ford_bronco_sport-pic-8995078434152872210-1024x768.jpeg', '2025-03-31 01:10:02', '2025-03-31 01:10:02'),
(51, 'Mercedes-Benz', 'GLE', 2016, 14847.00, 'https://auto.dev/images/forsale/2024/11/19/19/57/2016_mercedes-benz_gle-pic-8168941004241007824-1024x768.jpeg', '2025-03-31 01:10:02', '2025-03-31 01:10:02'),
(52, 'Ford', 'F-150', 2018, 18487.00, 'https://auto.dev/images/forsale/2025/03/24/22/16/2018_ford_f-150-pic-3263924166332413012-1024x768.jpeg', '2025-03-31 01:10:02', '2025-03-31 01:10:02'),
(53, 'Mazda', 'CX-5', 2014, 13799.00, 'https://auto.dev/images/forsale/2025/03/21/04/00/2014_mazda_cx-5-pic-4369682053027379989-1024x768.jpeg', '2025-03-31 01:10:02', '2025-03-31 01:10:02'),
(54, 'Chevrolet', 'Colorado', 2020, 24729.00, 'https://auto.dev/images/forsale/2025/02/13/09/20/2020_chevrolet_colorado-pic-6127288255048496655-1024x768.jpeg', '2025-03-31 01:10:02', '2025-03-31 01:10:02');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_31_011203_create_cars_table', 1);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('K90goNI3hd3lNR3Y5eaDMZYiMbz8d4b5NMJYkvpM', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHN1aXI0MlQydDVUREdCY1R0MUVYVGhTbjRpOE13S2NwYzU1NWlnRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743421569);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
