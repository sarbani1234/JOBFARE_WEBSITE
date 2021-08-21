-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 07, 2020 at 06:16 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `crmsdb`
--
CREATE DATABASE IF NOT EXISTS `crmsdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `crmsdb`;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 1234567890, 'msraddha42@gmail.com', '12345', '2020-06-12'),
(2, 'shradhashree', 'shradha', 9382226949, 'msraddha42@gmail.com', '489877ec5b7a26bcc731272882ab08e4', '2020-07-05');

-- --------------------------------------------------------

--
-- Table structure for table `tblapplyjob`
--

CREATE TABLE IF NOT EXISTS `tblapplyjob` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `UserId` int(10) DEFAULT NULL,
  `JobId` int(10) DEFAULT NULL,
  `Resume` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Message` mediumtext NOT NULL,
  `Remark` varchar(200) NOT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `ResponseDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tblapplyjob`
--

INSERT INTO `tblapplyjob` (`ID`, `UserId`, `JobId`, `Resume`, `ApplyDate`, `Message`, `Remark`, `Status`, `ResponseDate`) VALUES
(11, 1, 15, 'd41d8cd98f00b204e9800998ecf8427e1594048965.pdf', '2020-07-06 15:22:45', 'you are not selected in our company .BETTER luck next time.', '', 'Rejected', '2020-07-06 15:28:41'),
(12, 1, 16, 'd41d8cd98f00b204e9800998ecf8427e1594105049.pdf', '2020-07-07 06:57:29', 'congratulation you are selected dear.', '', 'Sorted', '2020-07-07 14:22:21');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE IF NOT EXISTS `tblcompany` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(120) DEFAULT NULL,
  `ContactPerson` varchar(100) DEFAULT NULL,
  `CompanyUrl` varchar(200) DEFAULT NULL,
  `CompanyAddress` mediumtext,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `CompanyEmail` varchar(200) DEFAULT NULL,
  `CompanyLogo` varchar(200) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `CompanyRegdate` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`ID`, `CompanyName`, `ContactPerson`, `CompanyUrl`, `CompanyAddress`, `MobileNumber`, `CompanyEmail`, `CompanyLogo`, `Password`, `CompanyRegdate`) VALUES
