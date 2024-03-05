-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 18, 2015 at 10:46 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tina`
--
CREATE DATABASE `tina` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tina`;

-- --------------------------------------------------------

--
-- Table structure for table `facebook`
--

CREATE TABLE IF NOT EXISTS `facebook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `city` varchar(50) NOT NULL,
  `b_month` varchar(10) NOT NULL,
  `b_day` int(11) NOT NULL,
  `b_year` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `cover_photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `facebook`
--

INSERT INTO `facebook` (`id`, `f_name`, `l_name`, `email`, `password`, `gender`, `city`, `b_month`, `b_day`, `b_year`, `photo`, `cover_photo`) VALUES
(1, 'aaa', 'aaa', 'aaa@aaa.com', 'aaa', 'Female', 'Rajkot:', 'jan:', 1, 1984, 'img1.jpg', 'img5.jpg'),
(2, 'bbb', 'bbb', 'bbb@bbb.com', 'bbb', 'Female', 'Ahmedabad:', 'feb:', 2, 1985, 'img2.jpg', 'img5.jpg'),
(3, 'ccc', 'ccc', 'ccc@ccc.com', 'ccc', 'Female', 'Baroda:', 'mar:', 3, 1986, 'img3.jpg', 'img5.jpg'),
(4, 'ddd', 'ddd', 'ddd@ddd.com', 'ddd', 'Female', 'Surat:', 'apr:', 4, 1987, 'img4.jpg', 'img5.jpg');
