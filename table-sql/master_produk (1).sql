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
-- Table structure for table `master_produk`
--

CREATE TABLE `master_produk` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `dibuat_oleh` int(11) NOT NULL,
  `dibuat_kapan` datetime NOT NULL,
  `diperbarui_oleh` int(11) DEFAULT NULL,
  `diperbarui_kapan` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_produk`
--

INSERT INTO `master_produk` (`id`, `kode`, `nama`, `deskripsi`, `id_kategori`, `dibuat_oleh`, `dibuat_kapan`, `diperbarui_oleh`, `diperbarui_kapan`) VALUES
(1, 'IDM-GOR', 'Indomie Goreng', 'Indomie Goreng Rasa Original', 1, 0, '2024-07-02 14:21:13', 0, '2024-07-02 14:21:13'),
(2, 'SP-BBR', 'Super Bubur', 'Bubur instan tinggal seduh dengan air panas', 1, 0, '2024-07-02 14:21:13', 0, '2024-07-02 14:21:13'),
(3, 'CTT-ORI', 'Chitato', 'Chitato rasa original', 2, 1, '2024-07-02 21:57:09', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_produk`
--
ALTER TABLE `master_produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_produk`
--
ALTER TABLE `master_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
