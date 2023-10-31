-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2021 at 06:21 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tikunew`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id_film` int(11) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `sinopsis` text DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `tanggal_rilis` date DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id_film`, `judul`, `sinopsis`, `keterangan`, `tanggal_rilis`, `foto`) VALUES
(0, 'Godzilla vs Kong', 'Godzilla vs. Kong bercerita tentang Kong yang melakukan perjalanan berbahaya untuk menemukan rumahnya yang sebenarnya. Kong turut bersama Jia, seorang gadis yatim piatu yang membentuk ikatan unik dengan Kong. Dalam perjalanan, mereka tiba-tiba bertemu dengan Godzilla yang marah dan menyebabkan kehancuran di seluruh kota. Pertikaian epik antara kedua raksasa tersebut yang dipicu oleh kekuatan enggak terlihat, yang terletak jauh di dalam inti Bumi.\r\n\r\n', '1 jam 53 menit', '2021-03-24', 'godzilla.jpg'),
(1, 'The Conjuring: The Devil Made Me Do It', 'Kisah ini salah satu kasus yang paling sensasional dari arsip milik pasangan Warren, kasus dimulai dengan pertarungan demi jiwa seorang bocah lelaki, kemudian kasus ini membawa mereka melampaui apa pun yang pernah mereka lihat sebelumnya. Untuk pertama kalinya dalam sejarah Amerika bahwa seorang tersangka pembunuhan mengklaim bahwa setan yang membuatnya melakukan kejahatan tersebut.', '1 jam 52 menit', '2021-06-04', 'conjuring.jpg'),
(2, 'Fast & Furious 9', 'Jakob Toretto (John Cena) yang tidak lain adalah adik Dom justru menjadi ancaman bagi mereka. Jakob adalah pembunuh paling terampil sekaligus pembalap dengan performa tinggi.\r\n\r\nSebelumnya Jakob pernah bekerja dengan musuh lama Dom, Cipher (Charlize Teron) yang ternyata menyimpan dendam pribadi terhadap Dom.\r\n\r\nDi masa pensiun ini, Dom akan berkumpul lagi dengan timnya untuk menghentikan aksi pembunuhan yang bakal dilakukan sang adik. Konflik keluarga memang menjadi salah satu sekuel penting dalam Fast and Furious 9 ini.\r\n', '2 jam 2 menit', '2021-06-16', 'ff9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(3) NOT NULL,
  `nik` varchar(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `usia` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nik`, `nama`, `usia`) VALUES
(1, '11111', 'tes', 20),
(2, 'A11.2018.11436', 'ALVIN RAFI SYABANA', 20),
(3, '1123445', 'Aldo', 23),
(4, '1123445', 'Aldo', 20),
(5, '1123445', 'Aldo', 23),
(6, '1123445', 'Aldo', 20),
(7, '1123445', 'Aldo', 20),
(8, '29989293828392', 'arda', 21),
(9, '43356', 'rico', 15),
(10, '11345', 'alvin rafi', 20),
(11, '54432', 'rafi', 19),
(12, '11345', 'alvin rafi', 20),
(13, '54432', 'rafi', 19);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(15) NOT NULL,
  `jadwal` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `jadwal`) VALUES
(1, 'Siang'),
(2, 'Sore');

-- --------------------------------------------------------

--
-- Table structure for table `kursi`
--

CREATE TABLE `kursi` (
  `id_kursi` int(11) NOT NULL,
  `nokur` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kursi`
--

INSERT INTO `kursi` (`id_kursi`, `nokur`) VALUES
(1, 'A1'),
(2, 'A2'),
(3, 'A3'),
(4, 'A4'),
(5, 'B1'),
(6, 'B2'),
(7, 'B3'),
(8, 'B4'),
(9, 'C1'),
(10, 'C2'),
(11, 'C3'),
(12, 'C4'),
(13, 'D1'),
(14, 'D2'),
(15, 'D3'),
(16, 'D4'),
(17, 'E1'),
(18, 'E2'),
(19, 'E3'),
(20, 'E4');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `id_film` int(11) DEFAULT NULL,
  `tanggal_nonton` date DEFAULT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `nokur` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id_film`, `tanggal_nonton`, `id_jadwal`, `nokur`) VALUES
(49, 2, '2021-06-11', 2, 'A1'),
(50, 2, '2021-06-11', 2, 'C1'),
(51, 2, '2021-06-11', 2, 'A1'),
(52, 2, '2021-06-11', 2, 'C1'),
(53, 0, '0000-00-00', 1, 'A3'),
(54, 1, '0000-00-00', 2, 'C4'),
(55, 1, '0000-00-00', 2, 'E4'),
(56, 2, '0000-00-00', 1, 'C2'),
(57, 0, '2021-06-28', 2, 'C4'),
(58, 1, '0000-00-00', 1, 'A1'),
(59, 0, '0000-00-00', 2, 'C1'),
(60, 2, '2021-07-06', 2, 'A2'),
(61, 2, '2021-07-06', 2, 'A2'),
(62, 2, '2021-07-06', 2, 'A2'),
(63, 2, '2021-07-07', 2, 'B1'),
(64, 2, '2021-07-07', 2, 'B1'),
(65, 2, '2021-07-08', 2, 'B1'),
(66, 2, '2021-07-08', 2, 'B2'),
(67, 2, '2021-07-08', 2, 'C2'),
(68, 2, '2021-07-08', 2, 'B1'),
(69, 2, '2021-07-08', 2, 'B2'),
(70, 2, '2021-07-08', 2, 'C2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id_film`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `kursi`
--
ALTER TABLE `kursi`
  ADD PRIMARY KEY (`id_kursi`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
