-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 28, 2014 at 01:42 PM
-- Server version: 5.5.34-0ubuntu0.13.04.1
-- PHP Version: 5.4.9-4ubuntu2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `usbinv`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `all`
--
CREATE TABLE IF NOT EXISTS `all` (
`computer` varchar(255)
,`user` varchar(255)
,`serialnumber` varchar(255)
,`os` varchar(255)
,`timestamp` timestamp
,`type` varchar(255)
,`vendorname` varchar(255)
,`lost` tinyint(1)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `backlog`
--
CREATE TABLE IF NOT EXISTS `backlog` (
`computer` varchar(255)
,`user` varchar(255)
,`serialnumber` varchar(255)
,`os` varchar(255)
,`timestamp` timestamp
,`type` varchar(255)
,`vendorname` varchar(255)
);
-- --------------------------------------------------------

--
-- Table structure for table `logevents`
--

CREATE TABLE IF NOT EXISTS `logevents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computer` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `serialnumber` varchar(255) NOT NULL,
  `os` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `serialnumber` (`serialnumber`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `logevents`
--

INSERT INTO `logevents` (`id`, `computer`, `user`, `serialnumber`, `os`, `timestamp`) VALUES
(3, 'desktop-41.students.os3.nl', 'kerkelens tty7 \n', '0000:00:14.0', 'Linux', '2014-03-11 13:57:22'),
(4, 'desktop-41.students.os3.nl', 'kerkelens tty7 \n', '0000:00:14.0', 'Linux', '2014-03-11 13:57:45'),
(5, 'desktop-41.students.os3.nl', 'kerkelens tty7 \n', '0000:00:14.0', 'Linux', '2014-03-11 13:59:17'),
(6, 'desktop-31.students.os3.nl', 'ebijnen  tty7\n', '7810060000018788', 'Linux', '2014-03-11 15:04:27'),
(7, 'desktop-31.students.os3.nl', 'ebijnen  tty7\n', '09021000000000003578362515', 'Linux', '2014-03-11 15:05:16'),
(8, 'desktop-31.students.os3.nl', 'ebijnen  tty7\n', '80A354043040365274', 'Linux', '2014-03-11 15:06:14'),
(9, 'desktop-31.students.os3.nl', 'ebijnen  tty7\r\n', '80A354043040365274', 'Linux', '2014-03-11 15:06:14'),
(10, 'desktop-31.students.os3.nl', 'ebijnen  tty7\r\n', '80A354043040365274', 'Linux', '2014-03-11 15:06:14'),
(11, 'desktop-31.students.os3.nl', 'ebijnen  tty7\r\n', '80A354043040365274', 'Linux', '2014-03-11 15:06:14'),
(12, 'desktop-31.students.os3.nl', 'ebijnen  tty7\r\n', '80A354043040365274', 'Linux', '2014-03-11 15:06:14'),
(13, 'desktop-31.students.os3.nl', 'ebijnen  tty7\r\n', '80A354043040365274', 'Linux', '2014-03-11 15:06:14'),
(14, 'desktop-31.students.os3.nl', 'ebijnen  tty7\r\n', '80A354043040365274', 'Linux', '2014-03-11 15:06:14'),
(15, 'desktop-31.students.os3.nl', 'ebijnen  tty7\r\n', '80A354043040365274', 'Linux', '2014-03-11 15:06:14'),
(16, 'desktop-31.students.os3.nl', 'ebijnen  tty7\n', 'HT23JW105591', 'Linux', '2014-03-18 09:57:05'),
(17, 'desktop-31.students.os3.nl', 'ebijnen  tty7\n', '09021000000000003578362515', 'Linux', '2014-03-24 13:26:58'),
(18, 'desktop-31.students.os3.nl', 'ebijnen  tty7\n', '7810060000018788', 'Linux', '2014-03-24 13:27:38'),
(19, 'desktop-31.students.os3.nl', 'ebijnen  tty7\n', '7810060000018788', 'Linux', '2014-03-24 13:28:50'),
(20, 'desktop-31.students.os3.nl', 'ebijnen  tty7\n', '09021000000000003578362515', 'Linux', '2014-03-24 13:30:23'),
(21, 'desktop-31.students.os3.nl', 'ebijnen  tty7\n', '09021000000000003578362515', 'Linux', '2014-03-24 13:31:36'),
(22, 'desktop-31.students.os3.nl', 'ebijnen  tty7\n', '09021000000000003578362515', 'Linux', '2014-03-24 13:33:37'),
(23, 'desktop-31.students.os3.nl', 'ebijnen  tty7\n', '09021000000000003578362515', 'Linux', '2014-03-24 13:33:38'),
(24, 'desktop-31.students.os3.nl', 'ebijnen  tty7\n', '09021000000000003578362515', 'Linux', '2014-03-24 13:34:13'),
(25, 'desktop-31.students.os3.nl', 'ebijnen  tty7\n', '09021000000000003578362515', 'Linux', '2014-03-24 13:35:57'),
(26, 'desktop-31.students.os3.nl', 'ebijnen  tty7\n', '09021000000000003578362515', 'Linux', '2014-03-24 13:35:58'),
(27, 'desktop-31.students.os3.nl', 'ebijnen  tty7\n', '09021000000000003578362515', 'Linux', '2014-03-26 14:42:28'),
(28, 'desktop-31.students.os3.nl', 'ebijnen  tty7\n', '09021000000000003578362515', 'Linux', '2014-03-26 14:42:29'),
(29, 'desktop-31.students.os3.nl', 'ebijnen  tty7\n', '09021000000000003578362515', 'Linux', '2014-03-28 10:30:59'),
(30, 'desktop-31.students.os3.nl', 'ebijnen  tty7\n', '09021000000000003578362515', 'Linux', '2014-03-28 10:32:12'),
(31, 'desktop-31.students.os3.nl', 'ebijnen  tty7', '09021000000000003578362515', 'Linux', '2014-03-28 10:40:40'),
(32, 'desktop-31.students.os3.nl', 'ebijnen  tty7', '09021000000000003578362515', 'Linux', '2014-03-28 10:42:06'),
(33, 'desktop-31.students.os3.nl', 'ebijnen  tty7', '09021000000000003578362515', 'Linux', '2014-03-28 10:42:21'),
(34, 'desktop-31.students.os3.nl', 'ebijnen  tty7', '09021000000000003578362515', 'Linux', '2014-03-28 10:42:21'),
(35, 'desktop-31.students.os3.nl', 'ebijnen  tty7', '09021000000000003578362515', 'Linux', '2014-03-28 10:43:14');

-- --------------------------------------------------------

--
-- Stand-in structure for view `lostdevices`
--
CREATE TABLE IF NOT EXISTS `lostdevices` (
`computer` varchar(255)
,`user` varchar(255)
,`serialnumber` varchar(255)
,`os` varchar(255)
,`timestamp` timestamp
,`type` varchar(255)
,`vendorname` varchar(255)
,`lost` tinyint(1)
);
-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `serialnumber` varchar(255) CHARACTER SET latin1 NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `vendorname` varchar(255) DEFAULT NULL,
  `companyowned` tinyint(1) DEFAULT '0',
  `stolen` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`serialnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`serialnumber`, `type`, `vendorname`, `companyowned`, `stolen`) VALUES
('0000:00:14.0', 'CTL-460', 'Wacom Co.,Ltd.', 1, 0),
('09021000000000003578362515', 'Mass Storage Device', 'JetFlash', 1, 0),
('7810060000018788', 'USB Flash Disk', 'General', 1, 1),
('80A354043040365274', 'LGE USB Device', 'LG Electronics Inc.', 1, 0),
('HT23JW105591', 'Android Phone', 'HTC', 0, 0);

-- --------------------------------------------------------

--
-- Structure for view `all`
--
DROP TABLE IF EXISTS `all`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `all` AS select `logevents`.`computer` AS `computer`,`logevents`.`user` AS `user`,`status`.`serialnumber` AS `serialnumber`,`logevents`.`os` AS `os`,`logevents`.`timestamp` AS `timestamp`,`status`.`type` AS `type`,`status`.`vendorname` AS `vendorname`,`status`.`stolen` AS `lost` from (`logevents` join `status` on((`logevents`.`serialnumber` = `status`.`serialnumber`))) order by `logevents`.`timestamp` desc;

-- --------------------------------------------------------

--
-- Structure for view `backlog`
--
DROP TABLE IF EXISTS `backlog`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `backlog` AS select `logevents`.`computer` AS `computer`,`logevents`.`user` AS `user`,`status`.`serialnumber` AS `serialnumber`,`logevents`.`os` AS `os`,`logevents`.`timestamp` AS `timestamp`,`status`.`type` AS `type`,`status`.`vendorname` AS `vendorname` from (`logevents` join `status` on((`logevents`.`serialnumber` = `status`.`serialnumber`))) order by `logevents`.`timestamp` desc;

-- --------------------------------------------------------

--
-- Structure for view `lostdevices`
--
DROP TABLE IF EXISTS `lostdevices`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lostdevices` AS select `all`.`computer` AS `computer`,`all`.`user` AS `user`,`all`.`serialnumber` AS `serialnumber`,`all`.`os` AS `os`,`all`.`timestamp` AS `timestamp`,`all`.`type` AS `type`,`all`.`vendorname` AS `vendorname`,`all`.`lost` AS `lost` from `all` where (`all`.`lost` = 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `logevents`
--
ALTER TABLE `logevents`
  ADD CONSTRAINT `logevents_ibfk_1` FOREIGN KEY (`serialnumber`) REFERENCES `status` (`serialnumber`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
