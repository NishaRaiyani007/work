-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2015 at 09:27 PM
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
CREATE DATABASE IF NOT EXISTS `tina` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tina`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(50) NOT NULL,
  `book_photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_name`, `book_photo`) VALUES
(1, 'Harry Potter', 'images/images_books/fc1.jpg'),
(2, 'Catching Fire', 'images/images_books/fc2.jpg'),
(3, 'Kite Runner', 'images/images_books/fc3.jpg'),
(4, 'The Last Kingdom', 'images/images_books/fc4.jpg'),
(5, 'The Stone Gods', 'images/images_books/fc5.jpg'),
(6, 'A Dance with Dragons', 'images/images_books/fc6.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `user_id`, `post_id`, `comment`) VALUES
(1, 1, 1, 'Hi Shahid'),
(2, 3, 1, 'Hey, She replied :)'),
(3, 2, 1, ':)'),
(4, 1, 2, 'Hi. Shahid.... I am fine'),
(5, 2, 2, 'So good'),
(6, 1, 2, 'Thanx'),
(7, 1, 3, 'Hi Karina... I am fine ... U say .... How about you'),
(8, 3, 3, 'I am really fine .... And glad that U and Shahid have become friends'),
(9, 1, 3, 'Oh Yeah... That is fine :)'),
(10, 1, 6, 'Yes Ranveer. I am fine... What do you want... Just get out ...'),
(11, 4, 6, 'Oops...'),
(12, 2, 6, 'Oh wow .... Lol ... Ha ha ha'),
(13, 3, 6, 'What .............'),
(14, 2, 7, 'Hey Hansika.... I am really fine... U say....'),
(15, 2, 8, 'Hi Hansika... I am fine.... How about you'),
(16, 3, 8, 'Hello.... I know u both are fine.... Somebody can ask me also....'),
(17, 1, 9, 'He will not reply.....'),
(18, 2, 10, 'Hello Dear Karina....'),
(19, 2, 10, 'Please go away....'),
(20, 1, 10, 'Hey Karina... See ... What did I tell u .....'),
(21, 4, 10, 'Oops... Stop Now....'),
(22, 1, 4, 'Hi'),
(23, 1, 8, 'Hey karina');

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
(1, 1, '', '2,3,4,7,5,6'),
(2, 2, '6,7', '1,3,5'),
(3, 3, '5', '2,6,1'),
(4, 4, '2', '5,6,1'),
(5, 5, '', '2,4,6,1'),
(6, 6, '7', '3,4,5,1'),
(7, 7, '4', '1');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `movie_id` int(11) NOT NULL,
  `movie_name` varchar(50) NOT NULL,
  `movie_photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_name`, `movie_photo`) VALUES
(1, 'Babys Day Out', 'images/images_movies/Babys Day Out.jpg'),
(2, 'bahubali', 'images/images_movies/bahubali.jpg'),
(3, 'Bajrangi Bhaijaan', 'images/images_movies/Bajrangi.jpg'),
(4, 'Life of Pie', 'images/images_movies/Life of Pie.png'),
(5, 'Shooter', 'images/images_movies/Shooter.jpg'),
(6, 'Winters Tale', 'images/images_movies/Winters Tale.jpg');

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
  `likes` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `sender_id`, `receiver_id`, `post`, `date`, `likes`) VALUES
(1, 2, 1, 'Hello Hansika\nThis is Shahid Kapoor\nHow r u', '', '1'),
(2, 2, 1, 'Hi Hansika\nThis is again Shahid Kapoor\nHope u r fine....', NULL, '1,3,6'),
(3, 3, 1, 'Hello Hansika\nThis is Karina Kapoor\nHow r u', NULL, '2,1'),
(4, 3, 1, 'Hi Hansika\nThis is again Karina Kapoor\nHope u r fine....', NULL, '1'),
(5, 6, 1, 'Hello Hansika\nThis is Ranveer Kapoor\nHow r u', NULL, '1,2'),
(6, 6, 1, 'Hi Hansika\nThis is again Ranveer Kapoor\nHope u r fine....', NULL, '2,3,6,1'),
(7, 1, 2, 'Hello Shahid\r\nThis is Hansika Motwani\r\nHow r u', NULL, '2,3,6'),
(8, 1, 2, 'Hi Shahid\r\nThis is again Hansika Motwani\r\nHope u r fine....', NULL, '2,3'),
(9, 3, 2, 'Hello Shahid\r\nThis is Karina Kapoor\r\nHow r u', NULL, '2,3,6,1'),
(10, 3, 2, 'Hi Shahid\r\nThis is again Karina Kapoor\r\nHope u r fine....', NULL, '2,6,1');

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
  `old_cover_photo` varchar(100) DEFAULT NULL,
  `fav_books` varchar(100) DEFAULT NULL,
  `fav_movies` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `f_name`, `l_name`, `email`, `password`, `gender`, `city`, `b_month`, `b_day`, `b_year`, `sec_que`, `sec_ans`, `photo`, `old_photo`, `cover_photo`, `old_cover_photo`, `fav_books`, `fav_movies`) VALUES
(1, 'Hansika', 'Motwani', 'hansika.motwani@gmail.com', 'hansika', 'Female', 'Rajkot', 'jan', 1, 1984, '', '', '1.jpg', 'tada.jpg', '7.JPG', 'windos 8.png', '1,2,3,4,5,6', '1,2,3,4,5,6'),
(2, 'Shahid', 'Kapoor', 'shahid.kapoor@gmail.com', 'shahid', 'Male', 'Ahmedabad', 'feb', 2, 1985, '', '', '2.jpg', 'img2.jpg', '44.jpg', '', '1,6', '1,6'),
(3, 'Karina', 'Kapoor', 'karina.kapoor@gmail.com', 'karina', 'Female', 'Baroda', 'mar', 3, 1986, '', '', '3.jpg', '', '80.jpg', '', '3,4,5,6', '3,4,5,6'),
(4, 'Katerina', 'Kaif', 'katerina.kaif@gmail.com', 'katerina', 'Female', 'Surat', 'apr', 4, 1987, '', '', '4.jpg', '', 'bahubali.jpg', '', '1,3,4,6', '1,3,4,6'),
(5, 'Karina2', 'Kaif', 'katerina@gmail.com', 'karina', 'Female', 'rajkot', 'may', 5, 1995, '', '', '5.jpg', '', 'Bajrangi.jpg', '', '2,4,5,6', '2,4,5,6'),
(6, 'Ranveer', 'Kapoor', 'ranveer.kapoor@gmail.com', 'ranveer', 'male', 'rajkot', 'june', 6, 1996, '', '', '6.jpg', '', 'img1.jpg', '', NULL, NULL),
(7, 'Priyanka', 'Chopra', 'priyanka.chopra@gmail.com', 'priyanka', 'Female', 'rajkot', 'july', 7, 1997, '', '', '7.jpg', '', 'img2.jpg', '', NULL, NULL),
(8, 'Rani', 'Mukharjee', 'rani.mukharjee@gmail.com', 'rani', 'Female', 'rajkot', 'aug', 8, 1998, '', '', '8.jpg', '', 'img3.jpg', '', NULL, NULL),
(9, 'Salman', 'Khan', 'salman.khan@gmail.com', 'salman', 'male', 'rajkot', 'sep', 9, 1999, '', '', '9.jpg', '', 'img4.jpg', '', NULL, NULL),
(10, 'Sonakshi', 'Sinha', 'sonakshi.sinha@gmail.com', 'sonakshi', 'Female', 'rajkot', 'oct', 10, 2000, '', '', '10.jpg', '', 'img5.jpg', '', NULL, NULL),
(11, 'Sonakshi2', 'Sinha', 'sonakshi@gmail.com', 'sonakshi', 'Female', 'rajkot', 'nov', 11, 2001, '', '', '11.jpg', '', 'img6.jpg', '', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`), ADD UNIQUE KEY `comment_id_2` (`comment_id`), ADD KEY `comment_id` (`comment_id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
