-- phpMyAdmin SQL Dump
-- version 4.2.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 11, 2016 at 09:35 PM
-- Server version: 5.5.41-log
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `beer`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `product_id` int(11) NOT NULL,
  `image_url` varchar(800) NOT NULL,
`id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`product_id`, `image_url`, `id`) VALUES
(1, 'http://i1070.photobucket.com/albums/u496/md_mcc/arron%20label_zps2zy4oqjb.png', 1),
(1, 'http://i1070.photobucket.com/albums/u496/md_mcc/arron%20bottle_zpsavnuxtcs.jpg', 2),
(1, 'http://pngimg.com/upload/beer_PNG2388.png', 3),
(2, 'http://i1070.photobucket.com/albums/u496/md_mcc/holly%20label_zpswopdbkvh.png', 4),
(2, 'http://i1070.photobucket.com/albums/u496/md_mcc/holly%20bottle_zpslehazaho.jpg', 5),
(2, 'http://pngimg.com/upload/beer_PNG2388.png', 6),
(3, 'http://i1070.photobucket.com/albums/u496/md_mcc/campbell%20label_zpsylvk6m1g.png', 7),
(3, 'http://i1070.photobucket.com/albums/u496/md_mcc/campbell%20bottle_zpslzwdfb1y.jpg', 8),
(3, 'http://pngimg.com/upload/beer_PNG2388.png', 9),
(4, 'http://i1070.photobucket.com/albums/u496/md_mcc/placeholder%20bottle_zpsgq5zudir.jpg', 10),
(4, 'http://i1070.photobucket.com/albums/u496/md_mcc/placeholder%20bottle_zpsgq5zudir.jpg', 11),
(4, 'http://pngimg.com/upload/beer_PNG2388.png', 12),
(5, 'http://i1070.photobucket.com/albums/u496/md_mcc/dj%20label_zpsp1gax6s2.png', 13),
(5, 'http://i1070.photobucket.com/albums/u496/md_mcc/dj%20bottle_zpsgnrum3pr.jpg', 14),
(5, 'http://pngimg.com/upload/beer_PNG2388.png', 15),
(6, 'http://i1070.photobucket.com/albums/u496/md_mcc/skeleton%20label_zpsanojgvgx.png', 16),
(6, 'http://i1070.photobucket.com/albums/u496/md_mcc/skeleton%20bottle_zpsrl3itvj9.jpg', 17),
(6, 'http://pngimg.com/upload/beer_PNG2388.png', 18),
(7, 'http://i1070.photobucket.com/albums/u496/md_mcc/ramin%20label_zpsqkcqxbt5.png', 19),
(7, 'http://i1070.photobucket.com/albums/u496/md_mcc/ramin%20bottle_zpshm3d5ce9.jpg', 20),
(7, 'http://pngimg.com/upload/beer_PNG2388.png', 21),
(8, 'http://i1070.photobucket.com/albums/u496/md_mcc/henry%20label_zps0jeqex45.jpg', 22),
(8, 'http://i1070.photobucket.com/albums/u496/md_mcc/henry%20bottle_zpspwh69fd8.jpg', 23),
(8, 'http://pngimg.com/upload/beer_PNG2388.png', 24),
(9, 'http://i1070.photobucket.com/albums/u496/md_mcc/bro%20label_zps0gao5hme.png', 25),
(9, 'http://i1070.photobucket.com/albums/u496/md_mcc/bro%20bottle_zpsezfneb9s.jpg', 26),
(9, 'http://pngimg.com/upload/beer_PNG2388.png', 27),
(10, 'http://i1070.photobucket.com/albums/u496/md_mcc/fajardo%20label_zpsptugjy0e.jpg', 28),
(10, 'http://i1070.photobucket.com/albums/u496/md_mcc/fajardo%20bottle_zpsmwp45av0.jpg', 29),
(10, 'http://pngimg.com/upload/beer_PNG2388.png', 30),
(11, 'http://i1070.photobucket.com/albums/u496/md_mcc/mike%20michael%20label_zpsplcq7gcx.jpg', 31),
(11, 'http://i1070.photobucket.com/albums/u496/md_mcc/mike%20michael%20bottle_zpsow1hjcrm.jpg', 32),
(11, 'http://pngimg.com/upload/beer_PNG2388.png', 33),
(12, 'http://i1070.photobucket.com/albums/u496/md_mcc/php%20label_zpsrlzymsdg.png', 34),
(12, 'http://i1070.photobucket.com/albums/u496/md_mcc/php%20bottle_zpsetzfxutl.jpg', 35),
(12, 'http://pngimg.com/upload/beer_PNG2388.png', 36);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE IF NOT EXISTS `likes` (
  `beer_id` int(11) NOT NULL,
  `likes_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`beer_id`, `likes_num`) VALUES
