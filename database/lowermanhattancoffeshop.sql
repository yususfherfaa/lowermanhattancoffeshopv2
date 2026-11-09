-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Okt 2026 pada 10.42
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lowermanhattancoffeshop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agg_kategori_segmen`
--

CREATE TABLE `agg_kategori_segmen` (
  `id` int(11) NOT NULL,
  `segmen` varchar(20) NOT NULL,
  `product_category` varchar(50) NOT NULL,
  `total_penjualan` int(11) NOT NULL DEFAULT 0,
  `proporsi` decimal(6,4) NOT NULL DEFAULT 0.0000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `agg_kategori_segmen`
--

INSERT INTO `agg_kategori_segmen` (`id`, `segmen`, `product_category`, `total_penjualan`, `proporsi`) VALUES
(1, 'malam', 'Bakery', 266, 0.1635),
(2, 'malam', 'Branded', 23, 0.0141),
(3, 'malam', 'Coffee', 670, 0.4118),
(4, 'malam', 'Coffee beans', 10, 0.0061),
(5, 'malam', 'Drinking Chocolate', 99, 0.0608),
(6, 'malam', 'Flavours', 82, 0.0504),
(7, 'malam', 'Loose Tea', 9, 0.0055),
(8, 'malam', 'Packaged Chocolate', 5, 0.0031),
(9, 'malam', 'Tea', 463, 0.2846),
(10, 'pagi', 'Bakery', 4513, 0.1690),
(11, 'pagi', 'Branded', 202, 0.0076),
(12, 'pagi', 'Coffee', 9798, 0.3670),
(13, 'pagi', 'Coffee beans', 339, 0.0127),
(14, 'pagi', 'Drinking Chocolate', 1882, 0.0705),
(15, 'pagi', 'Flavours', 1847, 0.0692),
(16, 'pagi', 'Loose Tea', 241, 0.0090),
(17, 'pagi', 'Packaged Chocolate', 120, 0.0045),
(18, 'pagi', 'Tea', 7758, 0.2906),
(19, 'siang', 'Bakery', 1830, 0.1652),
(20, 'siang', 'Branded', 74, 0.0067),
(21, 'siang', 'Coffee', 4325, 0.3905),
(22, 'siang', 'Coffee beans', 115, 0.0104),
(23, 'siang', 'Drinking Chocolate', 822, 0.0742),
(24, 'siang', 'Flavours', 556, 0.0502),
(25, 'siang', 'Loose Tea', 68, 0.0061),
(26, 'siang', 'Packaged Chocolate', 29, 0.0026),
(27, 'siang', 'Tea', 3257, 0.2941),
(28, 'sore', 'Bakery', 1281, 0.1529),
(29, 'sore', 'Branded', 50, 0.0060),
(30, 'sore', 'Coffee', 3411, 0.4071),
(31, 'sore', 'Coffee beans', 67, 0.0080),
(32, 'sore', 'Drinking Chocolate', 602, 0.0718),
(33, 'sore', 'Flavours', 445, 0.0531),
(34, 'sore', 'Loose Tea', 63, 0.0075),
(35, 'sore', 'Packaged Chocolate', 26, 0.0031),
(36, 'sore', 'Tea', 2434, 0.2905);

-- --------------------------------------------------------

--
-- Struktur dari tabel `agg_keramaian_jam`
--

CREATE TABLE `agg_keramaian_jam` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `hari_minggu` tinyint(4) NOT NULL,
  `jam` tinyint(4) NOT NULL,
  `avg_transaksi` decimal(8,2) NOT NULL DEFAULT 0.00,
  `total_transaksi` int(11) NOT NULL DEFAULT 0,
  `total_qty` int(11) NOT NULL DEFAULT 0,
  `label_keramaian` varchar(20) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `agg_keramaian_jam`
--

INSERT INTO `agg_keramaian_jam` (`id`, `store_id`, `hari_minggu`, `jam`, `avg_transaksi`, `total_transaksi`, `total_qty`, `label_keramaian`, `updated_at`) VALUES
(1, 0, 0, 6, 38.27, 421, 649, 'ramai', '2026-10-28 06:08:35'),
(2, 0, 0, 7, 33.15, 862, 1333, 'sedang', '2026-10-28 06:08:35'),
(3, 0, 0, 8, 33.42, 869, 1330, 'sedang', '2026-10-28 06:08:35'),
(4, 0, 0, 9, 32.19, 837, 1264, 'sedang', '2026-10-28 06:08:35'),
(5, 0, 0, 10, 35.04, 911, 1359, 'ramai', '2026-10-28 06:08:35'),
(6, 0, 0, 11, 16.50, 429, 635, 'sedang', '2026-10-28 06:08:35'),
(7, 0, 0, 12, 16.77, 436, 643, 'sedang', '2026-10-28 06:08:35'),
(8, 0, 0, 13, 15.04, 376, 540, 'sedang', '2026-10-28 06:08:35'),
(9, 0, 0, 14, 17.12, 445, 676, 'sedang', '2026-10-28 06:08:35'),
(10, 0, 0, 15, 17.38, 452, 689, 'sedang', '2026-10-28 06:08:35'),
(11, 0, 0, 16, 16.73, 435, 646, 'sedang', '2026-10-28 06:08:35'),
(12, 0, 0, 17, 16.28, 407, 604, 'sedang', '2026-10-28 06:08:35'),
(13, 0, 0, 18, 8.58, 223, 329, 'sepi', '2026-10-28 06:08:35'),
(14, 0, 0, 19, 11.00, 22, 36, 'sepi', '2026-10-28 06:08:35'),
(15, 0, 0, 20, 3.67, 11, 15, 'sepi', '2026-10-28 06:08:35'),
(16, 0, 1, 6, 24.83, 298, 454, 'sedang', '2026-10-28 06:08:35'),
(17, 0, 1, 7, 33.35, 867, 1334, 'sedang', '2026-10-28 06:08:35'),
(18, 0, 1, 8, 32.54, 846, 1315, 'sedang', '2026-10-28 06:08:35'),
(19, 0, 1, 9, 34.96, 909, 1369, 'sedang', '2026-10-28 06:08:35'),
(20, 0, 1, 10, 37.38, 972, 1461, 'ramai', '2026-10-28 06:08:35'),
(21, 0, 1, 11, 13.88, 361, 536, 'sepi', '2026-10-28 06:08:35'),
(22, 0, 1, 12, 14.12, 367, 535, 'sepi', '2026-10-28 06:08:35'),
(23, 0, 1, 13, 14.38, 345, 503, 'sepi', '2026-10-28 06:08:35'),
(24, 0, 1, 14, 17.04, 409, 613, 'sedang', '2026-10-28 06:08:35'),
(25, 0, 1, 15, 17.46, 419, 641, 'sedang', '2026-10-28 06:08:35'),
(26, 0, 1, 16, 15.83, 380, 576, 'sedang', '2026-10-28 06:08:35'),
(27, 0, 1, 17, 13.79, 331, 498, 'sepi', '2026-10-28 06:08:35'),
(28, 0, 1, 18, 7.17, 172, 259, 'sepi', '2026-10-28 06:08:35'),
(29, 0, 1, 19, 8.50, 17, 23, 'sepi', '2026-10-28 06:08:35'),
(30, 0, 1, 20, 2.50, 5, 6, 'sepi', '2026-10-28 06:08:35'),
(31, 0, 2, 6, 30.93, 464, 728, 'sedang', '2026-10-28 06:08:35'),
(32, 0, 2, 7, 31.31, 814, 1235, 'sedang', '2026-10-28 06:08:35'),
(33, 0, 2, 8, 31.42, 817, 1212, 'sedang', '2026-10-28 06:08:35'),
(34, 0, 2, 9, 30.62, 796, 1183, 'sedang', '2026-10-28 06:08:35'),
(35, 0, 2, 10, 33.50, 871, 1299, 'sedang', '2026-10-28 06:08:35'),
(36, 0, 2, 11, 15.77, 410, 614, 'sedang', '2026-10-28 06:08:35'),
(37, 0, 2, 12, 15.19, 395, 592, 'sedang', '2026-10-28 06:08:35'),
(38, 0, 2, 13, 15.56, 389, 559, 'sedang', '2026-10-28 06:08:35'),
(39, 0, 2, 14, 15.64, 391, 588, 'sedang', '2026-10-28 06:08:35'),
(40, 0, 2, 15, 17.36, 434, 639, 'sedang', '2026-10-28 06:08:35'),
(41, 0, 2, 16, 15.80, 395, 574, 'sedang', '2026-10-28 06:08:35'),
(42, 0, 2, 17, 14.12, 353, 513, 'sepi', '2026-10-28 06:08:35'),
(43, 0, 2, 18, 8.36, 209, 306, 'sepi', '2026-10-28 06:08:35'),
(44, 0, 2, 19, 5.33, 16, 27, 'sepi', '2026-10-28 06:08:35'),
(45, 0, 2, 20, 4.33, 13, 19, 'sepi', '2026-10-28 06:08:35'),
(46, 0, 3, 6, 35.77, 465, 728, 'ramai', '2026-10-28 06:08:35'),
(47, 0, 3, 7, 28.46, 740, 1142, 'sedang', '2026-10-28 06:08:35'),
(48, 0, 3, 8, 30.92, 804, 1233, 'sedang', '2026-10-28 06:08:35'),
(49, 0, 3, 9, 31.27, 813, 1247, 'sedang', '2026-10-28 06:08:35'),
(50, 0, 3, 10, 35.62, 926, 1385, 'ramai', '2026-10-28 06:08:35'),
(51, 0, 3, 11, 15.35, 399, 593, 'sedang', '2026-10-28 06:08:35'),
(52, 0, 3, 12, 16.38, 426, 643, 'sedang', '2026-10-28 06:08:35'),
(53, 0, 3, 13, 14.92, 388, 550, 'sepi', '2026-10-28 06:08:35'),
(54, 0, 3, 14, 15.77, 410, 618, 'sedang', '2026-10-28 06:08:35'),
(55, 0, 3, 15, 17.00, 442, 667, 'sedang', '2026-10-28 06:08:35'),
(56, 0, 3, 16, 16.50, 429, 630, 'sedang', '2026-10-28 06:08:35'),
(57, 0, 3, 17, 15.54, 404, 601, 'sedang', '2026-10-28 06:08:35'),
(58, 0, 3, 18, 9.21, 221, 316, 'sepi', '2026-10-28 06:08:35'),
(59, 0, 3, 19, 11.00, 33, 54, 'sepi', '2026-10-28 06:08:35'),
(60, 0, 3, 20, 6.67, 20, 26, 'sepi', '2026-10-28 06:08:35'),
(61, 0, 4, 6, 30.36, 425, 664, 'sedang', '2026-10-28 06:08:35'),
(62, 0, 4, 7, 32.54, 846, 1289, 'sedang', '2026-10-28 06:08:35'),
(63, 0, 4, 8, 31.58, 821, 1247, 'sedang', '2026-10-28 06:08:35'),
(64, 0, 4, 9, 34.38, 894, 1336, 'sedang', '2026-10-28 06:08:35'),
(65, 0, 4, 10, 35.58, 925, 1397, 'ramai', '2026-10-28 06:08:35'),
(66, 0, 4, 11, 16.31, 424, 617, 'sedang', '2026-10-28 06:08:35'),
(67, 0, 4, 12, 15.15, 394, 582, 'sedang', '2026-10-28 06:08:35'),
(68, 0, 4, 13, 13.44, 336, 492, 'sepi', '2026-10-28 06:08:35'),
(69, 0, 4, 14, 16.80, 420, 637, 'sedang', '2026-10-28 06:08:35'),
(70, 0, 4, 15, 17.48, 437, 657, 'sedang', '2026-10-28 06:08:35'),
(71, 0, 4, 16, 14.92, 373, 541, 'sepi', '2026-10-28 06:08:35'),
(72, 0, 4, 17, 13.84, 346, 522, 'sepi', '2026-10-28 06:08:35'),
(73, 0, 4, 18, 7.84, 196, 286, 'sepi', '2026-10-28 06:08:35'),
(74, 0, 4, 19, 7.50, 15, 21, 'sepi', '2026-10-28 06:08:35'),
(75, 0, 4, 20, 4.00, 8, 10, 'sepi', '2026-10-28 06:08:35'),
(76, 0, 5, 6, 32.33, 388, 594, 'sedang', '2026-10-28 06:08:35'),
(77, 0, 5, 7, 35.40, 885, 1339, 'ramai', '2026-10-28 06:08:35'),
(78, 0, 5, 8, 33.28, 832, 1260, 'sedang', '2026-10-28 06:08:35'),
(79, 0, 5, 9, 31.88, 797, 1209, 'sedang', '2026-10-28 06:08:35'),
(80, 0, 5, 10, 33.76, 844, 1291, 'sedang', '2026-10-28 06:08:35'),
(81, 0, 5, 11, 14.88, 372, 558, 'sepi', '2026-10-28 06:08:35'),
(82, 0, 5, 12, 16.24, 406, 612, 'sedang', '2026-10-28 06:08:35'),
(83, 0, 5, 13, 16.71, 401, 556, 'sedang', '2026-10-28 06:08:35'),
(84, 0, 5, 14, 16.25, 390, 590, 'sedang', '2026-10-28 06:08:35'),
(85, 0, 5, 15, 18.04, 433, 664, 'sedang', '2026-10-28 06:08:35'),
(86, 0, 5, 16, 16.96, 407, 615, 'sedang', '2026-10-28 06:08:35'),
(87, 0, 5, 17, 14.92, 358, 535, 'sepi', '2026-10-28 06:08:35'),
(88, 0, 5, 18, 8.29, 199, 282, 'sepi', '2026-10-28 06:08:35'),
(89, 0, 5, 19, 5.00, 5, 7, 'sepi', '2026-10-28 06:08:35'),
(90, 0, 5, 20, 5.00, 5, 9, 'sepi', '2026-10-28 06:08:35'),
(91, 0, 6, 6, 30.47, 457, 699, 'sedang', '2026-10-28 06:08:35'),
(92, 0, 6, 7, 29.92, 778, 1178, 'sedang', '2026-10-28 06:08:35'),
(93, 0, 6, 8, 30.38, 790, 1191, 'sedang', '2026-10-28 06:08:35'),
(94, 0, 6, 9, 33.38, 868, 1314, 'sedang', '2026-10-28 06:08:35'),
(95, 0, 6, 10, 32.62, 848, 1260, 'sedang', '2026-10-28 06:08:35'),
(96, 0, 6, 11, 13.85, 360, 537, 'sepi', '2026-10-28 06:08:35'),
(97, 0, 6, 12, 15.54, 404, 584, 'sedang', '2026-10-28 06:08:35'),
(98, 0, 6, 13, 15.92, 398, 563, 'sedang', '2026-10-28 06:08:35'),
(99, 0, 6, 14, 15.80, 395, 582, 'sedang', '2026-10-28 06:08:35'),
(100, 0, 6, 15, 17.36, 434, 637, 'sedang', '2026-10-28 06:08:35'),
(101, 0, 6, 16, 15.36, 384, 566, 'sedang', '2026-10-28 06:08:35'),
(102, 0, 6, 17, 13.04, 326, 477, 'sepi', '2026-10-28 06:08:35'),
(103, 0, 6, 18, 8.28, 207, 300, 'sepi', '2026-10-28 06:08:35'),
(104, 0, 6, 19, 5.67, 17, 26, 'sepi', '2026-10-28 06:08:35'),
(105, 0, 6, 20, 6.50, 13, 17, 'sepi', '2026-10-28 06:08:35'),
(106, 5, 0, 6, 38.27, 421, 649, 'ramai', '2026-10-28 06:08:35'),
(107, 5, 0, 7, 33.15, 862, 1333, 'sedang', '2026-10-28 06:08:35'),
(108, 5, 0, 8, 33.42, 869, 1330, 'sedang', '2026-10-28 06:08:35'),
(109, 5, 0, 9, 32.19, 837, 1264, 'sedang', '2026-10-28 06:08:35'),
(110, 5, 0, 10, 35.04, 911, 1359, 'ramai', '2026-10-28 06:08:35'),
(111, 5, 0, 11, 16.50, 429, 635, 'sedang', '2026-10-28 06:08:35'),
(112, 5, 0, 12, 16.77, 436, 643, 'sedang', '2026-10-28 06:08:35'),
(113, 5, 0, 13, 15.04, 376, 540, 'sedang', '2026-10-28 06:08:35'),
(114, 5, 0, 14, 17.12, 445, 676, 'sedang', '2026-10-28 06:08:35'),
(115, 5, 0, 15, 17.38, 452, 689, 'sedang', '2026-10-28 06:08:35'),
(116, 5, 0, 16, 16.73, 435, 646, 'sedang', '2026-10-28 06:08:35'),
(117, 5, 0, 17, 16.28, 407, 604, 'sedang', '2026-10-28 06:08:35'),
(118, 5, 0, 18, 8.58, 223, 329, 'sepi', '2026-10-28 06:08:35'),
(119, 5, 0, 19, 11.00, 22, 36, 'sepi', '2026-10-28 06:08:35'),
(120, 5, 0, 20, 3.67, 11, 15, 'sepi', '2026-10-28 06:08:35'),
(121, 5, 1, 6, 24.83, 298, 454, 'sedang', '2026-10-28 06:08:35'),
(122, 5, 1, 7, 33.35, 867, 1334, 'sedang', '2026-10-28 06:08:35'),
(123, 5, 1, 8, 32.54, 846, 1315, 'sedang', '2026-10-28 06:08:35'),
(124, 5, 1, 9, 34.96, 909, 1369, 'sedang', '2026-10-28 06:08:35'),
(125, 5, 1, 10, 37.38, 972, 1461, 'ramai', '2026-10-28 06:08:35'),
(126, 5, 1, 11, 13.88, 361, 536, 'sepi', '2026-10-28 06:08:35'),
(127, 5, 1, 12, 14.12, 367, 535, 'sepi', '2026-10-28 06:08:35'),
(128, 5, 1, 13, 14.38, 345, 503, 'sepi', '2026-10-28 06:08:35'),
(129, 5, 1, 14, 17.04, 409, 613, 'sedang', '2026-10-28 06:08:35'),
(130, 5, 1, 15, 17.46, 419, 641, 'sedang', '2026-10-28 06:08:35'),
(131, 5, 1, 16, 15.83, 380, 576, 'sedang', '2026-10-28 06:08:35'),
(132, 5, 1, 17, 13.79, 331, 498, 'sepi', '2026-10-28 06:08:35'),
(133, 5, 1, 18, 7.17, 172, 259, 'sepi', '2026-10-28 06:08:35'),
(134, 5, 1, 19, 8.50, 17, 23, 'sepi', '2026-10-28 06:08:35'),
(135, 5, 1, 20, 2.50, 5, 6, 'sepi', '2026-10-28 06:08:35'),
(136, 5, 2, 6, 30.93, 464, 728, 'sedang', '2026-10-28 06:08:35'),
(137, 5, 2, 7, 31.31, 814, 1235, 'sedang', '2026-10-28 06:08:35'),
(138, 5, 2, 8, 31.42, 817, 1212, 'sedang', '2026-10-28 06:08:35'),
(139, 5, 2, 9, 30.62, 796, 1183, 'sedang', '2026-10-28 06:08:35'),
(140, 5, 2, 10, 33.50, 871, 1299, 'sedang', '2026-10-28 06:08:35'),
(141, 5, 2, 11, 15.77, 410, 614, 'sedang', '2026-10-28 06:08:35'),
(142, 5, 2, 12, 15.19, 395, 592, 'sedang', '2026-10-28 06:08:35'),
(143, 5, 2, 13, 15.56, 389, 559, 'sedang', '2026-10-28 06:08:35'),
(144, 5, 2, 14, 15.64, 391, 588, 'sedang', '2026-10-28 06:08:35'),
(145, 5, 2, 15, 17.36, 434, 639, 'sedang', '2026-10-28 06:08:35'),
(146, 5, 2, 16, 15.80, 395, 574, 'sedang', '2026-10-28 06:08:35'),
(147, 5, 2, 17, 14.12, 353, 513, 'sepi', '2026-10-28 06:08:35'),
(148, 5, 2, 18, 8.36, 209, 306, 'sepi', '2026-10-28 06:08:35'),
(149, 5, 2, 19, 5.33, 16, 27, 'sepi', '2026-10-28 06:08:35'),
(150, 5, 2, 20, 4.33, 13, 19, 'sepi', '2026-10-28 06:08:35'),
(151, 5, 3, 6, 35.77, 465, 728, 'ramai', '2026-10-28 06:08:35'),
(152, 5, 3, 7, 28.46, 740, 1142, 'sedang', '2026-10-28 06:08:35'),
(153, 5, 3, 8, 30.92, 804, 1233, 'sedang', '2026-10-28 06:08:35'),
(154, 5, 3, 9, 31.27, 813, 1247, 'sedang', '2026-10-28 06:08:35'),
(155, 5, 3, 10, 35.62, 926, 1385, 'ramai', '2026-10-28 06:08:35'),
(156, 5, 3, 11, 15.35, 399, 593, 'sedang', '2026-10-28 06:08:35'),
(157, 5, 3, 12, 16.38, 426, 643, 'sedang', '2026-10-28 06:08:35'),
(158, 5, 3, 13, 14.92, 388, 550, 'sepi', '2026-10-28 06:08:35'),
(159, 5, 3, 14, 15.77, 410, 618, 'sedang', '2026-10-28 06:08:35'),
(160, 5, 3, 15, 17.00, 442, 667, 'sedang', '2026-10-28 06:08:35'),
(161, 5, 3, 16, 16.50, 429, 630, 'sedang', '2026-10-28 06:08:35'),
(162, 5, 3, 17, 15.54, 404, 601, 'sedang', '2026-10-28 06:08:35'),
(163, 5, 3, 18, 9.21, 221, 316, 'sepi', '2026-10-28 06:08:35'),
(164, 5, 3, 19, 11.00, 33, 54, 'sepi', '2026-10-28 06:08:35'),
(165, 5, 3, 20, 6.67, 20, 26, 'sepi', '2026-10-28 06:08:35'),
(166, 5, 4, 6, 30.36, 425, 664, 'sedang', '2026-10-28 06:08:35'),
(167, 5, 4, 7, 32.54, 846, 1289, 'sedang', '2026-10-28 06:08:35'),
(168, 5, 4, 8, 31.58, 821, 1247, 'sedang', '2026-10-28 06:08:35'),
(169, 5, 4, 9, 34.38, 894, 1336, 'sedang', '2026-10-28 06:08:35'),
(170, 5, 4, 10, 35.58, 925, 1397, 'ramai', '2026-10-28 06:08:35'),
(171, 5, 4, 11, 16.31, 424, 617, 'sedang', '2026-10-28 06:08:35'),
(172, 5, 4, 12, 15.15, 394, 582, 'sedang', '2026-10-28 06:08:35'),
(173, 5, 4, 13, 13.44, 336, 492, 'sepi', '2026-10-28 06:08:35'),
(174, 5, 4, 14, 16.80, 420, 637, 'sedang', '2026-10-28 06:08:35'),
(175, 5, 4, 15, 17.48, 437, 657, 'sedang', '2026-10-28 06:08:35'),
(176, 5, 4, 16, 14.92, 373, 541, 'sepi', '2026-10-28 06:08:35'),
(177, 5, 4, 17, 13.84, 346, 522, 'sepi', '2026-10-28 06:08:35'),
(178, 5, 4, 18, 7.84, 196, 286, 'sepi', '2026-10-28 06:08:35'),
(179, 5, 4, 19, 7.50, 15, 21, 'sepi', '2026-10-28 06:08:35'),
(180, 5, 4, 20, 4.00, 8, 10, 'sepi', '2026-10-28 06:08:35'),
(181, 5, 5, 6, 32.33, 388, 594, 'sedang', '2026-10-28 06:08:35'),
(182, 5, 5, 7, 35.40, 885, 1339, 'ramai', '2026-10-28 06:08:35'),
(183, 5, 5, 8, 33.28, 832, 1260, 'sedang', '2026-10-28 06:08:35'),
(184, 5, 5, 9, 31.88, 797, 1209, 'sedang', '2026-10-28 06:08:35'),
(185, 5, 5, 10, 33.76, 844, 1291, 'sedang', '2026-10-28 06:08:35'),
(186, 5, 5, 11, 14.88, 372, 558, 'sepi', '2026-10-28 06:08:35'),
(187, 5, 5, 12, 16.24, 406, 612, 'sedang', '2026-10-28 06:08:35'),
(188, 5, 5, 13, 16.71, 401, 556, 'sedang', '2026-10-28 06:08:35'),
(189, 5, 5, 14, 16.25, 390, 590, 'sedang', '2026-10-28 06:08:35'),
(190, 5, 5, 15, 18.04, 433, 664, 'sedang', '2026-10-28 06:08:35'),
(191, 5, 5, 16, 16.96, 407, 615, 'sedang', '2026-10-28 06:08:35'),
(192, 5, 5, 17, 14.92, 358, 535, 'sepi', '2026-10-28 06:08:35'),
(193, 5, 5, 18, 8.29, 199, 282, 'sepi', '2026-10-28 06:08:35'),
(194, 5, 5, 19, 5.00, 5, 7, 'sepi', '2026-10-28 06:08:35'),
(195, 5, 5, 20, 5.00, 5, 9, 'sepi', '2026-10-28 06:08:35'),
(196, 5, 6, 6, 30.47, 457, 699, 'sedang', '2026-10-28 06:08:35'),
(197, 5, 6, 7, 29.92, 778, 1178, 'sedang', '2026-10-28 06:08:35'),
(198, 5, 6, 8, 30.38, 790, 1191, 'sedang', '2026-10-28 06:08:35'),
(199, 5, 6, 9, 33.38, 868, 1314, 'sedang', '2026-10-28 06:08:35'),
(200, 5, 6, 10, 32.62, 848, 1260, 'sedang', '2026-10-28 06:08:35'),
(201, 5, 6, 11, 13.85, 360, 537, 'sepi', '2026-10-28 06:08:35'),
(202, 5, 6, 12, 15.54, 404, 584, 'sedang', '2026-10-28 06:08:35'),
(203, 5, 6, 13, 15.92, 398, 563, 'sedang', '2026-10-28 06:08:35'),
(204, 5, 6, 14, 15.80, 395, 582, 'sedang', '2026-10-28 06:08:35'),
(205, 5, 6, 15, 17.36, 434, 637, 'sedang', '2026-10-28 06:08:35'),
(206, 5, 6, 16, 15.36, 384, 566, 'sedang', '2026-10-28 06:08:35'),
(207, 5, 6, 17, 13.04, 326, 477, 'sepi', '2026-10-28 06:08:35'),
(208, 5, 6, 18, 8.28, 207, 300, 'sepi', '2026-10-28 06:08:35'),
(209, 5, 6, 19, 5.67, 17, 26, 'sepi', '2026-10-28 06:08:35'),
(210, 5, 6, 20, 6.50, 13, 17, 'sepi', '2026-10-28 06:08:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_products`
--

