-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 15, 2024 at 05:52 AM
-- Server version: 8.0.31
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(2, 'admin', 'admin@admin.com', 'admin', 'f925916e2754e5e03f75dd58a5733251', '2022-12-08 13:56:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

DROP TABLE IF EXISTS `tblauthors`;
CREATE TABLE IF NOT EXISTS `tblauthors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(11, 'Émile Zola', '2023-12-19 04:45:26', NULL),
(12, 'Dan Brown', '2023-12-19 04:46:04', NULL),
(13, 'Jane Austen', '2023-12-19 04:49:11', NULL),
(14, 'Charlotte Brontë', '2023-12-19 04:49:32', NULL),
(15, 'Silvanus P. Thompson, 1910', '2023-12-19 04:54:59', NULL),
(16, 'Richard Courant, 1941', '2023-12-19 04:55:42', NULL),
(17, 'Neil Postman, 1992', '2023-12-19 04:57:02', NULL),
(18, 'Walter Isaacson, 2014', '2023-12-19 04:57:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

DROP TABLE IF EXISTS `tblbooks`;
CREATE TABLE IF NOT EXISTS `tblbooks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int DEFAULT NULL,
  `AuthorId` int DEFAULT NULL,
  `ISBNNumber` int DEFAULT NULL,
  `BookPrice` int DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(1, 'PHP And MySql programming', 5, 1, 222333, 20, '2017-07-08 20:04:55', '2017-07-15 05:54:41'),
(3, 'physics', 6, 4, 1111, 15, '2017-07-08 20:17:31', '2017-07-15 06:13:17'),
(4, 'Deception Point', 10, 12, 234564, 250, '2023-12-19 04:46:47', '2023-12-19 04:47:01'),
(5, 'Germinal', 10, 11, 789564, 50, '2023-12-19 04:47:45', NULL),
(6, 'Pride and Prejudice', 15, 13, 456324, 20, '2023-12-19 04:50:03', NULL),
(7, 'Jane Eyre ', 15, 14, 2365789, 40, '2023-12-19 04:50:47', NULL),
(8, 'Calculus Made Easy', 11, 15, 246789, 200, '2023-12-19 04:55:24', NULL),
(9, 'What Is Mathematics?', 11, 16, 234568, 100, '2023-12-19 04:56:05', NULL),
(10, 'Technopoly', 16, 17, 67890, 40, '2023-12-19 04:57:31', NULL),
(11, 'The Innovators', 16, 18, 0, 60, '2023-12-19 04:58:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

DROP TABLE IF EXISTS `tblcategory`;
CREATE TABLE IF NOT EXISTS `tblcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(8, 'Action and adventure', 1, '2023-12-19 04:36:29', '0000-00-00 00:00:00'),
(9, 'Children\'s', 1, '2023-12-19 04:36:45', '0000-00-00 00:00:00'),
(10, 'History', 1, '2023-12-19 04:37:15', '0000-00-00 00:00:00'),
(11, 'Math', 1, '2023-12-19 04:37:45', '0000-00-00 00:00:00'),
(12, 'Sports and leisure', 1, '2023-12-19 04:38:07', '0000-00-00 00:00:00'),
(13, 'Religion, spirituality, and new age', 1, '2023-12-19 04:38:26', '0000-00-00 00:00:00'),
(14, 'Journal', 1, '2023-12-19 04:38:49', '0000-00-00 00:00:00'),
(15, 'Romantic', 1, '2023-12-19 04:40:20', '0000-00-00 00:00:00'),
(16, 'Technology', 1, '2023-12-19 04:40:30', '0000-00-00 00:00:00'),
(17, 'Science', 1, '2023-12-19 04:40:43', '0000-00-00 00:00:00'),
(18, 'Business and Management', 1, '2023-12-19 04:41:08', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

DROP TABLE IF EXISTS `tblissuedbookdetails`;
CREATE TABLE IF NOT EXISTS `tblissuedbookdetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `BookId` int DEFAULT NULL,
  `UserId` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RetrunStatus` int DEFAULT NULL,
  `fine` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `UserId`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(7, 3, 'SID013', '2023-12-19 04:32:10', '2023-12-19 05:12:36', 1, 0),
(8, 11, 'SID013', '2023-12-19 04:59:46', '2024-01-04 05:44:35', 1, 50),
(9, 11, 'SID013', '2024-01-04 05:37:08', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

DROP TABLE IF EXISTS `tblusers`;
CREATE TABLE IF NOT EXISTS `tblusers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UserId` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `UserId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(12, 'SID013', 'kato', 'kato@kato.com', '72024104', 'e1aa538d29017debe540309cd6f42d03', 1, '2023-12-19 04:02:06', '2023-12-19 04:06:14');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
