-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2021 at 08:41 AM
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
-- Database: `db_counting`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_bulan`
--

CREATE TABLE `tb_bulan` (
  `id_bulan` int(11) NOT NULL,
  `bulan` int(3) NOT NULL,
  `tahun` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_bulan`
--

INSERT INTO `tb_bulan` (`id_bulan`, `bulan`, `tahun`) VALUES
(1, 1, 2011),
(2, 2, 2011),
(3, 3, 2011),
(4, 4, 2011),
(5, 5, 2011),
(6, 6, 2011),
(7, 7, 2011),
(8, 8, 2011),
(9, 9, 2011),
(10, 10, 2011),
(11, 11, 2011),
(12, 12, 2011);

-- --------------------------------------------------------

--
-- Table structure for table `tb_hitung`
--

CREATE TABLE `tb_hitung` (
  `id_bulan` int(7) NOT NULL,
  `id_hitung` int(7) NOT NULL,
  `Keterangan` varchar(200) NOT NULL,
  `Debit` int(50) NOT NULL,
  `Kredit` int(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_hitung`
--

INSERT INTO `tb_hitung` (`id_bulan`, `id_hitung`, `Keterangan`, `Debit`, `Kredit`, `date`) VALUES
(12, 1, 'Saldo Awal', 50000000, 0, '2011-12-27'),
(12, 2, 'Pembayaran Piutang', 0, 25000000, '2011-12-28'),
(12, 3, 'Pembelian Aset', 0, 7000000, '2011-12-29'),
(12, 4, 'Pembayaran Piutang', 10000000, 0, '2011-12-30'),
(12, 5, 'Pembelian Aset', 0, 2500000, '2011-12-30'),
(12, 8, 'Mutasi', 0, 10000000, '2011-12-31'),
(12, 9, 'Debit 1', 50000, 0, '2021-01-08'),
(12, 10, 'Debit 2', 50000, 0, '2021-01-08'),
(12, 11, 'Kredit 1', 0, 100000, '2021-01-08'),
(12, 12, 'Kredit 1', 0, 600000, '2021-01-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_bulan`
--
ALTER TABLE `tb_bulan`
  ADD PRIMARY KEY (`id_bulan`);

--
-- Indexes for table `tb_hitung`
--
ALTER TABLE `tb_hitung`
  ADD PRIMARY KEY (`id_hitung`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_bulan`
--
ALTER TABLE `tb_bulan`
  MODIFY `id_bulan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_hitung`
--
ALTER TABLE `tb_hitung`
  MODIFY `id_hitung` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
