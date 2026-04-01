-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2026 at 02:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wb_ikan`
--

-- --------------------------------------------------------

--
-- Table structure for table `biaya_pakan`
--

CREATE TABLE `biaya_pakan` (
  `id_biaya_pakan` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_ikan` varchar(50) NOT NULL,
  `id_pemeliharaan` varchar(50) NOT NULL,
  `id_kolam` varchar(50) NOT NULL,
  `tanggal_tebar` date NOT NULL,
  `nama_pakan` varchar(100) NOT NULL,
  `jenis_ikan` varchar(100) NOT NULL,
  `total_digunakan` decimal(10,2) NOT NULL,
  `total_biaya_pakan` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `biaya_pakan`
--

INSERT INTO `biaya_pakan` (`id_biaya_pakan`, `user_id`, `id_ikan`, `id_pemeliharaan`, `id_kolam`, `tanggal_tebar`, `nama_pakan`, `jenis_ikan`, `total_digunakan`, `total_biaya_pakan`) VALUES
('BP001', 2, 'NA25KJA001', 'PMI001', 'KJA001', '2024-10-13', 'Pelet Serbuk F-999', 'Ikan Nila', 90.00, 1260000.00),
('BP002', 2, 'NA25KJA001', 'PMI002', 'KJA001', '2024-10-13', 'Pelet F-999', 'Ikan Nila', 315.00, 6930000.00),
('BP003', 2, 'NA25KJA001', 'PMI003', 'KJA001', '2024-10-13', 'Pelet F-999', 'Ikan Nila', 972.00, 21384000.00),
('BP004', 10, 'IKN006', 'PMI004', 'KOL002', '2025-08-30', 'Pelet Serbuk F-999', 'Ikan Nila', 45.00, 540000.00),
('BP005', 10, 'IKN006', 'PMI005', 'KOL002', '2025-08-30', 'Pelet  F-999', 'Ikan Nila', 180.00, 3960000.00),
('BP006', 10, 'IKN006', 'PMI006', 'KOL002', '2025-08-30', 'Pelet  F-999', 'Ikan Nila', 678.00, 14916000.00);

-- --------------------------------------------------------

--
-- Table structure for table `biaya_pendukung`
--

