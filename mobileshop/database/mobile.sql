-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 21, 2015 at 08:35 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mobile`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `user_nm` varchar(50) NOT NULL,
  `user_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_nm`, `user_pass`) VALUES
('mobile', 'mobile');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE IF NOT EXISTS `bill` (
  `b_id` varchar(100) NOT NULL,
  `b_pro_nm` varchar(500) NOT NULL,
  `b_path` varchar(100) NOT NULL,
  `b_price` int(100) NOT NULL,
  `b_quantity` int(100) NOT NULL,
  `b_user_nm` varchar(50) NOT NULL,
  `b_mode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`b_id`, `b_pro_nm`, `b_path`, `b_price`, `b_quantity`, `b_user_nm`, `b_mode`) VALUES
('4', 'samsung', 'images/samsung-galaxy-s6-edge.jpg', 55000, 1, 'koringanehal@gmail.com', 'CASE PAYMENT'),
('4', 'samsung', 'images/samsung-galaxy-s6-edge.jpg', 55000, 1, 'koringanehal@gmail.com', 'CASE PAYMENT'),
('10', 'sony', 'images/sony-xperia-m.jpg', 9000, 1, 'koringanehal@gmail.com', 'CASE PAYMENT'),
('9', 'sony', 'images/sony-xperia-e1.jpg', 7500, 1, 'koringanehal@gmail.com', 'CASE PAYMENT'),
('15', 'htc', 'images/htc_desire_816.jpg', 20000, 1, 'koringanehal@gmail.com', 'CASE PAYMENT'),
('12', 'sony', 'images/sony-xperia-z3.jpg', 15000, 1, 'koringanehal@gmail.com', 'CASE PAYMENT'),
('15', 'htc', 'images/htc_desire_816.jpg', 20000, 1, 'koringanehal@gmail.com', 'CASE PAYMENT'),
('12', 'sony', 'images/sony-xperia-z3.jpg', 15000, 1, 'koringanehal@gmail.com', 'CASE PAYMENT'),
('6', 'gionee', 'images/Gionee-Elife-E3.jpg', 14000, 1, 'nehal', 'CASE PAYMENT'),
('2', 'samsung', 'images/samsung-galaxy-core-prime.jpg', 7500, 1, 'nehal', 'CASE PAYMENT'),
('16', 'htc', 'images/htc-one-max.jpg', 40000, 1, 'dhara', 'CASE PAYMENT'),
('9', 'sony', 'images/sony-xperia-e1.jpg', 7500, 1, 'dhara', 'CASE PAYMENT');

-- --------------------------------------------------------

--
-- Table structure for table `cate`
--

CREATE TABLE IF NOT EXISTS `cate` (
  `c_id` int(20) NOT NULL AUTO_INCREMENT,
  `c_nm` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cate`
--

INSERT INTO `cate` (`c_id`, `c_nm`, `image`) VALUES
(1, 'samsung', 'images/samsung-galaxy-s6-edge.jpg'),
(2, 'gionee', 'images/g2.jpg'),
(3, 'sony', ' images/sony-xperia-m.jpg'),
(4, 'htc', 'images/htc-desire-310.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `f_id` int(10) NOT NULL AUTO_INCREMENT,
  `f_nm` varchar(20) NOT NULL,
  `f_address` varchar(50) NOT NULL,
  `f_mobileno` varchar(10) NOT NULL,
  `f_email` varchar(50) NOT NULL,
  `f_query` varchar(100) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_nm`, `f_address`, `f_mobileno`, `f_email`, `f_query`) VALUES
