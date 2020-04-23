-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2020 at 10:28 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobileshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `b_name` varchar(30) NOT NULL,
  `b_id` int(10) NOT NULL,
  `b_ph_no` int(11) NOT NULL,
  `service_center_status` varchar(10) NOT NULL,
  `B_location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`b_name`, `b_id`, `b_ph_no`, `service_center_status`, `B_location`) VALUES
('poorvika', 1, 2147483647, 'avail', 'tumakur');

-- --------------------------------------------------------

--
-- Table structure for table `brands_avail`
--

CREATE TABLE `brands_avail` (
  `b_id` int(10) NOT NULL,
  `brands_available` varchar(15) NOT NULL,
  `quantity_available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_name` varchar(20) NOT NULL,
  `c_id` int(10) NOT NULL,
  `age` int(11) NOT NULL,
  `password` varchar(11) NOT NULL,
  `b_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_name`, `c_id`, `age`, `password`, `b_id`) VALUES
('abc', 2, 12, 'abc', 1),
('lmn', 3, 12, 'lmn', 1),
('abc', 4, 12, 'lmn', 1),
('xyz', 5, 12, 'xyz', 1),
('abc', 7, 12, 'agsager', 1),
('pratibha', 16, 52, 'pbm123', 1),
('prabhu', 20, 50, 'abcd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `e_name` varchar(30) NOT NULL,
  `e_id` int(10) NOT NULL,
  `password` varchar(11) NOT NULL,
  `emp_ph_no` int(11) NOT NULL,
  `role` varchar(15) NOT NULL,
  `b_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`e_name`, `e_id`, `password`, `emp_ph_no`, `role`, `b_id`) VALUES
('dar', 1, 'abc', 2147483647, 'emp', 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_avail`
--

CREATE TABLE `service_avail` (
  `b_id` int(10) NOT NULL,
  `service_available` varchar(15) NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `brands_avail`
--
ALTER TABLE `brands_avail`
  ADD PRIMARY KEY (`b_id`,`brands_available`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `c_fk1` (`b_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`e_id`),
  ADD KEY `e_fk1` (`b_id`);

--
-- Indexes for table `service_avail`
--
ALTER TABLE `service_avail`
  ADD PRIMARY KEY (`b_id`,`service_available`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `b_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands_avail`
--
ALTER TABLE `brands_avail`
  MODIFY `b_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `e_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_avail`
--
ALTER TABLE `service_avail`
  MODIFY `b_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brands_avail`
--
ALTER TABLE `brands_avail`
  ADD CONSTRAINT `br_fk` FOREIGN KEY (`b_id`) REFERENCES `branches` (`b_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `c_fk1` FOREIGN KEY (`b_id`) REFERENCES `branches` (`b_id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `e_fk1` FOREIGN KEY (`b_id`) REFERENCES `branches` (`b_id`);

--
-- Constraints for table `service_avail`
--
ALTER TABLE `service_avail`
  ADD CONSTRAINT `br_fk1` FOREIGN KEY (`b_id`) REFERENCES `branches` (`b_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
