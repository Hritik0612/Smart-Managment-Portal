-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2022 at 05:07 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart`
--

-- --------------------------------------------------------

--
-- Table structure for table `adddepartment`
--

CREATE TABLE `adddepartment` (
  `id` int(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `deptname` varchar(40) NOT NULL,
  `taluka` varchar(40) NOT NULL,
  `district` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `mobile` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adddepartment`
--

INSERT INTO `adddepartment` (`id`, `email`, `password`, `deptname`, `taluka`, `district`, `address`, `mobile`) VALUES
(11, 'aa@gmail.com', '12345', 'road construction', 'sdf', 'csn', 'shirpur', '3456789'),
(14, 'pp@gmail.com', '5678', 'muncipal', 'jalgaon', 'dhule', 'csn', '9011502025'),
(15, 'niki@gmail.com', '12345', 'road', 'chalisgaon', 'jalgaon', 'shashtrinagar', '234567890'),
(16, 'pooja@gmail.com', '12345', 'electrical ', 'dhule', 'nashik', 'fulecolony', '7869504534');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('nikita@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `commentid` int(11) NOT NULL,
  `comment` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`commentid`, `comment`, `email`) VALUES
(6, 'solve my issue earliest', 'pp@gmail.com'),
(7, 'suikmbb', 'nikita@gmail.com'),
(8, 'higggg', 'nikita@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `cid` int(30) NOT NULL,
  `title` varchar(40) NOT NULL,
  `description` varchar(40) NOT NULL,
  `deptname` varchar(40) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(60) NOT NULL,
  `email` varchar(40) NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`cid`, `title`, `description`, `deptname`, `date`, `status`, `email`, `image`) VALUES
(10, 'Water Likage', 'issue of water likage', 'muncipal', '2022-02-10', 'approve', 'pp@gmail.com', 0x706970652d7174722e676966),
(13, 'hioo', 'sdf', 'road', '2022-02-14', 'approve', 'nikita@gmail.com', 0x706970652d7174722e676966),
(14, 'some issue', 'what are ', 'road', '2022-02-07', 'pending', 'nikita@gmail.com', 0x4d61696e74656e616e6365202831292e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `helpcontact`
--

CREATE TABLE `helpcontact` (
  `name` varchar(40) NOT NULL,
  `mobile` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `helpcontact`
--

INSERT INTO `helpcontact` (`name`, `mobile`) VALUES
('nikita', '9657966757'),
('nikita', '23455677');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `name` varchar(40) NOT NULL,
  `mobile` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `mobile`, `email`, `password`, `address`) VALUES
('nikita', '9657966757', 'nikita@gmail.com', '123456789', 'shirpur'),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('pradnya', '909090', 'pp@gmail.com', '123456', 'nashik'),
('', '', '', '', ''),
('', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `roadmaintainence`
--

CREATE TABLE `roadmaintainence` (
  `rid` int(40) NOT NULL,
  `roadname` varchar(40) NOT NULL,
  `location` varchar(40) NOT NULL,
  `date` date NOT NULL,
  `deptname` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roadmaintainence`
--

INSERT INTO `roadmaintainence` (`rid`, `roadname`, `location`, `date`, `deptname`) VALUES
(8, 'nimzari naka', 'jalgaon', '2022-02-14', 'muncipal');

-- --------------------------------------------------------

--
-- Table structure for table `taskcomment`
--

CREATE TABLE `taskcomment` (
  `commentid` int(30) NOT NULL,
  `comment` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taskcomment`
--

INSERT INTO `taskcomment` (`commentid`, `comment`) VALUES
(1, 'solving'),
(2, 'very soon solving'),
(3, 'processing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adddepartment`
--
ALTER TABLE `adddepartment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `roadmaintainence`
--
ALTER TABLE `roadmaintainence`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `taskcomment`
--
ALTER TABLE `taskcomment`
  ADD PRIMARY KEY (`commentid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adddepartment`
--
ALTER TABLE `adddepartment`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `cid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roadmaintainence`
--
ALTER TABLE `roadmaintainence`
  MODIFY `rid` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `taskcomment`
--
ALTER TABLE `taskcomment`
  MODIFY `commentid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
