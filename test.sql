-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 31, 2017 at 04:32 PM
-- Server version: 5.7.11
-- PHP Version: 5.5.38


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;

START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;


--
-- Database: `test`
--

DELIMITER $$
--
-- Procedures
--


CREATE DEFINER=`root`@`localhost` PROCEDURE `nextNode` (IN `param1` INT)  select case node1 when param1 then node2 else node1 end as 'nextNode' from vertice where node1 = param1 or node2 = param1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `testPrint` ()  BEGIN
SELECT * FROM vertice;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `testProc` (OUT `param1` INT)  BEGIN SELECT COUNT(1) INTO param1 FROM vertice; END$$

DELIMITER ;



-- --------------------------------------------------------

--
-- 
Table structure for table `edges`
--



CREATE TABLE `edges` (
  `edgeID` int(11) NOT NULL,
  `distance` decimal(10,2) NOT NULL,
  `duration` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



--
-- Dumping data for table `edges`
--



INSERT INTO `edges` (`edgeID`, `distance`, `duration`) VALUES
(1, '10.00', '5.00'),
(2, '20.00', '10.00'),
(3, '5.00', '3.00'),
(4, '11.00', '8.00'),
(5, '30.00', '20.00'),
(6, '3.00', '1.00');


-- --------------------------------------------------------

--
-- 
Table structure for table `edgesnodes`
--



CREATE TABLE `edgesnodes` (
  `vnID` int(11) NOT NULL,
  `nodeid` int(11) DEFAULT NULL,
  `edgeID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



--
-- Dumping data for table `edgesnodes`
--



INSERT INTO `edgesnodes` (`vnID`, `nodeid`, `edgeID`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 1, 2),
(4, 2, 2),
(5, 3, 3),
(6, 5, 3),
(7, 2, 4),
(8, 6, 4),
(9, 2, 5),
(10, 7, 5),
(11, 5, 6),
(12, 6, 6);



-- --------------------------------------------------------

--
-- 

Table structure for table `nodes`
--

CREATE TABLE `nodes` (
  `nodeID` int(11) NOT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `lat` decimal(30,10) DEFAULT NULL,
  `lng` decimal(30,10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nodes`
--

INSERT INTO `nodes` (`nodeID`, `postcode`, `lat`, `lng`) VALUES
(1, '	DH6 1AA', '54.7835760000', '-1.5074160000'),
(2, 'DH6 1AF', '54.7902620000', '-1.4899490000'),
(3, '	DH6 1AQ', '54.7895830000', '-1.4866600000'),
(5, '	DH6 1BA', '54.7931850000', '-1.4884660000'),
(6, '	DH6 1BH', '54.7970290000', '-1.4943280000'),
(7, '	DH6 1BP', '54.7969320000', '-1.4946560000'),
(8, '	DH6 1DT', '54.7769620000', '-1.5030820000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `edges`
--
ALTER TABLE `edges`
  ADD PRIMARY KEY (`edgeID`);


--
-- Indexes for table `edgesnodes`
--


ALTER TABLE `edgesnodes`
  ADD PRIMARY KEY (`vnID`),
  ADD KEY `nodeid` (`nodeid`),
  ADD KEY `verticeid` (`edgeID`);



--
-- Indexes for table `nodes`
--
ALTER TABLE `nodes`
  ADD PRIMARY KEY (`nodeID`);



--
-- AUTO_INCREMENT for dumped tables
--

--
-- 

AUTO_INCREMENT for table `edgesnodes`
--


ALTER TABLE `edgesnodes`
  MODIFY `vnID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;


--
-- AUTO_INCREMENT for table `nodes`
--


ALTER TABLE `nodes`
  MODIFY `nodeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;


/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;


/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
