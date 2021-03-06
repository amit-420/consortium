-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2021 at 09:58 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `conso21`
--

-- --------------------------------------------------------

--
-- Table structure for table `adventure`
--

CREATE TABLE `adventure` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL,
  `team_conso_id` varchar(255) NOT NULL,
  `typeof_ad` tinyint(1) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `razor_payment_id` varchar(255) NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adventure`
--

INSERT INTO `adventure` (`id`, `name`, `contact`, `email`, `college`, `team_conso_id`, `typeof_ad`, `order_id`, `razor_payment_id`, `payment_status`) VALUES
(20, 'Lakshya', '7738446941', 'lakshyashukla32@gmail.com', 'VNIT ', 'Lak5718', 0, '', '', 0),
(21, 'Anil', '7738446941', 'anil@gmail.com', '', 'Lak5718', 0, '', '', 0),
(22, 'Sunil', '12121', 'sunil@gmail.com', '', 'Lak5718', 0, '', '', 0),
(23, 'munil', '787878', 'munil@gmail.com', '', 'Lak5718', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bizquiz`
--

CREATE TABLE `bizquiz` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL,
  `team_conso_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `razor_payment_id` varchar(255) NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bizquiz`
--

INSERT INTO `bizquiz` (`id`, `name`, `contact`, `email`, `college`, `team_conso_id`, `order_id`, `razor_payment_id`, `payment_status`) VALUES
(2, 'Lakshya', '7738446941', 'lakshyashukla32@gmail.com', 'VNIT ', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ceo`
--

CREATE TABLE `ceo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `razor_payment_id` varchar(255) NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ceo`
--

INSERT INTO `ceo` (`id`, `name`, `contact`, `email`, `college`, `order_id`, `razor_payment_id`, `payment_status`) VALUES
(17, 'Lakshya', '7738446941', 'lakshyashukla32@gmail.com', 'vnit', '', '', 0),
(18, 'Lakshya', '7738446941', 'lakshyashukla32@gmail.com', 'vnit', '', '', 0),
(19, 'Lakshya', '7738446941', 'lakshyashukla32@gmail.com', 'VNIT ', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `operation_research`
--

CREATE TABLE `operation_research` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL,
  `team_conso_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `operation_research`
--

INSERT INTO `operation_research` (`id`, `name`, `contact`, `email`, `college`, `team_conso_id`) VALUES
(1, 'Lakshya', 2147483647, 'lakshyashukla32@gmail.com', 'VNIT ', '');

-- --------------------------------------------------------

--
-- Table structure for table `pitch_mantra`
--

CREATE TABLE `pitch_mantra` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL,
  `round1` tinyint(1) NOT NULL DEFAULT 0,
  `round2` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pitch_mantra`
--

INSERT INTO `pitch_mantra` (`id`, `name`, `contact`, `email`, `college`, `round1`, `round2`) VALUES
(4, 'Lakshya', '7738446941', 'lakshyashukla32@gmail.com', 'VNIT ', 0, 0),
(5, 'Lakshya', '7738446941', 'lakshyashukla32@gmail.com', 'VNIT ', 0, 0),
(6, 'Lakshya', '7738446941', 'lakshyashukla32@gmail.com', 'VNIT ', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `conso_id` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `bizquiz` tinyint(1) NOT NULL DEFAULT 0,
  `swades` tinyint(1) NOT NULL DEFAULT 0,
  `adventure` tinyint(1) NOT NULL DEFAULT 0,
  `operation_research` tinyint(1) NOT NULL DEFAULT 0,
  `war_of_worlds` tinyint(1) NOT NULL DEFAULT 0,
  `render_ico` tinyint(1) NOT NULL DEFAULT 0,
  `pitch_mantra` tinyint(1) NOT NULL DEFAULT 0,
  `ceo` tinyint(1) NOT NULL DEFAULT 0,
  `wallstreet` tinyint(1) NOT NULL DEFAULT 0,
  `epl` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `email`, `name`, `contact`, `conso_id`, `college`, `otp`, `bizquiz`, `swades`, `adventure`, `operation_research`, `war_of_worlds`, `render_ico`, `pitch_mantra`, `ceo`, `wallstreet`, `epl`) VALUES
(20, 'lakshyashukla32@gmail.com', 'Lakshya', '7738446941', 'Lak5718', 'VNIT ', 'Confirmed', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(21, 'anil@gmail.com', 'Anil', '7738446941', '', '', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(22, 'sunil@gmail.com', 'Sunil', '12121', '', '', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(23, 'munil@gmail.com', 'munil', '787878', '', '', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `render_ico`
--

CREATE TABLE `render_ico` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `render_ico`
--

INSERT INTO `render_ico` (`id`, `name`, `contact`, `email`, `college`) VALUES
(1, 'Lakshya', '7738446941', 'lakshyashukla32@gmail.com', 'VNIT ');

-- --------------------------------------------------------

--
-- Table structure for table `swades`
--

CREATE TABLE `swades` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL,
  `team_conso_id` varchar(255) NOT NULL,
  `round1` tinyint(1) NOT NULL DEFAULT 0,
  `round2` tinyint(1) NOT NULL DEFAULT 0,
  `round3` tinyint(1) NOT NULL DEFAULT 0,
  `order_id` varchar(255) NOT NULL,
  `razor_payment_id` varchar(255) NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `swades`
--

INSERT INTO `swades` (`id`, `name`, `contact`, `email`, `college`, `team_conso_id`, `round1`, `round2`, `round3`, `order_id`, `razor_payment_id`, `payment_status`) VALUES
(1, 'Lakshya', '7738446941', 'lakshyashukla32@gmail.com', 'VNIT ', '', 0, 0, 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wallstreet`
--

CREATE TABLE `wallstreet` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL,
  `tier` varchar(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `razor_payment_id` varchar(255) NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wallstreet`
--

INSERT INTO `wallstreet` (`id`, `name`, `contact`, `email`, `college`, `tier`, `order_id`, `razor_payment_id`, `payment_status`) VALUES
(2, 'Lakshya', '7738446941', 'lakshyashukla32@gmail.com', '', 'basic', 'order_GgeKUa4YdKzWGY', '', 1),
(3, 'Lakshya', '7738446941', 'lakshyashukla32@gmail.com', 'VNIT ', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `war_of_worlds`
--

CREATE TABLE `war_of_worlds` (
  `id` int(11) DEFAULT NULL,
  `Name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL,
  `round1` tinyint(1) NOT NULL DEFAULT 0,
  `round2` tinyint(1) NOT NULL DEFAULT 0,
  `round3` tinyint(1) NOT NULL DEFAULT 0,
  `order_id` varchar(255) NOT NULL,
  `razor_payment_id` varchar(255) NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `war_of_worlds`
--

INSERT INTO `war_of_worlds` (`id`, `Name`, `contact`, `email`, `college`, `round1`, `round2`, `round3`, `order_id`, `razor_payment_id`, `payment_status`) VALUES
(NULL, 'Lakshya', '7738446941', 'lakshyashukla32@gmail.com', 'VNIT ', 0, 0, 0, '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adventure`
--
ALTER TABLE `adventure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bizquiz`
--
ALTER TABLE `bizquiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ceo`
--
ALTER TABLE `ceo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operation_research`
--
ALTER TABLE `operation_research`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pitch_mantra`
--
ALTER TABLE `pitch_mantra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `render_ico`
--
ALTER TABLE `render_ico`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `swades`
--
ALTER TABLE `swades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallstreet`
--
ALTER TABLE `wallstreet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adventure`
--
ALTER TABLE `adventure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `bizquiz`
--
ALTER TABLE `bizquiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ceo`
--
ALTER TABLE `ceo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `operation_research`
--
ALTER TABLE `operation_research`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pitch_mantra`
--
ALTER TABLE `pitch_mantra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `render_ico`
--
ALTER TABLE `render_ico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `swades`
--
ALTER TABLE `swades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wallstreet`
--
ALTER TABLE `wallstreet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
