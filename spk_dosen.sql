-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jan 2023 pada 02.21
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_dosen`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `criterias`
--

CREATE TABLE `criterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kriteria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot` int(11) NOT NULL,
  `is_beneficial` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `criterias`
--

INSERT INTO `criterias` (`id`, `nama_kriteria`, `bobot`, `is_beneficial`, `created_at`, `updated_at`) VALUES
(1, 'IPK', 3, 1, '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(2, 'LULUSAN', 3, 1, '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(3, 'Pendapatan orang tua', 2, 0, '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(4, 'Pengalaman mengajar', 2, 1, '2023-01-23 07:15:27', '2023-01-23 07:15:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `lecturers`
--

CREATE TABLE `lecturers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nidn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipk` double(9,2) NOT NULL,
  `lulusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengalaman_mengajar` int(11) NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lecturers`
--

INSERT INTO `lecturers` (`id`, `name`, `nidn`, `alamat`, `ipk`, `lulusan`, `pengalaman_mengajar`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Kaley Becker', '88898', '265 Jennifer Port Apt. 002\nKemmerland, MD 86655-4837', 3.66, 'Swasta / S2', 27, 'lord.jpg', '2023-01-23 06:41:37', '2023-01-23 06:41:37'),
(2, 'Scot Keebler', '10168', '4096 Kuhic Neck Apt. 018\nBreitenbergville, AR 02455', 3.96, 'Negeri / S3', 8, 'lord.jpg', '2023-01-23 06:41:37', '2023-01-23 06:41:37'),
(3, 'Prof. Natasha Bode', '17528', '395 Chasity Pines\nMetzstad, OH 44899-3276', 3.75, 'Swasta / S2', 6, 'lord.jpg', '2023-01-23 06:41:37', '2023-01-23 06:41:37'),
(4, 'Adam Bailey gan', '50946', '33405 Cole PointsNorth Billborough, VA 72363', 3.88, 'Swasta / S2', 33, 'lord.jpg', '2023-01-23 06:41:37', '2023-01-23 20:02:48'),
(5, 'Vallie Satterfield', '61168', '277 Waters Terrace Apt. 633\nNew Tierraburgh, SC 89985', 3.82, 'Swasta / S2', 7, 'lord.jpg', '2023-01-23 06:41:37', '2023-01-23 06:41:37'),
(6, 'Bernard Baumbach', '63839', '29506 Sammie Parkway Apt. 657\nEast Nestor, TX 85272-8460', 3.94, 'Swasta / S3', 13, 'lord.jpg', '2023-01-23 06:41:37', '2023-01-23 06:41:37'),
(7, 'Rossie Dooley I', '33992', '118 Kuhlman Island Suite 437\nNew Loisshire, WY 31119', 3.78, 'Negeri / S3', 7, 'lord.jpg', '2023-01-23 06:41:37', '2023-01-23 06:41:37'),
(8, 'Maximillian Lesch V', '50399', '248 Kailey Isle\nPort Alf, DE 46464', 3.62, 'Swasta / S2', 27, 'lord.jpg', '2023-01-23 06:41:37', '2023-01-23 06:41:37'),
(9, 'Madie Goyette', '90701', '242 Delores Village Suite 356\nLake Cleta, WI 01643', 3.91, 'Negeri / S3', 31, 'lord.jpg', '2023-01-23 06:41:37', '2023-01-23 06:41:37'),
(11, 'Tristin Fadel', '85003', '9265 Keshawn Ford\nHagenesside, MA 76389', 3.99, 'Negeri / S3', 29, 'lord.jpg', '2023-01-23 06:41:37', '2023-01-23 06:41:37'),
(12, 'Ms. Dulce Bechtelar', '93259', '2964 Carter Groves\nLindgrenstad, NC 63463-1032', 3.97, 'Swasta / S3', 23, 'lord.jpg', '2023-01-23 06:41:37', '2023-01-23 06:41:37'),
(13, 'Colt Schowalter', '68991', '8369 Carmine Inlet\nLucianoville, MN 68637', 3.71, 'Negeri / S3', 8, 'lord.jpg', '2023-01-23 06:41:37', '2023-01-23 06:41:37'),
(14, 'Wilton Tillman', '96315', '8954 Sanford Groves Suite 799\nStromanport, MI 50702-6032', 3.82, 'Negeri / S3', 4, 'lord.jpg', '2023-01-23 06:41:37', '2023-01-23 06:41:37'),
(15, 'Mrs. Vanessa Greenfelder', '67294', '3498 Vance Plains Suite 637\nNorth Howardstad, MA 79294-8890', 3.67, 'Swasta / S3', 4, 'lord.jpg', '2023-01-23 06:41:37', '2023-01-23 06:41:37'),
(16, 'Ulices Cole Jr.', '40544', '224 Andreane Field Suite 059\nNorth Abigale, KY 35257', 3.83, 'Swasta / S2', 23, 'lord.jpg', '2023-01-23 06:41:37', '2023-01-23 06:41:37'),
(17, 'Orie Frami', '47716', '941 Lemke Gardens Suite 084\nEast Delaney, CO 27071-8039', 3.94, 'Negeri / S3', 34, 'lord.jpg', '2023-01-23 06:41:37', '2023-01-23 06:41:37'),
(18, 'Bradford Hermann', '30739', '52918 Luis Highway\nHintzport, ME 94405-9842', 3.74, 'Negeri / S3', 2, 'lord.jpg', '2023-01-23 06:41:37', '2023-01-23 06:41:37'),
(19, 'Monserrate Marquardt', '42875', '979 Connelly Knolls Apt. 544\nWilmatown, SC 56561-2517', 3.58, 'Negeri / S3', 19, 'lord.jpg', '2023-01-23 06:41:37', '2023-01-23 06:41:37'),
(20, 'Linnie Romaguera', '79678', '38479 Charlene Shore\nEffertzborough, AK 28154-6808', 3.63, 'Swasta / S3', 6, 'lord.jpg', '2023-01-23 06:41:37', '2023-01-23 06:41:37'),
(21, 'sasa', '12122', 'aaas', 4.00, 'Swasta / S2', 22, 'default.jpg', '2023-01-23 06:43:06', '2023-01-23 06:43:06'),
(22, 'wqwqw', '212121', '1sasas', 3.87, 'Swasta / S3', 66, 'default.jpg', '2023-01-23 06:47:22', '2023-01-23 06:47:22'),
(24, 'hah', '12121', 'asas', 3.90, 'Negeri / S2', 3, '63cf4a461a5a3.webp', '2023-01-23 20:02:30', '2023-01-23 20:02:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2021_11_17_123100_create_lecturers_table', 1),
(12, '2014_10_12_000000_create_users_table', 2),
(13, '2014_10_12_100000_create_password_resets_table', 2),
(14, '2019_08_19_000000_create_failed_jobs_table', 2),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(16, '2021_11_17_123100_create_students_table', 2),
(17, '2021_11_17_124031_create_criterias_table', 2),
(18, '2021_11_20_165752_create_results_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nidn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skor` double(3,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `results`
--

INSERT INTO `results` (`id`, `slug`, `label`, `nidn`, `nama`, `skor`, `created_at`, `updated_at`) VALUES
(1, 'samsul-arifin-skom-mkom', 'Samsul Arifin S.Kom, M.Kom', '15103', 'Ms. Ally White III', 1.00, '2023-01-24 08:37:53', '2023-01-24 08:37:53'),
(2, 'samsul-arifin-skom-mkom', 'Samsul Arifin S.Kom, M.Kom', '15467', 'Cordie Howell', 1.00, '2023-01-24 08:37:53', '2023-01-24 08:37:53'),
(3, 'samsul-arifin-skom-mkom', 'Samsul Arifin S.Kom, M.Kom', '26583', 'Joseph Beer', 1.00, '2023-01-24 08:37:53', '2023-01-24 08:37:53'),
(4, 'samsul-arifin-skom-mkom', 'Samsul Arifin S.Kom, M.Kom', '16178', 'Prof. Johnathon Rippin', 1.00, '2023-01-24 08:37:53', '2023-01-24 08:37:53'),
(5, 'samsul-arifin-skom-mkom', 'Samsul Arifin S.Kom, M.Kom', '15416', 'Marjory Kulas', 1.00, '2023-01-24 08:37:53', '2023-01-24 08:37:53'),
(6, 'samsul-arifin-skom-mkom', 'Samsul Arifin S.Kom, M.Kom', '23986', 'Houston Johnston', 0.89, '2023-01-24 08:37:53', '2023-01-24 08:37:53'),
(7, 'samsul-arifin-skom-mkom', 'Samsul Arifin S.Kom, M.Kom', '60901', 'Mr. Terrill Cummings', 1.00, '2023-01-24 08:37:53', '2023-01-24 08:37:53'),
(8, 'samsul-arifin-skom-mkom', 'Samsul Arifin S.Kom, M.Kom', '24077', 'Gideon Lockman', 1.00, '2023-01-24 08:37:53', '2023-01-24 08:37:53'),
(9, 'samsul-arifin-skom-mkom', 'Samsul Arifin S.Kom, M.Kom', '77451', 'Tristian Barrows DDS', 0.89, '2023-01-24 08:37:53', '2023-01-24 08:37:53'),
(10, 'samsul-arifin-skom-mkom', 'Samsul Arifin S.Kom, M.Kom', '17300', 'Adelbert Gaylord DVM', 1.00, '2023-01-24 08:37:53', '2023-01-24 08:37:53'),
(11, 'samsul-arifin-skom-mkom', 'Samsul Arifin S.Kom, M.Kom', '38820', 'Merlin Kub', 1.00, '2023-01-24 08:37:53', '2023-01-24 08:37:53'),
(12, 'samsul-arifin-skom-mkom', 'Samsul Arifin S.Kom, M.Kom', '27252', 'Anika Orn', 1.00, '2023-01-24 08:37:53', '2023-01-24 08:37:53'),
(13, 'samsul-arifin-skom-mkom', 'Samsul Arifin S.Kom, M.Kom', '47816', 'Helen Leuschke', 0.80, '2023-01-24 08:37:53', '2023-01-24 08:37:53'),
(14, 'samsul-arifin-skom-mkom', 'Samsul Arifin S.Kom, M.Kom', '43159', 'Alena Denesik', 1.00, '2023-01-24 08:37:53', '2023-01-24 08:37:53'),
(15, 'samsul-arifin-skom-mkom', 'Samsul Arifin S.Kom, M.Kom', '34921', 'Mrs. Katrina Kshlerin DDS', 1.00, '2023-01-24 08:37:53', '2023-01-24 08:37:53'),
(16, 'samsul-arifin-skom-mkom', 'Samsul Arifin S.Kom, M.Kom', '32552', 'Mariam Roob', 1.00, '2023-01-24 08:37:53', '2023-01-24 08:37:53'),
(17, 'samsul-arifin-skom-mkom', 'Samsul Arifin S.Kom, M.Kom', '85905', 'Bradley Berge', 1.00, '2023-01-24 08:37:53', '2023-01-24 08:37:53'),
(18, 'samsul-arifin-skom-mkom', 'Samsul Arifin S.Kom, M.Kom', '90766', 'Mrs. Sarai Crist DDS', 1.00, '2023-01-24 08:37:53', '2023-01-24 08:37:53'),
(19, 'samsul-arifin-skom-mkom', 'Samsul Arifin S.Kom, M.Kom', '52692', 'Mrs. Ayana Bahringer Sr.', 1.00, '2023-01-24 08:37:53', '2023-01-24 08:37:53'),
(20, 'samsul-arifin-skom-mkom', 'Samsul Arifin S.Kom, M.Kom', '60871', 'Joaquin Cremin', 1.00, '2023-01-24 08:37:53', '2023-01-24 08:37:53'),
(21, 'sassas', 'sassas', '15103', 'Ms. Ally White III', 1.00, '2023-01-25 06:00:38', '2023-01-25 06:00:38'),
(22, 'sassas', 'sassas', '15467', 'Cordie Howell', 1.00, '2023-01-25 06:00:38', '2023-01-25 06:00:38'),
(23, 'sassas', 'sassas', '26583', 'Joseph Beer', 1.00, '2023-01-25 06:00:38', '2023-01-25 06:00:38'),
(24, 'sassas', 'sassas', '16178', 'Prof. Johnathon Rippin', 0.95, '2023-01-25 06:00:38', '2023-01-25 06:00:38'),
(25, 'sassas', 'sassas', '15416', 'Marjory Kulas', 1.00, '2023-01-25 06:00:38', '2023-01-25 06:00:38'),
(26, 'sassas', 'sassas', '23986', 'Houston Johnston', 0.80, '2023-01-25 06:00:38', '2023-01-25 06:00:38'),
(27, 'sassas', 'sassas', '60901', 'Mr. Terrill Cummings', 0.89, '2023-01-25 06:00:38', '2023-01-25 06:00:38'),
(28, 'sassas', 'sassas', '24077', 'Gideon Lockman', 0.95, '2023-01-25 06:00:38', '2023-01-25 06:00:38'),
(29, 'sassas', 'sassas', '77451', 'Tristian Barrows DDS', 0.80, '2023-01-25 06:00:38', '2023-01-25 06:00:38'),
(30, 'sassas', 'sassas', '17300', 'Adelbert Gaylord DVM', 0.95, '2023-01-25 06:00:38', '2023-01-25 06:00:38'),
(31, 'sassas', 'sassas', '38820', 'Merlin Kub', 0.95, '2023-01-25 06:00:38', '2023-01-25 06:00:38'),
(32, 'sassas', 'sassas', '27252', 'Anika Orn', 0.95, '2023-01-25 06:00:38', '2023-01-25 06:00:38'),
(33, 'sassas', 'sassas', '47816', 'Helen Leuschke', 0.80, '2023-01-25 06:00:38', '2023-01-25 06:00:38'),
(34, 'sassas', 'sassas', '43159', 'Alena Denesik', 1.00, '2023-01-25 06:00:38', '2023-01-25 06:00:38'),
(35, 'sassas', 'sassas', '34921', 'Mrs. Katrina Kshlerin DDS', 1.00, '2023-01-25 06:00:38', '2023-01-25 06:00:38'),
(36, 'sassas', 'sassas', '32552', 'Mariam Roob', 1.00, '2023-01-25 06:00:38', '2023-01-25 06:00:38'),
(37, 'sassas', 'sassas', '85905', 'Bradley Berge', 1.00, '2023-01-25 06:00:38', '2023-01-25 06:00:38'),
(38, 'sassas', 'sassas', '90766', 'Mrs. Sarai Crist DDS', 0.89, '2023-01-25 06:00:38', '2023-01-25 06:00:38'),
(39, 'sassas', 'sassas', '52692', 'Mrs. Ayana Bahringer Sr.', 0.95, '2023-01-25 06:00:38', '2023-01-25 06:00:38'),
(40, 'sassas', 'sassas', '60871', 'Joaquin Cremin', 1.00, '2023-01-25 06:00:38', '2023-01-25 06:00:38'),
(41, 'sassas', 'sassas', '2121212', 'Garok S.Kom, M.Kom', 0.89, '2023-01-25 06:00:38', '2023-01-25 06:00:38'),
(42, 'ssss', 'ssss', '15103', 'Ms. Ally White III', 0.84, '2023-01-25 06:09:03', '2023-01-25 06:09:03'),
(43, 'ssss', 'ssss', '15467', 'Cordie Howell', 0.84, '2023-01-25 06:09:03', '2023-01-25 06:09:03'),
(44, 'ssss', 'ssss', '26583', 'Joseph Beer', 0.52, '2023-01-25 06:09:03', '2023-01-25 06:09:03'),
(45, 'ssss', 'ssss', '16178', 'Prof. Johnathon Rippin', 0.68, '2023-01-25 06:09:03', '2023-01-25 06:09:03'),
(46, 'ssss', 'ssss', '15416', 'Marjory Kulas', 0.52, '2023-01-25 06:09:03', '2023-01-25 06:09:03'),
(47, 'ssss', 'ssss', '23986', 'Houston Johnston', 0.58, '2023-01-25 06:09:03', '2023-01-25 06:09:03'),
(48, 'ssss', 'ssss', '60901', 'Mr. Terrill Cummings', 0.75, '2023-01-25 06:09:03', '2023-01-25 06:09:03'),
(49, 'ssss', 'ssss', '24077', 'Gideon Lockman', 0.88, '2023-01-25 06:09:03', '2023-01-25 06:09:03'),
(50, 'ssss', 'ssss', '77451', 'Tristian Barrows DDS', 0.74, '2023-01-25 06:09:03', '2023-01-25 06:09:03'),
(51, 'ssss', 'ssss', '17300', 'Adelbert Gaylord DVM', 0.95, '2023-01-25 06:09:03', '2023-01-25 06:09:03'),
(52, 'ssss', 'ssss', '38820', 'Merlin Kub', 0.80, '2023-01-25 06:09:03', '2023-01-25 06:09:03'),
(53, 'ssss', 'ssss', '27252', 'Anika Orn', 0.95, '2023-01-25 06:09:03', '2023-01-25 06:09:03'),
(54, 'ssss', 'ssss', '47816', 'Helen Leuschke', 0.74, '2023-01-25 06:09:03', '2023-01-25 06:09:03'),
(55, 'ssss', 'ssss', '43159', 'Alena Denesik', 0.52, '2023-01-25 06:09:03', '2023-01-25 06:09:03'),
(56, 'ssss', 'ssss', '34921', 'Mrs. Katrina Kshlerin DDS', 0.52, '2023-01-25 06:09:03', '2023-01-25 06:09:03'),
(57, 'ssss', 'ssss', '32552', 'Mariam Roob', 0.52, '2023-01-25 06:09:03', '2023-01-25 06:09:03'),
(58, 'ssss', 'ssss', '85905', 'Bradley Berge', 1.00, '2023-01-25 06:09:03', '2023-01-25 06:09:03'),
(59, 'ssss', 'ssss', '90766', 'Mrs. Sarai Crist DDS', 0.89, '2023-01-25 06:09:03', '2023-01-25 06:09:03'),
(60, 'ssss', 'ssss', '52692', 'Mrs. Ayana Bahringer Sr.', 0.49, '2023-01-25 06:09:03', '2023-01-25 06:09:03'),
(61, 'ssss', 'ssss', '60871', 'Joaquin Cremin', 0.93, '2023-01-25 06:09:03', '2023-01-25 06:09:03'),
(62, 'ssss', 'ssss', '2121212', 'Garok S.Kom, M.Kom', 0.89, '2023-01-25 06:09:03', '2023-01-25 06:09:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nidn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipk` double(9,2) NOT NULL,
  `lulusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengalaman_mengajar` int(11) NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `name`, `nidn`, `alamat`, `ipk`, `lulusan`, `pengalaman_mengajar`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Ms. Ally White III', '15103', '704 Heidenreich Haven\nOlsonport, ND 71216', 3.71, 'Swasta / S2', 25, 'lord.jpg', '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(2, 'Cordie Howell', '15467', '7832 Peter Ports\nMoseshaven, NY 13640', 3.77, 'Negeri / S3', 33, 'lord.jpg', '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(3, 'Joseph Beer', '26583', '88356 Koelpin Isle\nWest Sydneyberg, NE 50100-0953', 3.60, 'Swasta / S3', 23, 'lord.jpg', '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(4, 'Prof. Johnathon Rippin', '16178', '5744 Eichmann Light Apt. 967\nDanielville, MD 00048-0715', 3.63, 'Swasta / S2', 12, 'lord.jpg', '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(5, 'Marjory Kulas', '15416', '7363 Rohan Trace Apt. 248\nSouth Declan, NM 94057-7425', 3.56, 'Swasta / S2', 25, 'lord.jpg', '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(6, 'Houston Johnston', '23986', '724 Satterfield Mountains\nJayberg, ID 20420', 3.62, 'Negeri / S3', 4, 'lord.jpg', '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(7, 'Mr. Terrill Cummings', '60901', '3231 Yessenia Lake\nLake Price, AR 98200', 3.74, 'Swasta / S2', 10, 'lord.jpg', '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(8, 'Gideon Lockman', '24077', '7706 Gislason Harbors Apt. 421\nColtenmouth, ID 57187-9853', 3.81, 'Swasta / S2', 16, 'lord.jpg', '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(9, 'Tristian Barrows DDS', '77451', '726 Christian Passage\nWest Allie, OK 99633', 3.84, 'Swasta / S2', 3, 'lord.jpg', '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(10, 'Adelbert Gaylord DVM', '17300', '9001 Shyann Walks\nPredovicport, NY 81568', 3.96, 'Negeri / S3', 20, 'lord.jpg', '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(11, 'Merlin Kub', '38820', '5092 Mueller Pass\nSabrynastad, MI 48857', 3.79, 'Swasta / S3', 16, 'lord.jpg', '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(12, 'Anika Orn', '27252', '4287 Reynolds Groves Suite 464\nTerrytown, NC 85403-4264', 3.92, 'Negeri / S3', 20, 'lord.jpg', '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(13, 'Helen Leuschke', '47816', '5575 Reilly Green\nDwightchester, MA 54475', 3.85, 'Negeri / S3', 2, 'lord.jpg', '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(14, 'Alena Denesik', '43159', '17251 Johnson Run\nWest Melynachester, MD 62527', 3.56, 'Negeri / S3', 25, 'lord.jpg', '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(15, 'Mrs. Katrina Kshlerin DDS', '34921', '52300 Jaylon Mission\nNorth Teresa, SC 47653-0449', 3.50, 'Negeri / S3', 24, 'lord.jpg', '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(16, 'Mariam Roob', '32552', '68229 Citlalli Meadow Apt. 152\nNorth Wellingtonmouth, KY 93689-3081', 3.52, 'Swasta / S3', 27, 'lord.jpg', '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(17, 'Bradley Berge', '85905', '2839 Abraham Lakes\nWymanstad, LA 95894-9898', 3.91, 'Negeri / S3', 31, 'lord.jpg', '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(18, 'Mrs. Sarai Crist DDS', '90766', '4767 Batz Trafficway Suite 809\nPort Vivianneville, ME 76177-7302', 3.92, 'Swasta / S2', 8, 'lord.jpg', '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(19, 'Mrs. Ayana Bahringer Sr.', '52692', '7863 Lakin Freeway Suite 971\nEast Petra, IL 24996', 3.55, 'Negeri / S3', 17, 'lord.jpg', '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(20, 'Joaquin Cremin', '60871', '738 Santa Throughway\nEast Lizzieport, IA 55607-1739', 3.90, 'Swasta / S3', 30, 'lord.jpg', '2023-01-23 07:15:27', '2023-01-23 07:15:27'),
(21, 'Garok S.Kom, M.Kom', '2121212', 'asas', 4.00, 'Negeri / S3', 8, '63cffbaa79ba5.jpg', '2023-01-24 08:39:22', '2023-01-24 08:39:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Petugas', 'admin', 'admin@google.com', '2023-01-23 07:15:27', '$2y$10$9a7b78YWmpUO1yS3Q2CeMOuWvemjp4Q13q52ykg5alI/f9NrICqB.', 0, 'Y5a6Btgam3', '2023-01-23 07:15:27', '2023-01-23 07:15:27');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `criterias`
--
ALTER TABLE `criterias`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lecturers_nidn_unique` (`nidn`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_nidn_unique` (`nidn`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `criterias`
--
ALTER TABLE `criterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lecturers`
--
ALTER TABLE `lecturers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
