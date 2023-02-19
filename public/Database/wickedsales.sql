-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2023 at 01:29 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wickedsales`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `created`) VALUES
(1, '2019-10-18 04:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `cartitems`
--

CREATE TABLE `cartitems` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `productID` mediumint(8) UNSIGNED NOT NULL,
  `count` smallint(5) UNSIGNED NOT NULL,
  `price` mediumint(8) UNSIGNED NOT NULL,
  `added` datetime NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cartID` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cartitems`
--

INSERT INTO `cartitems` (`id`, `productID`, `count`, `price`, `added`, `updated`, `cartID`) VALUES
(1, 2, 1, 120, '2023-02-19 01:21:55', '2023-02-19 00:22:23', 1),
(2, 4, 3, 500, '2023-02-19 01:22:26', '2023-02-19 00:22:43', 1),
(3, 6, 6, 45200, '2023-02-19 01:22:46', '2023-02-19 00:23:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentID` int(5) NOT NULL,
  `productID` int(5) NOT NULL,
  `userID` int(5) NOT NULL,
  `rating` int(6) NOT NULL,
  `images` varchar(15000) NOT NULL,
  `text` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentID`, `productID`, `userID`, `rating`, `images`, `text`) VALUES
(1, 2, 1, 4, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw8HBhUSBw8VFRIXFhARFRcVEhAVFhYSFhUXGBUbFxgbKDQgHxoxHBoaITMiJSorMi4uFx8zODUsNygtOiwBCgoKDg0', 'Good'),
(2, 1, 2, 3, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw8HBhUSBw8VFRIXFhARFRcVEhAVFhYSFhUXGBUbFxgbKDQgHxoxHBoaITMiJSorMi4uFx8zODUsNygtOiwBCgoKDg0', 'Nice');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `image` varchar(40) NOT NULL,
  `product_id` mediumint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `product_id`) VALUES
(1, '/images/captain-black.png', 1),
(2, '/images/captain-black-2.png', 1),
(3, '/images/captain-black-3.png', 1),
(4, '/images/captain-black-matte.png', 2),
(5, '/images/captain-black-matte-2.png', 2),
(6, '/images/captain-black-matte-3.png', 2),
(7, '/images/scout-olive.png', 3),
(8, '/images/scout-olive-2.png', 3),
(9, '/images/scout-olive-3.png', 3),
(10, '/images/captain-brown.png', 4),
(11, '/images/captain-brown-2.png', 4),
(12, '/images/captain-brown-3.png', 4),
(13, '/images/captain-terracotta.png', 5),
(14, '/images/captain-terracotta-2.png', 5),
(15, '/images/captain-terracotta-3.png', 5),
(16, '/images/chelsea-black.png', 6),
(17, '/images/chelsea-black-2.png', 6),
(18, '/images/chelsea-black-3.png', 6),
(19, '/images/chelsea-brown.png', 7),
(20, '/images/chelsea-brown-2.png', 7),
(21, '/images/chelsea-brown-3.png', 7),
(22, '/images/chelsea-honey.png', 8),
(23, '/images/chelsea-honey-2.png', 8),
(24, '/images/chelsea-honey-3.png', 8),
(25, '/images/chelsea-olive.png', 9),
(26, '/images/chelsea-olive-2.png', 9),
(27, '/images/chelsea-olive-3.png', 9),
(28, '/images/scout-black.png', 10),
(29, '/images/scout-black-2.png', 10),
(30, '/images/scout-black-3.png', 10),
(31, '/images/scout-blue.png', 11),
(32, '/images/scout-blue-2.png', 11),
(33, '/images/scout-blue-3.png', 11),
(34, '/images/scout-brown.png', 12),
(35, '/images/scout-brown-2.png', 12),
(36, '/images/scout-brown-3.png', 12),
(37, '/images/scout-caramel.png', 13),
(38, '/images/scout-caramel-2.png', 13),
(39, '/images/scout-caramel-3.png', 13),
(40, '/images/scout-cognac.png', 14),
(41, '/images/scout-cognac-2.png', 14),
(42, '/images/scout-cognac-3.png', 14),
(43, '/images/captain-brandy.png', 15),
(44, '/images/captain-brandy-2.png', 15),
(45, '/images/captain-brandy-3.png', 15);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `color` varchar(25) NOT NULL,
  `price` mediumint(8) UNSIGNED NOT NULL,
  `image` varchar(50) NOT NULL,
  `shortDescription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `color`, `price`, `image`, `shortDescription`) VALUES
