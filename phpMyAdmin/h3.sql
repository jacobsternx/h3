-- phpMyAdmin SQL Dump
-- version 5.1.3-1.fc35
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 01, 2022 at 07:38 PM
-- Server version: 10.6.5-MariaDB
-- PHP Version: 8.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `h3`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `account_id` int(6) NOT NULL,
  `account_name` varchar(32) NOT NULL,
  `account_csm` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`account_id`, `account_name`, `account_csm`) VALUES
(1001, 'timbox', 'linda'),
(1002, 'southside', 'sam'),
(1003, 'duncanville', 'britt'),
(1004, 'casey', 'finn'),
(1005, 'prairie ', 'eric'),
(1006, 'taft', 'john');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(6) NOT NULL,
  `event_name` varchar(64) NOT NULL,
  `event_loc` varchar(64) NOT NULL,
  `event_policy` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `event_loc`, `event_policy`) VALUES
(1001, 'temple vs jefferson', 'san diego', 'all sales final'),
(1002, 'xavier vs jefferson', 'tempe', 'not supplied'),
(1003, 'andrew vs jackson', 'mesa', 'no refunds'),
(1004, 'john vs kennedy', 'chandler', 'exchanges allowed'),
(1005, 'lyndon vs johnson', 'chandler', 'not supplied'),
(1006, 'scottsdale vs columbus', 'scottsdale', 'refer to client'),
(1007, 'st joseph vs holy names', 'marysville', 'exchanges allowed.'),
(1008, 'kirkland vs monroe', 'bothel', 'refer to client');

-- --------------------------------------------------------

--
-- Table structure for table `revenue`
--

CREATE TABLE `revenue` (
  `revenue_id` int(11) NOT NULL,
  `revenue_tickets` decimal(10,0) NOT NULL,
  `revenue_gate` decimal(10,0) NOT NULL,
  `revenue_associations` decimal(10,0) NOT NULL,
  `revenue_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `revenue`
--

INSERT INTO `revenue` (`revenue_id`, `revenue_tickets`, `revenue_gate`, `revenue_associations`, `revenue_date`) VALUES
(1001, '3000', '75', '1500', '2022-01-01'),
(1002, '1650', '200', '400', '2022-01-15'),
(1003, '1500', '35', '200', '2022-02-01'),
(1004, '1850', '400', '240', '2022-02-15'),
(1005, '2500', '50', '1500', '2022-03-01'),
(1006, '2250', '150', '220', '2022-03-15'),
(1007, '2250', '25', '50', '2022-04-01'),
(1008, '750', '1250', '50', '2022-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `school_id` int(11) NOT NULL,
  `school_name` varchar(64) NOT NULL,
  `school_loc` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`school_id`, `school_name`, `school_loc`) VALUES
(1001, 'heather', 'scottsdale'),
(1002, 'jackson', 'phoenix'),
(1003, 'jefferson', 'spokane'),
(1004, 'johnson', 'portland'),
(1005, 'kennedy', 'fremont'),
(1006, 'washington', 'redmond');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(32) NOT NULL,
  `team_mascot` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`team_id`, `team_name`, `team_mascot`) VALUES
(1001, 'gymnastics', 'wildcats'),
(1002, 'jv basketball', 'bulldogs'),
(1003, 'varsity baseball', 'tigers'),
(1004, 'varsity basketball', 'eagles'),
(1005, 'varsity swimming', 'bombers'),
(1006, 'varsity wrestling', 'saxons');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL,
  `ticket_id_number` int(11) NOT NULL,
  `ticket_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticket_id`, `ticket_id_number`, `ticket_order`) VALUES
(1001, 10326196, 401),
(1002, 16875324, 624),
(1003, 26978231, 582),
(1004, 47623187, 741),
(1005, 87264183, 821),
(1006, 87298013, 546);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `revenue`
--
ALTER TABLE `revenue`
  ADD PRIMARY KEY (`revenue_id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`school_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `account_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41005;

--
-- AUTO_INCREMENT for table `revenue`
--
ALTER TABLE `revenue`
  MODIFY `revenue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
