-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2019 at 03:37 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `liftup`
--

-- --------------------------------------------------------

--
-- Table structure for table `client_basics`
--

CREATE TABLE `client_basics` (
  `c_id` int(10) NOT NULL,
  `mobile_no` varchar(13) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_basics`
--

INSERT INTO `client_basics` (`c_id`, `mobile_no`, `name`) VALUES
(1, '9999999999', 'hello'),
(2, '$mobile', '$name'),
(3, '999999', 'hello1'),
(4, '9999991', 'hello1'),
(5, '12345', 'abcd'),
(6, '9111111111', 'trinity'),
(8, '91111111111', 'trinity'),
(9, '74564', '4584');

-- --------------------------------------------------------

--
-- Table structure for table `client_full`
--

CREATE TABLE `client_full` (
  `cf_id` int(10) NOT NULL,
  `c_id` int(10) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `amount` int(10) DEFAULT NULL,
  `full_name` varchar(30) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `married` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `share_location` tinyint(1) NOT NULL,
  `date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_full`
--

INSERT INTO `client_full` (`cf_id`, `c_id`, `mobile`, `name`, `email`, `amount`, `full_name`, `dob`, `gender`, `married`, `address`, `share_location`, `date`) VALUES
(1, 1, '9111111111', 'trinity', 'trinity@123', 100, 'abc', '21-6-2019', 'Male', 'YES', 'gzb', 1, '2019/06/21'),
(2, 2, '123', '', '', NULL, '', '20-6-2019', '', '', '', 0, ''),
(7, 3, '', '', '', NULL, '', '', '', '', '', 0, ''),
(8, 3, '', '', '', NULL, '', '', '', '', '', 0, ''),
(9, 4, '', '', '', NULL, '', '', '', '', '', 0, ''),
(10, 3, '', '', '', NULL, '', '', '', '', '', 0, ''),
(11, 3, '', '', '', NULL, '', '', '', '', '', 0, ''),
(12, 3, '', '', '', NULL, '', '', '', '', '', 0, ''),
(23, 6, '9111111111', 'trinity', 'trinity@12345', 100, 'abc', '21-6-2019', 'Male', 'YES', 'gzb', 1, '2019/06/21'),
(24, 6, '', '', '', NULL, '', '', '', '', '', 0, ''),
(25, 6, '', '', '', NULL, '', '', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `label`
--

CREATE TABLE `label` (
  `l_id` int(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `options` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `label`
--

INSERT INTO `label` (`l_id`, `type`, `options`) VALUES
(1, 'email', ''),
(2, 'amount', ''),
(3, 'name', ''),
(4, 'dob', ''),
(5, 'radio', 'Gender,Male,Female'),
(6, 'radio', 'Married,Yes,No'),
(7, 'adress', ''),
(8, 'checkbo', 'Want to share your Location');

-- --------------------------------------------------------

--
-- Table structure for table `location_list`
--

CREATE TABLE `location_list` (
  `lo_id` int(10) NOT NULL,
  `location` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_list`
--

INSERT INTO `location_list` (`lo_id`, `location`) VALUES
(1, 'GHAZIABAD'),
(2, 'MEERUT'),
(3, 'VAISHALI'),
(4, 'DELHI');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `m_id` int(10) NOT NULL,
  `category` varchar(25) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_device`
--

CREATE TABLE `user_device` (
  `d_id` int(10) NOT NULL,
  `mobile_no` varchar(13) NOT NULL,
  `name` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `lat_pos` varchar(20) NOT NULL,
  `long_pos` varchar(20) NOT NULL,
  `update_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_device`
--

INSERT INTO `user_device` (`d_id`, `mobile_no`, `name`, `location`, `password`, `lat_pos`, `long_pos`, `update_date`) VALUES
(1, 'j', 'j', 'j', 'j', 'j', 'j', '2019/06/20'),
(2, 'j', 'j', 'j', 'j', 'j', 'j', '2019/06/20'),
(3, 'j', 'j', 'j', 'j', 'j', 'j', '2019/06/20'),
(4, 'j', 'j', 'j', 'j', 'j', 'j', '2019/06/20'),
(5, 'j', 'j', 'j', 'j', 'j', 'j', '2019/06/20'),
(6, 'j', 'j', 'j', 'j', '100', '$150', '2019/06/20'),
(7, 'j', 'j', 'j', 'j', '100', '$150', '2019/06/20'),
(8, '99999999', 'hello', 'GHAZIABAD', '', '100', '$150', '2019/06/20'),
(9, '9999999999', 'hello', 'GHAZIABAD', '', '100', '$150', '2019/06/20'),
(10, '9999999999', 'hello', 'GHAZIABAD', '', '100', '$150', '2019/06/20'),
(11, '9999999999', 'hello', 'GHAZIABAD', 'GHAZIABAD', '100', '$150', '2019/06/20'),
(12, '9999999999', 'hello', 'GHAZIABAD', 'GHAZIABAD', '100', '$150', '2019/06/20'),
(13, '656758657', 'nljn', 'GHAZIABAD', 'android.support.v7.widget.AppCompatEditText{5f9ada', '100', '$150', '2019/06/20'),
(14, '9595959595', 'abcd', 'GHAZIABAD', 'android.support.v7.widget.AppCompatEditText{b99278', '100', '$150', '2019/06/21'),
(15, '12345', 'abcs', 'GHAZIABAD', 'android.support.v7.widget.AppCompatEditText{9bc2bc', '100', '$150', '2019/06/21'),
(16, '12345', 'abc', 'GHAZIABAD', 'android.support.v7.widget.AppCompatEditText{5f9ada', '100', '$150', '2019/06/21'),
(17, '1234567', '123', 'GHAZIABAD', 'android.support.v7.widget.AppCompatEditText{5f9ada', '100', '$150', '2019/06/21'),
(18, '1', '123', 'GHAZIABAD', '1', '100', '$150', '2019/06/21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client_basics`
--
ALTER TABLE `client_basics`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `client_full`
--
ALTER TABLE `client_full`
  ADD PRIMARY KEY (`cf_id`);

--
-- Indexes for table `label`
--
ALTER TABLE `label`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `location_list`
--
ALTER TABLE `location_list`
  ADD PRIMARY KEY (`lo_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `user_device`
--
ALTER TABLE `user_device`
  ADD PRIMARY KEY (`d_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client_basics`
--
ALTER TABLE `client_basics`
  MODIFY `c_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `client_full`
--
ALTER TABLE `client_full`
  MODIFY `cf_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `label`
--
ALTER TABLE `label`
  MODIFY `l_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `location_list`
--
ALTER TABLE `location_list`
  MODIFY `lo_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `m_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_device`
--
ALTER TABLE `user_device`
  MODIFY `d_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
