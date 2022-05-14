-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: database
-- Generation Time: May 14, 2022 at 12:18 PM
-- Server version: 5.7.38
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `docker_mysql`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `actor_ID` int(11) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `creation_date` date NOT NULL,
  `update_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`actor_ID`, `last_name`, `first_name`, `date_of_birth`, `creation_date`, `update_date`) VALUES
(1, 'Downey Jr.', 'Robert', '1965-04-04', '2022-05-13', '2022-05-13'),
(2, 'Evans', 'Chris', '1981-06-13', '2022-05-13', '2022-05-13'),
(3, 'Hemsworth', 'Chris', '1983-08-11', '2022-05-13', '2022-05-13'),
(4, 'Ruffalo', 'Mark', '1967-11-22', '2022-05-13', '2022-05-13'),
(5, 'Johansson', 'Scarlett', '1984-11-22', '2022-05-13', '2022-05-13'),
(6, 'Renner', 'Jeremy', '1971-01-07', '2022-05-13', '2022-05-13'),
(7, 'Pratt', 'Chris', '1979-06-21', '2022-05-13', '2022-05-13'),
(8, 'Rudd', 'Paul', '1969-04-06', '2022-05-13', '2022-05-13'),
(9, 'Cumberbatch', 'Benedict', '1976-07-19', '2022-05-13', '2022-05-13'),
(10, 'Holland', 'Tom', '1996-06-01', '2022-05-13', '2022-05-13'),
(11, 'Boseman', 'Chadwick', '1976-11-29', '2022-05-13', '2022-05-13'),
(12, 'Lilly', 'Evangeline', '1979-08-03', '2022-05-13', '2022-05-13'),
(13, 'Larson', 'Brie', '1989-10-01', '2022-05-13', '2022-05-13'),
(14, 'Jackson', 'Samuel L.', '1948-12-21', '2022-05-13', '2022-05-13');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_ID` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `release_date` date NOT NULL,
  `duration` time NOT NULL,
  `director` varchar(30) NOT NULL,
  `creation_date` date NOT NULL,
  `update_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_ID`, `title`, `release_date`, `duration`, `director`, `creation_date`, `update_date`) VALUES