(1, 1),
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE IF NOT EXISTS `orderdetail` (
  `order_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`order_id`, `date`) VALUES
(3, '2016-02-06 02:01:29'),
(8, '2016-02-26 18:30:41'),
(9, '2016-02-26 18:35:04'),
(10, '2016-02-26 18:35:35'),
(11, '2016-02-26 18:49:24'),
(12, '2016-02-26 18:51:06'),
(26, '2016-02-26 19:14:52'),
(27, '2016-03-10 01:36:29'),
(28, '2016-03-10 01:37:57'),
(29, '2016-03-10 01:48:53'),
(30, '2016-03-10 02:00:02'),
(31, '2016-03-11 21:14:21'),
(32, '2016-03-11 21:22:49'),
(33, '2016-03-11 21:25:42');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`) VALUES
(3, 7),
(7, 22),
(6, 61),
(8, 66),
(9, 67),
(10, 68),
(11, 69),
(12, 72),
(26, 92),
(27, 178),
(28, 179),
(29, 187),
(30, 192),
(31, 193),
(32, 195),
(33, 196);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE IF NOT EXISTS `order_items` (
  `product_id` int(11) NOT NULL,
  `product_price` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `product_qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`product_id`, `product_price`, `order_id`, `product_qty`) VALUES
(3, 3, 8, 0),
(3, 3, 9, 0),
(3, 3, 10, 0),
(6, 4, 10, 0),
(1, 1, 6, 11),
(3, 12, 3, 22),
(3, 3, 12, 19),
(6, 4, 12, 18),
(9, 3, 12, 1),
(3, 3, 12, 24),
(6, 4, 12, 23),
(9, 3, 12, 6),
(1, 4, 12, 6),
(3, 3, 26, 24),
(6, 4, 26, 23),
(9, 3, 26, 6),
(1, 4, 26, 6),
(9, 3, 27, 3),
(1, 4, 28, 40),
(9, 3, 29, 1),
(9, 3, 30, 2),
(3, 3, 31, 3),
(1, 4, 32, 4),
(1, 4, 33, 10);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` varchar(900) NOT NULL,
  `price` int(50) NOT NULL,
  `alcohol` int(50) NOT NULL,
  `image` varchar(400) NOT NULL,
  `vol` varchar(200) NOT NULL,
  `inventory` int(200) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `alcohol`, `image`, `vol`, `inventory`) VALUES
