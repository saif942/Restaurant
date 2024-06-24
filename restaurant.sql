-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2019 at 08:10 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `customeraddress`
--

CREATE TABLE `customeraddress` (
  `email` varchar(30) NOT NULL,
  `address_line1` varchar(30) NOT NULL,
  `address_line2` varchar(30) NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(30) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `landmark` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customeraddress`
--

INSERT INTO `customeraddress` (`email`, `address_line1`, `address_line2`, `city`, `state`, `pincode`, `landmark`) VALUES
('ankit6222@gmail.com', 'Sarojini Enclave', 'Govindpuram', 'Ghaziabad', 'U.P.', '201013', 'Idol Institute Of Technology'),
('rajat@gmail.com', 'A-77 R.K.Puram', 'Govindpuram', 'Ghaziabad', 'U.P.', '201013', 'Pritam Farm House');

-- --------------------------------------------------------

--
-- Table structure for table `customerinfo`
--

CREATE TABLE `customerinfo` (
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `mobile_number` varchar(10) NOT NULL,
  `alternative_number` varchar(10) DEFAULT NULL,
  `occupation` varchar(25) NOT NULL,
  `aadhar_id` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerinfo`
--

INSERT INTO `customerinfo` (`first_name`, `last_name`, `email`, `gender`, `mobile_number`, `alternative_number`, `occupation`, `aadhar_id`) VALUES
('Ankit', 'Pundir', 'ankit6222@gmail.com', 'M', '9654539313', '9954861421', 'Government', '123654789123'),
('Rajat', 'Saini', 'rajat@gmail.com', 'M', '9205419187', '7838538952', 'Government', '564789451235');

-- --------------------------------------------------------

--
-- Table structure for table `employeeaddress`
--

CREATE TABLE `employeeaddress` (
  `email` varchar(30) NOT NULL,
  `address_line1` varchar(30) NOT NULL,
  `address_line2` varchar(30) NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(30) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `landmark` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeeaddress`
--

INSERT INTO `employeeaddress` (`email`, `address_line1`, `address_line2`, `city`, `state`, `pincode`, `landmark`) VALUES
('udayuy01@gmail.com', 'A-97 Vishnu Enclave', 'Govindpuram', 'Ghaziabad', 'U.P.', '201013', 'Panscheel');

-- --------------------------------------------------------

--
-- Table structure for table `employeeaddressc`
--

CREATE TABLE `employeeaddressc` (
  `email` varchar(30) NOT NULL,
  `c_address_line1` varchar(30) NOT NULL,
  `c_address_line2` varchar(30) NOT NULL,
  `c_city` varchar(25) NOT NULL,
  `c_state` varchar(30) NOT NULL,
  `c_pincode` varchar(6) NOT NULL,
  `c_landmark` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeeaddressc`
--

INSERT INTO `employeeaddressc` (`email`, `c_address_line1`, `c_address_line2`, `c_city`, `c_state`, `c_pincode`, `c_landmark`) VALUES
('udayuy01@gmail.com', 'A-97 Vishnu Enclave', 'Govindpuram', 'Ghaziabad', 'U.P.', '201013', 'Panscheel');

-- --------------------------------------------------------

--
-- Table structure for table `employeeeducation`
--

CREATE TABLE `employeeeducation` (
  `email` varchar(30) NOT NULL,
  `high_school` varchar(5) NOT NULL,
  `intermediate` varchar(5) NOT NULL,
  `graduation_course` varchar(20) NOT NULL,
  `graduation_percentage` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeeeducation`
--

INSERT INTO `employeeeducation` (`email`, `high_school`, `intermediate`, `graduation_course`, `graduation_percentage`) VALUES
('udayuy01@gmail.com', '92', '85', 'B.tech', '65');

-- --------------------------------------------------------

--
-- Table structure for table `employeeinfo`
--

CREATE TABLE `employeeinfo` (
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `mobile_number` varchar(10) NOT NULL,
  `designation` varchar(8) NOT NULL,
  `aadhar_id` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeeinfo`
--

INSERT INTO `employeeinfo` (`first_name`, `last_name`, `email`, `gender`, `mobile_number`, `designation`, `aadhar_id`) VALUES
('Uday', 'Yadav', 'udayuy01@gmail.com', 'M', '9953573509', 'Manager', '154236789421');

-- --------------------------------------------------------

--
-- Table structure for table `foodcategory`
--

CREATE TABLE `foodcategory` (
  `category_id` varchar(10) NOT NULL,
  `category_name` varchar(30) NOT NULL,
  `adding_id` varchar(30) NOT NULL,
  `adding_date` varchar(10) NOT NULL,
  `updating_id` varchar(30) DEFAULT NULL,
  `updating_date` varchar(10) DEFAULT NULL,
  `description` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodcategory`
--

INSERT INTO `foodcategory` (`category_id`, `category_name`, `adding_id`, `adding_date`, `updating_id`, `updating_date`, `description`, `status`) VALUES
('Bev01', 'Beverages', 'udayuy01@gmail.com', '2018-09-11', NULL, NULL, 'Soft Drinks', 'A'),
('Des01', 'Desserts', 'udayuy01@gmail.com', '2018-09-12', NULL, NULL, 'Dessert', 'A'),
('Pan01', 'Paneer Dishes', 'udayuy01@gmail.com', '2018-09-11', NULL, NULL, 'Paneer1', 'A'),
('Ric01', 'Rice', 'udayuy01@gmail.com', '2018-09-24', NULL, NULL, 'Rice', 'A'),
('Rot01', 'Roti', 'udayuy01@gmail.com', '2019-06-27', 'udayuy01@gmail.com', '2019-06-27', 'All Types Of Roti', 'D'),
('Veg01', 'Vegetables Dishes', 'udayuy01@gmail.com', '2018-09-24', NULL, NULL, 'Vegetables', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `fooditem`
--

CREATE TABLE `fooditem` (
  `category_id` varchar(10) NOT NULL,
  `food_id` varchar(10) NOT NULL,
  `food_name` varchar(30) NOT NULL,
  `size` varchar(10) NOT NULL DEFAULT 'null',
  `quantity` varchar(4) NOT NULL DEFAULT 'null',
  `weight` varchar(4) NOT NULL DEFAULT 'null',
  `price` varchar(3) NOT NULL,
  `adding_id` varchar(30) NOT NULL,
  `adding_date` varchar(10) NOT NULL,
  `updating_id` varchar(30) NOT NULL DEFAULT 'null',
  `updating_date` varchar(10) NOT NULL DEFAULT 'null',
  `description` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fooditem`
--

INSERT INTO `fooditem` (`category_id`, `food_id`, `food_name`, `size`, `quantity`, `weight`, `price`, `adding_id`, `adding_date`, `updating_id`, `updating_date`, `description`, `status`) VALUES
('Des01', 'Ice01', 'Ice Cream', '', '1 S', '100', '50', 'udayuy01@gmail.com', '2018-09-12', 'udayuy01@gmail.com', '2019-06-27', 'Black Current', 'D'),
('Bev01', 'Lpep01', 'Large Pepsi', 'large', '200', '', '100', 'udayuy01@gmail.com', '2018-09-19', '', '', 'Soft Drink', 'A'),
('Bev01', 'MPep01', 'Medium Pepsi', 'medium', '200', '', '70', 'udayuy01@gmail.com', '2018-09-19', '', '', 'Soft Drink', 'A'),
('Pan01', 'Span01', 'Sahi Paneer', 'half', '', '150', '70', 'udayuy01@gmail.com', '2019-06-27', '', '', 'Half Plate Shai Paneer', 'A'),
('Bev01', 'Spep01', 'Small Pepsi', 'small', '150', '', '50', 'udayuy01@gmail.com', '2018-09-11', 'udayuy01@gmail.com', '2019-06-27', '', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(30) NOT NULL,
  `password` varchar(25) NOT NULL,
  `type` varchar(10) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`, `type`, `status`) VALUES
('ankit6222@gmail.com', 'Ankit@1995', 'customer', 'P'),
('rajat@gmail.com', 'Rajat@1996', 'customer', 'P'),
('udayuy01@gmail.com', '9953573509', 'employee', 'P'),
('vishal@gmail.com', 'Vishal@1995', 'admin', 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customeraddress`
--
ALTER TABLE `customeraddress`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `customerinfo`
--
ALTER TABLE `customerinfo`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `mobile_Number` (`mobile_number`),
  ADD UNIQUE KEY `aadhar_Id` (`aadhar_id`);

--
-- Indexes for table `employeeaddress`
--
ALTER TABLE `employeeaddress`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `employeeaddressc`
--
ALTER TABLE `employeeaddressc`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `employeeeducation`
--
ALTER TABLE `employeeeducation`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `employeeinfo`
--
ALTER TABLE `employeeinfo`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `aadhar_Id` (`aadhar_id`),
  ADD UNIQUE KEY `mobile_Number` (`mobile_number`);

--
-- Indexes for table `foodcategory`
--
ALTER TABLE `foodcategory`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `fooditem`
--
ALTER TABLE `fooditem`
  ADD PRIMARY KEY (`food_name`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
