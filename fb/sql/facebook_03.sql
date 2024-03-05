-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2015 at 07:26 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tina`
--
DROP DATABASE `tina`;
CREATE DATABASE IF NOT EXISTS `tina` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tina`;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
CREATE TABLE IF NOT EXISTS `friends` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `friend_req_id` varchar(4000) DEFAULT NULL,
  `friend_id` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user_id`, `friend_req_id`, `friend_id`) VALUES
(1, 1, '5,6', '2,3'),
(2, 2, '6,7', '1,3,5'),
(3, 3, '5', '1,2,6'),
(4, 4, '1,2', '5,6'),
(5, 5, '', '2,4,6'),
(6, 6, '7', '3,4,5'),
(7, 7, '1,4', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `post_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `post` varchar(4000) NOT NULL,
  `date` varchar(20) DEFAULT NULL,
  `no_of_likes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `sender_id`, `receiver_id`, `post`, `date`, `no_of_likes`) VALUES
(1, 1, 1, 'one to one post 1', '', 0),
(2, 1, 1, 'one to one post 2', NULL, NULL),
(3, 5, 1, 'five to one post 1', NULL, NULL),
(4, 5, 1, 'five to one post 2', NULL, NULL),
(5, 6, 1, 'six to one post 1', NULL, NULL),
(6, 6, 1, 'six to one post 2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `city` varchar(50) NOT NULL,
  `b_month` varchar(10) NOT NULL,
  `b_day` int(11) NOT NULL,
  `b_year` int(11) NOT NULL,
  `sec_que` varchar(100) DEFAULT NULL,
  `sec_ans` varchar(50) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `old_photo` varchar(100) DEFAULT NULL,
  `cover_photo` varchar(100) DEFAULT NULL,
  `old_cover_photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `f_name`, `l_name`, `email`, `password`, `gender`, `city`, `b_month`, `b_day`, `b_year`, `sec_que`, `sec_ans`, `photo`, `old_photo`, `cover_photo`, `old_cover_photo`) VALUES
(1, 'aaa', 'aaa', 'aaa@aaa.com', 'aaa', 'Female', 'Rajkot', 'jan', 1, 1984, '', '', 'Jellyfish.jpg', 'Tulips.jpg', 'bahubali.jpg', 'img2.jpg'),
(2, 'bbb', 'bbb', 'bbb@bbb.com', 'bbb', 'Female', 'Ahmedabad', 'feb', 2, 1985, '', '', 'Tulips.jpg', 'img2.jpg', 'Bajrangi.jpg', ''),
(3, 'ccc', 'ccc', 'ccc@ccc.com', 'ccc', 'Female', 'Baroda', 'mar', 3, 1986, '', '', 'img3.jpg', '', 'img5.jpg', ''),
(4, 'ddd', 'ddd', 'ddd@ddd.com', 'ddd', 'Female', 'Surat', 'apr', 4, 1987, '', '', 'img4.jpg', '', 'img5.jpg', ''),
(5, 'eee', 'eee', 'eee@eee.com', 'eee', 'male', 'rajkot', 'may', 5, 1995, '', '', 'Jellyfish.jpg', '', 'img5.jpg', ''),
(6, 'fff', 'fff', 'fff@fff.com', 'fff', 'male', 'rajkot', 'june', 6, 1996, '', '', 'Jellyfish.jpg', '', 'img5.jpg', ''),
(7, 'ggg', 'ggg', 'ggg@ggg.com', 'ggg', 'male', 'rajkot', 'july', 7, 1997, '', '', 'Jellyfish.jpg', '', 'img5.jpg', ''),
(8, 'hhh', 'hhh', 'hhh@hhh.com', 'hhh', 'male', 'rajkot', 'aug', 8, 1998, '', '', 'Jellyfish.jpg', '', 'img5.jpg', ''),
(9, 'iii', 'iii', 'iii@iii.com', 'iii', 'male', 'rajkot', 'sep', 9, 1999, '', '', 'Jellyfish.jpg', '', 'img5.jpg', ''),
(10, 'jjj', 'jjj', 'jjj@jjj.com', 'jjj', 'male', 'rajkot', 'oct', 10, 2000, '', '', 'Jellyfish.jpg', '', 'img5.jpg', ''),
(11, 'kkk', 'kkk', 'kkk@kkk.com', 'kkk', 'male', 'rajkot', 'nov', 11, 2001, '', '', 'Jellyfish.jpg', '', 'img5.jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
