-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 16, 2021 at 02:41 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cedcab`
--

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `distance` varchar(255) NOT NULL,
  `is_available` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `name`, `distance`, `is_available`) VALUES
(8, 'charbhag', '0', 1),
(9, 'indiranagar', '10', 1),
(10, 'BBD', '30', 1),
(11, 'Barabanki', '60', 1),
(12, 'Faizabad', '100', 1),
(13, 'Basti', '150', 1),
(14, 'Gorakhpur', '210', 1);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateofsign` date NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `email`, `name`, `dateofsign`, `mobile`, `status`, `password`, `is_admin`) VALUES
(10, 'admin@gmail.com', 'admin', '2021-01-06', '9889846794', 1, '$2y$10$ZiMgxGnhdXVvhZvtPxZ3MeSexyRVGRYqg2mVqkCOIZHObepUG4fZy', 1),
(11, 'yadavpuneet766@gmail.com', 'Amit', '2021-01-06', '9889846794', 1, '$2y$10$pYDYUsgzs4O38v8a5J8MI.RDpa6izQ08homJnDiVow55gp6yZvrm.', 0),
(12, 'yadavpun766@gmail.com', 'puneet ', '2021-01-06', '9889846794', 1, '$2y$10$bYKIoRIOEYPOFR22LEIGbO3emeXETQbdowVK0jt8ze4hu8l0oyoaW', 0),
(13, 'raunakyadav00@gmail.com', 'tusar', '2021-01-08', '9889846794', 1, '$2y$10$YRHSUNWwy.5BzYG3wu2hTOCkdGvmH5OswZy5MKjOBULDv2F/WeYcC', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_ride`
--

CREATE TABLE `tb_ride` (
  `ride_id` int(50) NOT NULL,
  `date` date NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `cab_type` varchar(255) NOT NULL,
  `total_distance` varchar(255) NOT NULL,
  `total_fair` varchar(255) NOT NULL,
  `luggage` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `customer_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_ride`
--

INSERT INTO `tb_ride` (`ride_id`, `date`, `from`, `to`, `cab_type`, `total_distance`, `total_fair`, `luggage`, `status`, `customer_user_id`) VALUES
(45, '2021-01-07', 'charbhag', 'BBD', 'CedMicro', '30', '425', '', 1, 11),
(47, '2021-01-07', 'charbhag', 'BBD', 'CedMini', '30', '655', '14', 1, 11),
(48, '2021-01-07', 'charbhag', 'BBD', 'CedMini', '30', '655', '14', 1, 11),
(49, '2021-01-07', 'Gorakhpur', 'charbhag', 'CedSUV', '210', '3460', '74', 1, 11),
(50, '2021-01-07', 'Gorakhpur', 'charbhag', 'CedSUV', '210', '3460', '74', 1, 11),
(52, '2021-01-07', 'Faizabad', 'indiranagar', 'CedMicro', '90', '1091', '', 2, 11),
(53, '2021-01-07', 'charbhag', 'BBD', 'CedMicro', '30', '425', '', 2, 11),
(54, '2021-01-07', 'charbhag', 'BBD', 'CedMicro', '30', '425', '', 2, 11),
(55, '2021-01-07', 'BBD', 'Barabanki', 'CedMini', '30', '555', '', 2, 11),
(56, '2021-01-07', 'BBD', 'Barabanki', 'CedMini', '30', '555', '', 2, 11),
(57, '2021-01-07', 'charbhag', 'indiranagar', 'CedMini', '10', '295', '', 2, 11),
(58, '2021-01-07', 'charbhag', 'indiranagar', 'CedMini', '10', '295', '', 2, 11),
(59, '2021-01-07', 'indiranagar', 'Basti', 'CedRoyal', '140', '2231', '758', 2, 11),
(60, '2021-01-07', 'indiranagar', 'Basti', 'CedRoyal', '140', '2231', '758', 2, 11),
(61, '2021-01-07', 'charbhag', 'Gorakhpur', 'CedMini', '210', '2540', '', 2, 11),
(62, '2021-01-07', 'charbhag', 'Gorakhpur', 'CedMini', '210', '2540', '', 2, 11),
(63, '2021-01-07', 'charbhag', 'indiranagar', 'CedMini', '10', '345', '7', 2, 11),
(64, '2021-01-07', 'charbhag', 'indiranagar', 'CedMini', '10', '345', '7', 2, 11),
(65, '2021-01-07', 'indiranagar', 'charbhag', 'CedMini', '10', '495', '34', 1, 11),
(66, '2021-01-07', 'indiranagar', 'charbhag', 'CedMini', '10', '495', '34', 1, 11),
(67, '2021-01-07', 'charbhag', 'BBD', 'CedMini', '30', '555', '', 2, 10),
(68, '2021-01-07', 'charbhag', 'BBD', 'CedMini', '30', '555', '', 2, 10),
(69, '2021-01-07', 'charbhag', 'indiranagar', 'CedMicro', '10', '185', '', 1, 10),
(70, '2021-01-07', 'charbhag', 'indiranagar', 'CedMicro', '10', '185', '', 1, 10),
(71, '2021-01-08', 'charbhag', 'indiranagar', 'CedMini', '10', '495', '77', 1, 13),
(72, '2021-01-08', 'charbhag', 'indiranagar', 'CedMini', '10', '495', '77', 2, 13),
(73, '2021-01-08', 'indiranagar', 'Barabanki', 'CedMini', '50', '865', '3', 1, 11),
(74, '2021-01-08', 'indiranagar', 'Barabanki', 'CedMini', '50', '865', '3', 2, 11),
(75, '2021-01-08', 'charbhag', 'BBD', 'CedMicro', '30', '425', '', 1, 13),
(76, '2021-01-08', 'charbhag', 'BBD', 'CedMicro', '30', '425', '', 1, 13),
(77, '2021-01-08', 'charbhag', 'BBD', 'CedMicro', '30', '425', '', 1, 13),
(78, '2021-01-08', 'charbhag', 'BBD', 'CedMicro', '30', '425', '', 1, 13),
(79, '2021-01-08', 'charbhag', 'indiranagar', 'CedMicro', '10', '185', '', 1, 13),
(80, '2021-01-08', 'charbhag', 'indiranagar', 'CedMicro', '10', '185', '', 1, 13),
(81, '2021-01-08', 'indiranagar', 'charbhag', 'CedMicro', '10', '185', '', 2, 11),
(82, '2021-01-08', 'indiranagar', 'charbhag', 'CedMicro', '10', '185', '', 1, 11),
(83, '2021-01-08', 'indiranagar', 'Basti', 'CedRoyal', '140', '2231', '44', 2, 13),
(84, '2021-01-08', 'indiranagar', 'Basti', 'CedRoyal', '140', '2231', '44', 2, 13),
(85, '2021-01-08', 'charbhag', 'Gorakhpur', 'CedSUV', '210', '3060', '', 2, 10),
(86, '2021-01-08', 'charbhag', 'Gorakhpur', 'CedSUV', '210', '3060', '', 2, 10),
(87, '2021-01-08', 'charbhag', 'indiranagar', 'CedMicro', '10', '185', '', 2, 11),
(88, '2021-01-08', 'charbhag', 'indiranagar', 'CedMicro', '10', '185', '', 2, 11),
(89, '2021-01-08', 'indiranagar', 'Basti', 'CedMini', '140', '1891', '3', 1, 11),
(90, '2021-01-08', 'indiranagar', 'Basti', 'CedMini', '140', '1891', '3', 2, 11),
(91, '2021-01-08', 'charbhag', 'indiranagar', 'CedMicro', '10', '185', '', 2, 11),
(92, '2021-01-08', 'charbhag', 'indiranagar', 'CedMicro', '10', '185', '', 2, 11),
(93, '2021-01-08', 'indiranagar', 'BBD', 'CedMicro', '20', '305', '', 1, 11),
(94, '2021-01-08', 'BBD', 'indiranagar', 'CedSUV', '20', '965', '22', 2, 11),
(95, '2021-01-08', 'BBD', 'indiranagar', 'CedSUV', '20', '965', '22', 2, 11),
(96, '2021-01-08', 'Gorakhpur', 'Faizabad', 'CedMini', '110', '1705', '22', 1, 11),
(97, '2021-01-08', 'Gorakhpur', 'Faizabad', 'CedMini', '110', '1705', '22', 2, 11),
(98, '2021-01-09', 'charbhag', 'indiranagar', 'CedMicro', '10', '185', '', 2, 11),
(99, '2021-01-09', 'charbhag', 'indiranagar', 'CedMini', '10', '295', '', 1, 11),
(100, '2021-01-09', 'charbhag', 'BBD', 'CedMini', '30', '605', '3', 2, 11),
(101, '2021-01-09', 'charbhag', 'indiranagar', 'CedMicro', '10', '185', '', 0, 11),
(102, '2021-01-09', 'charbhag', 'BBD', 'CedMini', '30', '555', '', 0, 11),
(103, '2021-01-09', 'indiranagar', 'charbhag', 'CedMicro', '10', '185', '', 0, 11),
(104, '2021-01-09', 'charbhag', 'indiranagar', 'CedMicro', '10', '185', '', 0, 11),
(105, '2021-01-09', 'indiranagar', 'Basti', 'CedSUV', '140', '2221', '', 2, 11),
(106, '2021-01-09', 'indiranagar', 'charbhag', 'CedMicro', '10', '185', '', 1, 13),
(107, '2021-01-11', 'charbhag', 'BBD', 'CedMini', '30', '555', '', 0, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_ride`
--
ALTER TABLE `tb_ride`
  ADD PRIMARY KEY (`ride_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_ride`
--
ALTER TABLE `tb_ride`
  MODIFY `ride_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