(1, 'nehal', 'cv', '9979136078', 'nku@gmail.com', 'cvbnm,.'),
(2, 'd', 'zzz', '1111111111', 'd@gmail.com', 'nice'),
(3, 'nehal', 'sdfghj,', '9979136078', 'koringanehal@gmail.com', 'nice'),
(4, 'a', 'sdfghjk.', '1234567890', 'a@gmail.com', 'ddddsdfghjk.'),
(5, 'abc', 'asdfghj', '123456789', 'abc@gmail.com', 'wertyuikl/'),
(6, 'n', 'xcvbn', '1111111111', 'n@gmail.com', 'sdfgbn'),
(7, 'nnnnnn', 'cvbn', '9979136078', '1@gmail.com', 'xcvbn'),
(8, 'a', 'asdfbn', '1234567890', 'n@gmail.com', 'xcvbn'),
(9, 'q', 'cvfghjk,.', '9979136078', 'a@gmail.com', 'sdfghm,./'),
(10, 'nehal', 'xcvbnm,.', '9979136078', 'koringanehal@gmail.com', 'dfbnm,./'),
(11, 'nnnnnn', 'sdfghjk,./', '123456789', 'n@gmail.com', 'sdfghj,.,mnbvc'),
(12, 'm', 'sdfghjkl', '1234567890', 'abc@gmail.com', 'sdfghnm,');

-- --------------------------------------------------------

--
-- Table structure for table `order1`
--

