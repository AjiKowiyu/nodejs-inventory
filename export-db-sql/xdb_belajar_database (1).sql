-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 08, 2024 at 03:52 PM
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
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL COMMENT 'id table',
  `nama` varchar(100) NOT NULL COMMENT 'nama karyawan',
  `alamat` varchar(500) NOT NULL COMMENT 'alamat tempat tinggal karyawan',
  `no_telepon` varchar(15) DEFAULT NULL COMMENT 'nomor telepon',
  `gol_darah` varchar(2) DEFAULT NULL COMMENT 'golongan darah',
  `jenis_kelamin` char(1) NOT NULL COMMENT 'jenis kelamin',
  `departemen_id` int(11) DEFAULT NULL,
  `jabatan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `nama`, `alamat`, `no_telepon`, `gol_darah`, `jenis_kelamin`, `departemen_id`, `jabatan_id`) VALUES
(1, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', 3, 1),
(2, 'Luna Maya', 'Jogja', '081299990000', 'A', 'P', 1, 3),
(4, 'Raffi Ahmad', 'Bandung', '0229292929', 'O', 'L', NULL, NULL),
(6, 'Hotman Paris', 'Jakarta Selatan', '77788899', 'B', 'L', NULL, NULL),
(7, 'Deddy Corbuzier', 'Jakarta', '081299990000', 'A', 'L', 2, 4),
(8, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', 1, 2),
(9, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', 1, 2),
(11, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', 1, 2),
(12, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', 1, 2),
(13, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', 1, 2),
(14, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', 1, 2),
(15, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', NULL, NULL),
(16, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', NULL, NULL),
(17, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', NULL, NULL),
(18, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', NULL, NULL),
(19, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', NULL, NULL),
(20, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_departemen`
--

CREATE TABLE `master_departemen` (
  `id` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_departemen`
--

INSERT INTO `master_departemen` (`id`, `kode`, `nama`) VALUES
(1, 'HR', 'Human Resources'),
(2, 'FIN', 'Finance'),
(3, 'IT', 'Information Technology'),
(4, 'MAR', 'Marketing'),
(5, 'PUR', 'Purchasing'),
(6, 'GA', 'General Affair');

-- --------------------------------------------------------

--
-- Table structure for table `master_jabatan`
--

CREATE TABLE `master_jabatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `deskripsi` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_jabatan`
--

INSERT INTO `master_jabatan` (`id`, `nama`, `role`, `deskripsi`) VALUES
(1, 'Officer', 'Programmer', 'Programmer bertugas mengembangkan aplikasi atau software perusahaan'),
(2, 'Officer', 'System Analyst', 'Bertugas menganalisis kebutuhan pengembangan aplikasi'),
(3, 'Officer', 'Admin', 'Bertugas menangani kebutuhan administrasi masing-masing departemen'),
(4, 'Manager', '', 'Bertugas mengelola staff/officer/pegawai yg berada di bawahnya');

-- --------------------------------------------------------

--
-- Table structure for table `master_kategori`
--

CREATE TABLE `master_kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_kategori`
--

INSERT INTO `master_kategori` (`id`, `nama`, `deskripsi`) VALUES
(1, 'Makanan Instan', 'Makanan instan dalam bentuk sachet atau kaleng'),
(2, 'Cemilan', 'Cemilan adalah makanan ringan biasanya dalam bentuk sachet atau bungkusan yg memiliki porsi kecil dan tidak membuat kenyang.'),
(3, 'Minuman', 'Minuman kemasan baik dalam bentuk, botol, kaleng, kotak.');

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
(7, 'CTT-ORI', 10, 0, 310, 'Barang Retur', 1, '2024-07-04 21:15:54', 0, '0000-00-00 00:00:00'),
(11, 'IDM-GOR', 0, -200, 21, 'Terjual', 1, '2024-07-05 19:27:07', 0, '0000-00-00 00:00:00'),
(15, 'IDM-GOR', 0, -21, 0, 'Terjual', 1, '2024-07-05 19:46:36', 0, '0000-00-00 00:00:00'),
(16, 'SP-BBR', 0, -100, 525, 'Ekspor ke Thailand', 1, '2024-07-05 19:47:17', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'aji.kowiyu', '$2y$10$7reu0PDYmvYAj8Jot0SPyefOpBsNjmCXpmDPiFSCAD8x2YYF4Z.Xu', 'Aji Kowiyu'),
(2, 'jokowi', '$2y$10$7reu0PDYmvYAj8Jot0SPyefOpBsNjmCXpmDPiFSCAD8x2YYF4Z.Xu', 'Joko Widodo'),
(3, 'prabowo', 'ps08', 'Prabowo Subianto'),
(4, 'gibran.buming', 'gb08', 'Gibran Raka Booming'),
(5, 'ganjar', '$2a$10$0O.mJYkMgI85d4YVWyfnyOLu/SdjIES/V83V.lRKAS9SHGdPnG/nS', 'Ganjar Pranowo'),
(6, 'anies.bw', '$2a$10$FBPdZ6EzOKU1A/4taC0m3e9GObM06IVsSAY5EPJte/joNlToRBU/m', 'Anies Baswedan'),
(7, 'imin', '$2a$10$4VG77LFWWLfrSR7744xGEegki/VGXFYeepCglDe0j/QXlwWweYT0i', 'cak imin'),
(8, 'mahfud.md', '$2a$10$x4LISDHbAin1pVscYgLg7.uuuJq5f2kNoPLn7NN4NEN.Q0dEpiGfW', 'Mahfud MD');

-- --------------------------------------------------------

--
-- Table structure for table `wa_client`
--

CREATE TABLE `wa_client` (
  `id` int(11) NOT NULL,
  `nomor` varchar(20) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wa_client`
--

INSERT INTO `wa_client` (`id`, `nomor`, `nama`) VALUES
(1, '6282111311196', NULL),
(2, '6281293260970', 'Aji Kowiyu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_departemen`
--
ALTER TABLE `master_departemen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_jabatan`
--
ALTER TABLE `master_jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_kategori`
--
ALTER TABLE `master_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_produk`
--
ALTER TABLE `master_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wa_client`
--
ALTER TABLE `wa_client`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id table', AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `master_departemen`
--
ALTER TABLE `master_departemen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `master_jabatan`
--
ALTER TABLE `master_jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_kategori`
--
ALTER TABLE `master_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_produk`
--
ALTER TABLE `master_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stok`
--
ALTER TABLE `stok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wa_client`
--
ALTER TABLE `wa_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
