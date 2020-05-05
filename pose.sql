-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 30, 2019 at 03:18 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pose`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` int(100) NOT NULL AUTO_INCREMENT,
  `brand_title` text NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'LAYS'),
(2, 'DORITOS'),
(3, 'TUPPERWARE'),
(4, 'MAGGI'),
(5, 'REYNOLDS'),
(6, 'PEPSI CO'),
(7, 'garnier');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(200) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `qty` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `total_amt` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amt`) VALUES
(1, 1, '0', 0, 'LAYS AMERICAN GREEN', '', 1, 5000, 5000),
(2, 2, '0', 0, 'MAGGI NOODLES 240 GM', '', 1, 25000, 25000),
(3, 1, '0', 4, 'LAYS AMERICAN 100GM', 'lays.jpeg', 1, 20, 20),
(5, 2, '0', 6, 'lays indian masala', 'lays2.jpg', 1, 65, 65),
(6, 3, '0', 6, 'LAYS TOMATO', 'lays3.jpg', 1, 35, 35),
(7, 9, '0', 6, 'chicken maggi', 'chicken.jpg', 1, 25, 25),
(8, 8, '0', 6, 'hakka noodles', 'egg.jpg', 1, 55, 55),
(9, 7, '0', 6, 'maggi masala', 'maggi.png', 1, 44, 44),
(11, 2, '0', 7, 'lays indian masala', 'lays2.jpg', 1, 65, 65),
(12, 3, '0', 7, 'LAYS TOMATO', 'lays3.jpg', 1, 35, 35),
(13, 7, '0', 8, 'maggi masala', 'maggi.png', 1, 44, 44),
(15, 1, '0', 8, 'LAYS AMERICAN 100GM', 'lays.jpeg', 1, 20, 20),
(16, 2, '0', 4, 'lays indian masala', 'lays2.jpg', 1, 65, 65);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(100) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'SNACKS\r\n'),
(2, 'CHIPS'),
(3, 'NOODLES'),
(4, 'BOTTLES'),
(5, 'STATIONARY'),
(6, 'Cosmetics');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 2, 1, 'LAYS AMERICAN 100GM', 20, 'chips', 'lays.jpeg', 'lays american cream'),
(2, 2, 1, 'lays indian masala', 65, 'chips', 'lays2.jpg', 'lays chips'),
(3, 2, 1, 'LAYS TOMATO', 35, 'LAYS TOMATO FLAVOUR', 'lays3.jpg', 'lays tomato'),
(4, 2, 2, 'doritos cheesy', 120, 'doritos cheese', 'doritos.jpg', 'doritos'),
(5, 2, 2, 'doritos ranch', 120, 'doritos ranch flavour', 'doritos1.jpeg', 'doritos'),
(6, 2, 2, 'doritos blaze', 120, 'doritos blaze', 'doritos3.jpg', 'doritos'),
(7, 3, 4, 'maggi masala', 44, 'maggi masala', 'maggi.png', 'maggi masala'),
(8, 3, 4, 'hakka noodles', 55, 'hakka noodles', 'egg.jpg', 'hakka noodles'),
(9, 3, 4, 'chicken maggi', 25, 'chicken maggi', 'chicken.jpg', 'chicken maggi'),
(10, 1, 6, 'haldiram namkeen', 35, 'khatta meetha', 'nam1.jpg', 'namkeen'),
(11, 1, 6, 'haldiram namkeen', 50, 'aloo bhujia', 'nam2.png', 'namkeen'),
(12, 1, 6, 'haldiram namkeen', 35, 'nimbu chatka', 'nam3.jpg', 'namkeen'),
(13, 1, 6, 'oreo combo', 70, 'oreo biscuits', 'oreo.jpg', 'oreo'),
(14, 1, 6, 'treat jim jam', 30, 'treat jim jam', 'jim.png', 'biscuit'),
(15, 1, 6, 'gooday', 30, 'gooday cashew', 'good.png', 'biscuit'),
(16, 4, 3, 'steel bottle', 600, 'steel bottle', 'bot.JPG', 'bottle'),
(17, 4, 3, 'plastic bottle', 45, 'plastic bottle', 'bot2.jpg', 'botlle'),
(19, 4, 3, 'stylish bottles', 259, 'stylish bottles', 'bot3.jpg', 'bottle'),
(20, 5, 5, 'classmate notebook', 50, 'notebook', 'c.jpg', 'classmate'),
(21, 5, 5, 'classmate pulse notebook', 100, 'classmate pulse', 'c2.jpg', 'classmate notebook'),
(22, 5, 5, 'clasmate avengers', 130, 'classmate avengers', 'av.jpeg', 'notebook'),
(23, 5, 5, 'pilot v5', 50, 'v5', 'v5.jpeg', 'pen'),
(24, 5, 5, 'friction', 120, 'pilot friction', 'fr.jpg', 'pilot friction'),
(25, 5, 5, 'v7', 80, 'pen', 'v7.jpg', 'pen'),
(26, 5, 5, 'scale 10cm', 10, 'scale', 'r.jpg', 'scale'),
(27, 5, 5, 'geometry box', 120, 'geometry box', 'gem.jpg', 'box'),
(32, 5, 5, 'pouches', 35, 'pouches', 'pouch.jpg', 'pouch'),
(33, 5, 5, 'adidas bag', 3500, 'adi bag', 'adi.jpg', 'bag'),
(34, 6, 4, 'Emergency Light', 1000, 'Emergency Light', 'emergency light.JPG', 'emergency light'),
(35, 5, 5, 'nike bag', 2500, 'nike bag', 'bag1.jpg', 'nike bag'),
(36, 6, 7, 'dove shampoo', 89, 'shampoo', 'sh.jpg', 'shampoo'),
(37, 6, 7, 'dove conditioner', 200, 'conditioner', 'sh1.jpg', 'conditioner'),
(38, 6, 7, 'shower gel', 230, 'dove shower gel', 'sh3.jpg', 'shower gel'),
(39, 6, 7, 'facewash', 250, 'garnier facewash', 'g.webp', 'facewash'),
(40, 6, 7, 'olay cream', 250, 'olay intense', 'olay.jpg', 'cream'),
(45, 6, 7, 'hair gel', 100, 'hair gel', 'gel.png', 'hair gel');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(4, 'Hrithik', 'Arora', 'hrithikarora1999@gmail.com', 'fc202fac30049bde51969f5555107b83', '9013947907', 'hno 402 sector 29', 'a block'),
(5, 'Hrithik', 'Arora', 'abc1233@gmail.com', 'fc202fac30049bde51969f5555107b83', '9034794792', 'vit', 'htoe'),
(6, 'Ashish', 'Singh', 'ashishkirti@gmail.com', 'fc202fac30049bde51969f5555107b83', '9013897651', 'vit', 'hut'),
(7, 'Arnav', 'Jindal', 'arnavjindal15jan@gmail.com', 'fc202fac30049bde51969f5555107b83', '9012345679', 'vitt', 'eifie'),
(8, 'Ritesh', 'Singh', 'singhritesh2006@gmail.com', 'fc202fac30049bde51969f5555107b83', '9012348976', 'vit', 'fbej');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