CREATE TABLE IF NOT EXISTS `order1` (
  `or_id` int(7) NOT NULL,
  `or_path` varchar(600) NOT NULL,
  `or_pro_nm` varchar(100) NOT NULL,
  `or_price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order1`
--

INSERT INTO `order1` (`or_id`, `or_path`, `or_pro_nm`, `or_price`) VALUES
(10, 'images/sony-xperia-m.jpg', 'sony', 9000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `c_nm` char(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `image` varchar(300) NOT NULL,
  `price` int(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `pro_stock` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `c_nm`, `category`, `image`, `price`, `description`, `pro_stock`) VALUES
(1, 'samsung', 'samsung-galaxy-j1', 'images/samsung-galaxy-j1.jpg', 7000, ' <b><font color=''black'' size=3>       	1.2 GHz , Dual Core Processor</br> 512 Mb RAM</br>      	4.3 inches , 800 X 480 pixels  Disply</br>      Dual SIM</br>      5 MP Camera With LED Flash</br>      2 MP Front Camera</br>     3G</br>     WiFi</br>     Bluetooth</br>     FM Radio</br>     1850 MAh Battery</br>', 19),
(2, 'samsung', 'samsung-galaxy-core-prime', 'images/samsung-galaxy-core-prime.jpg', 7500, '<b><font color=''black'' size=3>      1.3 GHz Quad Core Processor</br>      1 GB RAM</br>      4.5 Inch WVGA PLS Touch Screen Disply</br>      Dual SIM</br>      5MP Camera With LED Flash</br>      2 MP Front Camera</br>     3G</br>     WiFi</br>     Bluetooth</br>     FM Radio</br>     2000 MAh Battery</br>', 20),
(3, 'samsung', 'samsung-galaxy-e7', 'images/samsung-galaxy-e7.jpg', 23000, '<b><font color=''black'' size=3>1.2GHz  Quad Core Processor</br>2 GB RAM</br>5.50-inch Disply</br> Dual SIM</br>13MP Camera With LED Flash</br> 5 MP Front Camera</br>3G</br>     WiFi</br>     Bluetooth</br>     FM Radio</br>2000 MAh Battery</br>2950mAh MAh Battery</br>', 20),
(4, 'samsung', 'samsung-galaxy-s6-edge', 'images/samsung-galaxy-s6-edge.jpg', 55000, '<b><font color=''black'' size=3>1.5GHz  octa-core Processor</br> 3 GB RAM</br>5.10 Inch Touch Screen Disply</br>Nano-SIM </br>16MP Camera With LED Flash</br>5 MP Front Camera</br>3G,Supports 4G </br>WiFi</br>     Bluetooth</br>     FM Radio</br>     2000 MAh Battery</br>', 0),
(5, 'gionee', 'gionee-pioneer-p4', 'images/gionee-pioneer-p4.jpg', 7000, '<b><font color=''black'' size=3>1.3 GHz , MT6582V , Quad CoreProcessor</br> 1 GB RAM</br> 	4.5 inches , 854 X 480 pixels Touch Screen Disply</br> Dual SIM</br>5MP Camera With LED Flash</br>      2 MP Front Camera</br>3G</br>     WiFi</br>     Bluetooth</br>     FM Radio</br>1800 mAh Battery</br>', 20),
(6, 'gionee', 'Gionee-Elife-E3', 'images/Gionee-Elife-E3.jpg', 14000, '<b><font color=''black'' size=3>      1.2 GHz Quad Core Processor</br>      1GB RAM</br>      4.7 Inch IPS HD Display</br>      Dual SIM Support</br>      8MP Camera</br>      2 MP Front Facing Camera</br>      DTS 3D Surround Sound</br>      3G</br>      WiFi</br>      16GB On-Board Storage</br>      Android 4.2.1</br>      1800 MAh Battery</br>', 20),
(7, 'gionee', 'gionee-gpad-g4', 'images/gionee-gpad-g4.jpg', 15000, '<b><font color=''black'' size=3> 	1.5 GHz , Cortex-A7 , Quad Core Processor</br> 1 GB RAM</br> 	5.7 inches , 1280 X 720 pixels Touch Screen Disply</br>Dual SIM</br>13MP Camera With LED Flash</br> 5MP Front Camera</br>3G</br>WiFi</br>     Bluetooth</br>     FM Radio</br>     3200 mAh  MAh Battery</br>', 20),
(8, 'gionee', 'gionee-e7', 'images/gionee-e7.jpg', 22000, ' <b><font color=''black'' size=3> Quad-core 2.5 GHz Processor</br>3 GB RAM</br> 4.5 Inch 1080 x 1920 pixels  Touch Screen Disply</br>Dual SIM</br> 5MP Camera With LED Flash</br>2 MP Front Camera</br>     3G</br>     WiFi</br>     Bluetooth</br>     FM Radio</br>     2500  MAh Battery</br>', 19),
(9, 'sony', 'Sony Xperia E1', 'images/sony-xperia-e1.jpg', 7500, ' <b><font color=''black'' size=3> 1.2 GHz ,   Dual-Core  Processor</br>512 MB RAM</br>  4 inches , 800 X 480 pixels  Disply</br>dual  SIM</br> 3.15 MP Camera </br> No Flash Light  </br>3G</br>     WiFi</br>     Bluetooth</br>     FM Radio</br>      1750 mAh   MAh Battery</br>', 20),
(10, 'sony', 'sony-xperia-m', 'images/sony-xperia-m.jpg', 9000, '<b><font color=''black'' size=3> 1 GHz ,   Dual-Core  Processor</br>1 GB RAM</br>  4 inches , 854 X 480  pixels  Disply</br>dual  SIM</br> 5 MP Camera with Flash Light  </br>3G</br>     WiFi</br>     Bluetooth</br>     FM Radio</br>      1750 mAh   MAh Battery</br>', 20),
(11, 'sony', 'sony-xperia-t3', 'images/sony-xperia-t3.jpg', 15500, '    <b><font color=''black'' size=3> 1.4 GHz , Quad Core  Processor</br>1 GB RAM</br>  5.3 inches , 1280 X 720 pixels   Disply</br>Single  SIM</br> 58 MP Camera with Flash Light  </br> 1.1 MP Front Camera</br>3G</br>4G</br>     WiFi</br>     Bluetooth</br>     FM Radio</br>      2500 mAh   MAh Battery</br>', 20),
(12, 'sony', 'sony-xperia-z3', 'images/sony-xperia-z3.jpg', 15000, '     <b><font color=''black'' size=3>2.5GHz  Quad Core Processor</br>3 GB RAM</br>5.20-inch Touch Screen Disply</br> Dual SIM</br>20.7MP Camera With LED Flash</br>2.2 MP Front Camera</br>3G</br>     WiFi</br>     Bluetooth</br>     FM Radio</br> 3100mAh MAh Battery</br>', 20),
(13, 'htc', 'htc-desire-310', 'images/htc-desire-310.jpg', 9000, ' <b><font color=''black'' size=3> 1.3 GHz ,  Quad-Core  Processor  </br>512 Mb RAM</br> 4.5 inches , 854 X 480 pixels </br>Dual SIM</br> 5MP Camera </br>VGA Front Camera 	</br> No Flash Light </br>3G</br>     WiFi</br>     Bluetooth</br>     FM Radio</br>     2000 mAh   MAh Battery</br>', 20),
(14, 'htc', 'htc_desire_616', 'images/htc_desire_616.jpg', 15000, '<b><font color=''black'' size=3>1.4GHz  octa-core Processor</br>   1 GB RAM</br>5.00-inch 720x1280 Touch Screen display</br>Dual SIM</br> 8MP Camera With LED Flash</br>      2 MP Front Camera</br>WiFi</br>     Bluetooth</br>     FM Radio</br>     2000 MAh Battery</br>', 19),
(15, 'htc', 'htc_desire_816', 'images/htc_desire_816.jpg', 20000, '<b><font color=''black'' size=3> 1.6 GHz ,  Quad-Core Processor</br>1.5 GB RAM</br>  5.5 inches , 1280 X 720 pixels Disply</br>Dual SIM</br> 13MP Camera With LED Flash </br>5 MP Front Camera</br>3G</br>     WiFi</br>     Bluetooth</br>     FM Radio</br>     2600   MAh Battery</br>', 20),
(16, 'htc', 'htc-one-max', 'images/htc-one-max.jpg', 40000, '<b><font color=''black'' size=3> 1.7 GHz ,  Quad-Core Processor</br>2 GB RAM</br>  5.9 inches , 1920 X 1080 pixels Disply</br>Single  SIM</br> 4MP Camera With LED Flash </br>3G,4G Supports</br>     WiFi</br>     Bluetooth</br>     FM Radio</br>     3300    MAh Battery</br>', 20);

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE IF NOT EXISTS `userinfo` (
  `u_id` int(5) NOT NULL AUTO_INCREMENT,
  `u_nm` varchar(50) NOT NULL,
  `u_email` varchar(50) NOT NULL,
  `u_password` varchar(10) NOT NULL,
  `u_mobileno` varchar(10) NOT NULL,
  `u_address` varchar(100) NOT NULL,
  `u_pincode` varchar(10) NOT NULL,
  `u_city` varchar(100) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=192 ;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`u_id`, `u_nm`, `u_email`, `u_password`, `u_mobileno`, `u_address`, `u_pincode`, `u_city`) VALUES
(128, 'shivu', 'shivu@gmail.com', 'shivu', '1234567889', 'gondal', '360311', 'gondal'),
(131, 'binita', 'binita@gmail.com', '123binita', '9099227824', 'motadadva', '360045', 'motddadva'),
(133, 'nirali', 'nirali@gmail.com', 'nirali', '8469088870', 'ganesh nager,\r\ngondal.', '360311', 'gondal'),
(135, 'ekta', 'ekta@gmail.com', 'ekta345', '987456321', 'dhoraji', '360009', 'rajkot'),
(136, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '123456789', 'dff', '11', 'rajkot'),
(137, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '123456789', 'dff', '11', 'rajkot'),
(138, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '123456789', 'dff', '11', 'rajkot'),
(139, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '123456789', 'dff', '11', 'rajkot'),
(140, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '1234567890', 'n nnn', '360005', 'rajkot'),
(142, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '1234567890', '4sedtrfygbh', '6789', 'h'),
(143, 'a@gmail.com', 'a@gmail.com', 'a@gmail.co', '1234567890', 'asdfvb', '123456', 'sdvb'),
(144, 'a@gmail.com', 'a@gmail.com', '1', '1234567899', 'cvb', '123456', 'vhy'),
(145, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '1234567890', 'ertvbhjnkm', '234', 'fff'),
(146, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '1234567890', 'ertvbhjnkm', '234', 'fff'),
(147, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '1234567890', 'ertvbhjnkm', '234', 'fff'),
(148, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '1234567890', 'ertvbhjnkm', '234', 'fff'),
(149, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '1234567890', 'ertvbhjnkm', '234', 'fff'),
(150, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '1234567890', 'ertvbhjnkm', '234', 'fff'),
(151, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '1234567890', 'ertvbhjnkm', '234', 'fff'),
(152, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '1234567890', 'ertvbhjnkm', '234', 'fff'),
(153, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '1234567890', 'ertvbhjnkm', '234', 'fff'),
(155, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '1234567890', 'ertvbhjnkm', '234', 'fff'),
(156, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '1234567890', 'ertvbhjnkm', '234', 'fff'),
(157, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '1234567890', 'ertvbhjnkm', '234', 'fff'),
(158, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '1234567890', 'ertvbhjnkm', '234', 'fff'),
(159, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '1234567890', 'ertvbhjnkm', '234', 'fff'),
(160, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '1234567890', 'ertvbhjnkm', '234', 'fff'),
(161, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '1234567890', 'ertvbhjnkm', '234', 'fff'),
(162, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '1234567890', 'ertvbhjnkm', '234', 'fff'),
(163, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '1234567890', 'fcvg', '7', 'jjjn'),
(164, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '1234567899', 'fccvgbhnj', '56', 'yyty'),
(165, 'q', 'a@g.com', 'a@g.com', '1234567898', 'yvbby', '360005', 'hhb'),
(166, 'q', 'p@gmail.com', '1', '1235969569', 'jvnas', '9', 'u'),
(167, 'q', 'koringanehal@gmail.com', 'koringaneh', '1234567989', 'jnj', '55', 'uu'),
(168, 'q', 'koringanehal@gmail.com', 'koringaneh', '1234567989', 'jnj', '55', 'uu'),
(169, 'q', 'koringanehal@gmail.com', 'koringaneh', '1234567989', 'jnj', '55', 'uu'),
(170, 'q', 'koringanehal@gmail.com', 'koringaneh', '1234567989', 'jnj', '55', 'uu'),
(171, 'q', 'koringanehal@gmail.com', 'koringaneh', '1234567989', 'jnj', '55', 'uu'),
(172, 'q', 'koringanehal@gmail.com', 'koringaneh', '1234567989', 'jnj', '55', 'uu'),
(173, 'q', 'koringanehal@gmail.com', 'koringaneh', '1234567989', 'jnj', '55', 'uu'),
(174, 'q', 'koringanehal@gmail.com', 'koringaneh', '1234567989', 'jnj', '55', 'uu'),
(175, 'q', 'koringanehal@gmail.com', 'koringaneh', '1234567989', 'jnj', '55', 'uu'),
(176, 'q', 'koringanehal@gmail.com', 'koringaneh', '1234567989', 'jnj', '55', 'uu'),
(177, 'q', 'koringanehal@gmail.com', 'koringaneh', '1234567989', 'jnj', '55', 'uu'),
(178, 'q', 'koringanehal@gmail.com', 'koringaneh', '1234567989', 'jnj', '55', 'uu'),
(179, 'q', 'koringanehal@gmail.com', 'koringaneh', '1234567989', 'jnj', '55', 'uu'),
(180, 'q', 'koringanehal@gmail.com', 'koringaneh', '1234567989', 'jnj', '55', 'uu'),
(181, 'q', 'koringanehal@gmail.com', 'koringaneh', '1234567989', 'jnj', '55', 'uu'),
(182, 'q', 'koringanehal@gmail.com', 'koringaneh', '1234567989', 'jnj', '55', 'uu'),
(183, 'q', 'koringanehal@gmail.com', 'koringaneh', '1234567989', 'jnj', '55', 'uu'),
(184, 'q', 'koringanehal@gmail.com', 'koringaneh', '1234567989', 'jnj', '55', 'uu'),
(185, 'qqq', 'koringanehal@gmail.com', 'koringaneh', '1234567888', 'mkk', '9', 'gg'),
(186, 'koringanehal@gmail.com', 'koringanehal@gmail.com', 'koringaneh', '1234567890', ' j j', '11', 'h'),
(188, 'nehal', 'koringanehal@gmail.com', '1', '1234567808', 'hby', '360005', 'rajkot'),
(189, 'nehal', 'abc@gmail.com', 'abc@gmail.', '1234566788', 'xcvx', '360005', 'fff'),
(190, 'nehal', 'abc@gmail.com', 'abc@gmail.', '1234566788', 'xcvx', '360005', 'fff'),
(191, 'dhara', 'd@gmail.com', 'asd', '1111111111', 'dfdf', '360005', 'sws');
