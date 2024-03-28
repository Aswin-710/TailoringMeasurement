-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2024 at 02:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodejs2`
--

-- --------------------------------------------------------

--
-- Table structure for table `blouse`
--

CREATE TABLE `blouse` (
  `orderId` int(11) NOT NULL,
  `lenght` int(4) NOT NULL,
  `chest` int(4) NOT NULL,
  `shoulderfinish` int(4) NOT NULL,
  `slevelength` int(4) NOT NULL,
  `sleveround` int(4) NOT NULL,
  `middlehandround` int(4) NOT NULL,
  `frontneckheight` int(4) NOT NULL,
  `backneckround` int(4) NOT NULL,
  `waistloose` int(4) NOT NULL,
  `frontdartpoint` int(4) NOT NULL,
  `fullshoulder` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blouse`
--

INSERT INTO `blouse` (`orderId`, `lenght`, `chest`, `shoulderfinish`, `slevelength`, `sleveround`, `middlehandround`, `frontneckheight`, `backneckround`, `waistloose`, `frontdartpoint`, `fullshoulder`) VALUES
(1, 2, 3, 4, 7, 5, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `chudi`
--

CREATE TABLE `chudi` (
  `orderId` int(4) NOT NULL,
  `height` int(4) NOT NULL,
  `frontpointcenter` int(4) NOT NULL,
  `bodyloose` int(4) NOT NULL,
  `hiploose` int(4) NOT NULL,
  `firstlowhipheight` int(4) NOT NULL,
  `firstlowhiploose` int(4) NOT NULL,
  `bottomopenfromtop` int(4) NOT NULL,
  `secondlowhiploose` int(4) NOT NULL,
  `frontneckheight` int(4) NOT NULL,
  `backneckheight` int(4) NOT NULL,
  `handheight` int(4) NOT NULL,
  `middlehandloose` int(4) NOT NULL,
  `pantheight` int(4) NOT NULL,
  `seatloose` int(4) NOT NULL,
  `bottomloose` int(4) NOT NULL,
  `bodytokneeheight` int(4) NOT NULL,
  `kneeloose` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chudi`
--

INSERT INTO `chudi` (`orderId`, `height`, `frontpointcenter`, `bodyloose`, `hiploose`, `firstlowhipheight`, `firstlowhiploose`, `bottomopenfromtop`, `secondlowhiploose`, `frontneckheight`, `backneckheight`, `handheight`, `middlehandloose`, `pantheight`, `seatloose`, `bottomloose`, `bodytokneeheight`, `kneeloose`) VALUES
(1, 2, 3, 45, 5, 5, 7, 7, 6, 5, 7, 4, 7, 5, 4, 7, 4, 3),
(3, 4, 5, 4, 6, 6, 5, 4, 6, 5, 5, 6, 4, 5, 6, 4, 6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `orderId` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `bDate` varchar(10) NOT NULL,
  `dDate` varchar(10) NOT NULL,
  `reqCloth` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `orderId`, `name`, `phone`, `address`, `bDate`, `dDate`, `reqCloth`) VALUES
(16, 1, 'Aswin Sekar', '+918300640', 'PANANGKATTU THOTTAM Vallipuram', '2024-03-02', '2024-03-03', 4),
(19, 2, 'vigi', '568678979', 'jlkbhjnljl', '2024-03-10', '2024-03-17', 4),
(20, 3, 'priya', '9442822201', 'namakkal', '2024-03-11', '2024-03-17', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('aswin', '$2b$10$bcyeYTcDpDLYqoaMck0JouB5RxQmkHvqb6KHY0Yj6W4IMy2N1MpEm'),
('aswin', '$2b$10$wXJhDHBI/O.TIFJyjJzEIeYfpJrDRlhZvxFV.X4cX9gFUdsz1ez3K'),
('viji', '$2b$10$fCU.Z6vaV1y5Ce5HmsqbcOFDhwl0OVr2zmnv7tPkEHKaXbZdkWG.i'),
('priya', '$2b$10$A8ABMcuWmtcsQADnDEtUHuTzVamreZrXZtjVWXSCObWs7DrtHbtES'),
('asdf', '$2b$10$pNxoUCzyc02.YKeSAMjpLOw7Iokz9nLNFLa/jbckXV3FjSmGFV25e'),
('', '$2b$10$DWCfFURaQkr8O7Tg4DFX9e0kRPNaD/1JjJAmIKljjUlwb8sLmE/3W');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
