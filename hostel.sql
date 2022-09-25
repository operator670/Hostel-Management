-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2022 at 07:51 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'kesarwani.sarthak905@gmail.com', 'Test@1234', '2022-01-13 20:31:45', '2022-01-14');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_sn` varchar(255) DEFAULT NULL,
  `course_fn` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(8, '0001', 'B.E', 'Bachelor of Engineering', '2022-01-25 14:27:27'),
(9, '0002', 'B.Arch', 'Bachelor of Architecture', '2022-01-25 14:28:09'),
(11, '0003', 'F.T', 'Fashion Technology', '2022-01-25 14:30:07'),
(13, '0004', 'MCA', 'Master of Computer Application', '2022-01-25 14:37:30'),
(19, '0005', 'B.Tech', 'Bachelor of Technology', '2022-01-26 04:34:00'),
(20, '9000', 'M.Tech', 'Master of Technology', '2022-01-26 06:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) DEFAULT NULL,
  `seater` int(11) NOT NULL,
  `feespm` int(11) DEFAULT NULL,
  `foodstatus` int(11) DEFAULT NULL,
  `stayfrom` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `course` varchar(500) NOT NULL,
  `regno` int(11) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) DEFAULT NULL,
  `lastName` varchar(500) DEFAULT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `egycontactno` bigint(11) DEFAULT NULL,
  `guardianName` varchar(500) DEFAULT NULL,
  `guardianRelation` varchar(500) DEFAULT NULL,
  `guardianContactno` bigint(11) DEFAULT NULL,
  `corresAddress` varchar(500) DEFAULT NULL,
  `corresCIty` varchar(500) DEFAULT NULL,
  `corresState` varchar(500) DEFAULT NULL,
  `corresPincode` int(11) NOT NULL,
  `pmntAddress` varchar(500) DEFAULT NULL,
  `pmntCity` varchar(500) DEFAULT NULL,
  `pmnatetState` varchar(500) DEFAULT NULL,
  `pmntPincode` int(11) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(4, 1004, 2, 9000, 1, '2022-01-21', 12, 'Bachelor of Engineering', 123456789, 'Sarthak', '', 'Kesarwani', 'male', 8840411633, 'officialsarthak905@gmail.com', 8840411633, 'Ayush', 'Brother', 8840411633, 'Om Shri Sai Vihar Apartment, 2nd Floor, Flat-6\r\nNehru Nagar, Meerapur,Prayagraj,UttarPradesh', 'Prayagraj', 'Uttar Pradesh', 211016, 'Om Shri Sai Vihar Apartment, 2nd Floor, Flat-6\r\nNehru Nagar, Meerapur,Prayagraj,UttarPradesh', 'Prayagraj', 'Uttar Pradesh', 211016, '2022-01-25 16:10:27', NULL),
(5, 1, 1, 7000, 0, '2022-01-22', 2, 'Bachelor of Architecture', 1122334455, 'Ayush', 'Kumar', 'Sinha', 'male', 9919628578, 'wang07941@gmail.com', 9919628578, 'Sarthak', 'Brother', 8840411633, '100-5d/1-a Mumbai,Maharashtra', 'Mumbai', 'Maharashtra', 560064, 'Om Sai Vihar Apartment, 9th Floor, Flat-2\r\nNehru Nagar, Johnstonganj,Varanasi,UttarPradesh', 'Varanasi', 'Uttar Pradesh', 211001, '2022-01-25 16:13:30', NULL),
(6, 3, 1, 7000, 1, '2022-01-27', 11, 'Master of Computer Application', 987654321, 'Swapnil', '', 'Dixit', 'male', 1234567890, 'swapnil@gmail.com', 9919628578, 'Sarthak', 'Father', 9919628578, '190-5d/1-a Nashik,Maharashtra', 'Nashik', 'Maharashtra', 560062, '190-5d/1-a Nashik,Maharashtra', 'Nashik', 'Maharashtra', 560062, '2022-01-25 16:49:57', NULL),
(7, 7, 1, 7000, 1, '2022-01-27', 3, 'Bachelor of Engineering', 2147483647, 'Ayush', 'Kumar', 'Sinha', 'male', 7275650750, 'wang07941@gmail.com', 8840411633, 'Sarthak', 'Father', 9919628578, '100-5d/1-a Mumbai,Maharashtra', 'Mumbai', 'Maharashtra', 560064, '100-5d/1-a Mumbai,Maharashtra', 'Mumbai', 'Maharashtra', 560064, '2022-01-26 06:52:40', NULL),
(8, 9000, 1, 1400, 0, '2022-01-27', 5, 'Fashion Technology', 77777777, 'Sarthak', '', 'Kesarwani', 'female', 7275650750, 'kesarwani.sarthak905@gmail.com', 9919628578, 'Ayush', 'Father', 9919628578, 'Om Shri Sai Vihar Apartment, 2nd Floor, Flat-6\r\nNehru Nagar, Meerapur,Prayagraj,UttarPradesh', 'Prayagraj', 'Uttar Pradesh', 211016, 'Om Shri Sai Vihar Apartment, 2nd Floor, Flat-6\r\nNehru Nagar, Meerapur,Prayagraj,UttarPradesh', 'Prayagraj', 'Uttar Pradesh', 211016, '2022-01-26 06:54:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(7, 1, 1, 7000, '2022-01-25 14:38:20'),
(8, 1, 2, 7000, '2022-01-25 14:42:12'),
(9, 1, 3, 7000, '2022-01-25 15:22:45'),
(11, 1, 4, 7000, '2022-01-25 15:51:34'),
(12, 1, 5, 7000, '2022-01-25 15:51:52'),
(13, 1, 6, 7000, '2022-01-25 15:52:05'),
(14, 1, 7, 7000, '2022-01-25 15:52:17'),
(15, 2, 1000, 9000, '2022-01-25 15:54:11'),
(16, 2, 1002, 9000, '2022-01-25 15:54:23'),
(17, 2, 1003, 9000, '2022-01-25 15:54:34'),
(18, 2, 1004, 9000, '2022-01-25 16:08:49'),
(21, 1, 9000, 1400, '2022-01-26 06:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Andaman and Nicobar Island (UT)'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh (UT)'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli (UT)'),
(9, 'Daman and Diu (UT)'),
(10, 'Delhi (NCT)'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep (UT)'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'Uttar Pradesh'),
(36, 'West Bengal'),
(37, 'Ladakh (UT)');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(11, 7, '123456789', 0x3a3a31, '', '', '2022-01-25 16:37:42'),
(12, 8, 'wang07941@gmail.com', 0x3a3a31, '', '', '2022-01-25 16:41:46'),
(13, 9, '0987654321', 0x3a3a31, '', '', '2022-01-25 16:48:11'),
(14, 12, 'sarprag.905@gmail.com', 0x3a3a31, '', '', '2022-01-26 06:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) DEFAULT NULL,
  `passUdateDate` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(7, '123456789', 'Sarthak', '', 'Kesarwani', 'male', 8840411633, 'officialsarthak905@gmail.com', '0987654321', '2022-01-25 16:10:27', '25-01-2022 10:08:06', '25-01-2022 10:09:33'),
(8, '1122334455', 'Ayush', 'Kumar', 'Sinha', 'male', 9919628578, 'wang07941@gmail.com', '9919628578', '2022-01-25 16:13:30', NULL, NULL),
(9, '0987654321', 'Swapnil', '', 'Dixit', 'male', 1234567890, 'swapnil@gmail.com', 'modimodimodi', '2022-01-25 16:47:40', NULL, NULL),
(10, '88888888888', 'Ayush', 'Kumar', 'Sinha', 'male', 7275650750, 'wang07941@gmail.com', '7275650750', '2022-01-26 06:52:40', NULL, NULL),
(11, '77777777', 'Sarthak', '', 'Kesarwani', 'female', 7275650750, 'kesarwani.sarthak905@gmail.com', '7275650750', '2022-01-26 06:54:22', NULL, NULL),
(12, '4000', 'Prateek', '', 'Gupta', 'male', 9919628578, 'sarprag.905@gmail.com', 'hello123', '2022-01-26 06:56:03', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_code` (`course_code`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_no` (`room_no`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `regNo` (`regNo`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