(1, 'Arron Amber Ale', 'This crisp amber ale is a filling, malty beer. Pair it with a burger eaten on a patio after a day spent in front of a computer screen. ', 4, 5, 'http://i1070.photobucket.com/albums/u496/md_mcc/arron%20label_zps2zy4oqjb.png', '341', 58),
(2, 'Sleeping Holly Winter Ale', 'Bundle up and have a snooze on those cold winter days with the Sleeping Holly Winter Ale. The dark vanilla flavour pairs well with fruit pies and naps.', 3, 5, 'http://i1070.photobucket.com/albums/u496/md_mcc/holly%20label_zpswopdbkvh.png', '500', 100),
(3, 'Campbell Blonde Ale', 'A light ale reminiscent of flowing blonde locks. Pairs well with Adobe Illustrator and Starbucks.', 3, 7, 'http://i1070.photobucket.com/albums/u496/md_mcc/campbell%20label_zpsylvk6m1g.png', '341', 47),
(4, 'Ethical Non-Alcoholic Beer', 'A light drink with the flavour of a pale lager without the lack of critical thinking that comes with it.', 3, 0, 'http://i1070.photobucket.com/albums/u496/md_mcc/placeholder_zpskdskxpnw.png', '341', 200),
(5, 'DJ Amensky IPA', 'A dry, hoppy beer with fruity undertones. The bitterness is complemented by spicy food.', 4, 5, 'http://i1070.photobucket.com/albums/u496/md_mcc/dj%20label_zpsx90qbbwa.png', '341', 75),
(6, 'Skeleton War Pumpkin Ale', 'Fortify your army for the coming Skeleton War with this rich pumpkin ale. With just a hint of cinnamon and nutmeg, it pairs well with ginger snap cookies and chocolate.', 4, 8, 'http://i1070.photobucket.com/albums/u496/md_mcc/skeleton%20label_zpsanojgvgx.png', '500', 50),
(7, 'Shadmehr Imperial Stout', 'Dark and rich with notes of chocolate, this regal beer is fit for the most discerning of leaders. Pair with a slice of cherry cheesecake for a dessert worthy of a program head.', 6, 9, 'http://i1070.photobucket.com/albums/u496/md_mcc/ramin%20label_zpsqkcqxbt5.png', '500', 20),
(8, 'Henry Honey Lager', 'Whether you’re coding in a dark room, saving the world with your super strength, or keeping hordes of students from having a collective nervous breakdown, take a break at the end of the day with this crisp lager. The hint of sweetness and light flavour will surely calm your nerves.', 3, 4, 'http://i1070.photobucket.com/albums/u496/md_mcc/henry%20label_zps0jeqex45.jpg', '341', 200),
(9, 'Bromance Brown Ale', 'Sometimes things are just meant to be. Find your true bromance by pairing this dark malty ale with a bowl of stew, an Amiibo, and your best friend.', 3, 6, 'http://i1070.photobucket.com/albums/u496/md_mcc/bro%20label_zps0gao5hme.png', '341', 100),
(10, 'Fajardo Hefeweizen', 'Hard to pronounce, but not hard to swallow, this light wheat beer pairs well with fruit and extended due dates.', 3, 5, 'http://i1070.photobucket.com/albums/u496/md_mcc/fajardo%20label_zpsptugjy0e.jpg', '341', 200),
(11, 'Michael or Mike Ho Double IPA', 'Go double or nothing with this IPA. A full-bodied beer rich with hops, pair it with spicy dim sum and general confusion.', 3, 6, 'http://i1070.photobucket.com/albums/u496/md_mcc/mike%20michael%20label_zpsplcq7gcx.jpg', '341', 150),
(12, 'PHP Pilsner', 'A light blonde beer that goes down easy when you want more than one glass. And you’re going to need more than one glass if you’re coding PHP.', 3, 5, 'http://i1070.photobucket.com/albums/u496/md_mcc/php%20label_zpsrlzymsdg.png', '341', 100);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `lname` varchar(400) NOT NULL,
  `fname` varchar(400) NOT NULL,
  `email` varchar(400) NOT NULL,
  `city` varchar(400) NOT NULL,
  `postalcode` varchar(10) NOT NULL,
  `password` varchar(300) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=197 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `lname`, `fname`, `email`, `city`, `postalcode`, `password`) VALUES
