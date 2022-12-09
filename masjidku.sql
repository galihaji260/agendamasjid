-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 09, 2022 at 02:20 AM
-- Server version: 5.7.36
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `masjidku`
--

-- --------------------------------------------------------

--
-- Table structure for table `agendas`
--

DROP TABLE IF EXISTS `agendas`;
CREATE TABLE IF NOT EXISTS `agendas` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_kegiatan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `penanggung_jawab` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengisi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agendas`
--

INSERT INTO `agendas` (`id`, `nama_kegiatan`, `tanggal`, `penanggung_jawab`, `pengisi`, `jenis`, `status`, `created_at`, `updated_at`) VALUES
(45, 'yasinan', '2023-01-01', '1', '1', 'Rutin', 'berjalan', NULL, '2022-12-08 14:34:29'),
(46, 'yasinan', '2023-02-05', 'safs', '', 'Rutin', 'berjalan', NULL, NULL),
(47, 'yasinan', '2023-03-12', 'sfsafsa', '', 'Rutin', 'berjalan', NULL, NULL),
(48, 'yasinan', '2023-04-16', 'fsafsa', '', 'Rutin', 'berjalan', NULL, NULL),
(49, 'yasinan', '2023-05-21', 'sfs', '', 'Rutin', 'berjalan', NULL, NULL),
(50, 'yasinan', '2023-06-25', 'fasfsaf', '', 'Rutin', 'berjalan', NULL, NULL),
(51, 'yasinan', '2023-07-30', 'sfsafsfsa', '', 'Rutin', 'berjalan', NULL, NULL),
(52, 'yasinan', '2023-09-03', 'fas', '', 'Rutin', 'berjalan', NULL, NULL),
(53, 'yasinan', '2023-10-08', 'fsff', '', 'Rutin', 'berjalan', NULL, NULL),
(54, 'yasinan', '2023-11-12', 'asffasf', '', 'Rutin', 'berjalan', NULL, NULL),
(55, 'yasinan', '2023-12-17', 'sfasf', '', 'Rutin', 'berjalan', NULL, NULL),
(56, 'yasinan', '2023-01-01', 'ddf', '', 'Rutin', 'berjalan', NULL, NULL),
(57, 'yasinan', '2023-02-05', 'dfdfd', '', 'Rutin', 'berjalan', NULL, NULL),
(58, 'yasinan', '2023-03-12', 'fdfdf', '', 'Rutin', 'berjalan', NULL, NULL),
(59, 'yasinan', '2023-04-16', 'dfdfdf', '', 'Rutin', 'berjalan', NULL, NULL),
(60, 'yasinan', '2023-05-21', 'dfd', '', 'Rutin', 'berjalan', NULL, NULL),
(61, 'yasinan', '2023-06-25', 'fdfd', '', 'Rutin', 'berjalan', NULL, NULL),
(62, 'yasinan', '2023-07-30', 'fdfdf', '', 'Rutin', 'berjalan', NULL, NULL),
(63, 'yasinan', '2023-09-03', 'd', '', 'Rutin', 'berjalan', NULL, NULL),
(64, 'yasinan', '2023-10-08', 'fdfdfdfd', '', 'Rutin', 'berjalan', NULL, NULL),
(65, 'yasinan', '2023-11-12', 'dfdf', '', 'Rutin', 'berjalan', NULL, NULL),
(66, 'yasinan', '2023-12-17', 'fdf', '', 'Rutin', 'berjalan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisis`
--

DROP TABLE IF EXISTS `divisis`;
CREATE TABLE IF NOT EXISTS `divisis` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisis`
--

INSERT INTO `divisis` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Keagamaan', NULL, NULL),
(2, 'Kreatif', NULL, NULL),
(3, 'Masyarakat', NULL, NULL),
(4, 'Ekonomi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `input`
--

DROP TABLE IF EXISTS `input`;
CREATE TABLE IF NOT EXISTS `input` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `kegiatan` varchar(255) NOT NULL,
  `penanggung_jawab` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_agendas`
--

DROP TABLE IF EXISTS `jenis_agendas`;
CREATE TABLE IF NOT EXISTS `jenis_agendas` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_agendas`
--

INSERT INTO `jenis_agendas` (`id`, `kode`, `nama`, `created_at`, `updated_at`) VALUES
(1, '13', 'Test', '2022-12-04 12:50:36', '2022-12-06 20:54:29'),
(2, '11', '22', '2022-12-04 12:50:46', '2022-12-04 12:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(18, '2014_10_12_000000_create_users_table', 1),
(19, '2014_10_12_100000_create_password_resets_table', 1),
(20, '2019_08_19_000000_create_failed_jobs_table', 1),
(21, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(22, '2022_12_04_164414_create_jenis_agendas_table', 1),
(23, '2022_12_04_164432_create_pengisi_yasinans_table', 1),
(24, '2022_12_04_200111_create_agendas_table', 2),
(28, '2022_12_06_212334_create_personal_data_table', 6),
(26, '2022_12_07_061802_create_roles_table', 4),
(27, '2022_12_07_080111_create_divisis_table', 5),
(29, '2022_12_08_205907_create_status_kegiatans_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengisi_yasinans`
--

DROP TABLE IF EXISTS `pengisi_yasinans`;
CREATE TABLE IF NOT EXISTS `pengisi_yasinans` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pasaran` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengisi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengisi_yasinans`
--

INSERT INTO `pengisi_yasinans` (`id`, `pasaran`, `pengisi`, `created_at`, `updated_at`) VALUES
(1, 'kliwon', '1', NULL, '2022-12-06 19:49:41'),
(2, 'legi', '2', NULL, '2022-12-06 19:49:49'),
(3, 'pon', '', NULL, NULL),
(4, 'wage', '', NULL, NULL),
(5, 'pahing', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_data`
--

DROP TABLE IF EXISTS `personal_data`;
CREATE TABLE IF NOT EXISTS `personal_data` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `divisi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_data`
--

INSERT INTO `personal_data` (`id`, `nama`, `divisi`, `no_hp`, `tipe`, `created_at`, `updated_at`) VALUES
(1, 'Test', '1', '0856', 'internal', '2022-12-07 12:54:40', '2022-12-07 12:54:40'),
(3, 'cb', '', '', 'external', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Takmir', NULL, NULL),
(2, 'Admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status_kegiatans`
--

DROP TABLE IF EXISTS `status_kegiatans`;
CREATE TABLE IF NOT EXISTS `status_kegiatans` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_kegiatans`
--

INSERT INTO `status_kegiatans` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Berjalan', NULL, NULL),
(2, 'Terlaksana', NULL, NULL),
(3, 'Dibatalkan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, '$2y$10$Tv9U9KQq1DqoQq7skQy08OFz0XucC6ZU/.jO0pC/ng8TdpBfz.WvS', NULL, '2022-12-08 11:54:17', '2022-12-08 11:54:17');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
