-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2021 at 08:21 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_db`
--

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
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_id` bigint(20) UNSIGNED NOT NULL,
  `to_id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from_id`, `to_id`, `content`, `read_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'halooo', NULL, '2021-11-28 00:11:14', '2021-11-28 00:11:14'),
(2, 1, 2, 'halooo', NULL, '2021-11-28 00:51:48', '2021-11-28 00:51:48'),
(3, 1, 2, 'halooo jugaa', NULL, '2021-11-28 05:02:10', '2021-11-28 05:02:10'),
(4, 2, 1, 'halooo jugaa', NULL, '2021-11-28 05:22:52', '2021-11-28 05:22:52'),
(5, 7, 3, 'halo user 3', NULL, '2021-11-28 06:15:15', '2021-11-28 06:15:15'),
(6, 7, 1, 'halo user 1', NULL, '2021-11-28 06:45:36', '2021-11-28 06:45:36'),
(7, 7, 2, 'halo user 2', NULL, '2021-11-28 08:31:47', '2021-11-28 08:31:47'),
(8, 2, 1, 'halooo jugaa', NULL, '2021-11-28 08:32:17', '2021-11-28 08:32:17'),
(9, 2, 1, 'halooo jugaa', NULL, '2021-11-28 08:33:22', '2021-11-28 08:33:22'),
(10, 7, 2, 'halo user 2', NULL, '2021-11-28 08:33:33', '2021-11-28 08:33:33'),
(11, 11, 11, 'haloo refni', NULL, '2021-11-28 19:58:55', '2021-11-28 19:58:55'),
(12, 1, 2, 'haloo', NULL, '2021-11-29 19:12:10', '2021-11-29 19:12:10'),
(13, 7, 11, 'haloo user 11', NULL, '2021-11-29 19:20:04', '2021-11-29 19:20:04'),
(14, 7, 7, 'haloo user 7', NULL, '2021-11-29 19:21:15', '2021-11-29 19:21:15'),
(15, 7, 7, 'haloo 7', NULL, '2021-11-29 19:26:26', '2021-11-29 19:26:26'),
(16, 7, 7, 'haiii', NULL, '2021-11-29 19:28:04', '2021-11-29 19:28:04'),
(17, 7, 9, 'hihiii', NULL, '2021-11-29 19:36:09', '2021-11-29 19:36:09'),
(18, 7, 9, 'gaaaa', NULL, '2021-11-29 20:03:18', '2021-11-29 20:03:18'),
(19, 7, 9, 'haooo', NULL, '2021-11-29 20:05:40', '2021-11-29 20:05:40'),
(20, 15, 13, 'halo my student', NULL, '2021-11-29 20:30:18', '2021-11-29 20:30:18'),
(21, 17, 16, 'haloo', NULL, '2021-11-29 20:43:53', '2021-11-29 20:43:53'),
(22, 21, 20, 'Haloo', NULL, '2021-11-29 21:27:42', '2021-11-29 21:27:42');

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
(4, '2021_11_23_113959_create_students_table', 1),
(5, '2021_11_23_114341_create_schools_table', 1),
(6, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(7, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(8, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(9, '2016_06_01_000004_create_oauth_clients_table', 2),
(10, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(11, '2021_11_28_060940_create_messages_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('069121c75a5cba8c6d8ba3f89a3ec1fc16a8020da3985e796b37ab5047c2d5a477e3de291d0d9b6f', NULL, 3, 'authToken', '[]', 0, '2021-11-29 21:27:23', '2021-11-29 21:27:23', '2022-11-30 04:27:23'),
('0e79de57155de31c0943f4335bf1172fd2a84c060668b070e7ca0b28c6e3d36dc293951f727d7187', NULL, 3, 'authToken', '[]', 0, '2021-11-29 18:50:33', '2021-11-29 18:50:33', '2022-11-30 01:50:33'),
('106f007cb149d5e44f4317d2f81e722a1cf311714b4c880c7b171c6a871a7dc417d6e2b16a845428', NULL, 3, 'authToken', '[]', 0, '2021-11-29 20:28:27', '2021-11-29 20:28:27', '2022-11-30 03:28:27'),
('15a3f63ce1074c0d9008d9a442d42b6725d064ad9acc7e309e9de6bb41fcf6637b366ab2e56fd0aa', NULL, 3, 'authToken', '[]', 0, '2021-11-29 20:51:08', '2021-11-29 20:51:08', '2022-11-30 03:51:08'),
('1e38ebf1dc6761febb66c42a0147fd5125fc15aa87c285ea4f43ec2d25f1eb2d2402d2485090934c', NULL, 3, 'authToken', '[]', 0, '2021-11-28 22:17:05', '2021-11-28 22:17:05', '2022-11-29 05:17:05'),
('25be16a3b23cc6eb878199dc304f19e91534a16df85f22fb9ba766a179bcb9540702330ac58c33d5', NULL, 3, 'authToken', '[]', 0, '2021-11-29 20:41:47', '2021-11-29 20:41:47', '2022-11-30 03:41:47'),
('3da775e30c0db5cd4268d79c78a706cf0b1e503e7b44354e82fffac6176c785b96fd5d41084563f8', NULL, 3, 'authToken', '[]', 0, '2021-11-29 20:43:20', '2021-11-29 20:43:20', '2022-11-30 03:43:20'),
('4d8379929472581528e7065a9e0896ff29d961bfc7160a3db6794c9cacedb23cc78f6fe9daa21d02', NULL, 3, 'authToken', '[]', 0, '2021-11-28 22:02:23', '2021-11-28 22:02:23', '2022-11-29 05:02:23'),
('4e38bb8671fb32b37316840f5f49caf84df62102470d2fa371d036357bdeea5688bf228a128ba0d1', NULL, 3, 'authToken', '[]', 0, '2021-11-29 20:39:57', '2021-11-29 20:39:57', '2022-11-30 03:39:57'),
('604de006154868d23fb80b1ace54d7d9584a46fa22e3f0f048d72e041826523c7a8df57b67c44332', NULL, 3, 'authToken', '[]', 0, '2021-11-28 21:24:14', '2021-11-28 21:24:14', '2022-11-29 04:24:14'),
('6a5ed9342a8743e7295858faed241eb2c522a78d2975512ebab628e764b7f87dda7bede5e7d950d4', NULL, 3, 'authToken', '[]', 0, '2021-11-29 19:13:58', '2021-11-29 19:13:58', '2022-11-30 02:13:58'),
('842155773facd4381d05e89a31201de5d92ffb938d4e84da46c8c1b6f1721d629aeaf8b8ef03d826', NULL, 3, 'authToken', '[]', 0, '2021-11-28 21:29:15', '2021-11-28 21:29:15', '2022-11-29 04:29:15'),
('96c20e1f632a1e7927d17d107c04e7ae29c98a74064ba98d05f93c88bebdffc3d1d64975a7a7fad9', NULL, 3, 'authToken', '[]', 0, '2021-11-29 20:10:49', '2021-11-29 20:10:49', '2022-11-30 03:10:49'),
('a6897d985c4551d67a4745fdfb6bd7d423b31fff919f5b053929e6768d3c85f8ed40abcab56bf95f', NULL, 3, 'authToken', '[]', 0, '2021-11-28 21:43:09', '2021-11-28 21:43:09', '2022-11-29 04:43:09'),
('aabaaf47601d0a040384723f8b37f3ad4886d9a60cf5c5b2cfc6d5241e57c010e096a0f3a407c492', NULL, 3, 'authToken', '[]', 0, '2021-11-28 21:42:14', '2021-11-28 21:42:14', '2022-11-29 04:42:14'),
('af737d301bc676a6dd2eb02442c75a1c324f7575f62e3a630f2b3b5335581f249654d065552d08e7', NULL, 3, 'authToken', '[]', 0, '2021-11-28 21:26:37', '2021-11-28 21:26:37', '2022-11-29 04:26:37'),
('cc3a34dfc1904c9ea6d702c842e9a7cc2b90729b88b970954e008e38f6c4bdd32617514fe871ac88', NULL, 3, 'authToken', '[]', 0, '2021-11-29 20:23:38', '2021-11-29 20:23:38', '2022-11-30 03:23:38'),
('cef67705543ff9d1cfd9fbdbd6d4e7093d2c3ed66342613dd67314704b6491e5859500266465a4d2', NULL, 3, 'authToken', '[]', 0, '2021-11-29 19:13:07', '2021-11-29 19:13:07', '2022-11-30 02:13:07'),
('d4119027104a4b4c5ffb160b0bf9a74cbb4a90b694bad620b5caa1c854fef94e1372fb647d24e72c', NULL, 3, 'authToken', '[]', 0, '2021-11-29 21:24:52', '2021-11-29 21:24:52', '2022-11-30 04:24:52'),
('f3f9e82506f8f251ac7cae9cb2e47a168108e5d1f68bbdc9b48dfa8ca1c42bd35646c456a046642e', NULL, 3, 'authToken', '[]', 0, '2021-11-29 21:26:53', '2021-11-29 21:26:53', '2022-11-30 04:26:53'),
('f824fb2db31901adf3d829cdf4353912f79d8dc3b22a16e6c20fcb4f0dc9bed1c0d03dff2e71a5f7', NULL, 3, 'authToken', '[]', 0, '2021-11-29 20:27:49', '2021-11-29 20:27:49', '2022-11-30 03:27:49'),
('fa3e7e0a6e3171d09a13770769dda9bed9ae0a6ed58d694dc4978839b9d0e60ca8691b5868c975e1', NULL, 3, 'authToken', '[]', 0, '2021-11-29 20:29:37', '2021-11-29 20:29:37', '2022-11-30 03:29:37');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(3, NULL, 'Smart_School Personal Access Client', 'RCfcW3nosGqwHnQRYF6XJqYmaYfIv9dwEhh5ErOf', NULL, 'http://localhost', 1, 0, 0, '2021-11-28 21:23:05', '2021-11-28 21:23:05'),
(4, NULL, 'Smart_School Password Grant Client', 'PtnJUXZ1CMivmn3SsqH9SLvOyMMK6a1MPT1y6H3I', 'users', 'http://localhost', 0, 1, 0, '2021-11-28 21:23:05', '2021-11-28 21:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(2, 3, '2021-11-28 21:23:05', '2021-11-28 21:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`school_id`, `created_at`, `updated_at`, `email`, `email_verified_at`, `password`, `name`) VALUES
(1, '2021-11-24 23:15:55', '2021-11-24 23:15:55', 'tes@gmail.com', NULL, '$2y$10$vZJNP4CmzKiKukR61rUTK.fnPxnrL5QxQUk4dI2NkZ/niqmbJnlQq', 'tes'),
(2, '2021-11-26 02:47:36', '2021-11-26 02:47:36', 'tes2@gmail.com', NULL, '$2y$10$Hu0Bm91tzu4DLAjMcwMw1eUJOfNDYgmOe2Guh5v/zR8RKXF.q6qPa', 'sma for test 2'),
(3, '2021-11-29 20:20:30', '2021-11-29 20:20:30', 'school@gmail.com', NULL, '$2y$10$zOajP/qyygCh2R4i0olP3u6kpLy7EK.wxqqxDJu3TW9W.qcJIVcsm', 'school 1'),
(4, '2021-11-29 20:21:52', '2021-11-29 20:21:52', 'school1@gmail.com', NULL, '$2y$10$kJbV3PQCKU4zvOEU3W.uqeSdBHCWUBJnuj6mkXXXIDhMIOJ/MEXG2', 'school 1'),
(5, '2021-11-29 20:23:23', '2021-11-29 20:23:23', 'school2@gmail.com', NULL, '$2y$10$hleHOktrEvcnh.iI8c15k.Njic8S131pQOl4aCa/ZiInlyZV0623u', 'school 2'),
(6, '2021-11-29 20:39:42', '2021-11-29 20:39:42', 'newschool@gmail.com', NULL, '$2y$10$7pZEapgZy2VtxbhwBalD0.qMaz6Ptak5iMiZoQuApIFrw6ttAQsbq', 'new school'),
(7, '2021-11-29 21:24:38', '2021-11-29 21:24:38', 'school.new@gmail.com', NULL, '$2y$10$jamiZxsf5MWe4bVKaVlsZ.8UyBGC/0rBo.EZc0sFmXGIpilYfYQzS', 'school test new');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `school_id`, `email`, `email_verified_at`, `username`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(4, 2, 'refnideswita@gmail.com', NULL, 'lBRwX2J0', '$2y$10$3HNIvsFOS3WEUN.jjS782.Q0HZ8Hvn4pKov/1BfK8YmEQJ0HL/hzi', NULL, '2021-11-25 23:19:35', '2021-11-25 23:19:35', 'Student'),
(7, 1, 'refideswita@gmail.com', NULL, '9M0CLOpo', '$2y$10$X.FxKuy0P/f8NUMXMuu3qOKdu487iwCQp.EmoQYxRG2RdYkXVYtZK', NULL, '2021-11-26 01:38:28', '2021-11-26 01:38:28', 'Teacher'),
(9, 1, 'refnideswitaa@alumni.pcr.ac.id', NULL, 'GwN5avHt', '$2y$10$mWock34We/Sni24skn3K..Te/y6UGGQftB7p2bXkvGGJ78eOAnEFS', NULL, '2021-11-28 08:36:47', '2021-11-28 08:36:47', 'Teacher'),
(11, 1, 'refni@gmail.com', NULL, 'OTm8K9ez', '$2y$10$71EBRcOo31kbOSY38j9tWe39/RXWfNE86jwHQlWMxvacjHnWE.N6K', NULL, '2021-11-28 19:54:54', '2021-11-28 19:54:54', 'Student'),
(13, 5, 'refniiideswita@gmail.com', NULL, 'ZqjDqzlQ', '$2y$10$lZ1FXG4Qq/4w4eQuKjhYMOxGV3H3tvaYZ6Br/3j/ObBxt5lrzCCr6', NULL, '2021-11-29 20:26:00', '2021-11-29 20:26:00', 'Student'),
(15, 5, 'refnideswitaa@alumni.pcr.ac.id', NULL, 'AVbvs6m5', '$2y$10$9r5KslZ45V9H/PwI58Xk3ubm.P5vGP3U3PfWVdW4CUmg7BujZGpiW', NULL, '2021-11-29 20:29:02', '2021-11-29 20:29:02', 'Teacher'),
(16, 6, 'refniideswita2@gmail.com', NULL, 'aVkTHf3K', '$2y$10$NiOoBeMNzMYgTTVToxmroupfyYoVkdtpzGfOtFLvJQYU2e7Bs5V5S', NULL, '2021-11-29 20:40:29', '2021-11-29 20:40:29', 'Student'),
(17, 6, 'refnideswita2@alumni.pcr.ac.id', NULL, 'tZhdmBs4', '$2y$10$KDl3UKl3LOrFhi5r9IosFeeu2kqvOUcH29wkec7hhsritPDF6gRX.', NULL, '2021-11-29 20:40:50', '2021-11-29 20:40:50', 'Teacher'),
(20, 7, 'refniideswita@gmail.com', NULL, '7EySEzau', '$2y$10$xDVUBB4t1dJ.3tCB2xPs8ucADXiQ7Dw/Y9ydEKGk4Ej6OOY.uLMra', NULL, '2021-11-29 21:25:11', '2021-11-29 21:25:11', 'Student'),
(21, 7, 'refnideswita@alumni.pcr.ac.id', NULL, 'jmX2dhMs', '$2y$10$TtaTboHY1rFopTYzO7zujO9U881lMhd1xOM.1LoaZRT/JdGR80MXC', NULL, '2021-11-29 21:25:41', '2021-11-29 21:25:41', 'Teacher');

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
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`school_id`),
  ADD UNIQUE KEY `schools_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `school_id` (`school_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `school_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
