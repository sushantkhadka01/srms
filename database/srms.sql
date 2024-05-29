

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE IF NOT EXISTS `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) NOT NULL,
  `Section` varchar(5) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'First',  1, 'A', '2023-06-06 16:52:33', '2023-06-07 05:53:47'),
(2, 'Second', 2, 'A', '2023-06-06 17:21:20', '2023-06-06 17:21:38'),
(3, 'Third',  3, 'A', '2023-06-07 09:20:23', '2023-00-00 00:00:00'),
(4, 'Fourth', 4, 'A', '2023-06-07 09:35:08', '2023-00-00 00:00:00'),
(5, 'Fifth',  5, 'A', '2023-08-28 18:42:41', '2023-08-28 18:43:02'),
(6, 'Sixth',  6, 'A', '2023-08-28 18:52:00', '2023-08-28 18:52:15'),
(7, 'Seventh',7, 'A', '2023-08-28 19:21:05', '2023-08-28 19:21:24'),
(8, 'Eighth', 8, 'A', '2023-08-28 19:21:05', '2023-08-28 19:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE IF NOT EXISTS `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(1, 1, 1, 1, 100, '2017-08-24 17:54:09', '2017-08-28 18:34:32'),
(2, 1, 1, 2, 80, '2017-08-24 17:54:09', '2017-08-28 18:34:25'),
(3, 1, 1, 3, 78, '2017-08-24 17:54:09', '2017-08-28 18:34:26'),
(4, 1, 1, 4, 60, '2017-08-24 17:54:09', '2017-08-28 18:34:26'),
(5, 1, 1, 5, 90, '2017-08-28 18:38:18', NULL),