(1, 'Iron Man', '2008-05-02', '02:06:00', 'Jon Favreau', '2022-05-13', '2022-05-13'),
(2, 'The Incredible Hulk ', '2008-06-13', '01:52:00', 'Louis Leterrier', '2022-05-13', '2022-05-13'),
(3, 'Iron Man 2', '2010-05-07', '02:05:00', 'Jon Favreau', '2022-05-13', '2022-05-13'),
(4, 'Thor', '2011-05-06', '01:54:00', 'Kenneth Branagh', '2022-05-13', '2022-05-13'),
(5, 'Captain America: The First Avenger', '2011-07-22', '02:04:00', 'Joe Johnston', '2022-05-13', '2022-05-13'),
(6, 'Marvel\'s The Avengers', '2012-05-04', '02:23:00', 'Joss Whedon', '2022-05-13', '2022-05-13'),
(7, 'Iron Man 3', '2013-05-03', '02:11:00', 'Shane Black', '2022-05-13', '2022-05-13'),
(8, 'Thor: The Dark World', '2013-11-08', '01:52:00', 'Alan Taylor', '2022-05-13', '2022-05-13'),
(9, 'Captain America: The Winter Soldier', '2014-04-04', '02:16:00', 'Anthony and Joe Russo', '2022-05-13', '2022-05-13'),
(10, 'Guardians of the Galaxy', '2014-08-01', '02:02:00', 'James Gunn', '2022-05-13', '2022-05-13'),
(11, 'Avengers: Age of Ultron', '2015-05-01', '02:21:00', 'Joss Whedon', '2022-05-13', '2022-05-13'),
(12, 'Ant-Man', '2015-07-17', '01:57:00', 'Peyton Reed', '2022-05-13', '2022-05-13'),
(13, 'Captain America: Civil War', '2016-05-06', '02:27:00', 'Anthony and Joe Russo', '2022-05-13', '2022-05-13'),
(14, 'Doctor Strange', '2016-11-04', '01:55:00', 'Scott Derrickson', '2022-05-13', '2022-05-13'),
(15, 'Guardians of the Galaxy Vol. 2', '2017-05-05', '02:17:00', 'James Gunn', '2022-05-13', '2022-05-13'),
(16, 'Spider-Man: Homecoming', '2017-07-07', '02:13:00', 'Jon Watts', '2022-05-13', '2022-05-13'),
(17, 'Thor: Ragnarok', '2017-11-03', '02:10:00', 'Taika Waititi', '2022-05-13', '2022-05-13'),
(18, 'Black Panther', '2018-02-16', '02:14:00', 'Ryan Coogler', '2022-05-13', '2022-05-13'),
(19, 'Avengers: Infinity War', '2018-04-27', '02:29:00', 'Anthony and Joe Russo', '2022-05-13', '2022-05-13'),
(20, 'Ant-Man and the Wasp', '2018-07-06', '01:58:00', 'Peyton Reed', '2022-05-13', '2022-05-13'),
(21, 'Captain Marvel', '2019-03-08', '02:04:00', 'Anna Boden and Ryan Fleck', '2022-05-13', '2022-05-13'),
(22, 'Avengers: Endgame', '2019-04-26', '03:01:00', 'Anthony and Joe Russo', '2022-05-13', '2022-05-13'),
(23, 'Spider-Man: Far From Home', '2019-07-02', '02:09:00', 'Jon Watts', '2022-05-13', '2022-05-13'),
(24, 'Black Widow', '2021-07-09', '02:14:00', 'Cate Shortland', '2022-05-13', '2022-05-13'),
(25, 'Shang-Chi and the Legend of the Ten Rings', '2021-09-03', '02:12:00', 'Destin Daniel Cretton', '2022-05-13', '2022-05-13'),
(26, 'Eternals', '2021-11-05', '02:36:00', 'Chloé Zhao', '2022-05-13', '2022-05-13'),
(27, 'Spider-Man: No Way Home', '2021-12-17', '02:28:00', 'Jon Watts', '2022-05-13', '2022-05-13'),
(28, 'Doctor Strange in the Multiverse of Madness', '2022-05-06', '02:06:00', 'Sam Raimi', '2022-05-13', '2022-05-13');

-- --------------------------------------------------------

--
-- Table structure for table `movies_actors`
--

CREATE TABLE `movies_actors` (
  `ID_actor` int(11) NOT NULL,
  `iD_movie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies_actors`
--

INSERT INTO `movies_actors` (`ID_actor`, `iD_movie`) VALUES
(1, 1),
(1, 3),
(1, 6),
(1, 7),
(1, 9),
(1, 11),
(1, 13),
(1, 19),
(1, 22),
(2, 5),
(2, 6),
(2, 9),
(2, 11),
(2, 13),
(2, 19),
(2, 22),
(3, 4),
(3, 6),
(3, 8),
(3, 11),
(3, 17),
(3, 19),
(3, 22),
(4, 2),
(4, 6),
(4, 11),
(4, 17),
(4, 19),
(4, 22),
(5, 3),
(5, 6),
(5, 11),
(5, 13),
(5, 19),
(5, 22),
(5, 24),
(6, 6),
(6, 11),
(6, 13),
(6, 19),
(6, 22),
(7, 10),
(7, 15),
(7, 19),
(7, 22),
(8, 12),
(8, 13),
(8, 20),
(8, 22),
(9, 14),
(9, 19),
(9, 22),
(9, 27),
(9, 28),
(10, 13),
(10, 16),
(10, 19),
(10, 22),
(10, 23),
(10, 27),
(11, 13),
(11, 18),
(12, 20),
(12, 22),
(13, 21),
(13, 22),
(14, 3),
(14, 6),
(14, 9),
(14, 11),
(14, 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`actor_ID`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `actor_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
