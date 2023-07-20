-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2023 at 12:36 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resultgrading`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `Id` int(20) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `otherName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `phoneNo` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `staffId` varchar(255) NOT NULL,
  `adminTypeId` int(20) NOT NULL,
  `isAssigned` int(10) NOT NULL,
  `isPasswordChanged` int(10) NOT NULL,
  `dateCreated` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`Id`, `firstName`, `lastName`, `otherName`, `emailAddress`, `phoneNo`, `password`, `staffId`, `adminTypeId`, `isAssigned`, `isPasswordChanged`, `dateCreated`) VALUES
(1, 'Egai-Osowor', 'E.E.', 'Admin', 'egaiosowor@yahoo.com', '2349013253100', 'f2d0ff370380124029c2b807a924156c', 'AD123', 1, 1, 0, ''),
(2, 'asd', 'asd', 'asd', 'asd@mail.com', '8885554447', 'f2d0ff370380124029c2b807a924156c', '1121', 1, 1, 0, '2022-06-13'),
(3, 'Test', 'Admin', 'ta', 'test@mail.com', '4587458888', 'f2d0ff370380124029c2b807a924156c', 'TEST10', 1, 1, 0, '2022-06-13');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmintype`
--

CREATE TABLE `tbladmintype` (
  `Id` int(20) NOT NULL,
  `adminTypeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmintype`
--

INSERT INTO `tbladmintype` (`Id`, `adminTypeName`) VALUES
(1, 'Super Administrator'),
(2, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tblassignedadmin`
--