(6,  2, 2, 1, 75, '2017-08-28 18:38:18', NULL),
(7,  2, 2, 2, 56, '2017-08-28 18:38:18', '2017-08-28 19:26:42'),
(8,  2, 2, 3, 80, '2017-08-28 18:38:18', '2017-08-28 19:26:42'),
(9,  2, 2, 4, 54, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(10, 2, 2, 5, 85, '2017-08-28 18:56:21', NULL),

(11, 3, 3, 1, 55, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(12, 3, 3, 2, 65, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(13, 3, 3, 3, 75, '2017-08-28 19:25:07', NULL),
(14, 3, 3, 4, 56, '2017-08-28 19:25:07', NULL),
(15, 3, 3, 5, 52, '2017-08-28 19:25:07', NULL),

(16,  4, 4, 1, 75, '2017-08-28 18:38:18', NULL),
(17,  4, 4, 2, 56, '2017-08-28 18:38:18', '2017-08-28 19:26:42'),
(18,  4, 4, 3, 80, '2017-08-28 18:38:18', '2017-08-28 19:26:42'),
(19,  4, 4, 4, 54, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(20,  4, 4, 5, 85, '2017-08-28 18:56:21', NULL),

(21, 5, 5, 1, 55, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(22, 5, 5, 2, 65, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(23, 5, 5, 3, 75, '2017-08-28 19:25:07', NULL),
(24, 5, 5, 4, 56, '2017-08-28 19:25:07', NULL),
(25, 5, 5, 5, 52, '2017-08-28 19:25:07', NULL),

(26,  6, 6, 1, 75, '2017-08-28 18:38:18', NULL),
(27,  6, 6, 2, 56, '2017-08-28 18:38:18', '2017-08-28 19:26:42'),
(28,  6, 6, 3, 80, '2017-08-28 18:38:18', '2017-08-28 19:26:42'),
(29,  6, 6, 4, 54, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(30,  6, 6, 5, 85, '2017-08-28 18:56:21', NULL),

(31, 7, 7, 1, 55, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(32, 7, 7, 2, 65, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(33, 7, 7, 3, 75, '2017-08-28 19:25:07', NULL),
(34, 7, 7, 4, 56, '2017-08-28 19:25:07', NULL),
(35, 7, 7, 5, 52, '2017-08-28 19:25:07', NULL),

(36,  8, 8, 1, 75, '2017-08-28 18:38:18', NULL),
(37,  8, 8, 2, 56, '2017-08-28 18:38:18', '2017-08-28 19:26:42'),
(38,  8, 8, 3, 80, '2017-08-28 18:38:18', '2017-08-28 19:26:42'),
(39,  8, 8, 4, 54, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(40,  8, 8, 5, 85, '2017-08-28 18:56:21', NULL);





-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE IF NOT EXISTS `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `RollId` varchar(100) NOT NULL,
  `StudentEmail` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Status` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES

(1, 'Sushant Khadka', '1910', 'sushantkhadka@.com', 'Male', '2000-03-20', 1, '2023-06-12 10:30:57', '2023-08-26 04:36:37', 1),
(2, 'Ishan Thapa', '1911', 'ishanthapa@gmail.co', 'Male', '2000-02-02', 2, '2023-08-19 19:18:28', '2023-08-26 04:59:17', 1),
(3, 'Sameer Lama', '1912', 'sameerlama@gmail.com', 'Male', '2000-08-06', 3, '2023-08-28 18:45:31', '2023-08-28 18:46:02', 1),
(4, 'Prishita Pokharel', '1913', 'prishita@gmail.com', 'Female', '2000-02-03', 4, '2023-08-28 18:54:58', '2023-08-28 18:55:20', 1),
(5, 'Sagar Dangol', '1914', 'suku@gmail.com', 'Male', '2002-02-03', 5, '2023-08-28 19:23:53', '2023-08-28 19:24:15', 1),
(6, 'Emilia Clarke', '1915', 'DamerysTargaryan@gmail.com', 'Female', '1995-03-03', 6, '2023-06-12 10:30:57', '2023-08-26 04:36:37', 1),
(7, 'Elizabeth Oslen', '1916', 'WandaMaxioff@gmail.co', 'Female', '1995-02-02', 7, '2023-08-19 19:18:28', '2023-08-26 04:59:17', 1),
(8, 'Rajesh Hamal', '1917', 'Mahanayak@gmail.com', 'Male', '2014-08-06', 8, '2023-08-28 18:45:31', '2023-08-28 18:46:02', 1);


-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE IF NOT EXISTS `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(1, 1, 1, 1, '2017-06-07 11:16:56', '2017-06-07 11:16:56'),
(2, 1, 2, 1, '2017-06-12 06:46:32', '2017-06-12 06:46:32'),
(3, 1, 3, 1, '2017-06-12 06:46:35', '2017-06-12 06:46:35'),
(4, 1, 4, 1, '2017-06-12 06:46:40', '2017-06-12 06:46:40'),
(5, 1, 5, 1, '2017-08-26 03:21:27', '2017-08-26 03:21:27'),

(6, 2, 1, 1, '2017-08-26 03:22:05', '2017-08-26 03:22:05'),
(7, 2, 2, 1, '2017-08-26 03:22:15', '2017-08-26 03:22:15'),
(8, 2, 3, 1, '2017-08-26 03:22:20', '2017-08-26 03:22:20'),
(9, 2, 4, 1, '2017-08-28 18:44:06', '2017-08-28 18:44:06'),
(10,2, 5, 1, '2017-08-28 18:44:12', '2017-08-28 18:44:12'),

(11, 3, 1, 1, '2017-08-28 18:44:18', '2017-08-28 18:44:18'),
(12, 3, 2, 1, '2017-08-28 18:44:23', '2017-08-28 18:44:23'),
(13, 3, 3, 1, '2017-08-28 18:53:12', '2017-08-28 18:53:12'),
(14, 3, 4, 1, '2017-08-28 18:53:19', '2017-08-28 18:53:19'),
(15, 3, 5, 1, '2017-08-28 18:53:38', '2017-08-28 18:53:38'),

(16, 4, 1, 1, '2017-08-28 18:53:44', '2017-08-28 18:53:44'),
(17, 4, 2, 1, '2017-08-28 18:53:50', '2017-08-28 18:53:50'),
(18, 4, 3, 1, '2017-08-28 19:22:25', '2017-08-28 19:22:25'),
(19, 4, 4, 1, '2017-08-28 19:22:31', '2017-08-28 19:22:31'),
(20, 4, 5, 1, '2017-08-28 19:22:36', '2017-08-28 19:22:36'),

(21, 5, 1, 1, '2017-08-28 19:22:42', '2017-08-28 19:22:42'),
(22, 5, 2, 1, '2017-08-28 19:22:47', '2017-08-28 19:22:47'),
(23, 5, 3, 1, '2017-08-28 18:53:44', '2017-08-28 18:53:44'),
(24, 5, 4, 1, '2017-08-28 18:53:50', '2017-08-28 18:53:50'),
(25, 5, 5, 1, '2017-08-28 19:22:25', '2017-08-28 19:22:25'),

(26, 6, 1, 1, '2017-08-28 18:53:44', '2017-08-28 18:53:44'),
(27, 6, 2, 1, '2017-08-28 18:53:50', '2017-08-28 18:53:50'),
(28, 6, 3, 1, '2017-08-28 19:22:25', '2017-08-28 19:22:25'),
(29, 6, 4, 1, '2017-08-28 19:22:31', '2017-08-28 19:22:31'),
(30, 6, 5, 1, '2017-08-28 19:22:36', '2017-08-28 19:22:36'),

(31, 7, 1, 1, '2017-08-28 19:22:42', '2017-08-28 19:22:42'),
(32, 7, 2, 1, '2017-08-28 19:22:47', '2017-08-28 19:22:47'),
(33, 7, 3, 1, '2017-08-28 18:53:44', '2017-08-28 18:53:44'),
(34, 7, 4, 1, '2017-08-28 18:53:50', '2017-08-28 18:53:50'),
(35, 7, 5, 1, '2017-08-28 19:22:25', '2017-08-28 19:22:25'),


(36, 8, 1, 1, '2017-08-28 18:53:44', '2017-08-28 18:53:44'),
(37, 8, 2, 1, '2017-08-28 18:53:50', '2017-08-28 18:53:50'),
(38, 8, 3, 1, '2017-08-28 19:22:25', '2017-08-28 19:22:25'),
(39, 8, 4, 1, '2017-08-28 19:22:31', '2017-08-28 19:22:31'),
(40, 8, 5, 1, '2017-08-28 19:22:36', '2017-08-28 19:22:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE IF NOT EXISTS `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Maths', 'MTH01', '2023-06-07 09:23:57', '2023-06-07 09:46:54'),
(2, 'Software Engineering', 'SE22', '2023-06-07 09:24:25', '0000-00-00 00:00:00'),
(3, 'Spanish', 'SP1', '2023-06-07 09:36:15', '0000-00-00 00:00:00'),
(4, 'Java Programming', 'JP1', '2023-06-07 09:36:23', '0000-00-00 00:00:00'),
(5, 'Digital Logic', 'DL08', '2023-08-28 18:43:29', '2023-08-28 18:43:45');


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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
