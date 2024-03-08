-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2022 at 09:05 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `user_type` int(1) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `user_type`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, '08-05-2020 07:23:45 PM'),
(5, 'rex', '827ccb0eea8a706c4c34a16891f84e7b', 2, '2021-12-27 14:56:47'),
(8, 'Lupin', '827ccb0eea8a706c4c34a16891f84e7b', 3, '2022-01-05 12:59:03');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `priority` varchar(11) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `priority`, `creationDate`, `updationDate`) VALUES
(1, 'TECHNICAL', '', 'High', '2021-12-05 06:02:56', ''),
(2, 'NON-TECHNICAL', '', 'Medium', '2021-12-05 06:03:08', ''),
(3, 'OTHERS', '', 'Low', '2021-12-05 06:05:43', ''),
(4, 'Sports', '', 'High', '2022-01-05 07:59:15', '');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 1, 'in process', 'in process', '2021-12-05 06:57:11'),
(2, 2, 'in process', 'sdfasf', '2021-12-05 14:50:36'),
(3, 2, 'closed', 'werwe', '2021-12-05 14:51:45'),
(4, 5, 'in process', 'will resolve in an hour.', '2022-01-05 07:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `departmentName` varchar(255) NOT NULL,
  `Description` tinytext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `departmentName`, `Description`, `postingDate`, `updationDate`) VALUES
(5, 'Computer', '', '2021-12-05 06:25:43', ''),
(7, 'Mechanical', '', '2021-12-05 06:25:56', ''),
(8, 'Electrical', '', '2021-12-05 06:26:08', ''),
(9, 'Civil', '', '2021-12-05 06:26:16', ''),
(11, 'Artificial Inteligence', 'asdas dasad sa dsad sa', '2021-12-27 17:35:27', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `priority` varchar(11) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `priority`, `creationDate`, `updationDate`) VALUES
(1, 1, 'System Related issues', '', '2021-12-05 06:07:24', ''),
(2, 1, 'Internet Related issues', '', '2021-12-05 06:07:46', ''),
(3, 2, 'abc', '', '2021-12-05 14:52:49', ''),
(5, 3, 'Bully', 'high', '2021-12-28 05:35:51', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `complaintType` varchar(255) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `noc` varchar(255) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `adminId` int(11) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `Department`, `noc`, `complaintDetails`, `complaintFile`, `adminId`, `regDate`, `status`, `lastUpdationDate`) VALUES
(2, 1, 3, 'Bully', 'General Query', 'Civil', 'high', 'asd asdasdsa ', '', 2, '2021-12-27 22:02:57', NULL, '2022-01-05 07:32:56'),
(3, 1, 2, 'abc', 'General Query', 'Mechanical', '', 'gghvhgv ', '', 2, '2021-12-29 16:20:13', NULL, '2022-01-05 07:31:33'),
(4, 1, 2, 'abc', 'General Query', 'Mechanical', '', 'gghvhgv ', '', 2, '2021-12-29 09:23:59', NULL, '2022-01-05 07:31:40'),
(5, 1, 3, 'Bully', 'General Query', 'Mechanical', 'high', 'asd asds d asd sd asd sd', '', 3, '2022-01-05 07:37:53', 'in process', '2022-01-05 07:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 0, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-08 14:14:43', '', 0),
(2, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-08 14:14:50', '08-05-2020 07:44:51 PM', 1),
(3, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-08 14:16:30', '', 1),
(4, 0, 'admin', 0x3a3a3100000000000000000000000000, '2021-11-07 16:50:48', '', 0),
(5, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2021-11-07 17:02:25', '07-11-2021 10:40:07 PM', 1),
(6, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2021-11-08 05:52:03', '', 1),
(7, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2021-11-08 05:52:03', '08-11-2021 11:30:23 AM', 1),
(8, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2021-11-09 09:24:45', '09-11-2021 02:55:43 PM', 1),
(9, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-05 05:52:52', '', 1),
(10, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-05 05:52:52', '05-12-2021 11:23:56 AM', 1),
(11, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-05 05:58:45', '05-12-2021 11:32:10 AM', 1),
(12, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-05 06:02:16', '', 1),
(13, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-05 07:03:31', '05-12-2021 12:38:01 PM', 1),
(14, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-05 07:25:20', '', 1),
(15, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-05 14:46:25', '05-12-2021 08:33:53 PM', 1),
(16, 0, 'joh', 0x3a3a3100000000000000000000000000, '2021-12-05 15:04:48', '', 0),
(17, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-05 15:04:55', '', 1),
(18, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-05 15:04:55', '', 1),
(19, 0, 'crack@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 09:33:04', '', 0),
(20, 1, 'crack@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 09:33:18', '27-12-2021 03:16:15 PM', 1),
(21, 1, 'crack@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 17:10:57', '', 1),
(22, 1, 'crack@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 17:10:57', '27-12-2021 10:46:06 PM', 1),
(23, 1, 'crack@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 17:16:16', '', 1),
(24, 1, 'crack@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-28 06:01:30', '', 1),
(25, 1, 'crack@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-29 16:19:34', '', 1),
(26, 1, 'crack@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-05 07:36:41', '05-01-2022 01:07:58 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `PRN` int(50) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `PRN`, `address`, `Department`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(1, 'sloth ani', 'crack@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 40549587, NULL, 'computer', NULL, '2021-12-26 11:11:53', '2021-12-26 11:13:42', 1),
(2, 'asb', 'abc@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 2132113, NULL, 'computer', NULL, '2021-12-26 11:13:27', '2021-12-27 10:39:11', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
