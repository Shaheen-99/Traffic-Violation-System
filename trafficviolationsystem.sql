-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 04, 2022 at 06:38 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trafficviolationsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `carinfo`
--

DROP TABLE IF EXISTS `carinfo`;
CREATE TABLE IF NOT EXISTS `carinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carno` int(15) DEFAULT NULL,
  `carName` varchar(20) DEFAULT NULL,
  `cartype` varchar(20) DEFAULT NULL,
  `carmodel` int(12) DEFAULT NULL,
  `carcolor` varchar(15) DEFAULT NULL,
  `carVIN` int(13) DEFAULT NULL,
  `carCategory` varchar(15) DEFAULT NULL,
  `carletter` varchar(5) DEFAULT NULL,
  `carGovernorate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carinfo`
--

INSERT INTO `carinfo` (`id`, `carno`, `carName`, `cartype`, `carmodel`, `carcolor`, `carVIN`, `carCategory`, `carletter`, `carGovernorate`) VALUES
(5, 5147, 'Kia K5', 'SUV', 2017, 'Red', 184, 'Personal', 'A', 'Basra');

-- --------------------------------------------------------

--
-- Table structure for table `ownerinfo`
--

DROP TABLE IF EXISTS `ownerinfo`;
CREATE TABLE IF NOT EXISTS `ownerinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carno` int(12) DEFAULT NULL,
  `ownername` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `DrivingLicense` varchar(10) DEFAULT NULL,
  `PhoneNo` int(17) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ownerinfo`
--

INSERT INTO `ownerinfo` (`id`, `carno`, `ownername`, `gender`, `dob`, `DrivingLicense`, `PhoneNo`) VALUES
(4, 5147, 'Ali Ahmed', 'Male', '1999/7/6', '19786', 1478523);

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

DROP TABLE IF EXISTS `userlogin`;
CREATE TABLE IF NOT EXISTS `userlogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `violations`
--

DROP TABLE IF EXISTS `violations`;
CREATE TABLE IF NOT EXISTS `violations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `violationNO` int(11) DEFAULT NULL,
  `carno` int(15) DEFAULT NULL,
  `onwername` varchar(22) DEFAULT NULL,
  `violationamount` int(50) DEFAULT NULL,
  `violationwhy` varchar(50) DEFAULT NULL,
  `violationdate` varchar(50) DEFAULT NULL,
  `violationlocation` varchar(25) DEFAULT NULL,
  `officerviolationname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `violations`
--

INSERT INTO `violations` (`id`, `violationNO`, `carno`, `onwername`, `violationamount`, `violationwhy`, `violationdate`, `violationlocation`, `officerviolationname`) VALUES
(3, 12, 5147, 'Ali Ahmed', 150, 'Speed 180', '2021/12/29', 'Basra', 'Jassem Ali');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
