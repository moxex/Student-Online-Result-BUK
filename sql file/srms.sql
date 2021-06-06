-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 12:57 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(2, 'saxenapriyansh', '5e5693106f98422d9e1fa019202c1890', '2018-10-23 18:07:00'),
(4, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2021-06-06 12:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `Department` varchar(80) DEFAULT NULL,
  `Level` int(4) NOT NULL,
  `Semester` varchar(30) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `Department`, `Level`, `Semester`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Computer', 3, 'First', '2021-06-06 20:40:50', '2021-06-06 20:53:44'),
(3, 'Ethics', 2, 'Second', '2021-06-06 20:48:09', '2021-06-06 20:55:54');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(2, 1, 1, 2, 100, '2017-08-24 17:54:09', '2017-08-28 18:34:32'),
(3, 1, 1, 1, 80, '2017-08-24 17:54:09', '2017-08-28 18:34:25'),
(4, 1, 1, 5, 78, '2017-08-24 17:54:09', '2017-08-28 18:34:26'),
(5, 1, 1, 4, 60, '2017-08-24 17:54:09', '2017-08-28 18:34:26'),
(6, 2, 3, 2, 90, '2017-08-28 18:38:18', '2021-06-06 21:15:50'),
(7, 2, 3, 1, 75, '2017-08-28 18:38:18', '2021-06-06 21:15:53'),
(8, 2, 1, 5, 56, '2017-08-28 18:38:18', '2021-06-06 21:15:26'),
(9, 2, 1, 4, 80, '2017-08-28 18:38:18', '2021-06-06 21:15:22'),
(10, 4, 1, 2, 54, '2017-08-28 18:56:21', '2021-06-06 21:15:19'),
(11, 4, 1, 1, 85, '2017-08-28 18:56:21', '2021-06-06 21:15:17'),
(12, 4, 1, 5, 55, '2017-08-28 18:56:21', '2021-06-06 21:15:47'),
(13, 4, 3, 7, 65, '2017-08-28 18:56:21', '2021-06-06 21:15:32'),
(14, 5, 1, 2, 75, '2017-08-28 19:25:07', '2021-06-06 21:15:14'),
(15, 5, 3, 1, 56, '2017-08-28 19:25:07', '2021-06-06 21:15:12'),
(16, 5, 3, 5, 52, '2017-08-28 19:25:07', '2021-06-06 21:15:08'),
(17, 5, 3, 4, 80, '2017-08-28 19:25:07', '2021-06-06 21:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `RollId` varchar(100) NOT NULL,
  `StudentEmail` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Abhishek Choudhary', '46456', 'abhishek.cho472@gmail.com', 'Male', '1997-07-09', 1, '2018-10-12 10:30:57', '2018-10-23 18:44:37', 1),
(2, 'Akshat Maheshwari', '10861', 'aks3d76@gmail.com', 'Male', '1997-06-11', 3, '2018-10-19 18:42:28', '2021-06-06 21:00:26', 1),
(3, 'Mohit Kumar', '2626', 'humar.mohit570@gmail.com', 'Male', '2014-08-06', 1, '2018-10-19 18:42:28', '2021-06-06 21:00:13', 1),
(4, 'Divyanshu Tripathi', '990', 'hidivyanshu@gmail.com', 'Male', '1997-02-03', 3, '2018-10-19 18:42:28', '2021-06-06 21:00:17', 1),
(5, 'Deepankar Singh', '122', 'singhdeepankar111@gmail.com', 'Male', '1997-02-03', 3, '2018-10-19 18:42:28', '2021-06-06 21:00:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(3, 1, 5, 1, '2017-06-07 11:16:56', '2017-06-07 11:16:56'),
(4, 1, 2, 1, '2017-06-12 06:46:32', '2017-06-12 06:46:32'),
(5, 1, 4, 1, '2017-06-12 06:46:35', '2017-06-12 06:46:35'),
(6, 1, 5, 1, '2017-06-12 06:46:40', '2017-06-12 06:46:40'),
(8, 3, 4, 1, '2017-08-26 03:21:27', '2017-08-26 03:21:27'),
(10, 3, 1, 1, '2017-08-26 03:22:05', '2017-08-26 03:22:05'),
(12, 3, 2, 1, '2017-08-26 03:22:15', '2017-08-26 03:22:15'),
(13, 3, 5, 1, '2017-08-26 03:22:20', '2017-08-26 03:22:20'),
(14, 3, 1, 1, '2017-08-28 18:44:06', '2017-08-28 18:44:06'),
(15, 3, 2, 1, '2017-08-28 18:44:12', '2017-08-28 18:44:12'),
(16, 3, 4, 1, '2017-08-28 18:44:18', '2017-08-28 18:44:18'),
(17, 3, 6, 1, '2017-08-28 18:44:23', '2017-08-28 18:44:23'),
(18, 3, 1, 1, '2017-08-28 18:53:12', '2017-08-28 18:53:12'),
(19, 3, 7, 1, '2017-08-28 18:53:19', '2017-08-28 18:53:19'),
(20, 3, 2, 1, '2017-08-28 18:53:38', '2017-08-28 18:53:38'),
(21, 7, 6, 1, '2017-08-28 18:53:44', '2017-08-28 18:53:44'),
(22, 7, 5, 0, '2017-08-28 18:53:50', '2017-08-28 18:53:50'),
(23, 8, 1, 1, '2017-08-28 19:22:25', '2017-08-28 19:22:25'),
(24, 8, 2, 1, '2017-08-28 19:22:31', '2017-08-28 19:22:31'),
(25, 8, 4, 1, '2017-08-28 19:22:36', '2017-08-28 19:22:36'),
(26, 8, 6, 1, '2017-08-28 19:22:42', '2017-08-28 19:22:42'),
(27, 8, 5, 0, '2017-08-28 19:22:47', '2017-08-28 19:22:47'),
(28, 1, 9, 1, '2021-06-06 21:57:42', '2021-06-06 21:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Maths', 'MTH01', '2018-10-23 17:21:20', '2018-10-23 17:21:20'),
(2, 'English', 'ENG11', '2018-10-23 17:21:20', '2018-10-23 17:21:20'),
(4, 'Science', 'SC1', '2018-10-23 17:21:20', '2018-10-23 17:21:20'),
(5, 'Music', 'MS', '2018-10-23 17:21:20', '2018-10-23 17:21:20'),
(6, 'Social Studies', 'SS08', '2018-10-23 17:21:20', '2018-10-23 17:21:20'),
(7, 'Physics', 'PH03', '2018-10-23 17:21:20', '2018-10-23 17:21:20'),
(8, 'Chemistry', 'CH65', '2018-10-23 17:21:20', '2018-10-23 17:21:20'),
(9, 'Geography', 'Geo101', '2021-06-06 21:56:26', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
