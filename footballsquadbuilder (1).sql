-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2022 at 11:49 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `footballsquadbuilder`
--

-- --------------------------------------------------------

--
-- Table structure for table `fixtures`
--

CREATE TABLE `fixtures` (
  `id` int(10) NOT NULL,
  `team1` varchar(20) NOT NULL,
  `team2` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fixtures`
--

INSERT INTO `fixtures` (`id`, `team1`, `team2`, `date`, `time`) VALUES
(2, 'TOTTENHAM HOTSPURS', 'WOLVES', '2022-08-20', '17:00:00.000000'),
(3, 'CRYSTAL PALACE', 'ASTON VILLA', '2022-08-20', '19:30:00.000000'),
(4, 'EVERTON', 'NOTTEM FORREST', '2022-08-20', '19:30:00.000000'),
(5, 'FULHAM ', 'BRENTFORD', '2022-08-20', '19:30:00.000000'),
(6, 'LIECESTER CITY', 'SOUTHAMPTON', '2022-08-20', '19:30:00.000000'),
(7, 'BOURNEMOUTH', 'ARSENAL', '2022-08-20', '22:00:00.000000'),
(8, 'LEEDS', 'CHELSEA', '2022-08-21', '18:30:00.000000'),
(9, 'WEST HAM', 'BRIGHTON', '2022-08-21', '18:30:00.000000'),
(10, 'NEWCASTLE', 'MAN CITY', '2022-08-21', '21:00:00.000000'),
(11, 'MAN U', 'LIVERPOOL', '2022-08-23', '00:30:00.000000'),
(12, 'SOUTHAMPTON', 'MAN U', '2022-08-27', '17:00:00.000000'),
(13, 'BRENTFORD', 'EVERTON', '2022-08-27', '19:30:00.000000'),
(14, 'BRIGHTON', 'LEEDS', '2022-08-27', '19:30:00.000000'),
(15, 'CHELSEA ', 'LIECESTER CITY', '2022-08-27', '19:30:00.000000'),
(16, 'LIVERPOOL', 'BOURNEMOUTH', '2022-08-27', '19:30:00.000000'),
(17, 'MAN CITY', 'CRYSTAL PALACE', '2022-08-27', '19:30:00.000000'),
(18, 'ARSENAL', 'FULHAM', '2022-08-27', '22:00:00.000000'),
(19, 'ASTON VILLA ', 'WEST HAM', '2022-08-28', '18:30:00.000000'),
(20, 'WOLVES ', 'NEWCASTLE', '2022-08-28', '18:30:00.000000'),
(21, 'NOTTEM FORREST', 'TOTTENHAM HOTSPURS', '2022-08-28', '21:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `playerinfo`
--

CREATE TABLE `playerinfo` (
  `name` varchar(20) NOT NULL,
  `pos` varchar(5) NOT NULL,
  `club` varchar(20) NOT NULL,
  `goal` int(5) NOT NULL,
  `assist` int(5) NOT NULL,
  `clsh` int(5) NOT NULL,
  `gp` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playerinfo`
--

INSERT INTO `playerinfo` (`name`, `pos`, `club`, `goal`, `assist`, `clsh`, `gp`) VALUES
('C. Ronaldo', 'ST', 'MAN U', 18, 3, 6, 30),
('M. Salah', 'RWF', 'LIVERPOOL', 23, 13, 13, 35),
('K. De Bruyne', 'CAM', 'MAN CITY', 15, 8, 8, 30),
('Son Heung-Min', 'LWF', 'TOTTENHAM HOTSPURS', 23, 7, 6, 35),
('Harry Kane', 'ST', 'TOTTENHAM HOTSPURS', 17, 9, 13, 37),
('Sadio Mane', 'LWF', 'LIVERPOOL', 16, 2, 13, 35),
('Diago Jota', 'ST', 'LIVERPOOL', 15, 4, 4, 35),
('Jamie Vardy', 'ST', 'LEICESTER CITY', 15, 2, 3, 34),
('Wilfried Zaha', 'ST', 'CRYSTAL PALACE', 14, 1, 10, 33),
('Raheem Sterling', 'LWF', 'MAN CITY', 13, 5, 11, 31),
('T. Alexander-Arnold', 'RB', 'LIVERPOOL', 2, 12, 17, 32),
('A. Robertson', 'LB', 'LIVERPOOL', 3, 10, 16, 29),
('Reece James', 'RB', 'CHELSEA', 5, 9, 5, 26),
('Joao Cancelo', 'LB', 'MAN CITY', 1, 7, 19, 36),
('Marcos Alonso', 'LB', 'CHELSEA', 4, 4, 7, 28),
('V. Coufal', 'RB', 'WEST HAM', 0, 4, 5, 28),
('L. Digne', 'LB', 'ASTON VILLA', 0, 4, 7, 29),
('Matt Doherty', 'RB', 'TOTTENHAM', 2, 4, 2, 15),
('Ruben Dias', 'CB', 'MAN CITY', 2, 4, 12, 29),
('Alex Tellas', 'LB', 'MAN U', 0, 4, 4, 21),
('Alisson', 'GK', 'LIVERPOOL', 0, 1, 20, 36),
('Ederson', 'GK', 'MAN CITY', 0, 0, 20, 37),
('E. Mendy', 'GK', 'CHELSEA', 0, 0, 14, 34),
('Harvey Barnes', 'CAM', 'LEICESTER CITY', 6, 10, 3, 32),
('Mason Mount', 'CAM ', 'CHELSEA', 11, 10, 6, 32),
('Paul Pogba', 'CMF', 'MAN U', 1, 9, 2, 20),
('James Maddison', 'CAM', 'LEICESTER CITY', 12, 8, 2, 35),
('Bukayo Saka', 'LMF', 'ARSENAL', 11, 7, 5, 38),
('Bruno Fernandes', 'CAM', 'MAN U', 10, 6, 5, 36),
('Gabriel Martinelli', 'CMF', 'ARSENAL', 6, 6, 2, 29),
('Phil Foden', 'CMF', 'MAN CITY', 9, 5, 7, 28),
('Jordan Henderson ', 'CMF', 'LIVERPOOL', 2, 5, 9, 35);

-- --------------------------------------------------------

--
-- Table structure for table `pointstable`
--

CREATE TABLE `pointstable` (
  `id` int(5) NOT NULL,
  `club` varchar(20) NOT NULL,
  `gplayed` int(5) NOT NULL,
  `gwin` int(5) NOT NULL,
  `gdraw` int(5) NOT NULL,
  `glose` int(5) NOT NULL,
  `gf` int(5) NOT NULL,
  `ga` int(5) NOT NULL,
  `gd` int(5) NOT NULL,
  `points` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pointstable`
--

INSERT INTO `pointstable` (`id`, `club`, `gplayed`, `gwin`, `gdraw`, `glose`, `gf`, `ga`, `gd`, `points`) VALUES
(1, 'MAN CITY', 38, 29, 6, 3, 99, 26, 73, 93),
(2, 'LIVERPOOL', 38, 28, 8, 2, 94, 26, 68, 92),
(3, 'CHELSEA', 38, 21, 11, 6, 76, 33, 43, 74),
(4, 'TOTTENHAM HOTSPURS', 38, 22, 5, 11, 69, 40, 29, 71),
(5, 'ARSENAL', 38, 22, 3, 13, 61, 48, 13, 69),
(6, 'MAN U', 38, 16, 10, 12, 57, 57, 0, 58),
(7, 'WEST HAM', 38, 16, 8, 14, 60, 51, 9, 56),
(8, 'LIECESTER CITY', 38, 14, 10, 14, 62, 59, 3, 52),
(9, 'BRIGHTON', 38, 12, 15, 11, 42, 44, -2, 51),
(10, 'WOLVES', 38, 15, 6, 17, 38, 43, -5, 51);

-- --------------------------------------------------------

--
-- Table structure for table `querytable`
--

CREATE TABLE `querytable` (
  `email` varchar(30) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `query` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `querytable`
--

INSERT INTO `querytable` (`email`, `first_name`, `last_name`, `query`) VALUES
('rahilhgavande@gmail.com', 'Rahil', 'Gavande', 'Example Query for test 1'),
('rahilhgavande@gmail.com', 'Rahil', 'Gavande', 'Example Query for test 2'),
('karhikgsmudhaliar@gmail.com', 'Karthik ', 'De Bruyne', 'Why is Manchester United so shit?'),
('rahilhgavande@gmail.com', 'Rahil', 'Gavande', 'Trial for query via phone ');

-- --------------------------------------------------------

--
-- Table structure for table `rahilhgavande`
--

CREATE TABLE `rahilhgavande` (
  `id` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rahilhgavande`
--

INSERT INTO `rahilhgavande` (`id`, `name`) VALUES
('rahilhgavande@gmail.com', 'Son Heung-Min'),
('rahilhgavande@gmail.com', 'C. Ronaldo'),
('rahilhgavande@gmail.com', 'K. De Bruyne'),
('rahilhgavande@gmail.com', 'Bukayo Saka'),
('rahilhgavande@gmail.com', 'Mason Mount'),
('rahilhgavande@gmail.com', 'Joao Cancelo'),
('rahilhgavande@gmail.com', 'T. Alexander-Arnold'),
('rahilhgavande@gmail.com', 'A. Robertson'),
('rahilhgavande@gmail.com', 'Ruben Dias'),
('rahilhgavande@gmail.com', 'Marcos Alonso'),
('rahilhgavande@gmail.com', 'Alisson');

-- --------------------------------------------------------

--
-- Table structure for table `rahilhghg`
--

CREATE TABLE `rahilhghg` (
  `id` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(80) NOT NULL,
  `first_name` varchar(80) NOT NULL,
  `last_name` varchar(80) NOT NULL,
  `user_password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `first_name`, `last_name`, `user_password`) VALUES
(7, 'rahilhgavande@gmail.com', 'Rahil', 'Gavande', '170710'),
(8, 'rahilhghg@gmail.com', 'Rahil', 'Gavande', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fixtures`
--
ALTER TABLE `fixtures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pointstable`
--
ALTER TABLE `pointstable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
