-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2023 at 03:55 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agriculate`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'agriculate', 'husni'),
(2, 'agriculate', 'risqi'),
(3, 'agriculate', 'reno'),
(4, 'agriculate', 'fatih'),
(5, 'agriculate', 'regina');

-- --------------------------------------------------------

--
-- Table structure for table `data_mitra`
--

CREATE TABLE `data_mitra` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `luas_lahan` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_mitra`
--

INSERT INTO `data_mitra` (`id`, `judul`, `luas_lahan`, `nama`, `nomor_telepon`, `kota`, `provinsi`) VALUES
(1, 'LahanKosong', 1000, 'Reno', '082114224431', 'Bogor', 'Jawa Barat'),
(2, '', 0, '', '', '', ''),
(3, 'Pangan', 200, 'reno', '082114224431', 'Bogor', 'Jawa Barat'),
(4, 'Pangan', 200, 'reno', '082114224431', 'Bogor', 'Jawa Barat'),
(5, '', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `gambar_mitra`
--

CREATE TABLE `gambar_mitra` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_tanah`
--

CREATE TABLE `jenis_tanah` (
  `id` int(11) NOT NULL,
  `jenis_tanah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_tanah`
--

INSERT INTO `jenis_tanah` (`id`, `jenis_tanah`) VALUES
(1, ''),
(2, 'aluvial'),
(3, ''),
(4, 'aluvial'),
(5, ''),
(6, ''),
(7, 'aluvial');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `komentar` text NOT NULL,
  `tanggal` datetime NOT NULL,
  `id_topik` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `komentar`, `tanggal`, `id_topik`, `id_user`) VALUES
(2, 'oh iya kah? hahaha', '2023-11-09 06:50:04', 2, 3),
(3, 'kocak', '2023-11-09 06:50:57', 2, 4),
(4, 'hhh', '2023-11-14 13:45:05', 3, 3),
(5, 'kamis\r\n', '2023-11-16 15:29:25', 6, 2),
(7, 'wah keren', '2023-11-16 20:56:05', 6, 11),
(8, 'keren', '2023-11-16 20:58:24', 6, 12),
(10, 'dfghjk', '2023-11-20 13:54:18', 8, 3),
(11, 'test', '2023-11-20 14:40:34', 8, 3),
(12, 'Tes admin', '2023-11-20 16:36:51', 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(6) UNSIGNED NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `latitude`, `longitude`, `created_at`) VALUES
(2, -6.422528, 106.8105728, '2023-11-19 00:34:22'),
(3, -6.422528, 106.8105728, '2023-11-19 00:34:49'),
(4, -6.422528, 106.8105728, '2023-11-19 00:35:53'),
(5, -6.422528, 106.8105728, '2023-11-19 00:36:40'),
(6, -6.422528, 106.8105728, '2023-11-19 00:42:16'),
(7, -6.422528, 106.8105728, '2023-11-19 00:42:32'),
(8, -6.5752274, 106.7663397, '2023-11-19 01:41:13'),
(9, -6.422528, 106.8105728, '2023-11-19 09:55:40'),
(10, -6.422528, 106.8105728, '2023-11-20 01:15:25'),
(11, -6.422528, 106.8105728, '2023-11-20 01:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `snapshots`
--

CREATE TABLE `snapshots` (
  `id` int(6) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `snapshots`
--

INSERT INTO `snapshots` (`id`, `image_path`, `created_at`) VALUES
(5, 'uploads/snapshot_1700354059.png', '2023-11-19 00:34:19'),
(6, 'uploads/snapshot_1700354086.png', '2023-11-19 00:34:46'),
(7, 'uploads/snapshot_1700354149.png', '2023-11-19 00:35:49'),
(8, 'uploads/snapshot_1700354196.png', '2023-11-19 00:36:36'),
(9, 'uploads/snapshot_1700354532.png', '2023-11-19 00:42:12'),
(10, 'uploads/snapshot_1700358068.png', '2023-11-19 01:41:08'),
(11, 'uploads/snapshot_1700387737.png', '2023-11-19 09:55:37'),
(12, 'uploads/snapshot_1700444896.png', '2023-11-20 01:48:16'),
(13, 'uploads/snapshot_1700450225.png', '2023-11-20 03:17:05'),
(14, 'uploads/snapshot_1700469655.png', '2023-11-20 08:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `testi` text NOT NULL,
  `status` varchar(255) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `nama`, `email`, `jabatan`, `rating`, `testi`, `status`) VALUES
(26, 'Husni Mubarok Ramadhan', 'husniramadhan@apps.ipb.ac.id', 'Web Developer Agriculate', 5, 'Fitur pengembangan situs web yang canggih dan inovatif untuk merevolusi pemahaman, pemantauan, dan pengelolaan ketahanan pangan di Indonesia tampaknya sangat bermanfaat.', 'Accepted'),
(29, 'Fatih', 'husniramadhan@apps.ipb.ac.id', 'Pemilik Lahan', 5, 'GOODD', 'Pending'),
(32, 'Alif', 'alif@apps.ipb.ac.id', 'Kang Naspad', 4, 'Keren huss', 'Pending'),
(33, 'Ben', 'ben@apps.ipb.ac.id', 'Kang Turu', 3, 'Iri gw huss', 'Pending'),
(34, 'fatih', 'fatih@gmail.com', 'Pemilik Lahan', 4, 'Bagus cuy', 'Pending'),
(35, 'Reno Fathan Sofyan', 'reno@gmail.com', 'Pemilik Lahan', 4, 'Kerennn! Website ini menyediakan fitur-fitur seperti analisis prediktif, notifikasi, kemitraan antarprovinsi, kemitraan swasta-publik, dan peta kebutuhan pangan interaktif.', 'Accepted'),
(36, 'Muhammad Fatih Bagaskara', 'fatih@gmail.com', 'Data Analis Agriculate', 5, 'Baguss banget! bisa memberi informasi yang akurat dan terkini mengenai ketersediaan dan harga pangan, memungkinkan perencanaan yang lebih baik melalui kemampuan prediktif', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `topik`
--

CREATE TABLE `topik` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `tanggal` datetime NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topik`
--

INSERT INTO `topik` (`id`, `judul`, `deskripsi`, `tanggal`, `id_user`) VALUES
(2, 'Warning! Jagung lagi surut euy', 'Pangan jagung di bogor lagi berkurang euy, harga jadi naik', '2023-11-09 06:48:43', 2),
(3, 'Pangan', 'qwewad', '2023-11-10 15:06:45', 2),
(4, 'gbgbg', 'hb gv vg hbn jbhvgvbnnhubgyfvtdcrfvtbgyh', '2023-11-14 13:46:13', 2),
(5, 'asrfesfr', 'sadfasfasfds', '2023-11-16 12:03:45', 2),
(6, 'Testing', 'Vokasi Laper lagi coba euy', '2023-11-16 15:29:06', 2),
(8, 'Tanah subur euy 2', 'apa coba', '2023-11-20 13:53:46', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`) VALUES
(2, 'admin', 'admin@gmail.com', '20eabe5d64b0e216796e834f52d61fd0b70332fc'),
(3, 'reno', 'reno@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(4, 'husni', 'husni@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(5, 'risqi', 'risqi@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(7, 'fatih', 'fatih@gmail.com', '123456'),
(10, 'Putra', 'saputraananda@apps.ipb.ac.id', 'admin'),
(11, 'farhan', 'farhan@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(12, 'Putra', 'anandasaputra@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(16, 'Husni', 'husnimubaroksvtn@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441'),
(17, 'Husni', 'husniramadhan@apps.ipb.ac.id', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441'),
(20, 'Husni', 'husni@apps.ipb.ac.id', '1234567');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_mitra`
--
ALTER TABLE `data_mitra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gambar_mitra`
--
ALTER TABLE `gambar_mitra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_tanah`
--
ALTER TABLE `jenis_tanah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topik_komentar` (`id_topik`),
  ADD KEY `user_komentar` (`id_user`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `snapshots`
--
ALTER TABLE `snapshots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topik`
--
ALTER TABLE `topik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topik_user` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_mitra`
--
ALTER TABLE `data_mitra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gambar_mitra`
--
ALTER TABLE `gambar_mitra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_tanah`
--
ALTER TABLE `jenis_tanah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `snapshots`
--
ALTER TABLE `snapshots`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `topik`
--
ALTER TABLE `topik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `topik_komentar` FOREIGN KEY (`id_topik`) REFERENCES `topik` (`id`),
  ADD CONSTRAINT `user_komentar` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `topik`
--
ALTER TABLE `topik`
  ADD CONSTRAINT `topik_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
