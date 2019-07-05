-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2017 at 10:09 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `absensi_mahasiswa`
--
CREATE DATABASE IF NOT EXISTS `absensi_mahasiswa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `absensi_mahasiswa`;

-- --------------------------------------------------------

--
-- Table structure for table `absen`
--

CREATE TABLE IF NOT EXISTS `absen` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nim` varchar(10) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Datang` time DEFAULT NULL,
  `Pulang` time DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Nim` (`Nim`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `absen`
--

INSERT INTO `absen` (`Id`, `Nim`, `Tanggal`, `Datang`, `Pulang`) VALUES
(7, '002', '2017-04-28', '21:28:24', '21:29:19'),
(8, '001', '2017-04-28', '21:28:30', '21:28:52'),
(10, '003', '2017-04-28', '21:28:46', '21:29:13'),
(11, '004', '2017-04-29', '15:09:40', '15:09:48'),
(12, '002', '2017-05-19', '09:58:42', '09:58:49'),
(13, '003', '2017-05-19', '09:59:05', '09:59:17'),
(15, '004', '2017-05-23', '21:39:07', '21:39:14'),
(16, '006', '2017-05-28', '13:12:19', '13:12:26'),
(17, '001', '2017-05-28', '13:19:39', '13:20:20'),
(18, '002', '2017-05-28', '13:20:10', '13:20:24'),
(19, '001', '2017-06-03', '14:43:31', '14:43:36');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `Nim` varchar(10) NOT NULL DEFAULT '',
  `Nama` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Gender` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `Nohp` varchar(15) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`Nim`, `Nama`, `Password`, `Gender`, `Nohp`, `Email`) VALUES
('001', 'Tina', 'dc5c7986daef50c1e02ab09b442ee34f', 'Perempuan', '0838733647874', 'tina@gmail.com'),
('002', 'Agus', '93dd4de5cddba2c733c65f233097f05a', 'Laki-Laki', '089677564564', 'agus@gmail.com'),
('003', 'Wati', 'e88a49bccde359f0cabb40db83ba6080', 'Perempuan', '085376868754', 'wati@gmail.com'),
('004', 'Haliza', '11364907cf269dd2183b64287156072a', 'Perempuan', '089676763527', 'haliza@gmail.com'),
('005', 'Dwi', '123', 'Perempuan', '08473627545', 'dwi@gmail.com'),
('006', 'Citra', '568628e0d993b1973adc718237da6e93', 'Perempuan', '08932763766', 'citra@gmail.com'),
('007', 'Nina', '9e94b15ed312fa42232fd87a55db0d39', 'Perempuan', '087645267545', 'nina@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `level`) VALUES
(1, 'admin', 'pass', 'Administrator', 1),
(2, 'user', 'pass', 'User', 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absen`
--
ALTER TABLE `absen`
  ADD CONSTRAINT `absen_ibfk_1` FOREIGN KEY (`Nim`) REFERENCES `mahasiswa` (`Nim`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
