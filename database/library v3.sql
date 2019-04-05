-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Apr 2019 pada 17.43
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
(6, 'apa', 'apa@gmail.com', 'apa', 'e03ae33ee8417ce2c9785274217636e0', '2019-04-05 11:00:00');

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
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`, `Gambar`) VALUES
(18, '98978712', 6, 5, 987786, 878675, '2019-04-07 14:14:38', '2019-04-07 15:07:04', 'GambarBuku/kisspng-c-programming-language-logo-microsoft-visual-stud-atlas-portfolio-5b8991925c19f7.9738748215357423543773.jpg'),
(21, 'hahaha', 5, 5, 87867, 2147483647, '2019-04-07 14:46:39', NULL, 'images.jpg'),
(22, '090909', 4, 4, 8986, 89989, '2019-04-07 14:51:08', NULL, 'GambarBuku/download.png'),
(23, 'Seni Perang SUN TZU', 12, 32, 0, 65000, '2019-04-05 11:13:10', '2019-04-05 13:22:49', 'GambarBuku/-sun-tzu-36-strategi-1-638.jpg'),
(24, 'Seni Dan Strategi Perang MAsa Rasulullah SAW', 12, 31, 0, 65000, '2019-04-05 11:14:32', '2019-04-05 13:32:01', 'GambarBuku/Strategi_Perang_Masa_Rasulullah_SAW.jpg'),
(25, 'Napoleon dan Strategi Perang Modern', 12, 27, 0, 65000, '2019-04-05 14:58:03', NULL, 'GambarBuku/Napoleon-1.jpg'),
(26, 'Perang Baratayudha', 12, 28, 0, 65000, '2019-04-05 14:59:11', NULL, 'GambarBuku/perang batarayudha2.jpg'),
(27, 'Perang Irak', 12, 30, 0, 65000, '2019-04-05 14:59:53', NULL, 'GambarBuku/perang irak 2.jpg'),
(28, 'Tidar Bhakti Tiada Akhir', 11, 23, 0, 60000, '2019-04-05 15:10:33', NULL, 'GambarBuku/buku sejarah tidar TNI.jpg'),
(30, 'JAKIBGSIJBAJB', 9, 22, 0, 12000, '2019-04-05 15:39:43', NULL, 'GambarBuku/buku sejarah tidar TNI.jpg');

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
  `fine` int(11) DEFAULT NULL,
  `Batas` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`, `Batas`) VALUES
(1, 1, 'SID002', '2017-07-15 06:09:47', '2017-07-15 11:15:20', 1, 0, NULL),
(2, 1, 'SID002', '2017-07-15 06:12:27', '2017-07-15 11:15:23', 1, 5, NULL),
(3, 3, 'SID002', '2017-07-15 06:13:40', NULL, 0, NULL, NULL),
(4, 3, 'SID002', '2017-07-15 06:23:23', '2017-07-15 11:22:29', 1, 2, NULL),
(5, 1, 'SID009', '2017-07-15 10:59:26', NULL, 0, NULL, NULL),
(6, 3, 'SID011', '2017-07-15 18:02:55', NULL, 0, NULL, NULL),
(7, 1, 'SID002', '2019-04-04 05:48:30', NULL, NULL, NULL, NULL),
(8, 3, 'SID014', '2019-04-04 05:49:46', '2019-04-04 05:54:46', 1, 200, NULL),
(9, 3, 'SID014', '2019-04-04 05:56:46', '2019-04-04 05:57:28', 1, 0, NULL),
(10, 3, 'SID014', '2019-04-05 02:22:08', NULL, NULL, NULL, NULL),
(11, 3, 'SID014', '2019-04-05 02:22:31', '2019-04-05 04:33:16', 1, 0, NULL),
(12, 3, 'SID015', '2019-04-06 02:03:24', NULL, NULL, NULL, '0000-00-00'),
(13, 3, 'SID015', '2019-04-06 02:04:52', NULL, NULL, NULL, '0000-00-00'),
(14, 3, 'SID015', '2019-04-06 02:10:12', NULL, NULL, NULL, '2019-04-13'),
(15, 3, 'SID015', '2019-04-06 02:22:54', NULL, NULL, NULL, '2019-04-27'),
(16, 3, 'SID015', '2019-04-07 02:17:26', NULL, NULL, NULL, NULL),
(17, 3, 'SID015', '2019-04-07 02:18:28', NULL, NULL, NULL, '2019-04-13'),
(18, 22, 'SID015', '2019-04-07 15:18:30', NULL, NULL, NULL, '2019-04-06');

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
(1, 'SID002', 'Anuj kumar', 'anuj.lpu1@gmail.com', '9865472555', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-11 15:37:05', '2017-07-15 18:26:21', NULL, NULL, NULL, NULL),
(4, 'SID005', 'sdfsd', 'csfsd@dfsfks.com', '8569710025', '92228410fc8b872914e023160cf4ae8f', 0, '2017-07-11 15:41:27', '2019-04-05 03:56:30', NULL, NULL, NULL, NULL),
(8, 'SID009', 'test', 'test@gmail.com', '2359874527', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-11 15:58:28', '2017-07-15 13:42:44', NULL, NULL, NULL, NULL),
(9, 'SID010', 'Amit', 'amit@gmail.com', '8585856224', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-15 13:40:30', NULL, NULL, NULL, NULL, NULL),
(10, 'SID011', 'Sarita Pandey', 'sarita@gmail.com', '4672423754', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-15 18:00:59', NULL, NULL, NULL, NULL, NULL),
(11, 'SID013', 'tes', 'tes@gmail.com', '123', '28b662d883b6d76fd96e4ddc5e9ba780', 1, '2019-04-04 03:03:39', NULL, NULL, NULL, NULL, NULL),
(12, 'SID014', 'coba lagi', 'cobalagi@gmail.com', '123', '202cb962ac59075b964b07152d234b70', 1, '2019-04-04 05:12:37', NULL, NULL, NULL, NULL, NULL),
(13, 'SID015', 'Nofrialdi', 'aldi@gmail.com', '08121212', '202cb962ac59075b964b07152d234b70', 1, '2019-04-06 00:17:38', NULL, 'tes', '123', 'coba', 'coba');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
