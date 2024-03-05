-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2015 at 08:01 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`username`, `password`) VALUES
('tina', 'tina'),
('priya', 'priya');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(50) NOT NULL,
  `book_photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_name`, `book_photo`) VALUES
(1, 'Harry Potter', 'images/images_books/fc1.jpg'),
(2, 'Catching Fire', 'images/images_books/fc2.jpg'),
(3, 'Kite Runner', 'images/images_books/fc3.jpg'),
(4, 'The Last Kingdom', 'images/images_books/fc4.jpg'),
(5, 'The Stone Gods', 'images/images_books/fc5.jpg'),
(6, 'A Dance with Dragons', 'images/images_books/fc6.jpg'),
(7, 'Get well soon', 'images/images_books/fc7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `chatting`
--

CREATE TABLE IF NOT EXISTS `chatting` (
  `chat_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `chat` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatting`
--

INSERT INTO `chatting` (`chat_id`, `sender_id`, `receiver_id`, `chat`) VALUES
(1, 2, 1, 'Hey Hansika, how r u'),
(2, 1, 2, 'hello shahid... I am fine U say howz u'),
(3, 2, 1, 'Absolutely fine dear... What is the plan for this weekend?'),
(4, 1, 2, 'Nothing... Why?'),
(5, 2, 1, 'Okey, Then lets meet up... It has been to long to see u'),
(6, 1, 2, 'Ya sure... want to tell other guys also? Ranveer and Karina....?'),
(7, 2, 1, 'Ya sure... I will call them'),
(8, 1, 2, 'Ok then tell me time and place'),
(9, 2, 1, 'well, I will pick you up from your home at 7 this saturday... Be ready...'),
(10, 1, 2, 'Ya sure, what about the other guys?'),
(11, 2, 1, 'They will reach by their own'),
(12, 1, 2, 'Ok fine.. see u then.... Bye...'),
(15, 1, 7, 'Hi Priyanka'),
(16, 7, 1, 'Hey Hansika, After long time dear... Howz u.. ...'),
(17, 1, 7, 'I''m fine.. tnx.. btw shahid is organizing a small g2g this weekend.. wanna come?'),
(18, 7, 1, 'Yaa... I will come.. Who else gonna come?'),
(19, 1, 7, 'I know about ranveer and karina... They are going to come... If any one other is coming then I dont know...'),
(20, 7, 1, 'Ok fine'),
(21, 1, 7, 'We ll have lots of fun :)'),
(22, 7, 1, 'Yes. I m also exciting... we will meet after such a long time...'),
(23, 1, 7, 'Yup. Then be ready at 7 this saturday. Shahid and me will come at your place to pick you up.'),
(24, 7, 1, 'Ok yaar... I will be waiting :)'),
(25, 1, 7, 'Bye'),
(26, 7, 1, 'Bye');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

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
(23, 1, 8, 'Hey karina'),
(24, 6, 6, 'Just shut up guys... :x'),
(25, 9, 1, 'hello hansika'),
(26, 1, 6, 'hello u ranveer ... plz get out'),
(27, 1, 11, 'hiiiiiiiiiiii'),
(28, 1, 1, 'hiiiiiiiiiiii');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `friend_req_id` varchar(4000) DEFAULT NULL,
  `friend_id` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user_id`, `friend_req_id`, `friend_id`) VALUES
(1, 1, '', '2,7,6,9,4,9,9,9,9,9,9,9,14'),
(2, 2, '', '1,3,5,6,7,9,14'),
(3, 3, '1,14,14,14,14,14,14', '2,6,5'),
(4, 4, '2,12', '5,6,1,12'),
(5, 5, '', '2,4,6,3'),
(6, 6, '7', '3,4,5,1,2'),
(7, 7, '4,3', '1,2'),
(8, 9, '10', '1,2,12,1,1,1,1,1,1,1,14'),
(9, 12, '13,13,14', '4,9,14'),
(10, 13, '12', NULL),
(11, 14, '', '1,2,9,12');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `movie_id` int(11) NOT NULL,
  `movie_name` varchar(50) NOT NULL,
  `movie_photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_name`, `movie_photo`) VALUES
(1, 'Babys Day Out', 'images/images_movies/Babys Day Out.jpg'),
(2, 'bahubali', 'images/images_movies/bahubali.jpg'),
(3, 'Bajrangi Bhaijaan', 'images/images_movies/Bajrangi.jpg'),
(4, 'Life of Pie', 'images/images_movies/Life of Pie.png'),
(5, 'Shooter', 'images/images_movies/Shooter.jpg'),
(6, 'Winters Tale', 'images/images_movies/Winters Tale.jpg'),
(8, 'Veer-Jara', 'images/images_movies/veer-jara.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `post_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `post` varchar(4000) NOT NULL,
  `date` varchar(20) DEFAULT NULL,
  `likes` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

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
(10, 3, 2, 'Hi Shahid\r\nThis is again Karina Kapoor\r\nHope u r fine....', NULL, '2,6,1'),
(11, 1, 1, '', NULL, NULL),
(12, 1, 1, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `f_name`, `l_name`, `email`, `password`, `gender`, `city`, `b_month`, `b_day`, `b_year`, `sec_que`, `sec_ans`, `photo`, `old_photo`, `cover_photo`, `old_cover_photo`, `fav_books`, `fav_movies`) VALUES
(1, 'Hansika', 'Motwani', 'hansika.motwani@gmail.com', '2f53b84274bfad2ea60a44ff120f526b', 'Female', 'Rajkot', 'jan', 1, 1984, '', '', '1.jpg', 'tada.jpg', '7.JPG', 'windos 8.png', '1,3,4,5,6,7', '1,2,3,6,8'),
(2, 'Shahid', 'Kapoor', 'shahid.kapoor@gmail.com', 'f3224d90c778d5e456b49c75f85dd668', 'Male', 'Ahmedabad', 'feb', 2, 1985, '', '', '2.jpg', 'img2.jpg', '44.jpg', '', '1,6', '1,6'),
(3, 'Karina', 'Kapoor', 'karina.kapoor@gmail.com', 'a37b2a637d2541a600d707648460397e', 'Female', 'Baroda', 'mar', 3, 1986, '', '', '3.jpg', '', '80.jpg', '', '3,4,5,6,1', '3,4,5,6'),
(4, 'Katerina', 'Kaif', 'katerina.kaif@gmail.com', '16e32c2b68d80f02c4216cf316d870e2', 'Female', 'Surat', 'apr', 4, 1987, '', '', '4.jpg', '', 'bahubali.jpg', '', '1,3,4,6', '1,3,4,6'),
(6, 'Ranveer', 'Kapoor', 'ranveer.kapoor@gmail.com', '0f0118c2c24d907381ced6dbb51b1119', 'male', 'rajkot', 'june', 6, 1996, '', '', '6.jpg', '', 'img1.jpg', '', NULL, NULL),
(7, 'Priyanka', 'Chopra', 'priyanka.chopra@gmail.com', '1fd96777aedeadb325c66f3780054765', 'Female', 'rajkot', 'july', 7, 1997, '', '', '7.jpg', '', 'img2.jpg', '', NULL, NULL),
(8, 'Rani', 'Mukharjee', 'rani.mukharjee@gmail.com', 'b9f81618db3b0d7a8be8fd904cca8b6a', 'Female', 'rajkot', 'aug', 8, 1998, '', '', '8.jpg', '', 'img3.jpg', '', NULL, NULL),
(9, 'Salman', 'Khan', 'salman.khan@gmail.com', '03346657feea0490a4d4f677faa0583d', 'male', 'rajkot', 'sep', 9, 1999, '', '', '9.jpg', '', 'img4.jpg', '', '3,2', '3,2'),
(10, 'Sonakshi', 'Sinha', 'sonakshi.sinha@gmail.com', 'dd1abeead4a633ed7837ff05a3291436', 'Female', 'rajkot', 'oct', 10, 2000, '', '', '10.jpg', '', 'img5.jpg', '', NULL, NULL),
(12, 'dipika', 'padukon', 'dipika.padukon@gmail.com', '1aa1246288a791e17901ae249ae87d14', 'Female', 'Baroda', 'may', 6, 1986, NULL, NULL, '12.jpg', NULL, '80.jpg', NULL, '6,7,1', '8,1,4,5'),
(14, 'akshay', 'kumar', 'akshay@gmail.com', '2de1b2d6a6738df78c5f9733853bd170', 'Male', 'Ahmedabad', 'jun', 2, 1986, NULL, NULL, '112.jpg', NULL, 'img5.jpg', NULL, '1,5,4,7', '2,5,6,1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `chatting`
--
ALTER TABLE `chatting`
  ADD PRIMARY KEY (`chat_id`);

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
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `chatting`
--
ALTER TABLE `chatting`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
