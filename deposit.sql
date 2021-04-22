-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2021 at 08:45 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deposit`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` bigint(20) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_nasabah` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `debit` bigint(20) DEFAULT NULL,
  `kredit` bigint(20) DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_user`, `id_nasabah`, `tanggal`, `debit`, `kredit`, `ket`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-04-22', 100000, 0, 'Saldo awal', '2021-04-22 05:06:34', '2021-04-22 05:06:34'),
(2, 1, 1, '2021-04-22', 0, 5000, 'penarikan 1', '2021-04-22 05:11:21', '2021-04-22 05:11:21'),
(3, 1, 1, '2021-04-22', 4000, 0, 'penambahan 1', '2021-04-22 06:14:15', '2021-04-22 06:14:15'),
(4, 1, 1, '2021-04-22', 0, 98000, 'ambil semua', '2021-04-22 06:14:57', '2021-04-22 06:14:57'),
(5, 1, 1, '2021-04-22', 0, 5000, 'minus 4', '2021-04-22 06:15:38', '2021-04-22 06:15:38'),
(6, 1, 1, '2021-04-22', 0, 1000, 'minus 5', '2021-04-22 06:16:14', '2021-04-22 06:16:14'),
(7, 1, 1, '2021-04-22', 10000, 0, 'bayar utang, saldo 5000', '2021-04-22 06:16:47', '2021-04-22 06:16:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
