-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 27, 2020 at 12:34 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `HotelDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `neighborhood` varchar(250) NOT NULL,
  `photograph` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `distance` float NOT NULL,
  `cuisine_type` varchar(250) NOT NULL,
  `reviews` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `neighborhood`, `photograph`, `address`, `distance`, `cuisine_type`, `reviews`) VALUES
(1, 'Mission Chinese Food', 'Manhattan', '1.jpg', '171 E Broadway, New York, NY 10002', 16.2, 'Asian', 'Null'),
(2, 'Emily', 'Brooklyn', '2.jpg', '919 Fulton St, Brooklyn, NY 11238', 7.2, 'Pizza', 'Null'),
(3, 'Kang Ho Dong Baekjeong', 'Manhattan', '3.jpg', '1 E 32nd St, New York, NY 10016', 10.5, 'Asian', 'Null'),
(4, 'Katz\'s Delicatessen', 'Manhattan', '4.jpg', '205 E Houston St, New York, NY 10002', 1.5, 'American', 'Null'),
(5, 'Roberta\'s Pizza', 'Brooklyn', '5.jpg', '261 Moore St, Brooklyn, NY 11206', 0.6, 'Pizza', 'Null'),
(6, 'Hometown BBQ', 'Brooklyn', '6.jpg', '454 Van Brunt St, Brooklyn, NY 11231', 2, 'American', 'Null'),
(7, 'Superiority Burger', 'Manhattan', '7.jpg', '430 E 9th St, New York, NY 10009', 4.6, 'American', 'Null'),
(8, 'The Dutch', 'Manhattan', '8.jpg', '131 Sullivan St, New York, NY 10012', 25, 'American', 'Null'),
(9, 'Mu Ramen', 'Queens', '9.jpg', '1209 Jackson Ave, Queens, NY 11101', 8.2, 'Asian', 'Null'),
(10, 'Casa Enrique', 'Queens', '10.jpg', '5-48 49th Ave, Queens, NY 11101', 9.1, 'Mexican', 'Null'),
(11, 'BBQ Pune', 'Pune', '11.jpg', 'Shivaji Nagar, Pune', 1, 'BBQ', 'Null'),
(12, 'Rangla Punjab', 'Punjab', '12.jpg', 'Shastri Nagar, Punjab', 5, 'Punjabi', 'Null'),
(13, 'South Indian Spice', 'Karnataka', '13.jpg', 'Near Banglore Airport, Karnataka', 4.3, 'South Indian', 'Null');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `password`) VALUES
('akshay@gmail.com', 'Akshay'),
('akshaykashid@gmail.com', 'Akshay123'),
('akshaykashid40@gmail.com', 'Akshay123'),
('test@gmail.com', 'test123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`,`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
