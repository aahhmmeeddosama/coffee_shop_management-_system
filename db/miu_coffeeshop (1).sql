-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2021 at 10:37 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miu_coffeeshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `Name` varchar(50) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Price` double NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`Name`, `Type`, `Price`, `Description`) VALUES
('Coffee Late', 'Coffee', 25, 'Coffee and Milk');

-- --------------------------------------------------------

--
-- Table structure for table `order_component`
--

CREATE TABLE `order_component` (
  `Name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_component`
--

INSERT INTO `order_component` (`Name`) VALUES
('Chocolate'),
('Milk'),
('None');

-- --------------------------------------------------------

--
-- Table structure for table `order_type`
--

CREATE TABLE `order_type` (
  `Name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_type`
--

INSERT INTO `order_type` (`Name`) VALUES
('Coffee'),
('Tea');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `ID` int(50) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Mobile` int(12) NOT NULL,
  `Email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `the_order`
--

CREATE TABLE `the_order` (
  `ID` int(50) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Price` double NOT NULL,
  `Quantity` int(50) NOT NULL,
  `Extra` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `the_order`
--

INSERT INTO `the_order` (`ID`, `Name`, `Price`, `Quantity`, `Extra`) VALUES
(1, 'Cafe', 25, 2, 'Milk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`Name`),
  ADD KEY `Type` (`Type`);

--
-- Indexes for table `order_component`
--
ALTER TABLE `order_component`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `order_type`
--
ALTER TABLE `order_type`
  ADD PRIMARY KEY (`Name`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `the_order`
--
ALTER TABLE `the_order`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Extra` (`Extra`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `the_order`
--
ALTER TABLE `the_order`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`Type`) REFERENCES `order_type` (`Name`);

--
-- Constraints for table `the_order`
--
ALTER TABLE `the_order`
  ADD CONSTRAINT `the_order_ibfk_1` FOREIGN KEY (`Extra`) REFERENCES `order_component` (`Name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
