-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2017 at 11:18 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eazyroute`
--

-- --------------------------------------------------------

--
-- Table structure for table `journey`
--

CREATE TABLE `journey` (
  `jour_id` int(10) NOT NULL,
  `user` varchar(15) NOT NULL,
  `time` time(4) NOT NULL,
  `distance` float NOT NULL,
  `weekdays` varchar(10) NOT NULL,
  `display_descriptions` varchar(1800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journey`
--

INSERT INTO `journey` (`jour_id`, `user`, `time`, `distance`, `weekdays`, `display_descriptions`) 
VALUES
(1, 'kelly', '35:00:00.0000', 35.1, 'Monday', 'DH6 4LB Head west towards B6291, Turn right onto B6291, At the roundabout, take the 1st exit onto A688, At the roundabout, take the 4th exit onto the A1(M) slip road to Newcastle/Durham, Merge onto A1(M), Keep left at the fork to stay on A1(M), Continue onto A1, Take the A184 exit towards Gateshead/Newcastle (Centre), Continue onto A184, Keep right to continue on A189, Turn right onto Strawberry Pl, Turn left at Strawberry Ln, Turn right onto Terrace Pl, Continue onto Leazes Ln, At the roundabout, take the 2nd exit onto St Thomas\' Terrace, Continue onto Queen Victoria Rd, Turn right, Turn left, NE1 7RU, Newcastle upon Tyne'),
(2, 'Tom', '00:00:12.0000', 11, 'Tuesday', 'NE1 7RU\r\nHead south\r\n154 ft\r\nTurn right towards Queen Victoria Rd\r\n62 ft\r\nTurn right onto Queen Victoria Rd\r\n0.1 mi\r\nAt the roundabout, take the 1st exit onto B1318\r\n0.2 mi\r\nAt the roundabout, take the 4th exit\r\n367 ft\r\nTurn right onto the A167(M) slip road to A1058/A193/A186/City Centre/Gateshead/Tynemouth/Wallsend/Walker\r\n0.1 mi\r\nMerge onto A167\r\n338 ft\r\nContinue onto A167(M) (signs for City Center East & West)\r\n1.2 mi\r\nContinue onto Tyne Bridge/A167\r\n0.3 mi\r\nContinue straight onto Gateshead Hwy/High St/A167\r\nContinue to follow Gateshead Hwy/A167\r\n0.2 mi\r\nKeep right to continue on Gateshead Hwy/A184\r\n0.1 mi\r\nAt the roundabout, take the 1st exit onto Park Ln/A184\r\nContinue to follow A184\r\n5.3 mi\r\nAt the roundabout, take the 3rd exit onto A19\r\n2.2 mi\r\nTake the A1231 slip road to Sunderland/Gateshead\r\n0.2 mi\r\nAt the roundabout, take the 1st exit onto Wessington Way/A1231\r\n0.2 mi\r\nAt the roundabout, take the 2nd exit and stay on Wessington Way/A1231\r\n0.5 mi\r\nAt the roundabout, take the 2nd exit and stay on Wessington Way/A1231\r\n0.5 mi\r\nAt the roundabout, take the 3rd exit and stay on Wessington Way/A1231\r\n1.3 mi\r\nTurn right onto Stoney Ln/A1231\r\nContinue to follow A1231\r\n0.1 mi\r\nSlight left to stay on A1231\r\n0.4 mi\r\nAt the roundabout, take the 2nd exit onto Pallion New Rd/A1231\r\nContinue to follow A1231\r\n0.3 mi\r\nAt the roundabout, take the 2nd exit onto Trimdon St/A1231\r\n0.3 mi\r\nAt the roundabout, take the 2nd exit onto Silksworth Row/A1231\r\n0.1 mi\r\nAt the roundabout, take the 2nd exit onto St Michaels Way/A1231/A183\r\n0.2 mi\r\nTurn right onto Chester Rd/A183\r\n171 ft\r\nUniversity of Sunderland, City Campus, Edinburgh Building, Chester Rd, Sunderland SR1 3SD'),
(3, 'Tom', '00:00:22.0000', 11.2, 'Tuesday', 'SR1 3SD\r\nHead east on Clanny St towards St Michaels Way/A1231/A183,\r\nTurn left onto St Michaels Way/A1231/A183,\r\nAt the roundabout, take the 1st exit onto Silksworth Row/A1231,\r\nAt the roundabout, take the 4th exit onto Trimdon St/A1231,\r\nAt the roundabout, take the 3rd exit onto Trimdon St W/A1231\r\nContinue to follow A1231,\r\nAt the roundabout, take the 3rd exit and stay on A1231.\r\nTurn left onto Wessington Way/A1231,\r\nAt the roundabout, take the 2nd exit and stay on Wessington Way/A1231,\r\nAt the roundabout, take the 2nd exit and stay on Wessington Way/A1231,\r\nAt the roundabout, take the 2nd exit and stay on Wessington Way/A1231,\r\nAt the roundabout, take the 3rd exit onto the A19 slip road to South Shields/Newcastle,\r\nMerge onto A19,\r\nAt the roundabout, take the 2nd exit and stay on A1,\r\nTake the A194 slip road to South Shields,\r\nAt the roundabout, take the 4th exit onto Leam Ln/A194,\r\nAt the roundabout, take the 2nd exit onto Hadrian Rd/A194\r\nContinue to follow A194,\r\nAt the roundabout, take the 2nd exit onto Newcastle Rd/A194,\r\nAt the roundabout, take the 2nd exit and stay on Newcastle Rd/A194,\r\nAt the roundabout, take the 2nd exit onto Jarrow Rd/A194\r\nContinue to follow A194\r\nGo through 2 roundabouts,\r\nAt the roundabout, take the 1st exit and stay on A194\r\nGo through 2 roundabouts,\r\nAt the roundabout, take the 3rd exit onto Western Approach/A194,\r\nAt the roundabout, take the 1st exit and stay on Western Approach/A194,\r\nAt the roundabout, take the 2nd exit onto Crossgate/A194,\r\nTurn left onto Beach Rd/A183,\r\nTurn left onto Fowler St,\r\nTurn left,\r\nDestination will be on the left,\r\nNE33 1NS, Fowler St, South Shields');