CREATE TABLE `biaya_pendukung` (
  `id_biaya_pendukung` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_ikan` varchar(50) NOT NULL,
  `id_pemeliharaan` varchar(50) NOT NULL,
  `tanggal_tebar` date NOT NULL,
  `id_kolam` varchar(50) NOT NULL,
  `obat` decimal(10,2) NOT NULL,
  `suplemen` decimal(10,2) NOT NULL,
  `lainnya` decimal(10,2) NOT NULL,
  `total_biaya_pendukung` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `biaya_pendukung`
--

INSERT INTO `biaya_pendukung` (`id_biaya_pendukung`, `user_id`, `id_ikan`, `id_pemeliharaan`, `tanggal_tebar`, `id_kolam`, `obat`, `suplemen`, `lainnya`, `total_biaya_pendukung`) VALUES
('BPG001', 2, 'NA25KJA001', 'PMI001', '2024-10-13', 'KJA001', 200000.00, 0.00, 40000.00, 240000.00),
('BPG002', 2, 'NA25KJA001', 'PMI002', '2024-10-13', 'KJA001', 50000.00, 0.00, 12000.00, 62000.00),
('BPG003', 2, 'NA25KJA001', 'PMI003', '2024-10-13', 'KJA001', 0.00, 200000.00, 0.00, 200000.00),
('BPG004', 10, 'IKN006', 'PMI004', '2025-08-30', 'KOL002', 0.00, 240000.00, 40000.00, 280000.00),
('BPG005', 10, 'IKN006', 'PMI005', '2025-08-30', 'KOL002', 140000.00, 0.00, 30000.00, 170000.00),
('BPG006', 10, 'IKN006', 'PMI006', '2025-08-30', 'KOL002', 58000.00, 0.00, 0.00, 58000.00);

-- --------------------------------------------------------

--
-- Table structure for table `data_ikan`
--

CREATE TABLE `data_ikan` (
  `id_ikan` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `jenis_bibit` varchar(100) NOT NULL,
  `id_kolam` varchar(50) NOT NULL,
  `jumlah_bibit` int(11) NOT NULL,
  `tanggal_masuk_bibit` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_ikan`
--

INSERT INTO `data_ikan` (`id_ikan`, `user_id`, `jenis_bibit`, `id_kolam`, `jumlah_bibit`, `tanggal_masuk_bibit`) VALUES
('IKN006', 10, 'Ikan Nila', 'KOL002', 2500, '2025-08-30'),
('NA25KJA001', 2, 'Ikan Nila', 'KJA001', 1500, '2024-10-13');

-- --------------------------------------------------------

--
-- Table structure for table `data_kolam`
--

CREATE TABLE `data_kolam` (
  `id_kolam` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `jenis_kolam` varchar(100) NOT NULL,
  `kapasitas_ikan` int(11) NOT NULL,
  `tanggal_penambahan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_kolam`
--

INSERT INTO `data_kolam` (`id_kolam`, `user_id`, `jenis_kolam`, `kapasitas_ikan`, `tanggal_penambahan`) VALUES
('KJA001', 2, 'Keramba (Jaring Apung)', 2000, '2024-07-08'),
('KOL002', 10, 'Keramba (Jaring Apung)', 3000, '2025-03-17');

-- --------------------------------------------------------

--
-- Table structure for table `data_pakan`
--

CREATE TABLE `data_pakan` (
  `id_pakan` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `jenis_ikan` varchar(100) NOT NULL,
  `jenis_pakan` varchar(100) NOT NULL,
  `nama_pakan` varchar(100) NOT NULL,
  `harga_per_kilo` decimal(10,2) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_pakan`
--

INSERT INTO `data_pakan` (`id_pakan`, `user_id`, `jenis_ikan`, `jenis_pakan`, `nama_pakan`, `harga_per_kilo`, `deskripsi`) VALUES
('PAK001', 2, 'Ikan Nila', 'Pakan Buatan', 'Pelet F-999', 22000.00, 'bagus untu ikan yang menuju dewasa'),
('PAK002', 2, 'Ikan Nila', 'Pakan Buatan', 'Pelet Serbuk F-999', 14000.00, 'bagus untuk ikan yang masih kecil'),
('PAK003', 10, 'Ikan Nila', 'Pakan Buatan', 'Pelet Serbuk F-999', 12000.00, 'bagus untuk ikan umur 1 bulan'),
('PAK004', 10, 'Ikan Nila', 'Pakan Buatan', 'Pelet  F-999', 22000.00, 'bagus untu ikan yang menuju dewasa');

-- --------------------------------------------------------

--
-- Table structure for table `panen`
--

CREATE TABLE `panen` (
  `id_panen` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_ikan` varchar(50) NOT NULL,
  `tanggal_panen` date NOT NULL,
  `id_kolam` varchar(50) NOT NULL,
  `jenis_ikan` varchar(100) NOT NULL,
  `usia_pemeliharaan` int(11) NOT NULL,
  `harga_per_kg` decimal(10,2) NOT NULL,
  `berat_total` decimal(10,2) NOT NULL,
  `harga_total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `panen`
--

INSERT INTO `panen` (`id_panen`, `user_id`, `id_ikan`, `tanggal_panen`, `id_kolam`, `jenis_ikan`, `usia_pemeliharaan`, `harga_per_kg`, `berat_total`, `harga_total`) VALUES
('PN001', 2, 'NA25KJA001', '2025-02-08', 'KJA001', 'Ikan Nila', 118, 32000.00, 591.00, 18912000.00),
('PN002', 10, 'IKN006', '2025-08-22', 'KOL002', 'Ikan Nila', 7, 28000.00, 1200.00, 33600000.00);

-- --------------------------------------------------------

--
-- Table structure for table `pemeliharaan_ikan`
--

CREATE TABLE `pemeliharaan_ikan` (
  `id_pemeliharaan` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_ikan` varchar(50) NOT NULL,
  `id_kolam` varchar(50) NOT NULL,
  `tanggal_tebar` date NOT NULL,
  `jenis_bibit` varchar(100) NOT NULL,
  `nama_pakan` varchar(100) NOT NULL,
  `usia_pemberian_pakan_awal` int(11) NOT NULL,
  `usia_pemberian_pakan_akhir` int(11) NOT NULL,
  `usia_pemeliharaan` int(11) NOT NULL,
  `pakan_harian` decimal(10,2) NOT NULL,
  `jumlah_awal` int(11) NOT NULL,
  `jumlah_mati` int(11) NOT NULL,
  `jumlah_hidup` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemeliharaan_ikan`
--

INSERT INTO `pemeliharaan_ikan` (`id_pemeliharaan`, `user_id`, `id_ikan`, `id_kolam`, `tanggal_tebar`, `jenis_bibit`, `nama_pakan`, `usia_pemberian_pakan_awal`, `usia_pemberian_pakan_akhir`, `usia_pemeliharaan`, `pakan_harian`, `jumlah_awal`, `jumlah_mati`, `jumlah_hidup`) VALUES
('PMI001', 2, 'NA25KJA001', 'KJA001', '2024-10-13', 'Ikan Nila', 'Pelet Serbuk F-999', 1, 15, 118, 6.00, 1500, 9, 1491),
('PMI002', 2, 'NA25KJA001', 'KJA001', '2024-10-13', 'Ikan Nila', 'Pelet F-999', 16, 60, 118, 7.00, 1491, 8, 1483),
('PMI003', 2, 'NA25KJA001', 'KJA001', '2024-10-13', 'Ikan Nila', 'Pelet F-999', 61, 168, 118, 9.00, 1483, 4, 1479),
('PMI004', 10, 'IKN006', 'KOL002', '2025-08-30', 'Ikan Nila', 'Pelet Serbuk F-999', 1, 15, 7, 3.00, 2500, 2, 2498),
('PMI005', 10, 'IKN006', 'KOL002', '2025-08-30', 'Ikan Nila', 'Pelet  F-999', 16, 60, 7, 4.00, 2498, 3, 2495),
('PMI006', 10, 'IKN006', 'KOL002', '2025-08-30', 'Ikan Nila', 'Pelet  F-999', 61, 173, 7, 6.00, 2495, 7, 2488);

-- --------------------------------------------------------

--
-- Table structure for table `tebar_bibit`
--

CREATE TABLE `tebar_bibit` (
  `id_tebar` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_ikan` varchar(50) NOT NULL,
  `id_kolam` varchar(50) NOT NULL,
  `tanggal_tebar` date NOT NULL,
  `jumlah_bibit` int(11) NOT NULL,
  `ukuran` varchar(50) NOT NULL,
  `harga_bibit_satuan` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tebar_bibit`
--

INSERT INTO `tebar_bibit` (`id_tebar`, `user_id`, `id_ikan`, `id_kolam`, `tanggal_tebar`, `jumlah_bibit`, `ukuran`, `harga_bibit_satuan`) VALUES
('NA25KJA3001', 2, 'NA25KJA001', 'KJA001', '2024-10-13', 1500, '3', 400.00),
('TBR006', 10, 'IKN006', 'KOL002', '2025-08-30', 2500, '3', 400.00);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `password_plain` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`, `created_at`, `password_plain`) VALUES
(2, 'user1', '$2y$10$5DLS3UJ4TVNYRimzouAbKuXkT8Js9mP783NJT/87VwnABI/ZghuL2', 'user', '2024-08-22 14:27:54', 'user1234'),
(5, 'admin', '$2y$10$MRE8kVijk17HwoTmAhm09.KizMCISpT1E4as.0uK1DBCKtgSMvJKy', 'admin', '2024-09-08 01:52:31', 'admin'),
(8, 'afdal123', '$2y$10$XEYScz6Jz.P8BdZu351NpOWAPiLp9FS5PIOPTu30U8ZkzYzO3o.4m', 'user', '2024-09-12 07:37:30', 'afdal'),
(10, 'user2', '$2y$10$ROutN35hu5eBV9kTAgEnAe7hHOr/3KqeuxsDCJhJEqyl3hsdjPPSu', 'user', '2025-08-21 01:13:17', 'user2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biaya_pakan`
--
ALTER TABLE `biaya_pakan`
  ADD PRIMARY KEY (`id_biaya_pakan`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_ikan` (`id_ikan`),
  ADD KEY `id_pemeliharaan` (`id_pemeliharaan`),
  ADD KEY `id_kolam` (`id_kolam`);

--
-- Indexes for table `biaya_pendukung`
--
ALTER TABLE `biaya_pendukung`
  ADD PRIMARY KEY (`id_biaya_pendukung`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_ikan` (`id_ikan`),
  ADD KEY `id_pemeliharaan` (`id_pemeliharaan`),
  ADD KEY `id_kolam` (`id_kolam`);

--
-- Indexes for table `data_ikan`
--
ALTER TABLE `data_ikan`
  ADD PRIMARY KEY (`id_ikan`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_kolam` (`id_kolam`);

--
-- Indexes for table `data_kolam`
--
ALTER TABLE `data_kolam`
  ADD PRIMARY KEY (`id_kolam`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `data_pakan`
--
ALTER TABLE `data_pakan`
  ADD PRIMARY KEY (`id_pakan`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `panen`
--
ALTER TABLE `panen`
  ADD PRIMARY KEY (`id_panen`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_ikan` (`id_ikan`),
  ADD KEY `id_kolam` (`id_kolam`);

--
-- Indexes for table `pemeliharaan_ikan`
--
ALTER TABLE `pemeliharaan_ikan`
  ADD PRIMARY KEY (`id_pemeliharaan`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_ikan` (`id_ikan`),
  ADD KEY `id_kolam` (`id_kolam`);

--
-- Indexes for table `tebar_bibit`
--
ALTER TABLE `tebar_bibit`
  ADD PRIMARY KEY (`id_tebar`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_ikan` (`id_ikan`),
  ADD KEY `id_kolam` (`id_kolam`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `biaya_pakan`
--
ALTER TABLE `biaya_pakan`
  ADD CONSTRAINT `biaya_pakan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `biaya_pakan_ibfk_2` FOREIGN KEY (`id_ikan`) REFERENCES `data_ikan` (`id_ikan`),
  ADD CONSTRAINT `biaya_pakan_ibfk_3` FOREIGN KEY (`id_pemeliharaan`) REFERENCES `pemeliharaan_ikan` (`id_pemeliharaan`),
  ADD CONSTRAINT `biaya_pakan_ibfk_4` FOREIGN KEY (`id_kolam`) REFERENCES `data_kolam` (`id_kolam`);

--
-- Constraints for table `biaya_pendukung`
--
ALTER TABLE `biaya_pendukung`
  ADD CONSTRAINT `biaya_pendukung_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `biaya_pendukung_ibfk_2` FOREIGN KEY (`id_ikan`) REFERENCES `data_ikan` (`id_ikan`),
  ADD CONSTRAINT `biaya_pendukung_ibfk_3` FOREIGN KEY (`id_pemeliharaan`) REFERENCES `pemeliharaan_ikan` (`id_pemeliharaan`),
  ADD CONSTRAINT `biaya_pendukung_ibfk_4` FOREIGN KEY (`id_kolam`) REFERENCES `data_kolam` (`id_kolam`);

--
-- Constraints for table `data_ikan`
--
ALTER TABLE `data_ikan`
  ADD CONSTRAINT `data_ikan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `data_ikan_ibfk_2` FOREIGN KEY (`id_kolam`) REFERENCES `data_kolam` (`id_kolam`);

--
-- Constraints for table `data_kolam`
--
ALTER TABLE `data_kolam`
  ADD CONSTRAINT `data_kolam_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `data_pakan`
--
ALTER TABLE `data_pakan`
  ADD CONSTRAINT `data_pakan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `panen`
--
ALTER TABLE `panen`
  ADD CONSTRAINT `panen_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `panen_ibfk_2` FOREIGN KEY (`id_ikan`) REFERENCES `data_ikan` (`id_ikan`),
  ADD CONSTRAINT `panen_ibfk_3` FOREIGN KEY (`id_kolam`) REFERENCES `data_kolam` (`id_kolam`);

--
-- Constraints for table `pemeliharaan_ikan`
--
ALTER TABLE `pemeliharaan_ikan`
  ADD CONSTRAINT `pemeliharaan_ikan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `pemeliharaan_ikan_ibfk_2` FOREIGN KEY (`id_ikan`) REFERENCES `data_ikan` (`id_ikan`),
  ADD CONSTRAINT `pemeliharaan_ikan_ibfk_3` FOREIGN KEY (`id_kolam`) REFERENCES `data_kolam` (`id_kolam`);

--
-- Constraints for table `tebar_bibit`
--
ALTER TABLE `tebar_bibit`
  ADD CONSTRAINT `tebar_bibit_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `tebar_bibit_ibfk_2` FOREIGN KEY (`id_ikan`) REFERENCES `data_ikan` (`id_ikan`),
  ADD CONSTRAINT `tebar_bibit_ibfk_3` FOREIGN KEY (`id_kolam`) REFERENCES `data_kolam` (`id_kolam`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
