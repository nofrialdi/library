-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16 Apr 2019 pada 02.32
-- Versi Server: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'phpgurukulofficial@gmail.com', 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-07-16 18:11:42'),
(2, 'aldi', 'aldi@gmail.com', 'aldi', '123', '2019-04-04 03:00:00'),
(3, 'tes', 'tes@gmail.com', 'tes', 'tes', '2019-04-09 17:00:00'),
(4, 'coba', 'coba@gmail.com', 'coba', 'c3ec0f7b054e729c5a716c8125839829', '2019-04-17 17:00:00'),
(5, 'herry', 'herry@gmail.com', 'herry', '21232f297a57a5a743894a0e4a801fc3', '2019-04-05 10:39:31'),
(6, 'apa', 'apa@gmail.com', 'apa', 'e03ae33ee8417ce2c9785274217636e0', '2019-04-05 11:00:00'),
(7, 'Admin', 'admin@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2019-04-16 23:28:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(10, 'Moch Faisal Salam, S.H., M.H', '2019-04-05 10:58:49', NULL),
(11, 'DR. I Nengah Kastika, S.H., M.H', '2019-04-05 10:59:17', NULL),
(12, 'HPPU-RI', '2019-04-05 11:00:12', NULL),
(13, 'Pusat Studi Hukum Militer', '2019-04-05 11:00:40', NULL),
(14, 'Dr. Dini Dewi Heniarti, S.H., M.H', '2019-04-05 11:01:05', NULL),
(15, 'Cakrawala', '2019-04-05 11:01:22', NULL),
(16, 'Chappy Hakim', '2019-04-05 11:01:32', NULL),
(17, 'Jalasenastri', '2019-04-05 11:01:47', NULL),
(18, 'Uyung Haflan', '2019-04-05 11:01:58', NULL),
(19, 'Peter Kasenda', '2019-04-05 11:02:11', NULL),
(20, 'Diktukpa TNI AD', '2019-04-05 11:02:30', NULL),
(21, 'Mabes TNI', '2019-04-05 11:02:49', NULL),
(22, 'Benny S Butar Butar', '2019-04-05 11:03:06', NULL),
(23, 'Alumni Akabri 1970', '2019-04-05 11:03:24', NULL),
(24, 'SETNEG RI', '2019-04-05 11:03:39', NULL),
(25, 'Yayasan Obor Indonesia', '2019-04-05 11:03:54', NULL),
(26, 'Nino Oktorino', '2019-04-05 11:04:03', NULL),
(27, 'Conrad H Lanza', '2019-04-05 11:04:23', NULL),
(28, 'Zulfan Arif', '2019-04-05 11:04:34', NULL),
(29, 'Djendral A.H Nasution', '2019-04-05 11:04:51', NULL),
(30, 'Bagus Dharmawan', '2019-04-05 11:05:03', NULL),
(31, 'Jamal Yusuf Al-Khulafat', '2019-04-05 11:05:23', NULL),
(32, 'Tji Tjiang feng', '2019-04-05 11:05:34', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` varchar(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`, `Gambar`) VALUES
(23, 'Seni Perang SUN TZU', 12, 32, 'A/2', 65000, '2019-04-05 11:13:10', '2019-04-12 02:44:08', 'GambarBuku/-sun-tzu-36-strategi-1-638.jpg'),
(24, 'Seni Dan Strategi Perang MAsa Rasulullah SAW', 12, 31, 'A/3', 65000, '2019-04-05 11:14:32', '2019-04-12 02:44:35', 'GambarBuku/Strategi_Perang_Masa_Rasulullah_SAW.jpg'),
(25, 'Napoleon dan Strategi Perang Modern', 12, 27, 'A/5', 65000, '2019-04-05 14:58:03', '2019-04-12 02:44:59', 'GambarBuku/Napoleon-1.jpg'),
(26, 'Perang Baratayudha', 12, 28, 'A/6', 65000, '2019-04-05 14:59:11', '2019-04-12 02:45:32', 'GambarBuku/perang batarayudha2.jpg'),
(27, 'Perang Irak', 12, 30, 'A/7', 65000, '2019-04-05 14:59:53', '2019-04-12 02:46:02', 'GambarBuku/perang irak 2.jpg'),
(28, 'Tidar Bhakti Tiada Akhir', 11, 23, 'A/1', 60000, '2019-04-05 15:10:33', '2019-04-12 02:43:18', 'GambarBuku/buku sejarah tidar TNI.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(9, 'Hukum Militer', 1, '2019-04-05 11:06:16', '0000-00-00 00:00:00'),
(10, 'Pendidikan Militer', 1, '2019-04-05 11:06:30', '0000-00-00 00:00:00'),
(11, 'Sejarah TNI', 1, '2019-04-05 11:06:41', '0000-00-00 00:00:00'),
(12, 'Strategi Perang', 1, '2019-04-05 11:06:57', '0000-00-00 00:00:00'),
(13, 'Novel', 1, '2019-04-05 11:07:07', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` varchar(11) DEFAULT NULL,
  `Batas` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`, `Batas`) VALUES
(30, 28, 'KTA02', '2019-04-12 02:59:12', '2019-04-12 02:59:51', 1, 'Baik', '2019-04-20'),
(31, 23, 'KTA01', '2019-04-12 02:59:39', '2019-04-15 05:34:56', 1, 'Hilang', '2019-04-13'),
(32, 24, 'KTA02', '2019-04-12 03:00:28', '2019-04-12 03:00:45', 1, 'Hilang', '2019-04-26'),
(33, 24, 'KTA02', '2019-04-12 03:01:18', '2019-04-12 03:01:27', 1, 'Rusak', '2019-04-20'),
(35, 28, 'KTA01', '2019-04-15 21:36:56', NULL, NULL, NULL, '2019-04-20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Pangkat` varchar(255) DEFAULT NULL,
  `NRP` varchar(255) DEFAULT NULL,
  `Jabatan` varchar(255) DEFAULT NULL,
  `Satuan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`, `Pangkat`, `NRP`, `Jabatan`, `Satuan`) VALUES
(13, 'KTA01', 'Nofrialdi', 'aldi@gmail.com', '08121212', '202cb962ac59075b964b07152d234b70', 1, '2019-04-06 00:17:38', NULL, 'tes', '123', 'coba', 'coba'),
(14, 'KTA02', 'Kusyono Danu Prasetyo S.Kom', 'kusyono@gmail.com', '08121298665', '202cb962ac59075b964b07152d234b70', 1, '2019-04-12 02:56:49', NULL, 'Kapten Laut (E)', '20252/P', '-', 'Seskoal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