CREATE TABLE `tblassignedadmin` (
  `id` int(11) NOT NULL,
  `dateAssigned` varchar(200) NOT NULL,
  `staffId` int(11) NOT NULL,
  `facultyId` int(11) NOT NULL,
  `departmentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblassignedadmin`
--

INSERT INTO `tblassignedadmin` (`id`, `dateAssigned`, `staffId`, `facultyId`, `departmentId`) VALUES
(1, '2022-06-13', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcgparesult`
--

CREATE TABLE `tblcgparesult` (
  `Id` int(11) NOT NULL,
  `matricNo` varchar(50) NOT NULL,
  `cgpa` varchar(50) NOT NULL,
  `classOfDiploma` varchar(50) NOT NULL,
  `dateAdded` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `Id` int(11) NOT NULL,
  `courseTitle` varchar(255) NOT NULL,
  `courseCode` varchar(255) NOT NULL,
  `courseUnit` int(10) NOT NULL,
  `yearId` varchar(10) NOT NULL,
  `semesterId` varchar(20) NOT NULL,
  `dateAdded` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`Id`, `courseTitle`, `courseCode`, `courseUnit`, `yearId`, `semesterId`, `dateAdded`) VALUES
(28, 'INTRODUCTION TO PROBLEM SOLVING', 'CSC101', 3, '1', '2', '2023-07-20'),
(27, 'GENERAL PHYSICS 1', 'PHY111', 3, '1', '1', '2023-07-20'),
(26, 'ELEMENTARY MATHEMATICS 1', 'MTH111', 3, '1', '1', '2023-07-20'),
(25, 'INTOR. TO LIB. SCIENCE & INFO. SCIENCE', 'LIB161', 1, '1', '1', '2023-07-20'),
(24, 'HISTORY AND PHILOSOPHY OF SCIENCE', 'GSS131', 2, '1', '1', '2023-07-20'),
(22, 'COMPUTER LAB 1A', 'CSC181', 1, '1', '1', '2023-07-20'),
(23, 'USE OF ENGLISH 1', 'GSS101', 2, '1', '1', '2023-07-20'),
(21, 'INTRODUCTION TO COMPUTER SCIENCE', 'CSC101', 3, '1', '1', '2023-07-20'),
(20, 'GENERAL CHEMISTRY 1', 'CHM101', 3, '1', '1', '2023-07-20'),
(19, 'GENERAL BIOLOGY I', 'BIO111', 3, '1', '1', '2023-07-20'),
(29, 'COMPUTER LAB IB', 'CSC182', 1, '1', '2', '2023-07-20'),
(30, 'USE OF ENGLISH II', 'GSS102', 2, '1', '2', '2023-07-20'),
(31, 'NIGERIAN PEOPLE AND CULTURE', 'GSS112', 2, '1', '2', '2023-07-20'),
(32, 'PHILOSOPHY AND LOGIC', 'GSS122', 2, '1', '2', '2023-07-20'),
(33, 'ELEMENTARY MATHS II', 'MTH152', 3, '1', '2', '2023-07-20'),
(34, 'GENERAL PHYSICS II', 'PHY152', 3, '1', '2', '2023-07-20'),
(35, 'PROBABILITY & STATISTICS', 'STA102', 2, '1', '2', '2023-07-20'),
(36, 'INDUSTRIAL TRAINING', 'CSC390', 6, '4', '1', '2023-07-20'),
(37, 'ORGANIZATION OF PROGRAMMING LANG.', 'CSC401', 3, '4', '1', '2023-07-20'),
(38, 'ARTIFICIAL INTELLIGENCE', 'CSC411', 3, '4', '1', '2023-07-20'),
(39, 'SOFTWARE ENGINEERING 1', 'CSC421', 2, '4', '1', '2023-07-20'),
(40, 'DATABASE DESIGN AND MANAEMENT 11', 'CSC431', 3, '4', '1', '2023-07-20'),
(41, 'COMPUTER MODELLING AND SIMULATION', 'CSC441', 3, '4', '1', '2023-07-20'),
(42, 'COMPUTER NETWORK AND COMMUNICATION', 'CSC451', 2, '4', '1', '2023-07-20'),
(43, 'COMPUTER LAB 4A', 'CSC481', 1, '4', '1', '2023-07-20'),
(44, 'SPECIAL TOPICS IN SOFTWARE ENG.', 'CSC471', 2, '4', '1', '2023-07-20'),
(45, 'PROJECT', 'CSC400', 6, '4', '2', '2023-07-20'),
(46, 'HUMAN COMPUTER INTERFACE', 'CSC412', 2, '4', '2', '2023-07-20'),
(47, 'SOFTWARE ENGINEERING 11', 'CSC422', 2, '4', '2', '2023-07-20'),
(48, 'COMPUTER GRAPHICS AND VISUALIZATION', 'CSC432', 2, '4', '2', '2023-07-20'),
(49, 'NET-CENTRIC COMPUTING', 'CSC442', 2, '4', '2', '2023-07-20'),
(50, 'SPECIAL TOPICS IN COMPUTER SCIENCE', 'CSC492', 3, '4', '2', '2023-07-20'),
(51, 'COMPUTER PERFORMANCE EVALUATION', 'CSC472', 2, '4', '2', '2023-07-20'),
(52, 'COMPUTER PROGRAMMING 1', 'CSC201', 3, '2', '1', '2023-07-20'),
(53, 'OPERATING SYSTEM 1', 'CSC211', 3, '2', '1', '2023-07-20'),
(54, 'DISCRETE STUCTURE', 'CSC221', 3, '2', '1', '2023-07-20'),
(55, 'COMPUTER HARDWARE', 'CSC241', 2, '2', '1', '2023-07-20'),
(56, 'COMPUTER LAB 2A', 'CSC281', 1, '2', '1', '2023-07-20'),
(57, 'COMPUTER PROGRAMMING 11', 'CSC202', 3, '2', '2', '2023-07-20'),
(58, 'VECTORS ANALYSIS', 'MTH261', 2, '2', '1', '2023-07-20'),
(59, 'SURVEY OF PROGRAMMING LANGUAGES', 'CSC222', 2, '2', '2', '2023-07-20'),
(60, 'FOUNDATION OF SEQUENTIAL PROGRAM', 'CSC232', 2, '2', '2', '2023-07-20'),
(61, 'FOUNDATION OF DATA STRUCTURES', 'CSC242', 3, '2', '2', '2023-07-20'),
(62, 'COMPUTER LAB 2B', 'CSC282', 1, '2', '2', '2023-07-20'),
(63, 'ANTI-CORRUPTION STUDIES II', 'GSS142', 2, '2', '2', '2023-07-20'),
(64, 'ENTERPRENEURSHIP THEORY', 'GST202', 2, '2', '2', '2023-07-20'),
(65, 'STATISTICAL INFERENCE 1', 'STA282', 2, '2', '2', '2023-07-20'),
(66, 'ELECTRICAL CIRCUITS AND ELECTRONICS', 'PHY262', 3, '2', '2', '2023-07-20'),
(67, 'COMPUTER ARCHITECTURE AND ORG. 11', 'CSC322', 2, '3', '2', '2023-07-20'),
(68, 'SYSTEMS ANALYSIS AND DESIGN', 'CSC342', 3, '3', '2', '2023-07-20'),
(69, 'FORMAL METHODS AND SOFTWARE DEV.', 'CSC352', 2, '3', '2', '2023-07-20'),
(70, 'COMPUTER LAB 3B', 'CSC382', 1, '3', '2', '2023-07-20'),
(71, 'ENTREPRENEURSHIP STUDIES 11', 'GST302', 2, '3', '2', '2023-07-20'),
(72, 'THEORY OF COMPUTING', 'CSC372', 2, '3', '2', '2023-07-20'),
(73, 'OBJECT ORIENTED PROGRAMMING', 'CSC301', 3, '3', '1', '2023-07-20'),
(74, 'OPERATING SYSTEM 11', 'CSC311', 3, '3', '1', '2023-07-20'),
(75, 'COMPUTER ARCHITECTURE AND ORG. 1', 'CSC321', 2, '3', '1', '2023-07-20'),
(76, 'COMPILER CONSTRUCTION 1', 'CSC331', 3, '3', '1', '2023-07-20'),
(77, 'STRUCTURED PROGRAMMING', 'CSC341', 3, '3', '1', '2023-07-20'),
(78, 'ALGORITHM AND COMPLEXITY ANALYSIS', 'CSC351', 3, '3', '1', '2023-07-20'),
(79, 'COMPUTER LAB 3B', 'CSC381', 1, '3', '1', '2023-07-20'),
(80, 'NUMERICAL ANALYSIS', 'CSC371', 2, '3', '1', '2023-07-20'),
(81, 'DATABASE DESIGN AND MANAGEMENT 1', 'CSC332', 3, '3', '2', '2023-07-20'),
(82, 'COMPUTATIONAL SCI. AND NUMERICAL METH', 'CSC312', 3, '3', '2', '2023-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `tblfinalresult`
--

CREATE TABLE `tblfinalresult` (
  `Id` int(10) NOT NULL,
  `matricNo` varchar(50) NOT NULL,
  `yearId` varchar(10) NOT NULL,
  `semesterId` varchar(10) NOT NULL,
  `sessionId` varchar(10) NOT NULL,
  `totalCourseUnit` varchar(10) NOT NULL,
  `totalScoreGradePoint` varchar(10) NOT NULL,
  `gpa` varchar(255) NOT NULL,
  `classOfDiploma` varchar(50) NOT NULL,
  `dateAdded` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfinalresult`
--

INSERT INTO `tblfinalresult` (`Id`, `matricNo`, `yearId`, `semesterId`, `sessionId`, `totalCourseUnit`, `totalScoreGradePoint`, `gpa`, `classOfDiploma`, `dateAdded`) VALUES
(12, '18/184145024TR', '4', '1', '2', '25', '81', '3.24', '2nd Class Lower', '2023-07-20'),
(11, '18/184145029TR', '4', '1', '2', '25', '72', '2.88', 'Lower Credit', '2023-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `Id` int(10) NOT NULL,
  `matricNo` varchar(50) NOT NULL,
  `yearId` varchar(10) NOT NULL,
  `semesterId` varchar(10) NOT NULL,
  `sessionId` varchar(10) NOT NULL,
  `courseCode` varchar(50) NOT NULL,
  `courseUnit` varchar(50) NOT NULL,
  `score` varchar(50) NOT NULL,
  `scoreGradePoint` varchar(50) NOT NULL,
  `scoreLetterGrade` varchar(10) NOT NULL,
  `totalScoreGradePoint` varchar(50) NOT NULL,
  `dateAdded` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`Id`, `matricNo`, `yearId`, `semesterId`, `sessionId`, `courseCode`, `courseUnit`, `score`, `scoreGradePoint`, `scoreLetterGrade`, `totalScoreGradePoint`, `dateAdded`) VALUES
(46, '18/184145024TR', '4', '1', '2', 'CSC471', '2', '60', '4', 'B', '8', '2023-07-20'),
(45, '18/184145024TR', '4', '1', '2', 'CSC481', '1', '60', '4', 'B', '4', '2023-07-20'),
(44, '18/184145024TR', '4', '1', '2', 'CSC451', '2', '20', '0', 'F', '0', '2023-07-20'),
(43, '18/184145024TR', '4', '1', '2', 'CSC441', '3', '55', '3', 'C', '9', '2023-07-20'),
(42, '18/184145024TR', '4', '1', '2', 'CSC431', '3', '29', '0', 'F', '0', '2023-07-20'),
(41, '18/184145024TR', '4', '1', '2', 'CSC421', '2', '33', '0', 'F', '0', '2023-07-20'),
(40, '18/184145024TR', '4', '1', '2', 'CSC411', '3', '75', '5', 'A', '15', '2023-07-20'),
(39, '18/184145024TR', '4', '1', '2', 'CSC401', '3', '75', '5', 'A', '15', '2023-07-20'),
(38, '18/184145024TR', '4', '1', '2', 'CSC390', '6', '75', '5', 'A', '30', '2023-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `tblsemester`
--

CREATE TABLE `tblsemester` (
  `Id` int(20) NOT NULL,
  `semesterName` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsemester`
--

INSERT INTO `tblsemester` (`Id`, `semesterName`) VALUES
(1, 'First Semester'),
(2, 'Second Semester');

-- --------------------------------------------------------

--
-- Table structure for table `tblsession`
--

CREATE TABLE `tblsession` (
  `Id` int(20) NOT NULL,
  `sessionName` varchar(30) NOT NULL,
  `isActive` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsession`
--

INSERT INTO `tblsession` (`Id`, `sessionName`, `isActive`) VALUES
(2, '2021/2022', 1),
(3, '2020/2021', 1),
(4, '2019/2020', 1),
(5, '2018/2019', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `Id` int(20) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `otherName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `phoneNo` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `staffId` varchar(255) NOT NULL,
  `isAssigned` int(10) NOT NULL,
  `isPasswordChanged` int(10) NOT NULL,
  `dateCreated` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`Id`, `firstName`, `lastName`, `otherName`, `emailAddress`, `phoneNo`, `password`, `staffId`, `isAssigned`, `isPasswordChanged`, `dateCreated`) VALUES
(3, 'Bamidele', 'Bayo', 'olakunle', 'Bamidele@gmail.com', '07065903222', '12345', 'STF001111', 1, 0, '2020-06-21'),
(4, 'busola', 'keji', 'busayo', 'KemisolAde@gmail.com', '09073930022', '12345', 'STF002', 1, 0, '2020-06-21'),
(14, 'Samuel', 'Samuel', 'John', 'SamuelJohn@yahoo.com', '09087654321', '12345', 'STF0032', 1, 0, '2020-09-14'),
(15, 'asd', 'asd', 'asd', 'asd@asd.ccc', '5555666654', '12345', '444', 0, 0, '2022-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `Id` int(20) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `otherName` varchar(255) NOT NULL,
  `matricNo` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `yearId` int(10) NOT NULL,
  `sessionId` int(10) NOT NULL,
  `dateCreated` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`Id`, `firstName`, `lastName`, `otherName`, `matricNo`, `password`, `yearId`, `sessionId`, `dateCreated`) VALUES
(38, 'Jamie', 'Doe', '', '20/184145014TR', 'codeastro', 1, 2, '2023-07-20'),
(40, 'Promise', 'Ibe', 'Onyekachi', '18/184145029TR', 'codeastro', 4, 2, '2023-07-20'),
(41, 'Egai-Osowor', 'Etta-Ekuri', '', '18/184145024TR', 'codeastro', 4, 2, '2023-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `tblyear`
--

CREATE TABLE `tblyear` (
  `Id` int(20) NOT NULL,
  `yearName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblyear`
--

INSERT INTO `tblyear` (`Id`, `yearName`) VALUES
(1, 'Year One'),
(2, 'Year Two'),
(3, 'Year Three'),
(4, 'Year Four');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbladmintype`
--
ALTER TABLE `tbladmintype`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblassignedadmin`
--
ALTER TABLE `tblassignedadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcgparesult`
--
ALTER TABLE `tblcgparesult`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblfinalresult`
--
ALTER TABLE `tblfinalresult`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblsemester`
--
ALTER TABLE `tblsemester`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblsession`
--
ALTER TABLE `tblsession`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblyear`
--
ALTER TABLE `tblyear`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbladmintype`
--
ALTER TABLE `tbladmintype`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblassignedadmin`
--
ALTER TABLE `tblassignedadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcgparesult`
--
ALTER TABLE `tblcgparesult`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `tblfinalresult`
--
ALTER TABLE `tblfinalresult`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tblsemester`
--
ALTER TABLE `tblsemester`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblsession`
--
ALTER TABLE `tblsession`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tblyear`
--
ALTER TABLE `tblyear`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
