-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2020 at 06:38 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blossom`
--

-- --------------------------------------------------------

--
-- Table structure for table `flower`
--

CREATE TABLE `flower` (
  `id` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  `color` varchar(16) NOT NULL,
  `sunneeds` varchar(20) NOT NULL,
  `soil needs` varchar(30) NOT NULL,
  `zones` varchar(10) NOT NULL,
  `height` int(5) NOT NULL,
  `blooms in` varchar(15) NOT NULL,
  `features` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `flowers`
--

CREATE TABLE `flowers` (
  `id` int(11) NOT NULL,
  `lavender` varchar(255) NOT NULL,
  `lily` varchar(255) NOT NULL,
  `holly` varchar(255) NOT NULL,
  `jasmine` varchar(255) NOT NULL,
  `daisy` varchar(255) NOT NULL,
  `poppy` varchar(255) NOT NULL,
  `rose` varchar(255) NOT NULL,
  `alyssum` varchar(255) NOT NULL,
  `iris` varchar(255) NOT NULL,
  `violet` varchar(255) NOT NULL,
  `ivy` varchar(255) NOT NULL,
  `cyclamen` varchar(255) NOT NULL,
  `dafoddil` varchar(255) NOT NULL,
  `dahlia` varchar(255) NOT NULL,
  `delphinium` varchar(255) NOT NULL,
  `diascia` varchar(255) NOT NULL,
  `dusty miller` varchar(255) NOT NULL,
  `epimedium` varchar(255) NOT NULL,
  `fountain grass` varchar(255) NOT NULL,
  `fox glove` varchar(255) NOT NULL,
  `gaillardia` varchar(255) NOT NULL,
  `gas plant` varchar(255) NOT NULL,
  `gaura` varchar(255) NOT NULL,
  `gazania` varchar(255) NOT NULL,
  `geranium` varchar(255) NOT NULL,
  `geum` varchar(255) NOT NULL,
  `globe thistle` varchar(255) NOT NULL,
  `glory of the snow` varchar(255) NOT NULL,
  `gomphrena` varchar(255) NOT NULL,
  `heliotrope` varchar(255) NOT NULL,
  `hepatica` varchar(255) NOT NULL,
  `hosta` varchar(255) NOT NULL,
  `ladys mantle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  `last_name` varchar(16) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `password`, `created_at`) VALUES
(1, 'Brew', 'Entrust', 'entrustbrew1@gmail.c', '00001', '2020-09-23 11:08:46'),
(2, 'Glut', 'Glance', 'glanceglut3@gmail.co', '00002', '2020-09-23 11:08:46'),
(3, 'Fain', 'Fastness', 'fastnessfain2@gmail.', '00003', '2020-09-23 11:09:46'),
(4, 'Hearth', 'Heat', 'hearthheat4@gmail.co', '00004', '2020-09-23 11:10:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flower`
--
ALTER TABLE `flower`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flowers`
--
ALTER TABLE `flowers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flower`
--
ALTER TABLE `flower`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flowers`
--
ALTER TABLE `flowers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
