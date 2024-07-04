-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 04, 2024 at 05:18 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xdb_belajar_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE `stok` (
  `id` int(11) NOT NULL,
  `kode_produk` varchar(10) NOT NULL,
  `stok_masuk` int(11) NOT NULL,
  `stok_keluar` int(11) NOT NULL,
  `stok_sisa` int(11) NOT NULL,
  `keterangan` varchar(500) DEFAULT NULL,
  `dibuat_oleh` int(11) NOT NULL,
  `dibuat_kapan` datetime NOT NULL,
  `diperbarui_oleh` int(11) NOT NULL,
  `diperbarui_kapan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stok`
--

INSERT INTO `stok` (`id`, `kode_produk`, `stok_masuk`, `stok_keluar`, `stok_sisa`, `keterangan`, `dibuat_oleh`, `dibuat_kapan`, `diperbarui_oleh`, `diperbarui_kapan`) VALUES
(1, 'IDM-GOR', 100, 0, 100, 'Dari Pabrik Sidoarjo', 1, '2024-07-04 21:14:40', 0, '0000-00-00 00:00:00'),
(2, 'SP-BBR', 150, 0, 150, 'Dari Gudang Tanjung Priok', 1, '2024-07-04 21:14:59', 0, '0000-00-00 00:00:00'),
(3, 'IDM-GOR', 66, 0, 166, 'Barang Retur', 1, '2024-07-04 21:15:09', 0, '0000-00-00 00:00:00'),
(4, 'CTT-ORI', 300, 0, 300, 'Dari Gudang Cikarang', 1, '2024-07-04 21:15:20', 0, '0000-00-00 00:00:00'),
(5, 'SP-BBR', 475, 0, 625, 'Dari Pabrik Tangerang', 1, '2024-07-04 21:15:31', 0, '0000-00-00 00:00:00'),
(6, 'IDM-GOR', 55, 0, 221, 'Barang Retur', 1, '2024-07-04 21:15:46', 0, '0000-00-00 00:00:00'),
(7, 'CTT-ORI', 10, 0, 310, 'Barang Retur', 1, '2024-07-04 21:15:54', 0, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stok`
--
ALTER TABLE `stok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