CREATE TABLE `data_products` (
  `id_data` varchar(11) NOT NULL,
  `aktivitas` varchar(50) NOT NULL,
  `id_produk` varchar(11) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `nama_kasir` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_products`
--

INSERT INTO `data_products` (`id_data`, `aktivitas`, `id_produk`, `nama_produk`, `nama_kasir`, `created_at`) VALUES
('DAT0000001', 'Tambah Produk', 'PRD0000001', 'Nasi Goreng ', 'Rizky', '2026-07-01 07:39:25'),
('DAT0000002', 'Tambah Produk', 'PRD0000002', 'Indomie Goreng Telor', 'Rizky', '2026-07-01 07:40:30'),
('DAT0000003', 'Tambah Produk', 'PRD0000003', 'Indomie Rebus Telor', 'Rizky', '2026-07-01 07:41:13'),
('DAT0000004', 'Tambah Produk', 'PRD0000004', 'Bubur Kacang Ijo', 'Rizky', '2026-07-01 07:42:04'),
('DAT0000005', 'Tambah Produk', 'PRD0000005', 'Nasi Kucing', 'Rizky', '2026-07-01 07:42:49'),
('DAT0000006', 'Tambah Produk', 'PRD0000006', 'Pancong Keju', 'Rizky', '2026-07-01 07:43:36'),
('DAT0000007', 'Tambah Produk', 'PRD0000007', 'Roti Bakar Coklat', 'Rizky', '2026-07-01 07:45:14'),
('DAT0000008', 'Tambah Produk', 'PRD0000008', 'Kentang Goreng', 'Rizky', '2026-07-01 07:46:05'),
('DAT0000009', 'Tambah Produk', 'PRD0000009', 'Bakwan 1 Pcs', 'Rizky', '2026-07-01 07:51:04'),
('DAT0000010', 'Tambah Produk', 'PRD0000010', 'Tempe 1 Pcs', 'Rizky', '2026-07-01 07:52:27'),
('DAT0000011', 'Tambah Produk', 'PRD0000011', 'Tahu 1 Pcs', 'Rizky', '2026-07-01 07:52:52'),
('DAT0000012', 'Tambah Produk', 'PRD0000012', 'Dimsum Mentai ', 'Rizky', '2026-07-01 07:53:28'),
('DAT0000013', 'Tambah Produk', 'PRD0000013', 'Sate Telor 1 Pcs', 'Rizky', '2026-07-01 07:54:05'),
('DAT0000014', 'Tambah Produk', 'PRD0000014', 'Sate Usus 1 Pcs', 'Rizky', '2026-07-01 07:54:35'),
('DAT0000015', 'Tambah Produk', 'PRD0000015', 'Sate Ati Ampela 1 Pcs', 'Rizky', '2026-07-01 07:55:26'),
('DAT0000016', 'Tambah Produk', 'PRD0000016', 'Milo', 'Rizky', '2026-07-01 07:56:43'),
('DAT0000017', 'Tambah Produk', 'PRD0000017', 'Jeruk', 'Rizky', '2026-07-01 07:57:18'),
('DAT0000018', 'Tambah Produk', 'PRD0000018', 'Teh Manis', 'Rizky', '2026-07-01 07:57:51'),
('DAT0000019', 'Tambah Produk', 'PRD0000019', 'Lemon Tea', 'Rizky', '2026-07-01 07:58:59'),
('DAT0000020', 'Tambah Produk', 'PRD0000018', 'Teh Manis', 'Rizky', '2026-07-01 08:00:08'),
('DAT0000021', 'Tambah Produk', 'PRD0000021', 'Susu Putih', 'Rizky', '2026-07-01 08:00:49'),
('DAT0000022', 'Tambah Produk', 'PRD0000022', 'Air Mineral', 'Rizky', '2026-07-01 08:01:18'),
('DAT0000023', 'Tambah Produk', 'PRD0000023', 'Capucinno', 'Rizky', '2026-07-01 08:01:48'),
('DAT0000024', 'Tambah Produk', 'PRD0000024', 'Kopi Susu', 'Rizky', '2026-07-01 08:02:33'),
('DAT0000025', 'Tambah Produk', 'PRD0000025', 'Kopi Hitam', 'Rizky', '2026-07-01 08:03:38'),
('DAT0000026', 'Tambah Produk', 'PRD0000026', 'Nasi Kuning', 'Admin', '2026-10-13 02:18:08'),
('DAT0000027', 'Tambah Produk', 'PRD0000027', 'Nasi Uduk', 'Admin', '2026-10-13 02:18:08'),
('DAT0000028', 'Tambah Produk', 'PRD0000028', 'Lontong Sayur', 'Admin', '2026-10-13 02:18:08'),
('DAT0000029', 'Tambah Produk', 'PRD0000029', 'Bubur Ayam', 'Admin', '2026-10-13 02:18:08'),
('DAT0000030', 'Tambah Produk', 'PRD0000030', 'Ayam Geprek + Nasi', 'Admin', '2026-10-13 02:18:08'),
('DAT0000031', 'Tambah Produk', 'PRD0000031', 'ABC Susu', 'Admin', '2026-10-13 17:53:02'),
('DAT0000032', 'Tambah Produk', 'PRD0000032', 'Indocafe', 'Admin', '2026-10-13 17:53:02'),
('DAT0000033', 'Tambah Produk', 'PRD0000033', 'Kapal Api Special Mix', 'Admin', '2026-10-13 17:53:02'),
('DAT0000034', 'Edit Produk', 'PRD0000031', 'ABC Susu', 'Mancoer', '2026-10-13 18:09:11'),
('DAT0000035', 'Edit Produk', 'PRD0000032', 'Indocafe', 'Mancoer', '2026-10-13 18:09:59'),
('DAT0000036', 'Edit Produk', 'PRD0000031', 'ABC Susu', 'Mancoer', '2026-10-13 18:10:39'),
('DAT0000037', 'Edit Produk', 'PRD0000033', 'Kapal Api Special Mix', 'Mancoer', '2026-10-13 18:11:19'),
('DAT0000038', 'Edit Produk', 'PRD0000027', 'Nasi Uduk', 'Mancoer', '2026-10-13 18:12:01'),
('DAT0000039', 'Edit Produk', 'PRD0000033', 'Kapal Api Special Mix', 'Mancoer', '2026-10-13 18:12:49'),
('DAT0000040', 'Edit Produk', 'PRD0000031', 'ABC Susu', 'Mancoer', '2026-10-13 18:13:04'),
('DAT0000041', 'Edit Produk', 'PRD0000016', 'Milo', 'Mancoer', '2026-10-13 18:13:30'),
('DAT0000042', 'Edit Produk', 'PRD0000025', 'Kopi Hitam', 'Mancoer', '2026-10-13 18:14:05'),
('DAT0000043', 'Edit Produk', 'PRD0000017', 'eruk ', 'Mancoer', '2026-10-13 18:14:46'),
('DAT0000044', 'Edit Produk', 'PRD0000017', 'Jeruk ', 'Mancoer', '2026-10-13 18:15:02'),
('DAT0000045', 'Edit Produk', 'PRD0000021', 'Susu Putih', 'Mancoer', '2026-10-13 18:15:42'),
('DAT0000046', 'Edit Produk', 'PRD0000018', 'Teh Manis', 'Mancoer', '2026-10-13 18:16:05'),
('DAT0000047', 'Tambah Produk', 'PRD0000034', 'Good Day Biasa', 'Admin', '2026-10-13 18:25:02'),
('DAT0000048', 'Tambah Produk', 'PRD0000035', 'Luwak White Coffee', 'Admin', '2026-10-13 18:25:02'),
('DAT0000049', 'Tambah Produk', 'PRD0000036', 'Torabika Creamy Latte', 'Admin', '2026-10-13 18:25:02'),
('DAT0000050', 'Tambah Produk', 'PRD0000037', 'Good Day Freeze', 'Admin', '2026-10-13 18:25:02'),
('DAT0000051', 'Tambah Produk', 'PRD0000038', 'Nescafe Ice Roast', 'Admin', '2026-10-13 18:25:02'),
('DAT0000052', 'Tambah Produk', 'PRD0000039', 'ABC Klepon', 'Admin', '2026-10-13 18:25:02'),
('DAT0000053', 'Tambah Produk', 'PRD0000040', 'Good Day Biasa', 'Admin', '2026-10-13 18:25:02'),
('DAT0000054', 'Tambah Produk', 'PRD0000041', 'Tora Cafe', 'Admin', '2026-10-13 18:25:02'),
('DAT0000055', 'Tambah Produk', 'PRD0000042', 'Es Nutrisari', 'Admin', '2026-10-13 18:25:02'),
('DAT0000056', 'Edit Produk', 'PRD0000039', 'ABC Klepon', 'Mancoer', '2026-10-13 18:33:19'),
('DAT0000057', 'Edit Produk', 'PRD0000040', 'Good Day Biasa', 'Mancoer', '2026-10-13 18:33:59'),
('DAT0000058', 'Edit Produk', 'PRD0000037', 'Good Day Freeze', 'Mancoer', '2026-10-13 18:34:30'),
('DAT0000059', 'Edit Produk', 'PRD0000038', 'Nescafe Ice Roast', 'Mancoer', '2026-10-13 18:35:31'),
('DAT0000060', 'Tambah Varian', 'PRD0000041', 'Tora Cafe', 'Mancoer', '2026-10-13 18:36:10'),
('DAT0000061', 'Tambah Varian', 'PRD0000041', 'Tora Cafe', 'Mancoer', '2026-10-13 18:36:28'),
('DAT0000062', 'Tambah Varian', 'PRD0000041', 'Tora Cafe', 'Mancoer', '2026-10-13 18:36:37'),
('DAT0000063', 'Edit Produk', 'PRD0000041', 'Tora Cafe', 'Mancoer', '2026-10-13 18:37:30'),
('DAT0000064', 'Edit Produk', 'PRD0000031', 'ABC Susu', 'Mancoer', '2026-10-13 18:38:03'),
('DAT0000065', 'Tambah Varian', 'PRD0000042', 'Es Nutrisari', 'Mancoer', '2026-10-13 18:38:54'),
('DAT0000066', 'Edit Produk', 'PRD0000042', 'Es Nutrisari', 'Mancoer', '2026-10-13 18:39:10'),
('DAT0000067', 'Edit Produk', 'PRD0000034', 'Good Day Biasa', 'Mancoer', '2026-10-13 18:39:41'),
('DAT0000068', 'Edit Produk', 'PRD0000032', 'Indocafe', 'Mancoer', '2026-10-13 18:41:04'),
('DAT0000069', 'Edit Produk', 'PRD0000033', 'Kapal Api Special Mix', 'Mancoer', '2026-10-13 18:41:41'),
('DAT0000070', 'Edit Produk', 'PRD0000035', 'Luwak White Coffee', 'Mancoer', '2026-10-13 18:42:30'),
('DAT0000071', 'Edit Produk', 'PRD0000036', 'Torabika Creamy Latte', 'Mancoer', '2026-10-13 18:43:11'),
('DAT0000072', 'Edit Produk', 'PRD0000040', 'Good Day Biasa', 'Administrator', '2026-10-13 18:44:48'),
('DAT0000073', 'Edit Produk', 'PRD0000040', 'Good Day Biasa - Pake Es', 'Mancoer', '2026-10-13 18:51:49'),
('DAT0000074', 'Edit Produk', 'PRD0000039', 'ABC Klepon', 'Mancoer', '2026-10-13 18:52:23'),
('DAT0000075', 'Edit Produk', 'PRD0000042', 'Es Nutrisari', 'Mancoer', '2026-10-13 18:52:45'),
('DAT0000076', 'Edit Produk', 'PRD0000037', 'Good Day Freeze', 'Mancoer', '2026-10-13 18:53:05'),
('DAT0000077', 'Edit Produk', 'PRD0000038', 'Nescafe Ice Roast', 'Mancoer', '2026-10-13 18:53:26'),
('DAT0000078', 'Edit Produk', 'PRD0000041', 'Tora Cafe', 'Mancoer', '2026-10-13 18:53:43'),
('DAT0000079', 'Edit Produk', 'PRD0000031', 'ABC Susu', 'Mancoer', '2026-10-13 18:53:58'),
('DAT0000080', 'Edit Produk', 'PRD0000034', 'Good Day Biasa', 'Mancoer', '2026-10-13 18:54:31'),
('DAT0000081', 'Edit Produk', 'PRD0000032', 'Indocafe', 'Mancoer', '2026-10-13 18:54:55'),
('DAT0000082', 'Edit Produk', 'PRD0000033', 'Kapal Api Special Mix', 'Mancoer', '2026-10-13 18:55:07'),
('DAT0000083', 'Edit Produk', 'PRD0000033', 'Kapal Api Special Mix', 'Mancoer', '2026-10-13 18:55:07'),
('DAT0000084', 'Edit Produk', 'PRD0000033', 'Kapal Api Special Mix', 'Mancoer', '2026-10-13 18:55:17'),
('DAT0000085', 'Edit Produk', 'PRD0000033', 'Kapal Api Special Mix', 'Mancoer', '2026-10-13 18:55:31'),
('DAT0000086', 'Edit Produk', 'PRD0000035', 'Luwak White Coffee', 'Mancoer', '2026-10-13 18:55:54'),
('DAT0000087', 'Edit Produk', 'PRD0000036', 'Torabika Creamy Latte', 'Mancoer', '2026-10-13 18:56:12'),
('DAT0000088', 'Edit Produk', 'PRD0000005', 'Nasi Kucing', 'Mancoer', '2026-10-13 18:56:59'),
('DAT0000089', 'Edit Produk', 'PRD0000018', 'Teh Manis', 'Mancoer', '2026-10-13 18:59:11'),
('DAT0000090', 'Tambah Varian', 'PRD0000021', 'Susu Putih - Full Cream', 'Mancoer', '2026-10-14 03:41:34'),
('DAT0000091', 'Tambah Varian', 'PRD0000021', 'Susu Putih - Full Cream', 'Mancoer', '2026-10-14 03:41:35'),
('DAT0000092', 'Hapus Varian', 'PRD0000021', 'Susu Putih - Full Cream', 'Mancoer', '2026-10-14 03:41:57'),
('DAT0000093', 'Tambah Varian', 'PRD0000021', 'Susu Putih - Coklat', 'Mancoer', '2026-10-14 03:42:05'),
('DAT0000094', 'Tambah Varian', 'PRD0000021', 'Susu Putih - Kental Manis', 'Mancoer', '2026-10-14 03:42:21'),
('DAT0000095', 'Tambah Varian', 'PRD0000021', 'Susu Putih - Korean Strawberry', 'Mancoer', '2026-10-14 03:42:29'),
('DAT0000096', 'Edit Produk', 'PRD0000021', 'Susu Putih', 'Mancoer', '2026-10-14 03:42:40'),
('DAT0000097', 'Edit Produk', 'PRD0000022', 'Air Mineral', 'Mancoer', '2026-10-14 03:43:14'),
('DAT0000098', 'Hapus Produk', 'PRD0000024', 'Kopi Susu', 'Mancoer', '2026-10-14 03:43:28'),
('DAT0000099', 'Edit Produk', 'PRD0000021', 'Susu Frisian Flag', 'Mancoer', '2026-10-14 03:43:49'),
('DAT0000100', 'Hapus Produk', 'PRD0000023', 'Capucinno', 'Mancoer', '2026-10-14 03:44:02'),
('DAT0000101', 'Hapus Produk', 'PRD0000025', 'Kopi Hitam', 'Mancoer', '2026-10-14 03:44:09'),
('DAT0000102', 'Edit Produk', 'PRD0000041', 'Tora Cafe', 'Mancoer', '2026-10-14 05:48:06'),
('DAT0000103', 'Edit Produk', 'PRD0000041', 'Tora Cafe', 'Mancoer', '2026-10-14 05:58:30'),
('DAT0000104', 'Hapus Varian', 'PRD0000041', 'Tora Cafe - Milky Latte', 'Mancoer', '2026-10-14 05:59:09'),
('DAT0000105', 'Hapus Varian', 'PRD0000041', 'Tora Cafe - Choco Latte', 'Mancoer', '2026-10-14 05:59:15'),
('DAT0000106', 'Hapus Varian', 'PRD0000041', 'Tora Cafe - Caramel Latte', 'Mancoer', '2026-10-14 05:59:21'),
('DAT0000107', 'Tambah Varian', 'PRD0000041', 'Tora Cafe - Milky Latte', 'Mancoer', '2026-10-14 05:59:33'),
('DAT0000108', 'Tambah Varian', 'PRD0000041', 'Tora Cafe - Caramel Latte', 'Mancoer', '2026-10-14 05:59:41'),
('DAT0000109', 'Tambah Varian', 'PRD0000041', 'Tora Cafe - Choco Latte', 'Mancoer', '2026-10-14 05:59:51'),
('DAT0000110', 'Edit Produk', 'PRD0000041', 'Tora Cafe', 'Mancoer', '2026-10-14 05:59:54'),
('DAT0000111', 'Edit Produk', 'PRD0000015', 'Sate Ati Ampela ', 'Mancoer', '2026-10-14 06:02:34'),
('DAT0000112', 'Edit Produk', 'PRD0000013', 'Sate Telor ', 'Mancoer', '2026-10-14 06:02:47'),
('DAT0000113', 'Edit Produk', 'PRD0000014', 'Sate Usus ', 'Mancoer', '2026-10-14 06:02:58'),
('DAT0000114', 'Edit Produk', 'PRD0000011', 'Tahu ', 'Mancoer', '2026-10-14 06:03:10'),
('DAT0000115', 'Edit Produk', 'PRD0000010', 'Tempe', 'Mancoer', '2026-10-14 06:03:20'),
('DAT0000116', 'Tambah Varian', 'PRD0000005', 'Nasi Kucing - Tongkol', 'Mancoer', '2026-10-14 06:03:46'),
('DAT0000117', 'Tambah Varian', 'PRD0000005', 'Nasi Kucing - Ayam Suwir', 'Mancoer', '2026-10-14 06:03:55'),
('DAT0000118', 'Tambah Varian', 'PRD0000005', 'Nasi Kucing - Teri', 'Mancoer', '2026-10-14 06:04:01'),
('DAT0000119', 'Edit Produk', 'PRD0000005', 'Nasi Kucing', 'Mancoer', '2026-10-14 06:04:16'),
('DAT0000120', 'Edit Produk', 'PRD0000009', 'Bakwan', 'Mancoer', '2026-10-14 16:38:54'),
('DAT0000121', 'Tambah Produk', 'PRD0000043', 'Roti Canai', 'Mancoer', '2026-10-14 16:41:12'),
('DAT0000122', 'Edit Produk', 'PRD0000019', 'Lemon Tea', 'Mancoer', '2026-10-19 00:49:51'),
('DAT0000123', 'Edit Produk', 'PRDM0076', 'Chocolate Chip Biscotti', 'Mancoer', '2026-10-28 07:48:32'),
('DAT0000124', 'Edit Produk', 'PRDM0073', 'Almond Croissant', 'Mancoer', '2026-10-28 07:49:22'),
('DAT0000125', 'Edit Produk', 'PRDM0071', 'Chocolate Croissant', 'Mancoer', '2026-10-28 07:50:05'),
('DAT0000126', 'Edit Produk', 'PRDM0070', 'Cranberry Scone', 'Mancoer', '2026-10-28 07:50:47'),
('DAT0000127', 'Edit Produk', 'PRDM0075', 'Croissant', 'Mancoer', '2026-10-28 07:52:27'),
('DAT0000128', 'Edit Produk', 'PRDM0074', 'Ginger Biscotti', 'Mancoer', '2026-10-28 07:53:30'),
('DAT0000129', 'Edit Produk', 'PRDM0072', 'Ginger Scone', 'Mancoer', '2026-10-28 07:54:21'),
('DAT0000130', 'Edit Produk', 'PRDM0069', 'Hazelnut Biscotti', 'Mancoer', '2026-10-28 07:56:30'),
('DAT0000131', 'Edit Produk', 'PRDM0079', 'Jumbo Savory Scone', 'Mancoer', '2026-10-28 07:57:09'),
('DAT0000132', 'Edit Produk', 'PRDM0077', 'Oatmeal Scone', 'Mancoer', '2026-10-28 07:57:45'),
('DAT0000133', 'Edit Produk', 'PRDM0078', 'Scottish Cream Scone', 'Mancoer', '2026-10-28 07:58:30'),
('DAT0000134', 'Edit Produk', 'PRDM0082', 'I Need My Bean! Diner mug', 'Mancoer', '2026-10-28 08:36:32'),
('DAT0000135', 'Edit Produk', 'PRDM0083', 'I Need My Bean! Latte cup', 'Mancoer', '2026-10-28 08:36:45'),
('DAT0000136', 'Edit Produk', 'PRDM0081', 'I Need My Bean! T-shirt', 'Mancoer', '2026-10-28 08:36:56'),
('DAT0000137', 'Edit Produk', 'PRDM0063', 'Caramel syrup', 'Mancoer', '2026-10-28 08:55:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2026-06-22-000001', 'App\\Database\\Migrations\\CreateNotificationsTable', 'default', 'App', 1791915896, 1),
(2, '2026-06-22-000002', 'App\\Database\\Migrations\\CreateStockLogs', 'default', 'App', 1791915896, 1),
(3, '2026-10-14-000001', 'App\\Database\\Migrations\\AddProductOptions', 'default', 'App', 1791915896, 1),
(4, '2026-10-14-000002', 'App\\Database\\Migrations\\AddProductDescriptions', 'default', 'App', 1791917387, 2),
(5, '2026-10-14-000003', 'App\\Database\\Migrations\\PreserveProductActivityOnDelete', 'default', 'App', 1791948529, 3),
(6, '2026-10-14-000004', 'App\\Database\\Migrations\\AddOrderItemNotes', 'default', 'App', 1791959530, 4),
(7, '2026-10-19-000001', 'App\\Database\\Migrations\\AddOrderAccessTokens', 'default', 'App', 1792434962, 5),
(8, '2026-10-27-000001', 'App\\Database\\Migrations\\AddPlanBDatasetColumns', 'default', 'App', 1793066918, 6),
(9, '2026-10-27-000002', 'App\\Database\\Migrations\\CreatePlanBAggregateTables', 'default', 'App', 1793167614, 7),
(10, '2026-10-28-000001', 'App\\Database\\Migrations\\RenameCoffeeShopBrand', 'default', 'App', 1793167614, 7),
(11, '2026-10-28-000002', 'App\\Database\\Migrations\\UseProvidedCoffeeShopLogo', 'default', 'App', 1793169543, 8),
(12, '2026-10-28-000003', 'App\\Database\\Migrations\\UseLicensedCatalogPhotos', 'default', 'App', 1793172538, 9),
(13, '2026-10-28-000004', 'App\\Database\\Migrations\\ReplaceCatalogPhotosWithPlaceholders', 'default', 'App', 1793173695, 10),
(14, '2026-10-28-000005', 'App\\Database\\Migrations\\UseProvidedProductPhotos', 'default', 'App', 1793178851, 11),
(15, '2026-10-28-000006', 'App\\Database\\Migrations\\AddLowerManhattanProductDescriptions', 'default', 'App', 1793179435, 12),
(16, '2026-10-28-000007', 'App\\Database\\Migrations\\UpdateCoffeeProductPhotos', 'default', 'App', 1793180005, 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id_notif` int(11) NOT NULL,
  `id_order` varchar(11) NOT NULL,
  `id_meja` varchar(11) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `total` decimal(12,2) DEFAULT 0.00,
  `status` enum('unread','read') DEFAULT 'unread',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id_order` varchar(11) NOT NULL,
  `token` char(16) NOT NULL,
  `id_meja` varchar(11) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `total` decimal(12,2) DEFAULT 0.00,
  `status` enum('menunggu_pembayaran','lunas','dibatalkan') DEFAULT 'menunggu_pembayaran',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `metode_pembayaran` enum('cash','qris') DEFAULT 'cash'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_items`
--

CREATE TABLE `order_items` (
  `id_items` varchar(11) NOT NULL,
  `id_order` varchar(11) NOT NULL,
  `id_produk` varchar(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `suhu` varchar(10) DEFAULT NULL,
  `harga` decimal(12,2) DEFAULT 0.00,
  `qty` int(11) DEFAULT 0,
  `subtotal` decimal(12,2) DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `opsi` varchar(100) DEFAULT NULL,
  `catatan` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payments`
--

CREATE TABLE `payments` (
  `id_pay` varchar(11) NOT NULL,
  `id_order` varchar(11) NOT NULL,
  `id_user` varchar(11) NOT NULL,
  `nama_kasir` varchar(200) NOT NULL,
  `metode_pembayaran` enum('cash','qris') DEFAULT 'cash',
  `total_order` decimal(12,2) DEFAULT 0.00,
  `uang_dibayar` decimal(12,2) DEFAULT 0.00,
  `kembalian` decimal(12,2) DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id_produk` varchar(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `kategori_dataset` varchar(50) DEFAULT NULL,
  `tipe_dataset` varchar(50) DEFAULT NULL,
  `ukuran` varchar(20) DEFAULT NULL,
  `kode_produk_dataset` int(11) DEFAULT NULL,
  `harga` decimal(12,2) DEFAULT 0.00,
  `harga_dolar_ref` decimal(8,2) DEFAULT NULL,
  `stok` int(11) DEFAULT 0,
  `varian_suhu` tinyint(1) NOT NULL DEFAULT 0,
  `tambahan_harga_es` decimal(12,2) NOT NULL DEFAULT 0.00,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `suhu_tetap` varchar(10) DEFAULT NULL,
  `punya_opsi` tinyint(1) DEFAULT 0,
  `label_opsi` varchar(40) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id_produk`, `nama`, `kategori`, `kategori_dataset`, `tipe_dataset`, `ukuran`, `kode_produk_dataset`, `harga`, `harga_dolar_ref`, `stok`, `varian_suhu`, `tambahan_harga_es`, `gambar`, `created_at`, `suhu_tetap`, `punya_opsi`, `label_opsi`, `deskripsi`, `aktif`) VALUES
('PRD0000001', 'Nasi Goreng ', 'Makanan Berat', NULL, NULL, NULL, NULL, 16000.00, NULL, 3, 0, 0.00, '1782891565_af07d1c8e2315eba526e.jpeg', '2026-07-01 07:39:25', NULL, 0, NULL, 'Nasi goreng berbumbu gurih yang nikmat disantap hangat.', 0),
('PRD0000002', 'Indomie Goreng Telor', 'Makanan Berat', NULL, NULL, NULL, NULL, 14000.00, NULL, 13, 0, 0.00, '1782891630_26c8fcfc238747f9d178.jpg', '2026-07-01 07:40:30', NULL, 0, NULL, 'Mi goreng berbumbu dengan tambahan telur.', 0),
('PRD0000003', 'Indomie Rebus Telor', 'Makanan Berat', NULL, NULL, NULL, NULL, 14000.00, NULL, 5, 0, 0.00, '1782891673_3a19720e46a9be9c7775.jpg', '2026-07-01 07:41:13', NULL, 0, NULL, 'Mi kuah hangat dengan bumbu gurih dan tambahan telur.', 0),
('PRD0000004', 'Bubur Kacang Ijo', 'Makanan Berat', NULL, NULL, NULL, NULL, 12000.00, NULL, 19, 0, 0.00, '1782891724_6c21cc833c61523f6af4.webp', '2026-07-01 07:42:04', NULL, 0, NULL, 'Bubur kacang hijau manis dan lembut untuk teman santai.', 0),
('PRD0000005', 'Nasi Kucing', 'Makanan Berat', NULL, NULL, NULL, NULL, 8000.00, NULL, 14, 0, 0.00, '1782891769_c5b0bcadfb44d38234a4.webp', '2026-07-01 07:42:49', NULL, 1, 'Pilih rasa', 'Porsi nasi sederhana yang pas untuk camilan atau teman ngopi.', 0),
('PRD0000006', 'Pancong Keju', 'Cemilan', NULL, NULL, NULL, NULL, 10000.00, NULL, 23, 0, 0.00, '1782891816_786a944dbfabaee44fb8.jpeg', '2026-07-01 07:43:36', NULL, 0, NULL, 'Kue pancong hangat dengan taburan keju gurih.', 0),
('PRD0000007', 'Roti Bakar Coklat', 'Cemilan', NULL, NULL, NULL, NULL, 8000.00, NULL, 10, 0, 0.00, '1782891914_eb59436f346118c70051.webp', '2026-07-01 07:45:14', NULL, 0, NULL, 'Roti bakar hangat dengan isian cokelat manis.', 0),
('PRD0000008', 'Kentang Goreng', 'Cemilan', NULL, NULL, NULL, NULL, 10000.00, NULL, 20, 0, 0.00, '1782891965_98b1c540141dc1eb58a4.jpg', '2026-07-01 07:46:05', NULL, 0, NULL, 'Kentang goreng renyah yang cocok untuk camilan.', 0),
('PRD0000009', 'Bakwan', 'Cemilan', NULL, NULL, NULL, NULL, 2000.00, NULL, 28, 0, 0.00, '1782892263_434cd0136cfd2722be8c.jpg', '2026-07-01 07:51:04', NULL, 0, NULL, 'Bakwan goreng gurih dan renyah, disajikan per buah.', 0),
('PRD0000010', 'Tempe', 'Cemilan', NULL, NULL, NULL, NULL, 2000.00, NULL, 24, 0, 0.00, '1782892347_671cdf0dd96840bee1f9.jpg', '2026-07-01 07:52:27', NULL, 0, NULL, 'Tempe goreng gurih sebagai camilan atau lauk, disajikan per buah.', 0),
('PRD0000011', 'Tahu ', 'Cemilan', NULL, NULL, NULL, NULL, 2000.00, NULL, 13, 0, 0.00, '1782892372_a297cd893fbd687a9e5d.jpg', '2026-07-01 07:52:52', NULL, 0, NULL, 'Tahu goreng gurih sebagai camilan atau lauk, disajikan per buah.', 0),
('PRD0000012', 'Dimsum Mentai ', 'Cemilan', NULL, NULL, NULL, NULL, 15000.00, NULL, 17, 0, 0.00, '1782892408_4b7ee137701e664ed6cb.jpg', '2026-07-01 07:53:28', NULL, 0, NULL, 'Dimsum lembut dengan saus mentai yang gurih dan creamy.', 0),
('PRD0000013', 'Sate Telor ', 'Cemilan', NULL, NULL, NULL, NULL, 3000.00, NULL, 99, 0, 0.00, '1782892445_186ac56379c4a036d498.jpg', '2026-07-01 07:54:05', NULL, 0, NULL, 'Sate telur gurih yang praktis dinikmati sebagai camilan.', 0),
('PRD0000014', 'Sate Usus ', 'Cemilan', NULL, NULL, NULL, NULL, 3000.00, NULL, 99, 0, 0.00, '1782892475_fd46d605570d5a9615e7.webp', '2026-07-01 07:54:35', NULL, 0, NULL, 'Sate usus berbumbu gurih, disajikan per tusuk.', 0),
('PRD0000015', 'Sate Ati Ampela ', 'Cemilan', NULL, NULL, NULL, NULL, 3000.00, NULL, 98, 0, 0.00, '1782892526_438340effe2d3bdd20a2.webp', '2026-07-01 07:55:26', NULL, 0, NULL, 'Sate ati ampela berbumbu gurih, disajikan per tusuk.', 0),
('PRD0000016', 'Milo', 'Minuman Non Kopi', NULL, NULL, NULL, NULL, 7000.00, NULL, 29, 1, 1000.00, '1782892603_d89f90befaf837d8644b.jpg', '2026-07-01 07:56:43', NULL, 0, NULL, 'Minuman cokelat malt yang nikmat disajikan panas atau es.', 0),
('PRD0000017', 'Jeruk ', 'Minuman Non Kopi', NULL, NULL, NULL, NULL, 6000.00, NULL, 18, 1, 1000.00, '1782892638_134ca8dd804e6be7fbc5.png', '2026-07-01 07:57:18', NULL, 0, NULL, 'Minuman rasa jeruk yang menyegarkan, tersedia panas atau es.', 0),
('PRD0000018', 'Teh Manis', 'Minuman Non Kopi', NULL, NULL, NULL, NULL, 5000.00, NULL, 45, 1, 1000.00, 'assets/no-image.svg', '2026-07-01 07:57:51', NULL, 0, NULL, 'Teh dengan rasa manis yang pas, dapat dinikmati panas atau es.', 0),
('PRD0000019', 'Lemon Tea', 'Minuman Non Kopi', NULL, NULL, NULL, NULL, 7000.00, NULL, 40, 1, 1000.00, 'assets/no-image.svg', '2026-07-01 07:58:59', NULL, 0, NULL, 'Perpaduan teh dan lemon dengan rasa segar, tersedia panas atau es.', 0),
('PRD0000021', 'Susu Frisian Flag', 'Minuman Non Kopi', NULL, NULL, NULL, NULL, 6000.00, NULL, 15, 1, 1000.00, '1791949360_41aef7f83446a67d064c.jpg', '2026-07-01 08:00:49', NULL, 1, 'Pilih rasa', 'Susu putih dengan rasa lembut, dapat dinikmati panas atau es.', 0),
('PRD0000022', 'Air Mineral', 'Minuman Non Kopi', NULL, NULL, NULL, NULL, 2000.00, NULL, 49, 0, 1000.00, '1782892878_06fc1658f73a7f863548.png', '2026-07-01 08:01:18', NULL, 0, NULL, 'Air mineral untuk menemani makan atau melepas dahaga.', 0),
('PRD0000026', 'Nasi Kuning', 'Makanan Berat', NULL, NULL, NULL, NULL, 10000.00, NULL, 20, 0, 0.00, 'nasi-kuning.jpg', '2026-10-13 02:18:08', NULL, 0, NULL, 'Nasi kuning berbumbu gurih, cocok untuk menu makan yang mengenyangkan.', 0),
('PRD0000027', 'Nasi Uduk', 'Makanan Berat', NULL, NULL, NULL, NULL, 10000.00, NULL, 20, 0, 0.00, '1791915121_9c8a6dcf98fee378b522.jpg', '2026-10-13 02:18:08', NULL, 0, NULL, 'Nasi uduk gurih yang cocok dinikmati sebagai menu makan.', 0),
('PRD0000028', 'Lontong Sayur', 'Makanan Berat', NULL, NULL, NULL, NULL, 10000.00, NULL, 19, 0, 0.00, 'lontong-sayur.jpg', '2026-10-13 02:18:08', NULL, 0, NULL, 'Lontong sayur dengan kuah berbumbu gurih untuk santapan mengenyangkan.', 0),
('PRD0000029', 'Bubur Ayam', 'Makanan Berat', NULL, NULL, NULL, NULL, 12000.00, NULL, 20, 0, 0.00, 'bubur-ayam.jpg', '2026-10-13 02:18:08', NULL, 0, NULL, 'Bubur ayam hangat dengan rasa gurih, pas untuk santapan ringan.', 0),
('PRD0000030', 'Ayam Geprek + Nasi', 'Makanan Berat', NULL, NULL, NULL, NULL, 15000.00, NULL, 18, 0, 0.00, 'ayam-geprek.png', '2026-10-13 02:18:08', NULL, 0, NULL, 'Ayam geprek dengan nasi, pilihan makan gurih dan mengenyangkan.', 0),
('PRD0000031', 'ABC Susu', 'Kopi Panas', NULL, NULL, NULL, NULL, 5000.00, NULL, 50, 0, 0.00, '1791917638_4fab1d3d6672aab3cf97.jpg', '2026-10-13 17:53:02', 'panas', 0, NULL, 'Kopi instan bercita rasa kopi dan susu yang nikmat disajikan panas.', 0),
('PRD0000032', 'Indocafe', 'Kopi Panas', NULL, NULL, NULL, NULL, 5000.00, NULL, 50, 0, 0.00, '1791917694_51034b8dbc20699de1eb.jpg', '2026-10-13 17:53:02', 'panas', 0, NULL, 'Kopi instan dengan rasa lembut untuk menemani waktu santai.', 0),
('PRD0000033', 'Kapal Api Special Mix', 'Kopi Panas', NULL, NULL, NULL, NULL, 5000.00, NULL, 50, 0, 0.00, '1791917731_4528125d002f33cf536f.jpg', '2026-10-13 17:53:02', 'panas', 0, NULL, 'Kopi instan dengan perpaduan kopi dan gula yang praktis disajikan panas.', 0),
('PRD0000034', 'Good Day Biasa', 'Kopi Panas', NULL, NULL, NULL, NULL, 6000.00, NULL, 49, 0, 0.00, '1791917671_499e43c94f1aac33fc1d.jpg', '2026-10-13 18:25:02', 'panas', 1, 'Pilih rasa', 'Kopi Good Day panas dengan pilihan rasa yang bisa dipilih.', 0),
('PRD0000035', 'Luwak White Coffee', 'Kopi Panas', NULL, NULL, NULL, NULL, 5000.00, NULL, 50, 0, 0.00, '1791917754_f07ea0db13a0cedcbfcf.jpg', '2026-10-13 18:25:02', 'panas', 0, NULL, 'Kopi putih bercita rasa lembut dan creamy, disajikan panas.', 0),
('PRD0000036', 'Torabika Creamy Latte', 'Kopi Panas', NULL, NULL, NULL, NULL, 6000.00, NULL, 49, 0, 0.00, '1791917772_3f07c9701d04652f2c57.jpg', '2026-10-13 18:25:02', 'panas', 0, NULL, 'Kopi latte dengan perpaduan kopi dan krimer yang creamy.', 0),
('PRD0000037', 'Good Day Freeze', 'Es Kopi', NULL, NULL, NULL, NULL, 8000.00, NULL, 49, 0, 0.00, '1791917585_bb406d88bc7e7419d989.jpg', '2026-10-13 18:25:02', 'dingin', 1, 'Pilih rasa', 'Kopi Good Day Freeze dingin dengan pilihan rasa yang bisa dipilih.', 0),
('PRD0000038', 'Nescafe Ice Roast', 'Es Kopi', NULL, NULL, NULL, NULL, 7000.00, NULL, 49, 0, 0.00, '1791917606_618b89eff69e3047b390.jpg', '2026-10-13 18:25:02', 'dingin', 0, NULL, 'Kopi dingin dengan rasa kopi yang kuat dan menyegarkan.', 0),
('PRD0000039', 'ABC Klepon', 'Es Kopi', NULL, NULL, NULL, NULL, 8000.00, NULL, 49, 0, 0.00, '1791917543_c9fc014a94f86ce3bd3d.jpg', '2026-10-13 18:25:02', 'dingin', 0, NULL, 'Kopi dingin dengan sentuhan rasa klepon yang manis dan creamy.', 0),
('PRD0000040', 'Good Day Biasa - Pake Es', 'Es Kopi', NULL, NULL, NULL, NULL, 7000.00, NULL, 50, 0, 0.00, '1791917509_f824e5f0c5d83878aaec.jpg', '2026-10-13 18:25:02', 'dingin', 1, 'Pilih rasa', 'Good Day Biasa disajikan dingin dengan pilihan rasa yang bisa dipilih.', 0),
('PRD0000041', 'Tora Cafe', 'Es Kopi', NULL, NULL, NULL, NULL, 7000.00, NULL, 50, 0, 0.00, '1791917623_0ed792c0c863251d3861.jpg', '2026-10-13 18:25:02', 'dingin', 1, 'Pilih rasa', 'Kopi instan dingin dengan rasa kopi dan susu yang lembut.', 0),
('PRD0000042', 'Es Nutrisari', 'Es Nutrisari', NULL, NULL, NULL, NULL, 5000.00, NULL, 48, 0, 0.00, '1791917565_cebcdeec13952ae3e195.jpg', '2026-10-13 18:25:02', 'dingin', 1, 'Pilih rasa', 'Minuman Nutrisari dingin dengan pilihan rasa buah yang menyegarkan.', 0),
('PRD0000043', 'Roti Canai', 'Cemilan', NULL, NULL, NULL, NULL, 10000.00, NULL, 20, 0, 0.00, '1791996072_30d827c923165beeffdf.jpg', '2026-10-14 16:41:12', NULL, 0, NULL, 'pokonya roti canai enak dahh dan l u pasti beli lagi dah pokonya', 0),
('PRDM0001', 'Brazilian - Organic', 'Coffee beans', 'Coffee beans', 'Organic Beans', 'none', 1, 288000.00, 18.00, 100, 0, 0.00, 'foto-produk-PRDM0001.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Biji kopi Brazilian pilihan untuk seduhan dengan karakter kopi yang hangat dan mantap. Nikmati aroma kopinya di rumah dan racik sesuai cara favoritmu.', 1),
('PRDM0002', 'Our Old Time Diner Blend', 'Coffee beans', 'Coffee beans', 'House blend Beans', 'none', 2, 288000.00, 18.00, 100, 0, 0.00, 'foto-produk-PRDM0002.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'House blend khas yang serbaguna untuk teman memulai pagi atau menemani rehat. Pilihan nyaman untuk dinikmati sebagai seduhan harian.', 1),
('PRDM0003', 'Espresso Roast', 'Coffee beans', 'Coffee beans', 'Espresso Beans', 'none', 3, 236000.00, 14.75, 100, 0, 0.00, 'foto-produk-PRDM0003.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Biji kopi sangrai untuk racikan espresso dengan karakter yang pekat dan penuh rasa. Cocok menjadi dasar minuman kopi favoritmu.', 1),
('PRDM0004', 'Primo Espresso Roast', 'Coffee beans', 'Coffee beans', 'Espresso Beans', 'none', 4, 327000.00, 20.45, 100, 0, 0.00, 'foto-produk-PRDM0004.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Pilihan espresso roast dengan karakter kopi yang tegas untuk sajian beraroma kuat. Nikmati sebagai espresso atau racik menjadi minuman favorit.', 1),
('PRDM0005', 'Columbian Medium Roast', 'Coffee beans', 'Coffee beans', 'Gourmet Beans', 'none', 5, 240000.00, 15.00, 100, 0, 0.00, 'foto-produk-PRDM0005.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Kopi medium roast dengan karakter seimbang dan aroma yang mengundang. Pas untuk dinikmati sebagai seduhan harian kapan saja.', 1),
('PRDM0006', 'Ethiopia', 'Coffee beans', 'Coffee beans', 'Gourmet Beans', 'none', 6, 336000.00, 21.00, 100, 0, 0.00, 'foto-produk-PRDM0006.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Kopi Ethiopia dengan karakter istimewa yang layak dinikmati perlahan. Seduh untuk menemukan pengalaman kopi yang berbeda di setiap jeda.', 1),
('PRDM0007', 'Jamacian Coffee River', 'Coffee beans', 'Coffee beans', 'Premium Beans', 'none', 7, 316000.00, 19.75, 100, 0, 0.00, 'foto-produk-PRDM0007.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Biji kopi Jamaican pilihan dengan karakter premium untuk momen ngopi yang terasa spesial. Nikmati aroma dan cita rasa kopinya dalam seduhan favoritmu.', 1),
('PRDM0008', 'Civet Cat', 'Coffee beans', 'Coffee beans', 'Premium Beans', 'none', 8, 720000.00, 45.00, 100, 0, 0.00, 'foto-produk-PRDM0008.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Biji kopi premium pilihan untuk pengalaman ngopi yang istimewa. Sajikan dengan metode seduh favorit agar karakter kopinya lebih terasa.', 1),
('PRDM0009', 'Organic Decaf Blend', 'Coffee beans', 'Coffee beans', 'Organic Beans', 'none', 9, 360000.00, 22.50, 100, 0, 0.00, 'foto-produk-PRDM0009.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'House blend organik tanpa kafein untuk menikmati momen kopi dengan lebih santai. Tetap nikmat sebagai teman rehat kapan pun kamu mau.', 1),
('PRDM0010', 'Guatemalan Sustainably Grown', 'Coffee beans', 'Coffee beans', 'Green beans', 'none', 10, 160000.00, 10.00, 100, 0, 0.00, 'foto-produk-PRDM0010.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Biji kopi Guatemalan yang ditanam secara berkelanjutan, pilihan untuk seduhan dengan cerita asal yang menarik dan rasa kopi yang nyaman.', 1),
('PRDM0011', 'Lemon Grass', 'Loose Tea', 'Loose Tea', 'Herbal tea', 'none', 11, 143000.00, 8.95, 100, 0, 0.00, 'foto-produk-PRDM0011.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Teh herbal serai dengan aroma yang segar dan menenangkan. Pilihan ringan untuk menemani jeda dan membuat suasana terasa lebih rileks.', 1),
('PRDM0012', 'Peppermint', 'Loose Tea', 'Loose Tea', 'Herbal tea', 'none', 12, 143000.00, 8.95, 100, 0, 0.00, 'foto-produk-PRDM0012.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Teh peppermint dengan sensasi aroma mint yang menyegarkan. Nikmati hangat untuk momen santai atau sebagai teman rehat yang ringan.', 1),
('PRDM0013', 'English Breakfast', 'Loose Tea', 'Loose Tea', 'Black tea', 'none', 13, 143000.00, 8.95, 100, 0, 0.00, 'foto-produk-PRDM0013.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Teh hitam klasik dengan rasa yang mantap dan akrab. Teman pas untuk sarapan maupun jeda minum teh di tengah hari.', 1),
('PRDM0014', 'Earl Grey', 'Loose Tea', 'Loose Tea', 'Black tea', 'none', 14, 143000.00, 8.95, 100, 0, 0.00, 'foto-produk-PRDM0014.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Teh hitam Earl Grey dengan aroma khas yang elegan. Cocok dinikmati perlahan saat kamu ingin jeda teh yang terasa istimewa.', 1),
('PRDM0015', 'Serenity Green Tea', 'Loose Tea', 'Loose Tea', 'Green tea', 'none', 15, 148000.00, 9.25, 100, 0, 0.00, 'foto-produk-PRDM0015.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Teh hijau dengan karakter lembut dan ringan. Pilihan menyenangkan untuk menemani waktu santai tanpa rasa yang berlebihan.', 1),
('PRDM0016', 'Traditional Blend Chai', 'Loose Tea', 'Loose Tea', 'Chai tea', 'none', 16, 143000.00, 8.95, 100, 0, 0.00, 'foto-produk-PRDM0016.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Racikan chai klasik dengan aroma rempah yang hangat. Nikmati sebagai teman bersantai dan temukan kenyamanan dalam setiap tegukan.', 1),
('PRDM0017', 'Morning Sunrise Chai', 'Loose Tea', 'Loose Tea', 'Chai tea', 'none', 17, 152000.00, 9.50, 100, 0, 0.00, 'foto-produk-PRDM0017.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Chai hangat untuk mengawali hari dengan suasana yang lebih bersemangat. Aroma rempahnya menjadikan waktu minum teh terasa spesial.', 1),
('PRDM0018', 'Spicy Eye Opener Chai', 'Loose Tea', 'Loose Tea', 'Chai tea', 'none', 18, 175000.00, 10.95, 100, 0, 0.00, 'foto-produk-PRDM0018.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Chai dengan karakter rempah yang lebih berani dan menggugah. Pilihan tepat untuk kamu yang menyukai teh beraroma kuat.', 1),
('PRDM0019', 'Dark chocolate', 'Packaged Chocolate', 'Packaged Chocolate', 'Drinking Chocolate', 'none', 19, 102500.00, 6.40, 100, 0, 0.00, 'foto-produk-PRDM0019.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Cokelat hitam dengan karakter rasa yang kaya untuk dibuat menjadi minuman cokelat favorit. Nikmati hangat sebagai teman rehat yang memanjakan.', 1),
('PRDM0020', 'Sustainably Grown Organic', 'Packaged Chocolate', 'Packaged Chocolate', 'Organic Chocolate', 'none', 20, 121500.00, 7.60, 100, 0, 0.00, 'foto-produk-PRDM0020.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Cokelat organik yang ditanam secara berkelanjutan, pilihan nikmat untuk sajian cokelat dengan perhatian pada asal bahan.', 1),
('PRDM0021', 'Chili Mayan', 'Packaged Chocolate', 'Packaged Chocolate', 'Drinking Chocolate', 'none', 21, 213500.00, 13.33, 100, 0, 0.00, 'foto-produk-PRDM0021.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Cokelat bergaya Mayan dengan sentuhan cabai yang unik. Perpaduan karakter cokelat dan sensasi rempah untuk kamu yang ingin mencoba sesuatu berbeda.', 1),
('PRDM0022', 'Our Old Time Diner Blend (Sm)', 'Coffee', 'Coffee', 'Drip coffee', 'Sm', 22, 32000.00, 2.00, 100, 0, 0.00, 'foto-produk-PRDM0022.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'House blend seduh dengan karakter kopi yang akrab dan nyaman. Pilihan praktis untuk menemani jeda ngopi harianmu.', 1),
('PRDM0023', 'Our Old Time Diner Blend (Rg)', 'Coffee', 'Coffee', 'Drip coffee', 'Rg', 23, 40000.00, 2.50, 100, 0, 0.00, 'foto-produk-PRDM0022.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'House blend seduh dengan karakter kopi yang akrab dan nyaman. Pilihan praktis untuk menemani jeda ngopi harianmu.', 1),
('PRDM0024', 'Our Old Time Diner Blend (Lg)', 'Coffee', 'Coffee', 'Drip coffee', 'Lg', 24, 48000.00, 3.00, 100, 0, 0.00, 'foto-produk-PRDM0022.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'House blend seduh dengan karakter kopi yang akrab dan nyaman. Pilihan praktis untuk menemani jeda ngopi harianmu.', 1),
('PRDM0025', 'Brazilian (Sm)', 'Coffee', 'Coffee', 'Organic brewed coffee', 'Sm', 25, 35000.00, 2.20, 100, 0, 0.00, 'foto-produk-PRDM0025.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Kopi Brazilian seduh dengan karakter hangat dan mantap. Nikmati pilihan Small, Regular, atau Large untuk menyesuaikan momen ngopimu.', 1),
('PRDM0026', 'Brazilian (Rg)', 'Coffee', 'Coffee', 'Organic brewed coffee', 'Rg', 26, 48000.00, 3.00, 100, 0, 0.00, 'foto-produk-PRDM0025.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Kopi Brazilian seduh dengan karakter hangat dan mantap. Nikmati pilihan Small, Regular, atau Large untuk menyesuaikan momen ngopimu.', 1),
('PRDM0027', 'Brazilian (Lg)', 'Coffee', 'Coffee', 'Organic brewed coffee', 'Lg', 27, 56000.00, 3.50, 100, 0, 0.00, 'foto-produk-PRDM0025.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Kopi Brazilian seduh dengan karakter hangat dan mantap. Nikmati pilihan Small, Regular, atau Large untuk menyesuaikan momen ngopimu.', 1),
('PRDM0028', 'Columbian Medium Roast (Sm)', 'Coffee', 'Coffee', 'Gourmet brewed coffee', 'Sm', 28, 32000.00, 2.00, 100, 0, 0.00, 'foto-produk-PRDM0028.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Kopi Columbian medium roast diseduh untuk menghadirkan rasa seimbang dan aroma yang mengundang. Pas untuk dinikmati kapan saja.', 1),
('PRDM0029', 'Columbian Medium Roast (Rg)', 'Coffee', 'Coffee', 'Gourmet brewed coffee', 'Rg', 29, 40000.00, 2.50, 100, 0, 0.00, 'foto-produk-PRDM0028.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Kopi Columbian medium roast diseduh untuk menghadirkan rasa seimbang dan aroma yang mengundang. Pas untuk dinikmati kapan saja.', 1),
('PRDM0030', 'Columbian Medium Roast (Lg)', 'Coffee', 'Coffee', 'Gourmet brewed coffee', 'Lg', 30, 48000.00, 3.00, 100, 0, 0.00, 'foto-produk-PRDM0028.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Kopi Columbian medium roast diseduh untuk menghadirkan rasa seimbang dan aroma yang mengundang. Pas untuk dinikmati kapan saja.', 1),
('PRDM0031', 'Ethiopia (Sm)', 'Coffee', 'Coffee', 'Gourmet brewed coffee', 'Sm', 31, 35000.00, 2.20, 100, 0, 0.00, 'foto-produk-PRDM0031.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Kopi Ethiopia disajikan sebagai seduhan dengan karakter istimewa. Nikmati perlahan untuk pengalaman ngopi yang berbeda.', 1),
('PRDM0032', 'Ethiopia (Rg)', 'Coffee', 'Coffee', 'Gourmet brewed coffee', 'Rg', 32, 48000.00, 3.00, 100, 0, 0.00, 'foto-produk-PRDM0031.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Kopi Ethiopia disajikan sebagai seduhan dengan karakter istimewa. Nikmati perlahan untuk pengalaman ngopi yang berbeda.', 1),
('PRDM0033', 'Ethiopia (Lg)', 'Coffee', 'Coffee', 'Gourmet brewed coffee', 'Lg', 33, 56000.00, 3.50, 100, 0, 0.00, 'foto-produk-PRDM0031.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Kopi Ethiopia disajikan sebagai seduhan dengan karakter istimewa. Nikmati perlahan untuk pengalaman ngopi yang berbeda.', 1),
('PRDM0034', 'Jamaican Coffee River (Sm)', 'Coffee', 'Coffee', 'Premium brewed coffee', 'Sm', 34, 39000.00, 2.45, 100, 0, 0.00, 'foto-produk-PRDM0034.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Seduhan Jamaican Coffee River dengan karakter premium untuk momen ngopi yang terasa spesial. Pilih ukuran favorit dan nikmati perlahan.', 1),
('PRDM0035', 'Jamaican Coffee River (Rg)', 'Coffee', 'Coffee', 'Premium brewed coffee', 'Rg', 35, 49500.00, 3.10, 100, 0, 0.00, 'foto-produk-PRDM0034.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Seduhan Jamaican Coffee River dengan karakter premium untuk momen ngopi yang terasa spesial. Pilih ukuran favorit dan nikmati perlahan.', 1),
('PRDM0036', 'Jamaican Coffee River (Lg)', 'Coffee', 'Coffee', 'Premium brewed coffee', 'Lg', 36, 60000.00, 3.75, 100, 0, 0.00, 'foto-produk-PRDM0034.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Seduhan Jamaican Coffee River dengan karakter premium untuk momen ngopi yang terasa spesial. Pilih ukuran favorit dan nikmati perlahan.', 1),
('PRDM0037', 'Espresso shot', 'Coffee', 'Coffee', 'Barista Espresso', 'none', 37, 48000.00, 3.00, 100, 0, 0.00, 'foto-produk-PRDM0037.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Espresso dengan sajian ringkas dan karakter kopi yang pekat. Pilihan mantap untuk pencinta kopi atau sebagai awal racikan favoritmu.', 1),
('PRDM0038', 'Latte', 'Coffee', 'Coffee', 'Barista Espresso', 'none', 38, 60000.00, 3.75, 100, 0, 0.00, 'foto-produk-PRDM0038.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Espresso dan susu berpadu dalam sajian latte yang lembut dan creamy. Pilihan favorit untuk menikmati kopi dengan rasa yang lebih halus.', 1),
('PRDM0039', 'Latte (Rg)', 'Coffee', 'Coffee', 'Barista Espresso', 'Rg', 39, 68000.00, 4.25, 100, 0, 0.00, 'foto-produk-PRDM0038.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Espresso dan susu berpadu dalam sajian latte yang lembut dan creamy. Pilihan favorit untuk menikmati kopi dengan rasa yang lebih halus.', 1),
('PRDM0040', 'Cappuccino', 'Coffee', 'Coffee', 'Barista Espresso', 'none', 40, 60000.00, 3.75, 100, 0, 0.00, 'foto-produk-PRDM0040.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Perpaduan espresso, susu, dan foam yang menghadirkan sensasi cappuccino klasik. Nikmati teksturnya yang lembut di waktu santai.', 1),
('PRDM0041', 'Cappuccino (Lg)', 'Coffee', 'Coffee', 'Barista Espresso', 'Lg', 41, 68000.00, 4.25, 100, 0, 0.00, 'foto-produk-PRDM0040.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Perpaduan espresso, susu, dan foam yang menghadirkan sensasi cappuccino klasik. Nikmati teksturnya yang lembut di waktu santai.', 1),
('PRDM0042', 'Lemon Grass (Rg)', 'Tea', 'Tea', 'Brewed herbal tea', 'Rg', 42, 40000.00, 2.50, 100, 0, 0.00, 'foto-produk-PRDM0042.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Teh serai yang diseduh dengan aroma herbal segar dan menenangkan. Cocok dinikmati hangat saat ingin jeda yang ringan.', 1),
('PRDM0043', 'Lemon Grass (Lg)', 'Tea', 'Tea', 'Brewed herbal tea', 'Lg', 43, 48000.00, 3.00, 100, 0, 0.00, 'foto-produk-PRDM0042.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Teh serai yang diseduh dengan aroma herbal segar dan menenangkan. Cocok dinikmati hangat saat ingin jeda yang ringan.', 1),
('PRDM0044', 'Peppermint (Rg)', 'Tea', 'Tea', 'Brewed herbal tea', 'Rg', 44, 40000.00, 2.50, 100, 0, 0.00, 'foto-produk-PRDM0044.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Teh peppermint seduh dengan aroma mint yang menyegarkan. Nikmati sebagai teman rehat yang ringan dan menenangkan.', 1),
('PRDM0045', 'Peppermint (Lg)', 'Tea', 'Tea', 'Brewed herbal tea', 'Lg', 45, 48000.00, 3.00, 100, 0, 0.00, 'foto-produk-PRDM0044.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Teh peppermint seduh dengan aroma mint yang menyegarkan. Nikmati sebagai teman rehat yang ringan dan menenangkan.', 1),
('PRDM0046', 'Serenity Green Tea (Rg)', 'Tea', 'Tea', 'Brewed Green tea', 'Rg', 46, 40000.00, 2.50, 100, 0, 0.00, 'foto-produk-PRDM0046.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Teh hijau Serenity yang diseduh dengan karakter lembut dan ringan. Menyenangkan untuk menemani suasana santai.', 1),
('PRDM0047', 'Serenity Green Tea (Lg)', 'Tea', 'Tea', 'Brewed Green tea', 'Lg', 47, 48000.00, 3.00, 100, 0, 0.00, 'foto-produk-PRDM0046.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Teh hijau Serenity yang diseduh dengan karakter lembut dan ringan. Menyenangkan untuk menemani suasana santai.', 1),
('PRDM0048', 'English Breakfast (Rg)', 'Tea', 'Tea', 'Brewed Black tea', 'Rg', 48, 40000.00, 2.50, 100, 0, 0.00, 'foto-produk-PRDM0048.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Teh hitam English Breakfast yang diseduh dengan rasa mantap dan akrab. Teman pas untuk sarapan maupun jeda minum teh.', 1),
('PRDM0049', 'English Breakfast (Lg)', 'Tea', 'Tea', 'Brewed Black tea', 'Lg', 49, 48000.00, 3.00, 100, 0, 0.00, 'foto-produk-PRDM0048.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Teh hitam English Breakfast yang diseduh dengan rasa mantap dan akrab. Teman pas untuk sarapan maupun jeda minum teh.', 1),
('PRDM0050', 'Earl Grey (Rg)', 'Tea', 'Tea', 'Brewed Black tea', 'Rg', 50, 40000.00, 2.50, 100, 0, 0.00, 'foto-produk-PRDM0050.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Teh Earl Grey seduh dengan aroma khas yang elegan. Pilihan istimewa untuk menemani waktu santai.', 1),
('PRDM0051', 'Earl Grey (Lg)', 'Tea', 'Tea', 'Brewed Black tea', 'Lg', 51, 48000.00, 3.00, 100, 0, 0.00, 'foto-produk-PRDM0050.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Teh Earl Grey seduh dengan aroma khas yang elegan. Pilihan istimewa untuk menemani waktu santai.', 1),
('PRDM0052', 'Traditional Blend Chai (Rg)', 'Tea', 'Tea', 'Brewed Chai tea', 'Rg', 52, 40000.00, 2.50, 100, 0, 0.00, 'foto-produk-PRDM0052.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Chai hangat hasil seduhan racikan klasik dengan aroma rempah. Nikmati kenyamanannya di waktu santai.', 1),
('PRDM0053', 'Traditional Blend Chai (Lg)', 'Tea', 'Tea', 'Brewed Chai tea', 'Lg', 53, 48000.00, 3.00, 100, 0, 0.00, 'foto-produk-PRDM0052.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Chai hangat hasil seduhan racikan klasik dengan aroma rempah. Nikmati kenyamanannya di waktu santai.', 1),
('PRDM0054', 'Morning Sunrise Chai (Rg)', 'Tea', 'Tea', 'Brewed Chai tea', 'Rg', 54, 40000.00, 2.50, 100, 0, 0.00, 'foto-produk-PRDM0054.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Seduhan chai beraroma rempah yang pas untuk membuka hari dengan suasana lebih bersemangat.', 1),
('PRDM0055', 'Morning Sunrise Chai (Lg)', 'Tea', 'Tea', 'Brewed Chai tea', 'Lg', 55, 64000.00, 4.00, 100, 0, 0.00, 'foto-produk-PRDM0054.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Seduhan chai beraroma rempah yang pas untuk membuka hari dengan suasana lebih bersemangat.', 1),
('PRDM0056', 'Spicy Eye Opener Chai (Rg)', 'Tea', 'Tea', 'Brewed Chai tea', 'Rg', 56, 41000.00, 2.55, 100, 0, 0.00, 'foto-produk-PRDM0056.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Seduhan chai dengan karakter rempah yang berani dan menggugah, pilihan untuk pencinta teh beraroma kuat.', 1),
('PRDM0057', 'Spicy Eye Opener Chai (Lg)', 'Tea', 'Tea', 'Brewed Chai tea', 'Lg', 57, 49500.00, 3.10, 100, 0, 0.00, 'foto-produk-PRDM0056.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Seduhan chai dengan karakter rempah yang berani dan menggugah, pilihan untuk pencinta teh beraroma kuat.', 1),
('PRDM0058', 'Dark chocolate (Rg)', 'Drinking Chocolate', 'Drinking Chocolate', 'Hot chocolate', 'Rg', 58, 56000.00, 3.50, 100, 0, 0.00, 'foto-produk-PRDM0058.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Minuman cokelat hitam dengan rasa kaya dan memanjakan. Nikmati hangat sebagai teman rehat yang istimewa.', 1),
('PRDM0059', 'Dark chocolate (Lg)', 'Drinking Chocolate', 'Drinking Chocolate', 'Hot chocolate', 'Lg', 59, 72000.00, 4.50, 100, 0, 0.00, 'foto-produk-PRDM0058.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Minuman cokelat hitam dengan rasa kaya dan memanjakan. Nikmati hangat sebagai teman rehat yang istimewa.', 1),
('PRDM0060', 'Sustainably Grown Organic (Rg)', 'Drinking Chocolate', 'Drinking Chocolate', 'Hot chocolate', 'Rg', 60, 60000.00, 3.75, 100, 0, 0.00, 'foto-produk-PRDM0060.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Minuman cokelat organik dari bahan yang ditanam berkelanjutan. Sajian nikmat untuk jeda yang terasa spesial.', 1),
('PRDM0061', 'Sustainably Grown Organic (Lg)', 'Drinking Chocolate', 'Drinking Chocolate', 'Hot chocolate', 'Lg', 61, 76000.00, 4.75, 100, 0, 0.00, 'foto-produk-PRDM0060.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Minuman cokelat organik dari bahan yang ditanam berkelanjutan. Sajian nikmat untuk jeda yang terasa spesial.', 1),
('PRDM0063', 'Caramel syrup', 'Flavours', 'Flavours', 'Regular syrup', 'none', 63, 13000.00, 0.80, 100, 0, 0.00, 'foto-produk-PRDM0063.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Sirup karamel untuk menambahkan sentuhan rasa manis dan aroma karamel pada minuman pilihanmu.', 1),
('PRDM0064', 'Hazelnut syrup', 'Flavours', 'Flavours', 'Regular syrup', 'none', 64, 13000.00, 0.80, 100, 0, 0.00, 'foto-produk-PRDM0064.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Sirup hazelnut dengan aroma kacang yang khas, pelengkap praktis untuk memberi sentuhan berbeda pada minuman favorit.', 1),
('PRDM0065', 'Sugar Free Vanilla syrup', 'Flavours', 'Flavours', 'Sugar free syrup', 'none', 65, 13000.00, 0.80, 100, 0, 0.00, 'foto-produk-PRDM0065.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Sirup vanila bebas gula untuk memberi aroma vanila pada minuman pilihanmu dengan alternatif tanpa gula.', 1),
('PRDM0069', 'Hazelnut Biscotti', 'Bakery', 'Bakery', 'Biscotti', 'none', 69, 52000.00, 3.25, 100, 0, 0.00, '1793174190_842386e3ceee6e524e64.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Biscotti dengan sentuhan hazelnut yang cocok dicelupkan ke kopi atau teh. Teman renyah untuk menemani obrolan.', 1),
('PRDM0070', 'Cranberry Scone', 'Bakery', 'Bakery', 'Scone', 'none', 70, 52000.00, 3.25, 100, 0, 0.00, '1793173847_f825c63b5014829eea0d.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Scone dengan cranberry yang memberi sentuhan rasa buah pada camilan klasik. Pas disandingkan dengan kopi atau teh.', 1),
('PRDM0071', 'Chocolate Croissant', 'Bakery', 'Bakery', 'Pastry', 'none', 71, 60000.00, 3.75, 100, 0, 0.00, '1793173805_afac42b55040753e6178.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Croissant berlapis dengan isian cokelat yang memanjakan. Nikmati sebagai kudapan pagi atau teman ngopi sore.', 1),
('PRDM0072', 'Ginger Scone', 'Bakery', 'Bakery', 'Scone', 'none', 72, 52000.00, 3.25, 100, 0, 0.00, '1793174061_77730290ce48bea3d029.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Scone dengan sentuhan jahe yang menghadirkan aroma hangat dan karakter rasa yang berbeda untuk teman minum teh.', 1),
('PRDM0073', 'Almond Croissant', 'Bakery', 'Bakery', 'Pastry', 'none', 73, 60000.00, 3.75, 100, 0, 0.00, '1793173762_bb265379eba818718e75.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Croissant berlapis dengan sentuhan almond yang menggoda. Pilihan pastry istimewa untuk melengkapi secangkir kopi.', 1),
('PRDM0074', 'Ginger Biscotti', 'Bakery', 'Bakery', 'Biscotti', 'none', 74, 56000.00, 3.50, 100, 0, 0.00, '1793174010_0ca6a4679e4a080bcf24.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Biscotti renyah dengan sentuhan jahe yang hangat. Nikmat dicelupkan ke kopi atau teh saat mengambil jeda.', 1),
('PRDM0075', 'Croissant', 'Bakery', 'Bakery', 'Pastry', 'none', 75, 56000.00, 3.50, 100, 0, 0.00, '1793173947_9ab5648d4653471997e2.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Pastry berlapis dengan tekstur renyah di luar dan lembut di dalam. Teman klasik untuk sarapan maupun waktu ngopi.', 1),
('PRDM0076', 'Chocolate Chip Biscotti', 'Bakery', 'Bakery', 'Biscotti', 'none', 76, 56000.00, 3.50, 100, 0, 0.00, '1793173712_69eafd40ac9ff66069d1.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Biscotti renyah dengan kepingan cokelat yang menyenangkan. Pas untuk dicelupkan ke kopi atau dinikmati sebagai camilan.', 1),
('PRDM0077', 'Oatmeal Scone', 'Bakery', 'Bakery', 'Scone', 'none', 77, 48000.00, 3.00, 100, 0, 0.00, '1793174265_b87146c9b4cda6f4e4d9.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Scone dengan sentuhan oatmeal untuk camilan yang terasa akrab dan mengenyangkan. Cocok ditemani teh atau kopi.', 1),
('PRDM0078', 'Scottish Cream Scone', 'Bakery', 'Bakery', 'Scone', 'none', 78, 72000.00, 4.50, 100, 0, 0.00, '1793174310_5a80b907f655903f7a15.webp', '2026-10-27 02:08:50', NULL, 0, NULL, 'Scone bergaya Scottish dengan sajian cream yang terasa istimewa. Teman pilihan untuk menikmati waktu minum teh.', 1),
('PRDM0079', 'Jumbo Savory Scone', 'Bakery', 'Bakery', 'Scone', 'none', 79, 60000.00, 3.75, 100, 0, 0.00, '1793174229_de6e023f6ca68c71cd9c.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Scone gurih berukuran jumbo untuk kamu yang ingin camilan lebih mengenyangkan. Nikmati hangat bersama kopi favorit.', 1),
('PRDM0081', 'I Need My Bean! T-shirt', 'Branded', 'Branded', 'Clothing', 'none', 81, 448000.00, 28.00, 100, 0, 0.00, '1793176616_5ce646726c4e394f8c30.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'T-shirt Lower Manhattan Coffee Shop dengan slogan “I Need My Bean!” untuk menunjukkan kecintaanmu pada kopi.', 1),
('PRDM0082', 'I Need My Bean! Diner mug', 'Branded', 'Branded', 'Housewares', 'none', 82, 192000.00, 12.00, 100, 0, 0.00, '1793176592_de8ffafb6595916241c7.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Diner mug bergaya klasik dengan slogan “I Need My Bean!”. Teman seru untuk menikmati minuman favorit di rumah.', 1),
('PRDM0083', 'I Need My Bean! Latte cup', 'Branded', 'Branded', 'Housewares', 'none', 83, 224000.00, 14.00, 100, 0, 0.00, '1793176605_ea8e5db6d133f7540cfd.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Latte cup dengan slogan “I Need My Bean!” yang cocok melengkapi ritual ngopi dan koleksi merchandise-mu.', 1),
('PRDM0084', 'Chocolate syrup', 'Flavours', 'Flavours', 'Regular syrup', 'none', 84, 13000.00, 0.80, 100, 0, 0.00, 'foto-produk-PRDM0084.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Sirup cokelat untuk menambahkan sentuhan rasa cokelat pada minuman favorit atau racikan latte pilihanmu.', 1),
('PRDM0087', 'Ouro Brasileiro shot', 'Coffee', 'Coffee', 'Barista Espresso', 'none', 87, 48000.00, 3.00, 100, 0, 0.00, 'foto-produk-PRDM0087.jpg', '2026-10-27 02:08:50', NULL, 0, NULL, 'Sajian espresso dengan karakter kopi Brazilian yang tegas. Pilihan ringkas bagi pencinta kopi dengan rasa yang mantap.', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_options`
--

CREATE TABLE `product_options` (
  `id_opsi` varchar(11) NOT NULL,
  `id_produk` varchar(11) NOT NULL,
  `nama_opsi` varchar(100) NOT NULL,
  `tambahan_harga` decimal(12,2) NOT NULL DEFAULT 0.00,
  `gambar` varchar(255) DEFAULT NULL,
  `urutan` int(11) NOT NULL DEFAULT 0,
  `aktif` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `product_options`
--

INSERT INTO `product_options` (`id_opsi`, `id_produk`, `nama_opsi`, `tambahan_harga`, `gambar`, `urutan`, `aktif`, `created_at`) VALUES
('OPT0000001', 'PRD0000034', 'Cappuccino', 0.00, NULL, 1, 1, '2026-10-13 18:25:02'),
('OPT0000002', 'PRD0000034', 'Moccacino', 0.00, NULL, 2, 1, '2026-10-13 18:25:02'),
('OPT0000003', 'PRD0000034', 'Vanilla Latte', 0.00, NULL, 3, 1, '2026-10-13 18:25:02'),
('OPT0000004', 'PRD0000034', 'Carribean Nut', 0.00, NULL, 4, 1, '2026-10-13 18:25:02'),
('OPT0000005', 'PRD0000034', 'Coolin\' Caffe', 0.00, NULL, 5, 1, '2026-10-13 18:25:02'),
('OPT0000006', 'PRD0000037', 'Mocafrio', 0.00, NULL, 1, 1, '2026-10-13 18:25:02'),
('OPT0000007', 'PRD0000037', 'Hazelnut Macchiato', 0.00, NULL, 2, 1, '2026-10-13 18:25:02'),
('OPT0000008', 'PRD0000037', 'Cookies \'N Cream', 0.00, NULL, 3, 1, '2026-10-13 18:25:02'),
('OPT0000009', 'PRD0000037', 'Choc Orange', 0.00, NULL, 4, 1, '2026-10-13 18:25:02'),
('OPT0000010', 'PRD0000040', 'Cappuccino', 0.00, NULL, 1, 1, '2026-10-13 18:25:02'),
('OPT0000011', 'PRD0000040', 'Moccacino', 0.00, NULL, 2, 1, '2026-10-13 18:25:02'),
('OPT0000012', 'PRD0000040', 'Vanilla Latte', 0.00, NULL, 3, 1, '2026-10-13 18:25:02'),
('OPT0000013', 'PRD0000040', 'Carribean Nut', 0.00, NULL, 4, 1, '2026-10-13 18:25:02'),
('OPT0000014', 'PRD0000040', 'Coolin\' Caffe', 0.00, NULL, 5, 1, '2026-10-13 18:25:02'),
('OPT0000015', 'PRD0000042', 'Jeruk Nipis', 0.00, NULL, 1, 1, '2026-10-13 18:25:02'),
('OPT0000016', 'PRD0000042', 'Anggur', 0.00, NULL, 2, 1, '2026-10-13 18:25:02'),
('OPT0000017', 'PRD0000042', 'Lemon', 0.00, NULL, 3, 1, '2026-10-13 18:25:02'),
('OPT0000018', 'PRD0000042', 'Jeruk Peras', 0.00, NULL, 4, 1, '2026-10-13 18:25:02'),
('OPT0000022', 'PRD0000042', 'Es Cincau', 0.00, NULL, 5, 0, '2026-10-13 18:38:54'),
('OPT0000023', 'PRD0000021', 'Full Cream', 0.00, NULL, 1, 1, '2026-10-14 03:41:34'),
('OPT0000024', 'PRD0000021', 'Coklat', 0.00, NULL, 2, 1, '2026-10-14 03:42:05'),
('OPT0000025', 'PRD0000021', 'Kental Manis', 0.00, NULL, 3, 1, '2026-10-14 03:42:21'),
('OPT0000026', 'PRD0000021', 'Korean Strawberry', 0.00, NULL, 4, 1, '2026-10-14 03:42:29'),
('OPT0000027', 'PRD0000041', 'Milky Latte', 0.00, NULL, 1, 1, '2026-10-14 05:59:33'),
('OPT0000028', 'PRD0000041', 'Caramel Latte', 0.00, NULL, 2, 1, '2026-10-14 05:59:41'),
('OPT0000029', 'PRD0000041', 'Choco Latte', 0.00, NULL, 3, 1, '2026-10-14 05:59:51'),
('OPT0000030', 'PRD0000005', 'Tongkol', 0.00, NULL, 1, 1, '2026-10-14 06:03:46'),
('OPT0000031', 'PRD0000005', 'Ayam Suwir', 0.00, NULL, 2, 1, '2026-10-14 06:03:55'),
('OPT0000032', 'PRD0000005', 'Teri', 0.00, NULL, 3, 1, '2026-10-14 06:04:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `recommendation_logs`
--

CREATE TABLE `recommendation_logs` (
  `id_log` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `jam` tinyint(3) UNSIGNED NOT NULL,
  `source` varchar(64) NOT NULL,
  `menu_ditampilkan` text NOT NULL,
  `id_produk_dipilih` varchar(11) DEFAULT NULL,
  `sumber_model` varchar(50) NOT NULL DEFAULT 'public_dataset',
  `label_keramaian` varchar(20) DEFAULT NULL,
  `versi_model` varchar(30) NOT NULL DEFAULT '2.0.0-planB'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `recommendation_logs`
--

INSERT INTO `recommendation_logs` (`id_log`, `created_at`, `jam`, `source`, `menu_ditampilkan`, `id_produk_dipilih`, `sumber_model`, `label_keramaian`, `versi_model`) VALUES
(1, '2026-10-19 18:38:17', 1, 'rule-based', '[\"PRD0000003\",\"PRD0000004\",\"PRD0000001\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(2, '2026-10-19 18:39:45', 12, 'knn-waktu', '[\"PRD0000019\",\"PRD0000018\",\"PRD0000041\",\"PRD0000037\",\"PRD0000030\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(3, '2026-10-19 18:40:20', 12, 'knn-waktu', '[\"PRD0000019\",\"PRD0000018\",\"PRD0000041\",\"PRD0000037\",\"PRD0000030\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(4, '2026-10-19 18:43:16', 1, 'rule-based', '[\"PRD0000003\",\"PRD0000004\",\"PRD0000001\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(5, '2026-10-19 18:49:18', 1, 'rule-based', '[\"PRD0000003\",\"PRD0000004\",\"PRD0000001\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(6, '2026-10-19 18:58:16', 1, 'rule-based', '[\"PRD0000003\",\"PRD0000004\",\"PRD0000001\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(7, '2026-10-19 19:03:16', 2, 'rule-based', '[\"PRD0000003\",\"PRD0000004\",\"PRD0000001\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(8, '2026-10-19 19:11:34', 2, 'rule-based', '[\"PRD0000003\",\"PRD0000004\",\"PRD0000001\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(9, '2026-10-19 19:21:52', 2, 'rule-based', '[\"PRD0000003\",\"PRD0000004\",\"PRD0000001\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(10, '2026-10-19 19:26:47', 2, 'rule-based', '[\"PRD0000003\",\"PRD0000004\",\"PRD0000001\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(11, '2026-10-19 19:31:47', 2, 'rule-based', '[\"PRD0000003\",\"PRD0000004\",\"PRD0000001\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(12, '2026-10-19 19:33:29', 2, 'rule-based', '[\"PRD0000003\",\"PRD0000004\",\"PRD0000001\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(13, '2026-10-21 06:24:22', 13, 'rule-based', '[\"PRD0000030\",\"PRD0000002\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000005\",\"PRD0000013\",\"PRD0000014\",\"PRD0000015\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', 'PRD0000002', 'public_dataset', NULL, '2.0.0-planB'),
(14, '2026-10-21 06:24:55', 13, 'rule-based', '[\"PRD0000030\",\"PRD0000002\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000005\",\"PRD0000013\",\"PRD0000014\",\"PRD0000015\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', 'PRD0000017', 'public_dataset', NULL, '2.0.0-planB'),
(15, '2026-10-21 06:25:12', 13, 'rule-based', '[\"PRD0000030\",\"PRD0000002\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000005\",\"PRD0000013\",\"PRD0000014\",\"PRD0000015\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(16, '2026-10-21 06:27:43', 13, 'rule-based', '[\"PRD0000030\",\"PRD0000002\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000005\",\"PRD0000013\",\"PRD0000014\",\"PRD0000015\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(17, '2026-10-21 06:28:12', 13, 'rule-based', '[\"PRD0000030\",\"PRD0000002\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000005\",\"PRD0000013\",\"PRD0000014\",\"PRD0000015\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', 'PRD0000030', 'public_dataset', NULL, '2.0.0-planB'),
(18, '2026-10-21 06:28:28', 13, 'rule-based', '[\"PRD0000030\",\"PRD0000002\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000005\",\"PRD0000013\",\"PRD0000014\",\"PRD0000015\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(19, '2026-10-21 06:30:28', 13, 'rule-based', '[\"PRD0000030\",\"PRD0000002\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000005\",\"PRD0000013\",\"PRD0000014\",\"PRD0000015\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(20, '2026-10-21 06:31:01', 13, 'rule-based', '[\"PRD0000030\",\"PRD0000002\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000005\",\"PRD0000013\",\"PRD0000014\",\"PRD0000015\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', 'PRD0000037', 'public_dataset', NULL, '2.0.0-planB'),
(21, '2026-10-21 06:31:24', 13, 'rule-based', '[\"PRD0000030\",\"PRD0000002\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000005\",\"PRD0000013\",\"PRD0000014\",\"PRD0000015\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', 'PRD0000009', 'public_dataset', NULL, '2.0.0-planB'),
(22, '2026-10-21 06:31:42', 13, 'rule-based', '[\"PRD0000030\",\"PRD0000002\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000005\",\"PRD0000013\",\"PRD0000014\",\"PRD0000015\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', 'PRD0000005', 'public_dataset', NULL, '2.0.0-planB'),
(23, '2026-10-21 06:31:58', 13, 'rule-based', '[\"PRD0000030\",\"PRD0000002\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000005\",\"PRD0000013\",\"PRD0000014\",\"PRD0000015\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', 'PRD0000013', 'public_dataset', NULL, '2.0.0-planB'),
(24, '2026-10-21 06:32:14', 13, 'rule-based', '[\"PRD0000030\",\"PRD0000002\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000005\",\"PRD0000013\",\"PRD0000014\",\"PRD0000015\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', 'PRD0000014', 'public_dataset', NULL, '2.0.0-planB'),
(25, '2026-10-21 06:33:23', 13, 'rule-based', '[\"PRD0000030\",\"PRD0000002\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000005\",\"PRD0000013\",\"PRD0000014\",\"PRD0000015\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(26, '2026-10-22 13:27:46', 20, 'rule-based', '[\"PRD0000003\",\"PRD0000004\",\"PRD0000001\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', 'PRD0000003', 'public_dataset', NULL, '2.0.0-planB'),
(27, '2026-10-22 13:31:18', 20, 'rule-based', '[\"PRD0000003\",\"PRD0000004\",\"PRD0000001\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', 'PRD0000010', 'public_dataset', NULL, '2.0.0-planB'),
(28, '2026-10-22 13:33:26', 20, 'rule-based', '[\"PRD0000003\",\"PRD0000004\",\"PRD0000001\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(29, '2026-10-22 13:38:26', 20, 'rule-based', '[\"PRD0000003\",\"PRD0000004\",\"PRD0000001\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(30, '2026-10-22 13:43:26', 20, 'rule-based', '[\"PRD0000003\",\"PRD0000004\",\"PRD0000001\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(31, '2026-10-22 13:48:26', 20, 'rule-based', '[\"PRD0000003\",\"PRD0000004\",\"PRD0000001\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(32, '2026-10-22 13:53:26', 20, 'rule-based', '[\"PRD0000003\",\"PRD0000004\",\"PRD0000001\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(33, '2026-10-22 13:58:26', 20, 'rule-based', '[\"PRD0000003\",\"PRD0000004\",\"PRD0000001\",\"PRD0000037\",\"PRD0000038\",\"PRD0000039\",\"PRD0000040\",\"PRD0000041\",\"PRD0000042\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\",\"PRD0000009\",\"PRD0000010\",\"PRD0000011\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(34, '2026-10-27 01:57:37', 8, 'rule-based-jam-sepi', '[\"PRD0000026\",\"PRD0000027\",\"PRD0000028\",\"PRD0000029\",\"PRD0000031\",\"PRD0000032\",\"PRD0000033\",\"PRD0000034\",\"PRD0000035\",\"PRD0000036\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(35, '2026-10-27 02:02:37', 9, 'rule-based-jam-sepi', '[\"PRD0000026\",\"PRD0000027\",\"PRD0000028\",\"PRD0000029\",\"PRD0000031\",\"PRD0000032\",\"PRD0000033\",\"PRD0000034\",\"PRD0000035\",\"PRD0000036\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(36, '2026-10-27 02:07:37', 9, 'rule-based-jam-sepi', '[\"PRD0000026\",\"PRD0000027\",\"PRD0000028\",\"PRD0000029\",\"PRD0000031\",\"PRD0000032\",\"PRD0000033\",\"PRD0000034\",\"PRD0000035\",\"PRD0000036\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\"]', NULL, 'public_dataset', NULL, '2.0.0-planB'),
(37, '2026-10-27 02:09:57', 9, 'rule-based-jam-sepi', '[\"PRD0000026\",\"PRD0000027\",\"PRD0000028\",\"PRD0000029\",\"PRD0000031\",\"PRD0000032\",\"PRD0000033\",\"PRD0000034\",\"PRD0000035\",\"PRD0000036\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(38, '2026-10-27 02:14:57', 9, 'rule-based-jam-sepi', '[\"PRD0000026\",\"PRD0000027\",\"PRD0000028\",\"PRD0000029\",\"PRD0000031\",\"PRD0000032\",\"PRD0000033\",\"PRD0000034\",\"PRD0000035\",\"PRD0000036\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(39, '2026-10-27 02:19:57', 9, 'rule-based-jam-sepi', '[\"PRD0000026\",\"PRD0000027\",\"PRD0000028\",\"PRD0000029\",\"PRD0000031\",\"PRD0000032\",\"PRD0000033\",\"PRD0000034\",\"PRD0000035\",\"PRD0000036\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(40, '2026-10-27 02:24:57', 9, 'rule-based-jam-sepi', '[\"PRD0000026\",\"PRD0000027\",\"PRD0000028\",\"PRD0000029\",\"PRD0000031\",\"PRD0000032\",\"PRD0000033\",\"PRD0000034\",\"PRD0000035\",\"PRD0000036\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(41, '2026-10-27 02:29:57', 9, 'rule-based-jam-sepi', '[\"PRD0000026\",\"PRD0000027\",\"PRD0000028\",\"PRD0000029\",\"PRD0000031\",\"PRD0000032\",\"PRD0000033\",\"PRD0000034\",\"PRD0000035\",\"PRD0000036\",\"PRD0000016\",\"PRD0000017\",\"PRD0000018\",\"PRD0000019\",\"PRD0000021\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(42, '2026-10-27 03:09:11', 10, 'rule-based-jam-sepi', '[\"PRDM0022\",\"PRDM0042\",\"PRDM0069\",\"PRDM0058\",\"PRDM0001\"]', NULL, 'fallback', 'sedang', '2.0.0-planB'),
(43, '2026-10-28 05:47:49', 12, 'rule-based', '[\"PRDM0022\",\"PRDM0042\",\"PRDM0058\",\"PRDM0069\",\"PRDM0063\"]', NULL, 'fallback', 'sedang', '2.0.0-planB'),
(44, '2026-10-28 05:52:49', 12, 'rule-based', '[\"PRDM0022\",\"PRDM0042\",\"PRDM0058\",\"PRDM0069\",\"PRDM0063\"]', NULL, 'fallback', 'sedang', '2.0.0-planB'),
(45, '2026-10-28 05:57:53', 12, 'rule-based', '[\"PRDM0022\",\"PRDM0042\",\"PRDM0058\",\"PRDM0069\",\"PRDM0063\"]', NULL, 'fallback', 'sedang', '2.0.0-planB'),
(46, '2026-10-28 06:02:49', 13, 'rule-based', '[\"PRDM0022\",\"PRDM0042\",\"PRDM0058\",\"PRDM0069\",\"PRDM0063\"]', NULL, 'fallback', 'sedang', '2.0.0-planB'),
(47, '2026-10-28 06:07:49', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(48, '2026-10-28 06:09:01', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(49, '2026-10-28 06:09:10', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(50, '2026-10-28 06:09:15', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(51, '2026-10-28 06:09:16', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(52, '2026-10-28 06:09:27', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(53, '2026-10-28 06:09:29', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(54, '2026-10-28 06:09:32', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(55, '2026-10-28 06:10:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(56, '2026-10-28 06:10:02', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(57, '2026-10-28 06:10:25', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(58, '2026-10-28 06:10:51', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(59, '2026-10-28 06:11:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(60, '2026-10-28 06:11:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(61, '2026-10-28 06:11:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(62, '2026-10-28 06:11:20', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(63, '2026-10-28 06:12:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(64, '2026-10-28 06:12:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(65, '2026-10-28 06:12:10', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(66, '2026-10-28 06:12:49', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(67, '2026-10-28 06:13:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(68, '2026-10-28 06:13:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(69, '2026-10-28 06:13:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(70, '2026-10-28 06:13:53', 14, 'knn-kategori-popularitas', '[\"PRDM0049\",\"PRDM0045\",\"PRDM0054\",\"PRDM0048\",\"PRDM0057\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(71, '2026-10-28 06:14:00', 13, 'knn-kategori-popularitas', '[\"PRDM0049\",\"PRDM0045\",\"PRDM0054\",\"PRDM0048\",\"PRDM0057\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(72, '2026-10-28 06:14:10', 13, 'knn-kategori-popularitas', '[\"PRDM0049\",\"PRDM0045\",\"PRDM0054\",\"PRDM0048\",\"PRDM0057\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(73, '2026-10-28 06:14:10', 13, 'knn-kategori-popularitas', '[\"PRDM0049\",\"PRDM0045\",\"PRDM0054\",\"PRDM0048\",\"PRDM0057\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(74, '2026-10-28 06:14:12', 13, 'knn-kategori-popularitas', '[\"PRDM0049\",\"PRDM0045\",\"PRDM0054\",\"PRDM0048\",\"PRDM0057\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(75, '2026-10-28 06:14:23', 13, 'knn-kategori-popularitas', '[\"PRDM0049\",\"PRDM0045\",\"PRDM0054\",\"PRDM0048\",\"PRDM0057\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(76, '2026-10-28 06:15:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(77, '2026-10-28 06:15:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(78, '2026-10-28 06:15:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(79, '2026-10-28 06:16:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(80, '2026-10-28 06:16:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(81, '2026-10-28 06:16:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(82, '2026-10-28 06:17:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(83, '2026-10-28 06:17:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(84, '2026-10-28 06:17:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(85, '2026-10-28 06:18:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(86, '2026-10-28 06:18:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(87, '2026-10-28 06:18:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(88, '2026-10-28 06:19:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(89, '2026-10-28 06:19:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(90, '2026-10-28 06:19:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(91, '2026-10-28 06:20:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(92, '2026-10-28 06:20:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(93, '2026-10-28 06:20:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(94, '2026-10-28 06:21:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(95, '2026-10-28 06:21:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(96, '2026-10-28 06:21:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(97, '2026-10-28 06:22:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(98, '2026-10-28 06:22:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(99, '2026-10-28 06:22:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(100, '2026-10-28 06:23:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(101, '2026-10-28 06:23:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(102, '2026-10-28 06:23:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(103, '2026-10-28 06:24:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(104, '2026-10-28 06:24:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(105, '2026-10-28 06:24:08', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(106, '2026-10-28 06:25:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(107, '2026-10-28 06:25:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(108, '2026-10-28 06:25:08', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(109, '2026-10-28 06:26:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(110, '2026-10-28 06:26:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(111, '2026-10-28 06:26:08', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(112, '2026-10-28 06:27:05', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(113, '2026-10-28 06:27:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(114, '2026-10-28 06:27:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(115, '2026-10-28 06:27:33', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(116, '2026-10-28 06:28:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(117, '2026-10-28 06:28:02', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(118, '2026-10-28 06:28:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(119, '2026-10-28 06:28:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(120, '2026-10-28 06:29:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(121, '2026-10-28 06:29:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(122, '2026-10-28 06:29:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(123, '2026-10-28 06:29:57', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(124, '2026-10-28 06:30:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(125, '2026-10-28 06:30:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(126, '2026-10-28 06:30:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(127, '2026-10-28 06:31:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(128, '2026-10-28 06:31:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(129, '2026-10-28 06:31:08', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(130, '2026-10-28 06:31:25', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(131, '2026-10-28 06:32:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(132, '2026-10-28 06:32:02', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(133, '2026-10-28 06:32:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(134, '2026-10-28 06:33:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(135, '2026-10-28 06:33:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(136, '2026-10-28 06:33:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(137, '2026-10-28 06:34:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(138, '2026-10-28 06:34:02', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(139, '2026-10-28 06:34:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(140, '2026-10-28 06:35:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(141, '2026-10-28 06:35:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(142, '2026-10-28 06:35:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(143, '2026-10-28 06:36:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(144, '2026-10-28 06:36:02', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(145, '2026-10-28 06:36:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(146, '2026-10-28 06:36:08', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(147, '2026-10-28 06:37:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(148, '2026-10-28 06:37:02', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(149, '2026-10-28 06:37:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(150, '2026-10-28 06:38:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(151, '2026-10-28 06:38:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(152, '2026-10-28 06:38:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(153, '2026-10-28 06:39:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(154, '2026-10-28 06:39:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(155, '2026-10-28 06:39:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(156, '2026-10-28 06:40:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(157, '2026-10-28 06:40:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(158, '2026-10-28 06:40:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(159, '2026-10-28 06:41:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(160, '2026-10-28 06:41:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(161, '2026-10-28 06:41:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(162, '2026-10-28 06:41:48', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(163, '2026-10-28 06:42:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(164, '2026-10-28 06:42:02', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(165, '2026-10-28 06:42:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(166, '2026-10-28 06:43:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(167, '2026-10-28 06:43:02', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(168, '2026-10-28 06:43:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(169, '2026-10-28 06:44:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(170, '2026-10-28 06:44:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(171, '2026-10-28 06:44:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(172, '2026-10-28 06:45:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(173, '2026-10-28 06:45:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(174, '2026-10-28 06:45:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(175, '2026-10-28 06:46:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(176, '2026-10-28 06:46:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(177, '2026-10-28 06:46:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(178, '2026-10-28 06:46:58', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(179, '2026-10-28 06:47:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(180, '2026-10-28 06:47:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(181, '2026-10-28 06:47:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(182, '2026-10-28 06:48:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(183, '2026-10-28 06:48:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(184, '2026-10-28 06:48:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(185, '2026-10-28 06:49:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(186, '2026-10-28 06:49:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(187, '2026-10-28 06:49:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(188, '2026-10-28 06:50:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(189, '2026-10-28 06:50:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(190, '2026-10-28 06:50:08', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(191, '2026-10-28 06:51:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(192, '2026-10-28 06:51:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(193, '2026-10-28 06:51:08', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(194, '2026-10-28 06:52:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(195, '2026-10-28 06:52:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(196, '2026-10-28 06:52:08', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(197, '2026-10-28 06:53:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(198, '2026-10-28 06:53:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(199, '2026-10-28 06:53:08', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(200, '2026-10-28 06:53:42', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(201, '2026-10-28 06:53:43', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(202, '2026-10-28 06:54:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(203, '2026-10-28 06:54:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(204, '2026-10-28 06:54:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(205, '2026-10-28 06:54:08', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(206, '2026-10-28 06:55:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(207, '2026-10-28 06:55:02', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(208, '2026-10-28 06:55:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(209, '2026-10-28 06:55:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(210, '2026-10-28 06:56:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(211, '2026-10-28 06:56:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(212, '2026-10-28 06:56:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(213, '2026-10-28 06:56:08', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(214, '2026-10-28 06:57:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(215, '2026-10-28 06:57:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(216, '2026-10-28 06:57:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(217, '2026-10-28 06:57:08', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(218, '2026-10-28 06:58:01', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(219, '2026-10-28 06:58:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(220, '2026-10-28 06:58:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(221, '2026-10-28 06:58:08', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(222, '2026-10-28 06:59:06', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(223, '2026-10-28 06:59:07', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(224, '2026-10-28 06:59:08', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(225, '2026-10-28 06:59:09', 13, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(226, '2026-10-28 07:00:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(227, '2026-10-28 07:00:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(228, '2026-10-28 07:00:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(229, '2026-10-28 07:00:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(230, '2026-10-28 07:01:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(231, '2026-10-28 07:01:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(232, '2026-10-28 07:01:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(233, '2026-10-28 07:01:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(234, '2026-10-28 07:02:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(235, '2026-10-28 07:02:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(236, '2026-10-28 07:02:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(237, '2026-10-28 07:02:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(238, '2026-10-28 07:03:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(239, '2026-10-28 07:03:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(240, '2026-10-28 07:03:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB');
INSERT INTO `recommendation_logs` (`id_log`, `created_at`, `jam`, `source`, `menu_ditampilkan`, `id_produk_dipilih`, `sumber_model`, `label_keramaian`, `versi_model`) VALUES
(241, '2026-10-28 07:03:10', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(242, '2026-10-28 07:04:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(243, '2026-10-28 07:04:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(244, '2026-10-28 07:04:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(245, '2026-10-28 07:04:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(246, '2026-10-28 07:05:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(247, '2026-10-28 07:05:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(248, '2026-10-28 07:05:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(249, '2026-10-28 07:05:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(250, '2026-10-28 07:06:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(251, '2026-10-28 07:06:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(252, '2026-10-28 07:06:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(253, '2026-10-28 07:06:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(254, '2026-10-28 07:07:05', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(255, '2026-10-28 07:07:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(256, '2026-10-28 07:07:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(257, '2026-10-28 07:07:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(258, '2026-10-28 07:07:10', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(259, '2026-10-28 07:08:01', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(260, '2026-10-28 07:08:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(261, '2026-10-28 07:08:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(262, '2026-10-28 07:08:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(263, '2026-10-28 07:09:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(264, '2026-10-28 07:09:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(265, '2026-10-28 07:09:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(266, '2026-10-28 07:09:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(267, '2026-10-28 07:10:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(268, '2026-10-28 07:10:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(269, '2026-10-28 07:10:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(270, '2026-10-28 07:10:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(271, '2026-10-28 07:11:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(272, '2026-10-28 07:11:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(273, '2026-10-28 07:11:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(274, '2026-10-28 07:11:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(275, '2026-10-28 07:12:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(276, '2026-10-28 07:12:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(277, '2026-10-28 07:12:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(278, '2026-10-28 07:12:10', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(279, '2026-10-28 07:12:41', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(280, '2026-10-28 07:13:02', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(281, '2026-10-28 07:13:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(282, '2026-10-28 07:13:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(283, '2026-10-28 07:13:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(284, '2026-10-28 07:14:01', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(285, '2026-10-28 07:14:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(286, '2026-10-28 07:14:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(287, '2026-10-28 07:14:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(288, '2026-10-28 07:15:01', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(289, '2026-10-28 07:15:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(290, '2026-10-28 07:15:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(291, '2026-10-28 07:15:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(292, '2026-10-28 07:16:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(293, '2026-10-28 07:16:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(294, '2026-10-28 07:16:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(295, '2026-10-28 07:16:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(296, '2026-10-28 07:17:01', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(297, '2026-10-28 07:17:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(298, '2026-10-28 07:17:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(299, '2026-10-28 07:17:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(300, '2026-10-28 07:18:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(301, '2026-10-28 07:18:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(302, '2026-10-28 07:18:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(303, '2026-10-28 07:18:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(304, '2026-10-28 07:19:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(305, '2026-10-28 07:19:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(306, '2026-10-28 07:19:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(307, '2026-10-28 07:19:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(308, '2026-10-28 07:20:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(309, '2026-10-28 07:20:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(310, '2026-10-28 07:20:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(311, '2026-10-28 07:20:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(312, '2026-10-28 07:21:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(313, '2026-10-28 07:21:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(314, '2026-10-28 07:21:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(315, '2026-10-28 07:21:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(316, '2026-10-28 07:22:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(317, '2026-10-28 07:22:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(318, '2026-10-28 07:22:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(319, '2026-10-28 07:22:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(320, '2026-10-28 07:23:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(321, '2026-10-28 07:23:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(322, '2026-10-28 07:23:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(323, '2026-10-28 07:23:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(324, '2026-10-28 07:24:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(325, '2026-10-28 07:24:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(326, '2026-10-28 07:24:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(327, '2026-10-28 07:24:10', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(328, '2026-10-28 07:25:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(329, '2026-10-28 07:25:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(330, '2026-10-28 07:25:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(331, '2026-10-28 07:25:10', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(332, '2026-10-28 07:26:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(333, '2026-10-28 07:26:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(334, '2026-10-28 07:26:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(335, '2026-10-28 07:26:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(336, '2026-10-28 07:27:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(337, '2026-10-28 07:27:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(338, '2026-10-28 07:27:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(339, '2026-10-28 07:27:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(340, '2026-10-28 07:28:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(341, '2026-10-28 07:28:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(342, '2026-10-28 07:28:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(343, '2026-10-28 07:28:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(344, '2026-10-28 07:29:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(345, '2026-10-28 07:29:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(346, '2026-10-28 07:29:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(347, '2026-10-28 07:29:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(348, '2026-10-28 07:29:14', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(349, '2026-10-28 07:30:01', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(350, '2026-10-28 07:30:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(351, '2026-10-28 07:30:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(352, '2026-10-28 07:30:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(353, '2026-10-28 07:31:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(354, '2026-10-28 07:31:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(355, '2026-10-28 07:31:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(356, '2026-10-28 07:31:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(357, '2026-10-28 07:32:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(358, '2026-10-28 07:32:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(359, '2026-10-28 07:32:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(360, '2026-10-28 07:32:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(361, '2026-10-28 07:32:28', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(362, '2026-10-28 07:33:01', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(363, '2026-10-28 07:33:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(364, '2026-10-28 07:33:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(365, '2026-10-28 07:33:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(366, '2026-10-28 07:34:01', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(367, '2026-10-28 07:34:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(368, '2026-10-28 07:34:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(369, '2026-10-28 07:34:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(370, '2026-10-28 07:35:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(371, '2026-10-28 07:35:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(372, '2026-10-28 07:35:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(373, '2026-10-28 07:35:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(374, '2026-10-28 07:36:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(375, '2026-10-28 07:36:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(376, '2026-10-28 07:36:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(377, '2026-10-28 07:36:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(378, '2026-10-28 07:37:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(379, '2026-10-28 07:37:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(380, '2026-10-28 07:37:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(381, '2026-10-28 07:37:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(382, '2026-10-28 07:38:01', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(383, '2026-10-28 07:38:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(384, '2026-10-28 07:38:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(385, '2026-10-28 07:38:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(386, '2026-10-28 07:39:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(387, '2026-10-28 07:39:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(388, '2026-10-28 07:39:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(389, '2026-10-28 07:39:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(390, '2026-10-28 07:40:01', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(391, '2026-10-28 07:40:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(392, '2026-10-28 07:40:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(393, '2026-10-28 07:40:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(394, '2026-10-28 07:41:04', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(395, '2026-10-28 07:41:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(396, '2026-10-28 07:41:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(397, '2026-10-28 07:41:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(398, '2026-10-28 07:42:01', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(399, '2026-10-28 07:42:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(400, '2026-10-28 07:42:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(401, '2026-10-28 07:42:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(402, '2026-10-28 07:43:01', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(403, '2026-10-28 07:43:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(404, '2026-10-28 07:43:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(405, '2026-10-28 07:43:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(406, '2026-10-28 07:44:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(407, '2026-10-28 07:44:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(408, '2026-10-28 07:44:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(409, '2026-10-28 07:44:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(410, '2026-10-28 07:45:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(411, '2026-10-28 07:45:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(412, '2026-10-28 07:45:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(413, '2026-10-28 07:45:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(414, '2026-10-28 07:46:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(415, '2026-10-28 07:46:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(416, '2026-10-28 07:46:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(417, '2026-10-28 07:46:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(418, '2026-10-28 07:47:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(419, '2026-10-28 07:47:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(420, '2026-10-28 07:47:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(421, '2026-10-28 07:47:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(422, '2026-10-28 07:48:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(423, '2026-10-28 07:48:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(424, '2026-10-28 07:48:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(425, '2026-10-28 07:48:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(426, '2026-10-28 07:48:44', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(427, '2026-10-28 07:49:02', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(428, '2026-10-28 07:49:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(429, '2026-10-28 07:49:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(430, '2026-10-28 07:49:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(431, '2026-10-28 07:50:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(432, '2026-10-28 07:50:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(433, '2026-10-28 07:50:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(434, '2026-10-28 07:50:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(435, '2026-10-28 07:51:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(436, '2026-10-28 07:51:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(437, '2026-10-28 07:51:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(438, '2026-10-28 07:51:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(439, '2026-10-28 07:52:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(440, '2026-10-28 07:52:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(441, '2026-10-28 07:52:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(442, '2026-10-28 07:52:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(443, '2026-10-28 07:53:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(444, '2026-10-28 07:53:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(445, '2026-10-28 07:53:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(446, '2026-10-28 07:53:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(447, '2026-10-28 07:54:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(448, '2026-10-28 07:54:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(449, '2026-10-28 07:54:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(450, '2026-10-28 07:54:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(451, '2026-10-28 07:55:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(452, '2026-10-28 07:55:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(453, '2026-10-28 07:55:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(454, '2026-10-28 07:55:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(455, '2026-10-28 07:56:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(456, '2026-10-28 07:56:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(457, '2026-10-28 07:56:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(458, '2026-10-28 07:56:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(459, '2026-10-28 07:57:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(460, '2026-10-28 07:57:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(461, '2026-10-28 07:57:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(462, '2026-10-28 07:57:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(463, '2026-10-28 07:58:01', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(464, '2026-10-28 07:58:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(465, '2026-10-28 07:58:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(466, '2026-10-28 07:58:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(467, '2026-10-28 07:59:06', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(468, '2026-10-28 07:59:07', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(469, '2026-10-28 07:59:08', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(470, '2026-10-28 07:59:09', 14, 'dataset-lower-manhattan', '[\"PRDM0032\",\"PRDM0049\",\"PRDM0060\",\"PRDM0045\",\"PRDM0087\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(471, '2026-10-28 08:00:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(472, '2026-10-28 08:00:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(473, '2026-10-28 08:00:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(474, '2026-10-28 08:00:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(475, '2026-10-28 08:00:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(476, '2026-10-28 08:00:12', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(477, '2026-10-28 08:00:13', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(478, '2026-10-28 08:01:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(479, '2026-10-28 08:01:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(480, '2026-10-28 08:01:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(481, '2026-10-28 08:01:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(482, '2026-10-28 08:02:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(483, '2026-10-28 08:02:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(484, '2026-10-28 08:02:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(485, '2026-10-28 08:02:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(486, '2026-10-28 08:03:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(487, '2026-10-28 08:03:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(488, '2026-10-28 08:03:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(489, '2026-10-28 08:03:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(490, '2026-10-28 08:04:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(491, '2026-10-28 08:04:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(492, '2026-10-28 08:04:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(493, '2026-10-28 08:04:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(494, '2026-10-28 08:05:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(495, '2026-10-28 08:05:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(496, '2026-10-28 08:05:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(497, '2026-10-28 08:05:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(498, '2026-10-28 08:06:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(499, '2026-10-28 08:06:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(500, '2026-10-28 08:06:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(501, '2026-10-28 08:06:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(502, '2026-10-28 08:07:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(503, '2026-10-28 08:07:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(504, '2026-10-28 08:07:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(505, '2026-10-28 08:07:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(506, '2026-10-28 08:08:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(507, '2026-10-28 08:08:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(508, '2026-10-28 08:08:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(509, '2026-10-28 08:08:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(510, '2026-10-28 08:09:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(511, '2026-10-28 08:09:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(512, '2026-10-28 08:09:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(513, '2026-10-28 08:09:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(514, '2026-10-28 08:10:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(515, '2026-10-28 08:10:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(516, '2026-10-28 08:10:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(517, '2026-10-28 08:10:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(518, '2026-10-28 08:11:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(519, '2026-10-28 08:11:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB');
INSERT INTO `recommendation_logs` (`id_log`, `created_at`, `jam`, `source`, `menu_ditampilkan`, `id_produk_dipilih`, `sumber_model`, `label_keramaian`, `versi_model`) VALUES
(520, '2026-10-28 08:11:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(521, '2026-10-28 08:11:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(522, '2026-10-28 08:12:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(523, '2026-10-28 08:12:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(524, '2026-10-28 08:12:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(525, '2026-10-28 08:12:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(526, '2026-10-28 08:13:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(527, '2026-10-28 08:13:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(528, '2026-10-28 08:13:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(529, '2026-10-28 08:13:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(530, '2026-10-28 08:14:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(531, '2026-10-28 08:14:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(532, '2026-10-28 08:14:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(533, '2026-10-28 08:14:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(534, '2026-10-28 08:15:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(535, '2026-10-28 08:15:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(536, '2026-10-28 08:15:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(537, '2026-10-28 08:15:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(538, '2026-10-28 08:16:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(539, '2026-10-28 08:16:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(540, '2026-10-28 08:16:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(541, '2026-10-28 08:16:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(542, '2026-10-28 08:17:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(543, '2026-10-28 08:17:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(544, '2026-10-28 08:17:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(545, '2026-10-28 08:17:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(546, '2026-10-28 08:18:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(547, '2026-10-28 08:18:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(548, '2026-10-28 08:18:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(549, '2026-10-28 08:18:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(550, '2026-10-28 08:19:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(551, '2026-10-28 08:19:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(552, '2026-10-28 08:19:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(553, '2026-10-28 08:19:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(554, '2026-10-28 08:20:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(555, '2026-10-28 08:20:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(556, '2026-10-28 08:20:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(557, '2026-10-28 08:20:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(558, '2026-10-28 08:21:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(559, '2026-10-28 08:21:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(560, '2026-10-28 08:21:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(561, '2026-10-28 08:21:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(562, '2026-10-28 08:22:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(563, '2026-10-28 08:22:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(564, '2026-10-28 08:22:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(565, '2026-10-28 08:22:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(566, '2026-10-28 08:23:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(567, '2026-10-28 08:23:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(568, '2026-10-28 08:23:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(569, '2026-10-28 08:23:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(570, '2026-10-28 08:24:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(571, '2026-10-28 08:24:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(572, '2026-10-28 08:24:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(573, '2026-10-28 08:24:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(574, '2026-10-28 08:25:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(575, '2026-10-28 08:25:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(576, '2026-10-28 08:25:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(577, '2026-10-28 08:25:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(578, '2026-10-28 08:26:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(579, '2026-10-28 08:26:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(580, '2026-10-28 08:26:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(581, '2026-10-28 08:26:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(582, '2026-10-28 08:27:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(583, '2026-10-28 08:27:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(584, '2026-10-28 08:27:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(585, '2026-10-28 08:27:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(586, '2026-10-28 08:28:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(587, '2026-10-28 08:28:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(588, '2026-10-28 08:28:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(589, '2026-10-28 08:28:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(590, '2026-10-28 08:29:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(591, '2026-10-28 08:29:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(592, '2026-10-28 08:29:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(593, '2026-10-28 08:29:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(594, '2026-10-28 08:30:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(595, '2026-10-28 08:30:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(596, '2026-10-28 08:30:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(597, '2026-10-28 08:30:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(598, '2026-10-28 08:31:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(599, '2026-10-28 08:31:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(600, '2026-10-28 08:31:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(601, '2026-10-28 08:31:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(602, '2026-10-28 08:32:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(603, '2026-10-28 08:32:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(604, '2026-10-28 08:32:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(605, '2026-10-28 08:32:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(606, '2026-10-28 08:33:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(607, '2026-10-28 08:33:08', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(608, '2026-10-28 08:33:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(609, '2026-10-28 08:33:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(610, '2026-10-28 08:34:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(611, '2026-10-28 08:34:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(612, '2026-10-28 08:34:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(613, '2026-10-28 08:34:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(614, '2026-10-28 08:35:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(615, '2026-10-28 08:35:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(616, '2026-10-28 08:35:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(617, '2026-10-28 08:35:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(618, '2026-10-28 08:36:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(619, '2026-10-28 08:36:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(620, '2026-10-28 08:36:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(621, '2026-10-28 08:36:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(622, '2026-10-28 08:37:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(623, '2026-10-28 08:37:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(624, '2026-10-28 08:37:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(625, '2026-10-28 08:37:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(626, '2026-10-28 08:38:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(627, '2026-10-28 08:38:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(628, '2026-10-28 08:38:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(629, '2026-10-28 08:38:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(630, '2026-10-28 08:39:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(631, '2026-10-28 08:39:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(632, '2026-10-28 08:39:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(633, '2026-10-28 08:39:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(634, '2026-10-28 08:40:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(635, '2026-10-28 08:40:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(636, '2026-10-28 08:40:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(637, '2026-10-28 08:40:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(638, '2026-10-28 08:41:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(639, '2026-10-28 08:41:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(640, '2026-10-28 08:41:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(641, '2026-10-28 08:41:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(642, '2026-10-28 08:42:01', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(643, '2026-10-28 08:42:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(644, '2026-10-28 08:42:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(645, '2026-10-28 08:42:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(646, '2026-10-28 08:43:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(647, '2026-10-28 08:43:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(648, '2026-10-28 08:43:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(649, '2026-10-28 08:43:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(650, '2026-10-28 08:44:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(651, '2026-10-28 08:44:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(652, '2026-10-28 08:44:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(653, '2026-10-28 08:44:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(654, '2026-10-28 08:45:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(655, '2026-10-28 08:45:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(656, '2026-10-28 08:45:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(657, '2026-10-28 08:45:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(658, '2026-10-28 08:46:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(659, '2026-10-28 08:46:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(660, '2026-10-28 08:46:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(661, '2026-10-28 08:46:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(662, '2026-10-28 08:47:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(663, '2026-10-28 08:47:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(664, '2026-10-28 08:47:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(665, '2026-10-28 08:47:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(666, '2026-10-28 08:48:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(667, '2026-10-28 08:48:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(668, '2026-10-28 08:48:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(669, '2026-10-28 08:48:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(670, '2026-10-28 08:49:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(671, '2026-10-28 08:49:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(672, '2026-10-28 08:49:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(673, '2026-10-28 08:49:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(674, '2026-10-28 08:50:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(675, '2026-10-28 08:50:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(676, '2026-10-28 08:50:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(677, '2026-10-28 08:50:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(678, '2026-10-28 08:51:02', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(679, '2026-10-28 08:51:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(680, '2026-10-28 08:51:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(681, '2026-10-28 08:51:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(682, '2026-10-28 08:52:01', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(683, '2026-10-28 08:52:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(684, '2026-10-28 08:52:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(685, '2026-10-28 08:52:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(686, '2026-10-28 08:53:01', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(687, '2026-10-28 08:53:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(688, '2026-10-28 08:53:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(689, '2026-10-28 08:53:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(690, '2026-10-28 08:54:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(691, '2026-10-28 08:54:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(692, '2026-10-28 08:54:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(693, '2026-10-28 08:54:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(694, '2026-10-28 08:55:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(695, '2026-10-28 08:55:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(696, '2026-10-28 08:55:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(697, '2026-10-28 08:55:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(698, '2026-10-28 08:56:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(699, '2026-10-28 08:56:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(700, '2026-10-28 08:56:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(701, '2026-10-28 08:56:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(702, '2026-10-28 08:57:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(703, '2026-10-28 08:57:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(704, '2026-10-28 08:57:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(705, '2026-10-28 08:57:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(706, '2026-10-28 08:58:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(707, '2026-10-28 08:58:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(708, '2026-10-28 08:58:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(709, '2026-10-28 08:58:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(710, '2026-10-28 08:59:06', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(711, '2026-10-28 08:59:07', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(712, '2026-10-28 08:59:09', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(713, '2026-10-28 08:59:10', 15, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(714, '2026-10-28 09:00:02', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(715, '2026-10-28 09:00:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(716, '2026-10-28 09:00:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(717, '2026-10-28 09:00:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(718, '2026-10-28 09:01:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(719, '2026-10-28 09:01:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(720, '2026-10-28 09:01:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(721, '2026-10-28 09:01:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(722, '2026-10-28 09:02:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(723, '2026-10-28 09:02:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(724, '2026-10-28 09:02:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(725, '2026-10-28 09:02:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(726, '2026-10-28 09:03:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(727, '2026-10-28 09:03:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(728, '2026-10-28 09:03:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(729, '2026-10-28 09:03:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(730, '2026-10-28 09:04:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(731, '2026-10-28 09:04:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(732, '2026-10-28 09:04:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(733, '2026-10-28 09:04:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(734, '2026-10-28 09:05:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(735, '2026-10-28 09:05:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(736, '2026-10-28 09:05:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(737, '2026-10-28 09:05:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(738, '2026-10-28 09:06:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(739, '2026-10-28 09:06:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(740, '2026-10-28 09:06:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(741, '2026-10-28 09:06:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(742, '2026-10-28 09:07:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(743, '2026-10-28 09:07:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(744, '2026-10-28 09:07:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(745, '2026-10-28 09:07:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(746, '2026-10-28 09:08:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(747, '2026-10-28 09:08:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(748, '2026-10-28 09:08:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(749, '2026-10-28 09:08:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(750, '2026-10-28 09:09:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(751, '2026-10-28 09:09:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(752, '2026-10-28 09:09:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(753, '2026-10-28 09:09:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(754, '2026-10-28 09:10:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(755, '2026-10-28 09:10:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(756, '2026-10-28 09:10:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(757, '2026-10-28 09:10:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(758, '2026-10-28 09:11:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(759, '2026-10-28 09:11:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(760, '2026-10-28 09:11:08', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(761, '2026-10-28 09:11:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(762, '2026-10-28 09:12:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(763, '2026-10-28 09:12:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(764, '2026-10-28 09:12:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(765, '2026-10-28 09:12:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(766, '2026-10-28 09:13:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(767, '2026-10-28 09:13:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(768, '2026-10-28 09:13:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(769, '2026-10-28 09:13:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(770, '2026-10-28 09:14:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(771, '2026-10-28 09:14:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(772, '2026-10-28 09:14:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(773, '2026-10-28 09:14:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(774, '2026-10-28 09:15:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(775, '2026-10-28 09:15:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(776, '2026-10-28 09:15:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(777, '2026-10-28 09:15:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(778, '2026-10-28 09:16:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(779, '2026-10-28 09:16:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(780, '2026-10-28 09:16:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(781, '2026-10-28 09:16:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(782, '2026-10-28 09:16:39', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(783, '2026-10-28 09:17:01', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(784, '2026-10-28 09:17:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(785, '2026-10-28 09:17:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(786, '2026-10-28 09:17:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(787, '2026-10-28 09:18:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(788, '2026-10-28 09:18:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(789, '2026-10-28 09:18:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(790, '2026-10-28 09:18:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(791, '2026-10-28 09:19:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(792, '2026-10-28 09:19:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(793, '2026-10-28 09:19:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(794, '2026-10-28 09:19:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(795, '2026-10-28 09:20:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(796, '2026-10-28 09:20:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(797, '2026-10-28 09:20:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(798, '2026-10-28 09:20:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB');
INSERT INTO `recommendation_logs` (`id_log`, `created_at`, `jam`, `source`, `menu_ditampilkan`, `id_produk_dipilih`, `sumber_model`, `label_keramaian`, `versi_model`) VALUES
(799, '2026-10-28 09:21:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(800, '2026-10-28 09:21:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(801, '2026-10-28 09:21:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(802, '2026-10-28 09:21:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(803, '2026-10-28 09:22:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(804, '2026-10-28 09:22:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(805, '2026-10-28 09:22:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(806, '2026-10-28 09:22:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(807, '2026-10-28 09:23:01', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(808, '2026-10-28 09:23:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(809, '2026-10-28 09:23:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(810, '2026-10-28 09:23:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(811, '2026-10-28 09:24:01', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(812, '2026-10-28 09:24:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(813, '2026-10-28 09:24:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(814, '2026-10-28 09:24:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(815, '2026-10-28 09:25:01', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(816, '2026-10-28 09:25:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(817, '2026-10-28 09:25:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(818, '2026-10-28 09:25:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(819, '2026-10-28 09:26:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(820, '2026-10-28 09:26:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(821, '2026-10-28 09:26:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(822, '2026-10-28 09:26:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(823, '2026-10-28 09:26:12', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(824, '2026-10-28 09:27:01', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(825, '2026-10-28 09:27:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(826, '2026-10-28 09:27:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(827, '2026-10-28 09:27:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(828, '2026-10-28 09:28:01', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(829, '2026-10-28 09:28:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(830, '2026-10-28 09:28:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(831, '2026-10-28 09:28:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(832, '2026-10-28 09:29:01', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(833, '2026-10-28 09:29:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(834, '2026-10-28 09:29:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(835, '2026-10-28 09:29:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(836, '2026-10-28 09:30:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(837, '2026-10-28 09:30:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(838, '2026-10-28 09:30:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(839, '2026-10-28 09:30:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(840, '2026-10-28 09:31:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(841, '2026-10-28 09:31:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(842, '2026-10-28 09:31:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(843, '2026-10-28 09:31:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(844, '2026-10-28 09:32:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(845, '2026-10-28 09:32:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(846, '2026-10-28 09:32:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(847, '2026-10-28 09:32:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(848, '2026-10-28 09:33:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(849, '2026-10-28 09:33:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(850, '2026-10-28 09:33:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(851, '2026-10-28 09:33:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(852, '2026-10-28 09:34:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(853, '2026-10-28 09:34:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(854, '2026-10-28 09:34:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(855, '2026-10-28 09:34:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(856, '2026-10-28 09:35:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(857, '2026-10-28 09:35:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(858, '2026-10-28 09:35:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(859, '2026-10-28 09:35:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(860, '2026-10-28 09:36:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(861, '2026-10-28 09:36:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(862, '2026-10-28 09:36:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(863, '2026-10-28 09:36:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(864, '2026-10-28 09:37:01', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(865, '2026-10-28 09:37:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(866, '2026-10-28 09:37:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(867, '2026-10-28 09:37:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(868, '2026-10-28 09:37:12', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(869, '2026-10-28 09:38:01', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(870, '2026-10-28 09:38:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(871, '2026-10-28 09:38:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(872, '2026-10-28 09:38:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(873, '2026-10-28 09:39:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(874, '2026-10-28 09:39:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(875, '2026-10-28 09:39:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(876, '2026-10-28 09:39:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(877, '2026-10-28 09:40:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(878, '2026-10-28 09:40:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(879, '2026-10-28 09:40:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(880, '2026-10-28 09:40:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(881, '2026-10-28 09:41:06', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(882, '2026-10-28 09:41:07', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(883, '2026-10-28 09:41:09', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB'),
(884, '2026-10-28 09:41:10', 16, 'dataset-lower-manhattan', '[\"PRDM0038\",\"PRDM0057\",\"PRDM0052\",\"PRDM0031\",\"PRDM0032\"]', NULL, 'public_dataset', 'sedang', '2.0.0-planB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id_setting` varchar(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id_setting`, `nama`, `value`) VALUES
('SET001', 'logo', 'uploads/manhattan-coffee-shop-logo.png'),
('SET002', 'nama_warkop', 'Lower Manhattan Coffee Shop'),
('SET003', 'alamat', 'BEKASI UTARA'),
('SET004', 'kontak', '08753453211'),
('SET005', 'server_url', '192.168.0.110:8080'),
('SET006', 'batas_pembayaran_menit', '15'),
('SET007', 'qris', 'uploads/1792432539_332f0ac0cf359c9c21b1.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tables_meja`
--

CREATE TABLE `tables_meja` (
  `id_meja` varchar(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tables_meja`
--

INSERT INTO `tables_meja` (`id_meja`, `nama`) VALUES
('MEJA001', 'Meja 1'),
('MEJA002', 'Meja 2'),
('MEJA003', 'Meja 3'),
('MEJA004', 'Meja 4'),
('MEJA005', 'Meja 5'),
('MEJA006', 'Meja 6'),
('MEJA007', 'Meja 7'),
('MEJA008', 'Meja 8'),
('MEJA009', 'Meja 9'),
('MEJA010', 'Meja 10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` varchar(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_kasir` varchar(200) NOT NULL,
  `role` enum('admin','kasir') DEFAULT 'kasir',
  `aktif` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `nama_kasir`, `role`, `aktif`, `created_at`) VALUES
('USR0000001', 'admin', '$2y$10$5vJ39W9QrP6feQW08z.3p.pOOYN2swZCInWLI9/VDFPDkS9yb0PNO', 'Administrator', 'admin', 1, '2026-06-22 04:17:56'),
('USR0000002', 'rzky', '$2y$10$rAP2yVZCRZHmrlzEPSfro.1EkgIKmv7WI1BLWD/wC/AjoSsV0DYHi', 'Rizky', 'kasir', 1, '2026-06-30 13:16:02'),
('USR0000003', 'mansur', '$2y$10$Dj6GwHHFXLyRPDBja.n3buYc3IaFvkTyh5l18.I9df5OLAAiBhMKy', 'Mancoer', 'kasir', 1, '2026-10-12 01:42:31');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agg_kategori_segmen`
--
ALTER TABLE `agg_kategori_segmen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_segmen_kategori` (`segmen`,`product_category`);

--
-- Indeks untuk tabel `agg_keramaian_jam`
--
ALTER TABLE `agg_keramaian_jam`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_store_hari_jam` (`store_id`,`hari_minggu`,`jam`);

--
-- Indeks untuk tabel `data_products`
--
ALTER TABLE `data_products`
  ADD PRIMARY KEY (`id_data`),
  ADD KEY `fk_data_produk` (`id_produk`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id_notif`),
  ADD KEY `fk_notif_order` (`id_order`),
  ADD KEY `fk_notif_meja` (`id_meja`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD UNIQUE KEY `uq_orders_token` (`token`),
  ADD KEY `fk_orders_meja` (`id_meja`),
  ADD KEY `idx_orders_status_created` (`status`,`created_at`);

--
-- Indeks untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id_items`),
  ADD KEY `fk_orderitems_order` (`id_order`),
  ADD KEY `fk_orderitems_produk` (`id_produk`);

--
-- Indeks untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id_pay`),
  ADD UNIQUE KEY `uniq_payments_id_order` (`id_order`),
  ADD KEY `fk_payment_order` (`id_order`),
  ADD KEY `fk_payment_user` (`id_user`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `product_options`
--
ALTER TABLE `product_options`
  ADD PRIMARY KEY (`id_opsi`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `recommendation_logs`
--
ALTER TABLE `recommendation_logs`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `idx_recommendation_logs_created_at` (`created_at`),
  ADD KEY `idx_recommendation_logs_jam` (`jam`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id_setting`),
  ADD UNIQUE KEY `uniq_settings_nama` (`nama`);

--
-- Indeks untuk tabel `tables_meja`
--
ALTER TABLE `tables_meja`
  ADD PRIMARY KEY (`id_meja`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `uniq_users_username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agg_kategori_segmen`
--
ALTER TABLE `agg_kategori_segmen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `agg_keramaian_jam`
--
ALTER TABLE `agg_keramaian_jam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id_notif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `recommendation_logs`
--
ALTER TABLE `recommendation_logs`
  MODIFY `id_log` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=885;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `fk_notif_meja` FOREIGN KEY (`id_meja`) REFERENCES `tables_meja` (`id_meja`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_notif_order` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_meja` FOREIGN KEY (`id_meja`) REFERENCES `tables_meja` (`id_meja`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `fk_orderitems_order` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orderitems_produk` FOREIGN KEY (`id_produk`) REFERENCES `products` (`id_produk`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_payment_order` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_payment_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `product_options`
--
ALTER TABLE `product_options`
  ADD CONSTRAINT `product_options_id_produk_foreign` FOREIGN KEY (`id_produk`) REFERENCES `products` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