(1, 'Captain', 'Black', 199, '/images/captain-black-matte.png', 'Comfortable, versatile and durable cap-toe boot handcrafted with the highest quality Tier 1 USA leather and featuring Goodyear Welt construction. Built to last with a premium look that lets the quality of materials do the talking.'),
(2, 'Captain', 'Black', 199, '/images/captain-black.png', 'Comfortable, versatile and durable cap-toe boot handcrafted with the highest quality Tier 1 USA leather and featuring Goodyear Welt construction. Built to last with a premium look that lets the quality of materials do the talking.'),
(3, 'Scout', 'Olive', 199, '/images/scout-olive.png', 'The chukka for a new generation. Blending classic British style with our own American aesthetic to be more durable and versatile. This is a chukka that can live up to the demands of long days year round.'),
(4, 'Captain', 'Terracotta', 199, '/images/captain-terracotta.png', 'Comfortable, versatile and durable cap-toe boot handcrafted with the highest quality Tier 1 USA leather and featuring Goodyear Welt construction. Built to last with a premium look that lets the quality of materials do the talking.'),
(5, 'Captain', 'Brandy', 199, '/images/captain-brandy.png', 'Comfortable, versatile and durable cap-toe boot handcrafted with the highest quality Tier 1 USA leather and featuring Goodyear Welt construction. Built to last with a premium look that lets the quality of materials do the talking.'),
(6, 'Chelsea', 'Black', 199, '/images/chelsea-black-suede.png', 'A classic Chelsea boot for the modern man. It took more than 20 re-designs to optimize the slope for comfort and aesthetics. Easy to dress up or down, this boot is as versatile as the man who wears it.'),
(7, 'Chelsea', 'Brown', 199, '/images/captain-brown.png', 'A classic Chelsea boot for the modern man. It took more than 20 re-designs to optimize the slope for comfort and aesthetics. Easy to dress up or down, this boot is as versatile as the man who wears it.'),
(8, 'Chelsea', 'Honey', 199, '/images/chelsea-honey.png', 'A classic Chelsea boot for the modern man. It took more than 20 re-designs to optimize the slope for comfort and aesthetics. Easy to dress up or down, this boot is as versatile as the man who wears it.'),
(9, 'Chelsea', 'Olive', 199, '/images/chelsea-olive.png', 'A classic Chelsea boot for the modern man. It took more than 20 re-designs to optimize the slope for comfort and aesthetics. Easy to dress up or down, this boot is as versatile as the man who wears it.'),
(10, 'Scout', 'Black', 199, '/images/scout-black.png', 'The chukka for a new generation. Blending classic British style with our own American aesthetic to be more durable and versatile. This is a chukka that can live up to the demands of long days year round.'),
(11, 'Scout', 'Blue', 199, '/images/scout-blue.png', 'The chukka for a new generation. Blending classic British style with our own American aesthetic to be more durable and versatile. This is a chukka that can live up to the demands of long days year round.'),
(12, 'Scout', 'Brown', 199, '/images/scout-brown.png', 'The chukka for a new generation. Blending classic British style with our own American aesthetic to be more durable and versatile. This is a chukka that can live up to the demands of long days year round.'),
(13, 'Scout', 'Caramel', 199, '/images/scout-caramel.png', 'The chukka for a new generation. Blending classic British style with our own American aesthetic to be more durable and versatile. This is a chukka that can live up to the demands of long days year round.'),
(14, 'Scout', 'Cognac', 199, '/images/scout-cognac.png', 'The chukka for a new generation. Blending classic British style with our own American aesthetic to be more durable and versatile. This is a chukka that can live up to the demands of long days year round.'),
(15, 'Captain', 'Brown', 199, '/images/captain-brown.png', 'Comfortable, versatile and durable cap-toe boot handcrafted with the highest quality Tier 1 USA leather and featuring Goodyear Welt construction. Built to last with a premium look that lets the quality of materials do the talking.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(5) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `purchaseH` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `email`, `password`, `username`, `purchaseH`, `address`) VALUES
(1, 'b.chauhan1806@gamil.com', 'XyZ@123', 'Bdots1806', 'N/A', '2889 Fairway Drive,\r\nWillits,\r\nCA'),
(2, 'xyz@gmail.com', 'Yup%%^^', 'XyZ', 'NA', '4359 Eva Pearl Street,\r\nBaton Rouge,\r\nLA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartitems`
--
ALTER TABLE `cartitems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cartproductid` (`productID`,`cartID`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentID`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cartitems`
--
ALTER TABLE `cartitems`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
