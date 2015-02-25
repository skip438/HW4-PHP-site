-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 25, 2015 at 09:59 AM
-- Server version: 5.5.41-37.0-log
-- PHP Version: 5.4.23

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `briansus_seisbrian`
--
CREATE DATABASE `briansus_seisbrian` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `briansus_seisbrian`;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `msgid` int(11) NOT NULL AUTO_INCREMENT,
  `msgusername` varchar(60) NOT NULL,
  `msgactive` tinyint(1) NOT NULL,
  `msgdateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `msgdatedeleted` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `msgtext` varchar(4000) NOT NULL,
  PRIMARY KEY (`msgid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
CREATE TABLE IF NOT EXISTS `relationships` (
  `relid` int(11) NOT NULL AUTO_INCREMENT,
  `relusername` varchar(60) NOT NULL,
  `relfriend` varchar(60) NOT NULL,
  `reldateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reldatedeleted` timestamp NULL DEFAULT NULL,
  `relactive` tinyint(1) NOT NULL,
  PRIMARY KEY (`relid`),
  UNIQUE KEY `relid` (`relid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`relid`, `relusername`, `relfriend`, `reldateadded`, `reldatedeleted`, `relactive`) VALUES
(1, 'laylageorge@stthomas.edu', 'brianwilliams01@charter.net', '2015-02-25 16:55:23', NULL, 1),
(2, 'brianwilliams01@charter.net', 'ronniej@Stthomas.edu', '2015-02-25 16:56:10', NULL, 1),
(3, 'will8915@stthomas.edu', 'brianwilliams01@charter.net', '2015-02-25 16:56:57', NULL, 1),
(4, 'laylageorge@stthomas.edu', 'ronniej@stthomas.edu', '2015-02-25 16:57:55', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(60) NOT NULL,
  `userpassword` varchar(15) NOT NULL,
  `userdisplayname` varchar(30) NOT NULL,
  `useractive` tinyint(1) NOT NULL,
  `userdateofbirth` date DEFAULT NULL,
  `useraddress` varchar(30) DEFAULT NULL,
  `usercity` varchar(30) DEFAULT NULL,
  `userstate` char(2) DEFAULT NULL,
  `userdateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userdatedeleted` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `userpassword`, `userdisplayname`, `useractive`, `userdateofbirth`, `useraddress`, `usercity`, `userstate`, `userdateadded`, `userdatedeleted`) VALUES
('brianwilliams01@charter.net', '123456', 'Skipper Williams', 1, '1953-12-01', '34567 user address row', 'user city', 'MN', '2015-02-25 16:31:22', '0000-00-00 00:00:00'),
('laylageorge@stthomas.edu', '123456', 'Layla', 1, '2012-04-28', '222 Ember Drive', 'Lake Pepin', 'OH', '2015-02-25 16:39:57', '0000-00-00 00:00:00'),
('myusder@myhost.com', '123456', 'Dummy User Here', 1, '2005-02-01', '2244 user address street', 'MyCity', 'FL', '2015-02-25 16:42:10', '0000-00-00 00:00:00'),
('ronniej@stthomas.edu', '123456', 'Ronnie Bianc', 1, '1993-07-02', '55667 Ronnie Street', 'Big Horn', 'MT', '2015-02-25 16:58:18', '0000-00-00 00:00:00'),
('stevenjones@myhost.net', '123456', 'Steven P. Jones', 1, '1964-02-23', '444 user way', 'Livingston', 'NJ', '2015-02-25 16:35:33', '0000-00-00 00:00:00'),
('usereight@dummy.net', '123456', 'User Eight Is Last', 1, '2006-02-03', '339966 Who Knows Avenue', 'City of Industry', 'CA', '2015-02-25 16:42:10', '0000-00-00 00:00:00'),
('will8915@stthomas.edu', '123456', 'Brian S. Williams', 1, '1973-02-03', '12312 Layla Court', 'Apple Valley', 'MN', '2015-02-25 16:31:22', '0000-00-00 00:00:00'),
('williamsmith@user.com', '123456', 'Bill J. Smith', 1, '1996-11-01', '222 smith and jones street', 'Flemington', 'NJ', '2015-02-25 16:39:57', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
