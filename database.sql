-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 25, 2017 at 12:10 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `noivo`
--

-- --------------------------------------------------------

--
-- Table structure for table `recolha`
--

CREATE TABLE IF NOT EXISTS `recolha` (
  `ID_Cliente` int(10) NOT NULL DEFAULT '0',
  `Data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `N_Guia` int(10) NOT NULL DEFAULT '0',
  `Serie` text,
  `N_Prd` int(5) NOT NULL DEFAULT '0',
  `NIF` text,
  `Nome_Produtor` text,
  `Local_Carga` text,
  `Hora` time NOT NULL,
  `L_Vaca` decimal(6,2) NOT NULL DEFAULT '0.00',
  `L_Cabra` decimal(6,2) NOT NULL DEFAULT '0.00',
  `L_Ovelha` decimal(6,2) NOT NULL DEFAULT '0.00',
  `Temperatura` decimal(6,2) NOT NULL DEFAULT '0.00',
  `Cuba` int(5) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `recolha`
--

INSERT INTO `recolha` (`ID_Cliente`, `Data`, `N_Guia`, `Serie`, `N_Prd`, `NIF`, `Nome_Produtor`, `Local_Carga`, `Hora`, `L_Vaca`, `L_Cabra`, `L_Ovelha`, `Temperatura`, `Cuba`, `id`) VALUES
(34, '2017-04-16 23:00:00', 0, NULL, 0, NULL, NULL, NULL, '11:11:16', 9.00, 0.00, 0.00, 0.00, 0, 4),
(45, '2017-04-16 23:00:00', 0, NULL, 0, NULL, NULL, NULL, '11:34:05', 1.44, 2.00, 3.00, 0.00, 0, 5),
(49, '0000-00-00 00:00:00', 0, NULL, 0, NULL, NULL, NULL, '00:00:00', 1.00, 2.00, 3.00, 0.00, 0, 6),
(48, '2017-04-04 23:00:00', 0, NULL, 0, NULL, NULL, NULL, '00:00:00', 4.69, 2.00, 3.00, 32.00, 0, 7),
(79, '2017-04-19 09:35:55', 0, NULL, 0, NULL, NULL, NULL, '10:35:55', 12.00, 0.00, 0.00, 0.00, 0, 10),
(67, '2017-04-19 10:29:35', 2, 'ola', 135, '12432525523', 'hugo serrao', 'condexa', '11:29:35', 6.30, 6.50, 7.40, 6.90, 8, 11),
(89, '2017-04-19 10:34:04', 0, NULL, 0, NULL, NULL, NULL, '11:34:04', 0.00, 0.00, 0.00, 0.00, 0, 12),
(32, '2017-04-19 10:45:59', 0, NULL, 0, NULL, NULL, NULL, '11:45:59', 0.00, 0.00, 0.00, 0.00, 0, 13),
(322, '2017-04-19 10:45:59', 0, NULL, 0, NULL, NULL, NULL, '11:45:59', 0.00, 0.00, 0.00, 0.00, 0, 14),
(334, '2017-04-19 10:46:16', 0, NULL, 0, NULL, NULL, NULL, '11:46:16', 0.00, 0.00, 0.00, 0.00, 0, 15),
(546, '2017-04-19 10:46:16', 0, NULL, 0, NULL, NULL, NULL, '11:46:16', 0.00, 0.00, 0.00, 0.00, 0, 16),
(557, '2017-04-19 10:46:30', 0, NULL, 0, NULL, NULL, NULL, '11:46:30', 0.00, 0.00, 0.00, 0.00, 0, 17),
(754, '2017-04-19 10:46:30', 0, NULL, 0, NULL, NULL, NULL, '11:46:30', 0.00, 0.00, 0.00, 0.00, 0, 18);

-- --------------------------------------------------------

--
-- Table structure for table `utilizadores`
--

CREATE TABLE IF NOT EXISTS `utilizadores` (
  `N_Contribuinte` int(15) NOT NULL,
  `Password` text NOT NULL,
  PRIMARY KEY (`N_Contribuinte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utilizadores`
--

INSERT INTO `utilizadores` (`N_Contribuinte`, `Password`) VALUES
(1, '1'),
(123, '123');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
