-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 12, 2021 at 06:38 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slotify`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
CREATE TABLE IF NOT EXISTS `albums` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `artist` int NOT NULL,
  `genre` int NOT NULL,
  `artworkPath` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Natural', 3, 3, 'Assets/images/artwork/imagine.jpg'),
(2, 'Only One King ', 6, 5, 'Assets/images/artwork/onek.jpg'),
(3, 'Shatter me', 2, 3, 'Assets/images/artwork/linsey.jpg'),
(4, 'Classics, Vol. 2', 5, 1, ' Assets/images/artwork/twos.jpg'),
(5, 'TABASKI', 1, 7, ' Assets/images/artwork/dem.jpg'),
(6, 'Mirna', 4, 7, ' Assets/images/artwork/waly.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
CREATE TABLE IF NOT EXISTS `artists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Youssou ndour '),
(2, 'Lindsey Stirling'),
(3, 'Imagine dragon'),
(4, 'Waly Seck'),
(5, 'Two Steps From Hell'),
(6, 'Tommee Profitt');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Dance/Electro'),
(4, 'Hip hop'),
(5, 'Rap'),
(6, 'R & B'),
(7, 'Mbalax');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
CREATE TABLE IF NOT EXISTS `songs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `artist` int NOT NULL,
  `album` int NOT NULL,
  `genre` int NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int NOT NULL,
  `plays` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Natural', 3, 1, 3, '03:10', 'Assets/music/Imagine Dragons - Natural (Lyrics).mp3', 1, 0),
(2, 'Only One King', 6, 2, 5, '03:30', 'Assets/music/Only One King - Tommee Profitt (feat. Jung Youth).mp3', 2, 0),
(3, 'Shatter Me', 2, 3, 3, '05:19', 'Assets/music/Shatter Me Featuring Lzzy Hale - Lindsey Stirling.mp3', 3, 0),
(4, 'Bastion', 5, 4, 1, '02:46', 'Assets/music/Two Steps From Hell - Bastion.mp3', 4, 0),
(5, 'Heaven and Earth', 5, 4, 1, '02:17', 'Assets/music/Two Steps From Hell - Heaven and Earth.mp3', 5, 2),
(6, 'Mirna', 4, 6, 7, '06:01', 'Assets/music/Wally B. Seck - Mirna.mp3', 6, 0),
(7, '', 1, 5, 7, '03:45', 'Assets/music/Wally B. Seck - Mirna.mp3', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'hadetou', 'Khadetou', 'Dianifabe', 'Khadetou96@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2021-02-12 00:00:00', 'Assets/images/profile-pics/profilepic.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