(1, 'Infosys Pvt Ltd', 'premasish mishra', 'www.infosytem.com', 'h-123, banglore behind Aswgandha park', 9233399901, 'infosys@gmail.com', '02822fc031d560839f95fa6eb21f86111568180093.png', '1234567890', '2020-05-13'),
(2, 'HCL Pvt lt', 'partho sarathi ojha', 'www.hcl.com', 'g-123, sector- 63 noida', 1234567890, 'hcl@gmail.com', 'b64810fde7027715e614449aff1d595f1567485537.png', 'e807f1fcf82d132f9bb018ca6738a19f', '2020-06-10'),
(3, 'TCS pvt ltd', 'rajashree mitra', 'www.tcs.com', 'salt lake -36,sector -5,kolkata-7132006, west bengal.', 1234567890, 'tcskol@gamil.com', 'c26be60cfd1ba40772b5ac48b95ab19b1567753271.png', '1234567890', '2020-06-17'),
(4, 'Religare Pvt Ltd', 'praddep kumar ', 'www.religare.com', 'H-321 Sector 4 Noida', 8956247994, 'religare@gmail.com', 'b9fb9d37bdf15a699bc071ce49baea531568302051.jpg', '1234567890', '2019-09-12'),
(5, 'wipro pvt ltd.', 'anurag singh', '', 'wipro pvt ltd,salt lake sector -5 , kolkata , west bengal , 5 year job , 4 year of mtech,1 year of service , permonth 21000. section process will send via email. ', 1234567890, 'wipro@org.in', NULL, '1234567890', '2020-07-03'),
(6, 'google', 'dr.pp.gomes', 'https://www.google.com/', 'USA', 9382226949, 'googlerecuitment@gmail.com', '0b31cb63ffaca9d4ed7258fe4c1894a31593927723.png', '97bea26239fe25430490e6c3faa6d7b5', '2020-06-10'),
(7, 'TCS', 'kousjik mukherjee', NULL, 'NRC sector 6, new delhi , gurgaon', 1234567890, 'TCSrecuitment@gmail.com', NULL, '1234567890', '2020-06-16'),
(8, 'infosis', '1234567890', NULL, 'wertyuiop[asdfghjklzxcvbnm', 1234567890, 'infosis@gmail.com', NULL, '1234567890', '2020-06-09'),
(9, 'congnizant', 'RAHUL PAL', 'https//:', 'qwertyuopsadfghjklzxcvbnm', 1234567890, 'jindal@gmail.com', NULL, '1234567890', '2020-06-02'),
(10, 'TATA,TISCO', 'mr.dindayal gupta', NULL, 'qqwertyuioasdfghjkzxcvbnmwscxrfgbv iykhmn', 1234567890, 'tiscotata@gmail.com', NULL, '1234567890', '2020-05-28'),
(11, 'infosis pvt ltd.', 'raghunath jha', 'https://www.google.com/', 'kolkata', 8293803753, 'www.infosystem@gmail.com', '735d7b982cee07564b7beeae9b97ebea1594046344.png', 'e807f1fcf82d132f9bb018ca6738a19f', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbleducation`
--

CREATE TABLE IF NOT EXISTS `tbleducation` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `UserID` int(10) DEFAULT NULL,
  `SecondaryBoard` varchar(100) DEFAULT NULL,
  `SecondaryBoardyop` varchar(120) DEFAULT NULL,
  `SecondaryBoardper` varchar(120) DEFAULT NULL,
  `SecondaryBoardcgpa` varchar(120) DEFAULT NULL,
  `SSecondaryBoard` varchar(120) DEFAULT NULL,
  `SSecondaryBoardyop` varchar(120) DEFAULT NULL,
  `SSecondaryBoardper` varchar(120) DEFAULT NULL,
  `SSecondaryBoardcgpa` varchar(120) DEFAULT NULL,
  `GraUni` varchar(120) DEFAULT NULL,
  `GraUniyop` varchar(120) DEFAULT NULL,
  `GraUnidper` varchar(120) DEFAULT NULL,
  `GraUnicgpa` varchar(120) DEFAULT NULL,
  `PGUni` varchar(120) DEFAULT NULL,
  `PGUniyop` varchar(120) DEFAULT NULL,
  `PGUniper` varchar(120) DEFAULT NULL,
  `PGUnicgpa` varchar(120) DEFAULT NULL,
  `ExtraCurriculars` varchar(120) DEFAULT NULL,
  `OtherAchivement` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbleducation`
--

INSERT INTO `tbleducation` (`ID`, `UserID`, `SecondaryBoard`, `SecondaryBoardyop`, `SecondaryBoardper`, `SecondaryBoardcgpa`, `SSecondaryBoard`, `SSecondaryBoardyop`, `SSecondaryBoardper`, `SSecondaryBoardcgpa`, `GraUni`, `GraUniyop`, `GraUnidper`, `GraUnicgpa`, `PGUni`, `PGUniyop`, `PGUniper`, `PGUnicgpa`, `ExtraCurriculars`, `OtherAchivement`) VALUES
(6, 1, 'cbse', '2014', '78', '7.8', 'cbse', '2017', '75', '7.0', 'makuat', '2020', '85', '8.57', '', '', '', '', 'dance,drawing,reading', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblmessage`
--

CREATE TABLE IF NOT EXISTS `tblmessage` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `AppID` int(10) DEFAULT NULL,
  `Message` mediumtext,
  `Status` varchar(120) DEFAULT NULL,
  `ResponseDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `IsRead` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tblmessage`
--

INSERT INTO `tblmessage` (`ID`, `AppID`, `Message`, `Status`, `ResponseDate`, `IsRead`) VALUES
(3, 11, ' you are not selected in our company .BETTER luck next time.', 'Rejected', '2020-07-06 15:28:41', '1'),
(4, 12, ' congratulation you are selected dear.', 'Sorted', '2020-07-07 14:22:21', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE IF NOT EXISTS `tblpage` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '                We are pleased to introduce ourselves as focus, a professional placement services organization. We are a here to  prominent new graduate student to Recruitment  in best Firm offering out of the box Campus recruitment solutions to Institutes and colleges. With a vision to explore and harness the talents of young leaders, we have come up with a concept of Campus recruitment and promotion of institutes and colleges looking to place their fresh candidates.<div><br></div>', 'SZSinfo@gmail.com', 9382226949, '2020-06-24 07:30:56'),
(2, 'contactus', 'Contact Us', '                DUM DUM, By-Pass Road<div>kolkata India</div>', 'szsinfo@gmail.com', 9382226949, '2020-06-24 17:06:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE IF NOT EXISTS `tbluser` (
  `ID` int(10) NOT NULL DEFAULT '0',
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `StudentID` varchar(120) DEFAULT NULL,
  `Gender` varchar(120) NOT NULL,
  `Address` mediumtext NOT NULL,
  `Age` int(5) NOT NULL,
  `DOB` varchar(120) NOT NULL,
  `Image` varchar(120) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `UserRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `StudentID`, `Gender`, `Address`, `Age`, `DOB`, `Image`, `Password`, `UserRegdate`) VALUES
(0, 'sarbani', 'sarbani@gmail.com', 9233399901, '32301217044', 'Female', '', 0, '', '', 'e807f1fcf82d132f9bb018ca6738a19f', '2020-07-06 16:18:49'),
(1, 'shradha', 'msraddha42@gmail.com', 9382226949, '123', 'Female', '', 0, '', '1d339dc9b68835b3cec1ee7cec4ca6cf1593923622.jpg', 'e807f1fcf82d132f9bb018ca6738a19f', '2020-07-05 04:30:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblvacancy`
--

CREATE TABLE IF NOT EXISTS `tblvacancy` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `CompanyID` int(10) DEFAULT NULL,
  `JobTitle` varchar(200) DEFAULT NULL,
  `MonthlySalary` varchar(120) DEFAULT NULL,
  `JobDescriptions` mediumtext,
  `NoofOpenings` varchar(50) DEFAULT NULL,
  `JobLocation` varchar(120) DEFAULT NULL,
  `ApplyDate` varchar(120) DEFAULT NULL,
  `LastDate` varchar(120) DEFAULT NULL,
  `JobpostingDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tblvacancy`
--

INSERT INTO `tblvacancy` (`ID`, `CompanyID`, `JobTitle`, `MonthlySalary`, `JobDescriptions`, `NoofOpenings`, `JobLocation`, `ApplyDate`, `LastDate`, `JobpostingDate`) VALUES
(1, 323, 'TRANEE', '20000', 'job will be asigned after the series of examinationand interviws, the location of job will be notified into appointment letter of company. the salary per month is 20000 , different type of facility is available for our employee.', '40', 'kolkata, gurgone, bangalore, haryana , NRC,munbai, cheenai , hydrabad', '2-05-2020', '1-08-2020', '2020-04-30 11:07:40'),
(2, 324, 'WEB DEVLOPER', '1LK TO 5LK', 'we are searching for best web devloper in our company TISCO PVT. LTD . we want MCA student for thid job . In over recuitment process 3 stages are there, mcq test , iq test, personality test, HR . we  send you the final list within 15 days . we are hiring new faces for new project of TISCO. ', '56', 'siliguri,dhenkanal,Jamshedpur,ranchi, dhanbadh,kolkata.', '6/7/2020', '15/7/2020', '2020-07-03 12:08:20'),
(3, 325, 'TRANEE', '20000 TO 23000', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ.', '25', 'KOLKATA,HARYANA,MUMBAI,GURGOAN,CHENNAI,BANGALORE.', '12/6/2020', '12/7/2020', '2020-06-11 10:13:10'),
(4, 326, 'IT MARKETING', '2LK ', 'BEST SKILL IN MANAGEMENT ,ADMINISTRATION.WE ARE LOOKING FOR GOOD COMMUNICATION SKILL, LEADERSHIP SKILL. ITS HAS 4 LAYER SELECTION PROCESS. APPTI,IQ SKILL,PERSONALITY TEST, HR . RESULT WILL BE SEND YOU THROUGH MAIL. TRANING FOR 1 YEAR ,FULL TIME JOB.', '15', 'KOLKATA,DELHI,CHENNAI,BANGALORE,MUMBAI.', '26/5/2020', '10/7/2020', '2020-05-25 19:44:34'),
(15, 11, 'web devloper', '20000 ', 'infosys is well known IT company or sector in the country. The following selection process will be in 3 layers. APPTI ,essay writing,HR round.The selected  student  will by infromed by email within 15 days.', '38', 'kolkata, delhi, mumbai,cheenai,bangalore.', '17-06-2020', '15-07-2020', NULL),
(16, 11, 'tranee', '14000', 'please contact with your faculty member of college . we have send mail to him from will available in this site .', '18', 'kolkata, delhi, mumbai,cheenai,bangalore.', '20-05-2020', '20-07-2020', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