(1, 'Lname', 'Fname', 'jaidex@list.ru', 'city', 'pcode', NULL),
(2, 'lname', 'fname', 'email', 'cit', 'pcode', NULL),
(3, 'test', 'test', 'email', 'cit', 'pcode', NULL),
(4, 'test', 'test', 'email', 'cit', 'pcode', NULL),
(5, 'test', 'test', 'email', 'cit', 'pcode', NULL),
(6, 'test', 'test', 'email', 'cit', 'pcode', NULL),
(7, 'test', 'test', 'email', 'cit', 'pcode', NULL),
(8, 'test', 'test', 'email', 'cit', 'pcode', NULL),
(9, 'test', 'test', 'email', 'cit', 'pcode', NULL),
(10, 'test', 'test', 'email', 'cit', 'pcode', NULL),
(11, 'test', 'test', 'email', 'cit', 'pcode', NULL),
(12, 'test', 'test', 'email', 'cit', 'pcode', NULL),
(13, 'test', 'test', 'email', 'cit', 'pcode', NULL),
(14, 'test', 'test', 'email', 'cit', 'pcode', NULL),
(15, 'test', 'test', 'email', 'cit', 'pcode', NULL),
(16, 'test', 'test', 'email', 'cit', 'pcode', NULL),
(17, 'test', 'test', 'email', 'cit', 'pcode', NULL),
(18, 'test', 'test', 'email', 'cit', 'pcode', NULL),
(19, 'test', 'test', 'email', 'cit', 'pcode', NULL),
(20, 'test', 'test', 'email', 'cit', 'pcode', NULL),
(21, 'test', 'test', 'email', 'cit', 'pcode', NULL),
(22, 'test', 'test', 'u@list.ru', 'cit', 'pcode', NULL),
(23, 'test', 'test', 'email', 'cit', 'pcode', NULL),
(26, 'test', 'test', 'email', 'cit', 'pcode', NULL),
(27, 'EEtest', 'test', 'email', 'cit', 'pcode', NULL),
(28, 'EEtest', 'test', '..', 'cit', 'pcode', NULL),
(29, 'EEtest', 'test', '', 'cit', 'pcode', NULL),
(30, 'EEtest', 'test', '', 'cit', 'pcode', NULL),
(31, 'EEtest', 'test', '', 'cit', 'pcode', NULL),
(32, 'EEtest', 'test', '', 'cit', 'pcode', NULL),
(33, 'EEtest', 'test', '', 'cit', 'pcode', NULL),
(34, 'EEtest', 'test', '', 'city', 'pcode', NULL),
(35, 'EEtest', 'test', 'd', 'city', 'pcode', NULL),
(36, '', '', 'f', 'f', '', NULL),
(37, '', '', 'f', 'f', '', NULL),
(38, '', '', 'r', 'r', '', NULL),
(39, '', '', 'r', 'r', '', NULL),
(40, 'd', 'd', 'd', 'd', 'd', NULL),
(41, 'f', 'f', 'f', 'f', 'f', NULL),
(42, 'd', 'd', 'd', 'd', 'd', NULL),
(43, 'd', 'd', 'd', 'd', 'd', NULL),
(44, 'd', 'd', 'd', 'd', 'd', NULL),
(45, 'd', 'd', 'd', 'd', 'd', NULL),
(46, 'd', 'd', 'd', 'd', 'd', NULL),
(47, '', '', '', '', '', NULL),
(48, 's', 's', 's', 's', 's', NULL),
(49, 's', 's', 's', 's', 's', NULL),
(50, 's', 's', 's', 's', 's', NULL),
(51, 's', 's', 's', 's', 's', NULL),
(52, 's', 's', 's', 's', 's', NULL),
(53, 's', 's', 's', 's', 's', NULL),
(54, 's', 's', 's', 's', 's', NULL),
(55, 's', 's', 'sfrg', 's', 's', NULL),
(56, 's', 's', 'sfrg', 's', 's', NULL),
(57, 's', 's', 'sfrg', 's', 's', NULL),
(58, 's', 's', 'sfrg', 's', 's', NULL),
(59, 's', 's', 'sfrg', 's', 's', NULL),
(60, 's', 's', 'sfrg', 's', 's', NULL),
(61, 's', 's', 'sfrggtf', 's', 's', NULL),
(62, 's', 's', 'sfrggtfd', 's', 's', NULL),
(63, 's', 's', 'sfrggtfd', 's', 's', NULL),
(64, 's', 's', 'sfrggtfd', 's', 's', NULL),
(65, 's', 's', 'sfrggtfd', 's', 's', NULL),
(66, 'ii', 'mari', 'ii@ii.fo', 'Oostende, Belgium', 'oo', NULL),
(67, 'ii', 'mari', 'ii@ii.fog', 'Oostende, Belgium', 'oo', NULL),
(68, 'lname', 'name', 'jaidex@list.rud', 'St. John Ambulance, Alpha Avenue, Burnaby, BC, Canada', 'lsdk', NULL),
(69, 'sd', 'sd', 'sd@df.jk', 'sd', 'sd', NULL),
(70, 'sd', 'sd', 'sd@df.jk', 'sd', 'sd', NULL),
(71, 'sd', 'sd', 'sd@df.jk', 'sd', 'sd', NULL),
(72, 'sd', 'sd', 'sd@df.jkd', 'sd', 'sd', NULL),
(73, 'sd', 'sd', 'sd@df.jkdd', 'sd', 'sd', NULL),
(74, 'sd', 'sd', 'sd@df.jkdd', 'sd', 'sd', NULL),
(75, 'sd', 'sd', 'sd@df.jkdd', 'sd', 'sd', NULL),
(76, 'sd', 'sd', 'sd@df.jkddcvf', 'sd', 'sd', NULL),
(77, 'sd', 'sd', 'sd@df.jkddcvfd', 'sd', 'sd', NULL),
(78, 'sd', 'sd', 'sd@df.jkddcvfddd', 'sd', 'sd', NULL),
(79, 'sd', 'sd', 'sdd@df.jkddcvfddd', 'sd', 'sd', NULL),
(80, 'sd', 'sd', 'sdd@df.v', 'sd', 'sd', NULL),
(81, 'df', 'df', 'sds@sd.hj', 'Ghaziabad, Uttar Pradesh, India', 'fhy', NULL),
(82, 'df', 'df', 'sds@sd.hjds', 'Ghaziabad, Uttar Pradesh, India', 'fhy', NULL),
(83, 'df', 'df', 'sdfs@sd.hjds', 'Ghaziabad, Uttar Pradesh, India', 'fhy', NULL),
(84, 'df', 'df', 'sdfs@sd.hjds', 'Ghaziabad, Uttar Pradesh, India', 'fhy', NULL),
(85, 'df', 'df', 'sdfs@sd.hjds', 'Ghaziabad, Uttar Pradesh, India', 'fhy', NULL),
(86, 'df', 'df', 'sdfs@sd.hjds', 'Ghaziabad, Uttar Pradesh, India', 'fhy', NULL),
(87, 'df', 'df', 'sdrfs@sd.hjds', 'Ghaziabad, Uttar Pradesh, India', 'fhy', NULL),
(88, 'df', 'df', 'sdrsfs@sd.hjds', 'Ghaziabad, Uttar Pradesh, India', 'fhy', NULL),
(89, 'df', 'df', 'sdrsfs@sd.hjds', 'Ghaziabad, Uttar Pradesh, India', 'fhy', NULL),
(90, 'df', 'df', 'sdfrsfs@sd.hjds', 'Ghaziabad, Uttar Pradesh, India', 'fhy', NULL),
(91, 'df', 'df', 'uu@sd.hjds', 'Ghaziabad, Uttar Pradesh, India', 'fhy', NULL),
(92, 'df', 'df', 'uud@sd.hjds', 'Ghaziabad, Uttar Pradesh, India', 'fhy', NULL),
(93, 'f', 'f', '', 'Delta, BC, Canada', 'd', NULL),
(94, '', '', '', '', '', NULL),
(95, '', '', '', '', '', NULL),
(96, '', '', '', '', '', NULL),
(97, '', '', '', '', '', NULL),
(98, '', '', '', '', '', NULL),
(99, '', '', '', '', '', NULL),
(100, '', '', '', '', '', NULL),
(101, '', '', '', '', '', NULL),
(102, '', '', '', '', '', NULL),
(103, '', '', '', '', '', NULL),
(104, '', '', '', '', '', NULL),
(105, '', '', '', '', '', NULL),
(106, '', '', '', '', '', NULL),
(107, '', '', '', '', '', NULL),
(108, '', '', '', '', '', NULL),
(109, '', '', '', '', '', NULL),
(110, '', '', '', '', '', NULL),
(111, '', '', '', '', '', NULL),
(112, '', '', '', '', '', NULL),
(113, '', '', '', '', '', NULL),
(114, '', '', '', '', '', NULL),
(115, '', '', '', '', '', NULL),
(116, 'name', 'fdfname', 'email', 'city', 'code', 'password'),
(117, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(118, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(119, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(120, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(121, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(122, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(123, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(124, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(125, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(126, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(127, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(128, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(129, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(130, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(131, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(132, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(133, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(134, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(135, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(136, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(137, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(138, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(139, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(140, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(141, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(142, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(143, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(144, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(145, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(146, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(147, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(148, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(149, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(150, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(151, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(152, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(153, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(154, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(155, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(156, 'name', 'fdfname', 'email', 'city', 'code', '1'),
(157, ':lname', ':fname', ':email', ':city', ':pcode', ':password'),
(158, ':lname', ':fname', ':email', ':city', ':pcode', ':password'),
(159, 'sf', 'df', 'd', 'df', 'd', '2'),
(160, 'df', 'f', 'df', 'df', 'df', 'c4ca4238a0b923820dcc509a6f75849b'),
(161, 'Maria', 'Taranova', 'jaidex@list.ru', 'Kyiv', '02002', 'c4ca4238a0b923820dcc509a6f75849b'),
(162, 'Test', 'User', 'test@user.com', 'Vancouver', 'v3b6x5', '8613985ec49eb8f757ae6439e879bb2a'),
(163, 'dfd', 'fd', 'fg@kdk', 'gfdg', 'tfg', '3d4044d65abdda407a92991f1300ec97'),
(164, 'dfg', 'dgf', 'dfg@df', 'fg', 'dfg', 'f2a7e899b5af7365d70d252f3fd387dd'),
(165, 'df', 'df', 'fg@df', 'df', 'df', 'eff7d5dba32b4da32d9a67a519434d3f'),
(166, 'fgbh', 'fghb', 'fgf@df', 'fgbf', 'fgbf', 'ad39d1d0135d81ef41fff005ec10f14d'),
(167, 'ered', 'edt', 'fg@df', 'd', 'fg', '3d4044d65abdda407a92991f1300ec97'),
(168, 'gng', 'ngn', 'sddf@dffhnghjg', 'ghng', 'ngn', '2812b6f5098f7486a07cacb77933d459'),
(169, 'xs', 'gfcd', 'fcgb@sd', 'cbf', 'cgb', '3d4044d65abdda407a92991f1300ec97'),
(170, 'xbf', 'bfgdx', 'xbf', 'fxbg', 'fxg', '8e5d3a754ae84686d9809edb2458a0eb'),
(171, 'sdf', 'sdf', 'dg', 'dfgd', 'dg', '281ffabc96bf84c67ca60afa0e9138d9'),
(172, 'df', 'dfd', 'dfdf', 'f', 'df', 'b52c96bea30646abf8170f333bbd42b9'),
(173, 'sd', 'df', 'fbgfr', 'df', 'df', 'eff7d5dba32b4da32d9a67a519434d3f'),
(174, 'df', 'dfd', 'dg@f', 'd', 'd', 'b05783b0773d894396d475ced9d2f4f6'),
(175, 'df', 'df', '', 'df', 'dfd', NULL),
(176, 'df', 'df', '', 'df', 'df', NULL),
(177, 'df', 'df', '', 'df', 'df', NULL),
(178, 'df', 'df', 'df@df.hj', 'df', 'df', NULL),
(179, 'sd', 'sds', 'sd@sd.hj', 'gh', 'gh', NULL),
(180, 'dsd', 'sds', 'sd@sd.hj', 'df', 'df', NULL),
(181, 'df', 'dfdf', 'df@df.hj', 'df', 'df', NULL),
(182, 'sd', 'sd', 'sd@sd.hj', 'sd', 'ssd', NULL),
(183, 'dfd', 'df', 'df@df.hj', 'd', 'df', NULL),
(184, 'f', 'f', '', 'f', 'f', NULL),
(185, 'd', 'd', 'df@df.hj', 'd', 'd', NULL),
(186, 'd', 'df', 'df@df.hj', 's', 's', NULL),
(187, 'r', 'r', 'r@f.j', 'hj', 'hj', NULL),
(188, 'df', 'df', 'df@df.hj', 'df', 'df', NULL),
(189, 'er', 'er', 'r@f.j', 'r', 'r', NULL),
(190, 'r', 'r', '', 'r', 'r', NULL),
(191, 'r', 'r', 'r@f.j', '', 'er', NULL),
(192, 'df', 'f', 'f@f.f', 'f', 'f', NULL),
(193, 'ssd', 'sssssd', 'sdsd@df.gh', 'sdsdsdsd', '', NULL),
(194, 'g', 'g', 'gf@dg.h', 'fg', 'fg', 'fg'),
(195, 'Test', 'Test', 'bcit@test.com', 'richnmond', '', 'fed3bc792347d61a794c3ba0df43b224'),
(196, 'yy', 'tt', 'e@sd.jk', 'rr', '', 'fed3bc792347d61a794c3ba0df43b224');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
 ADD PRIMARY KEY (`id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
 ADD KEY `beer_id` (`beer_id`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
 ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
 ADD KEY `product_id` (`product_id`,`order_id`), ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=197;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`beer_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