-- --------------------------------------------------------

--
-- 
Table structure for table `journey_location`
--



CREATE TABLE `journey_location` (
  `jour_loc_id` int(10) NOT NULL,
  
`jour_id` int(10) NOT NULL,
  `loc_id` int(10) NOT NULL,
  
`type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



--
-- Dumping data for table `journey_location`
--


INSERT INTO `journey_location` (`jour_loc_id`, `jour_id`, `loc_id`, `type`) 
VALUES
(1, 1, 1, 'starting point'),
(2, 1, 1, 'Home'),
(3, 1, 2, 'second location'),
(4, 2, 2, 'school');



-- --------------------------------------------------------

--
-- Table structure for table `location`
--



CREATE TABLE `location` (
  `loc_id` int(11) NOT NULL,
 
 `address` varchar(125) NOT NULL,
  `user` varchar(20) NOT NULL,
  
`start_postcode` varchar(8) NOT NULL,
  `finish_postcode

` varchar(8) NOT NULL,
  `start_longitude` float NOT NULL,
 
 `start_latitude` float NOT NULL,
  `finish_longitude` float NOT NULL,
 
 `finish_latitude` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



--
-- Dumping data for table `location`
--


INSERT INTO `location` (`loc_id`, `address`, `user`,
`start_postcode`, `finish_postcode`, `start_longitude`, 
`start_latitude`, `finish_longitude`, `finish_latitude`) 
VALUES
(1, '20 sandgate close, coxhoe', 'kelly', 'dh6 4lb', 
'ne1 7ru', 54.7205, -1.50618, 51.5722, -0.78786),

(2, 'University of Newcastle, Newcastle upon Tyne',
'Kelly', 'ne1 7ru', 'SR1 3SD', 54.9803, -1.61571, 54.9045, -1.39135),

(3, 'Fowler St, South Shields NE33 1NS', 'Tom', 'SR1 3SD', 'Ne33 1Ns',
54.9045, -1.39135, 54.9974, -1.43074);



--
-- Indexes for dumped tables
--

--
-- 
Indexes for table `journey`
--

ALTER TABLE `journey`
  ADD PRIMARY KEY (`jour_id`);


--
-- Indexes for table `journey_location`
--

ALTER TABLE `journey_location`
  ADD PRIMARY KEY (`jour_loc_id`);


--
-- Indexes for table `location`
--

ALTER TABLE `location`
  ADD PRIMARY KEY (`loc_id`);


--
-- AUTO_INCREMENT for dumped tables
--

--
-- 
AUTO_INCREMENT for table `journey`
--

ALTER TABLE `journey`
  MODIFY `jour_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `journey_location`
--

ALTER TABLE `journey_location`
  MODIFY `jour_loc_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `location`
--

ALTER TABLE `location`
  MODIFY `loc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/
*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/
*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
