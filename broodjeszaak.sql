-- phpMyAdmin SQL Dump
-- version 4.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Oct 13, 2015 at 04:35 PM
-- Server version: 5.5.38
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `broodjeszaak`
--
/*CREATE DATABASE IF NOT EXISTS `broodjeszaak` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `broodjeszaak`;*/

-- --------------------------------------------------------

--
-- Table structure for table `beleg`
--

CREATE TABLE `beleg` (
  `beleg_id` int(50) NOT NULL,
  `beleg_naam` varchar(200) NOT NULL,
  `beleg_samenstelling` varchar(200) NOT NULL,
  `beleg_prijs` decimal(10,2) NOT NULL,
  `beleg_image` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `beleg`
--

INSERT INTO `beleg` (`beleg_id`, `beleg_naam`, `beleg_samenstelling`, `beleg_prijs`, `beleg_image`) VALUES
(1, 'Tonijn pikant', 'tonijn, pepper, zout, suiker, mayonaise', 0.50, 'klein_wit.jpg'),
(2, 'Tomaten', 'tomaten', 0.70, 'klein_wit.jpg'),
(3, 'Augurken', 'augurken', 0.70, 'klein_wit.jpg'),
(4, 'Sla', 'sla', 0.40, 'klein_wit.jpg'),
(5, 'Kip andalouse', 'kip, mayonaise, ketchup, ei', 0.50, 'klein_wit.jpg'),
(6, 'Ei', 'ei', 0.60, 'klein_wit.jpg'),
(7, 'Mayonaise', 'zonnebloemolie, ei geel, citroen ', 0.40, 'klein_wit.jpg'),
(8, 'Ketchup', 'tomaten, suiker, azijn', 0.40, 'klein_wit.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bestelling`
--

CREATE TABLE `bestelling` (
  `bestelling_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `totaal_prijs` decimal(10,2) NOT NULL,
  `bestelling_datum` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bestelling`
--

INSERT INTO `bestelling` (`bestelling_id`, `user_id`, `totaal_prijs`, `bestelling_datum`) VALUES
(77, 8, 24.70, '2015-05-28 18:21:33'),
(79, 8, 24.70, '2015-05-28 21:06:30'),
(80, 8, 24.70, '2015-05-28 21:09:01'),
(81, 8, 3.20, '2015-05-28 21:12:58'),
(82, 8, 3.20, '2015-05-28 21:13:32'),
(83, 8, 9.60, '2015-05-28 21:18:11'),
(84, 8, 3.20, '2015-05-28 21:19:12'),
(85, 8, 3.20, '2015-05-28 21:21:37'),
(86, 8, 2.70, '2015-05-28 21:23:25'),
(87, 8, 3.20, '2015-05-28 21:30:29'),
(88, 8, 3.20, '2015-05-28 21:30:44'),
(89, 8, 3.70, '2015-10-13 16:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `bestel_regel`
--

CREATE TABLE `bestel_regel` (
  `bestel_regel_id` int(50) NOT NULL,
  `bestelling_id` int(50) NOT NULL,
  `aantal` int(50) NOT NULL,
  `sandwich_prijs` decimal(10,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bestel_regel`
--

INSERT INTO `bestel_regel` (`bestel_regel_id`, `bestelling_id`, `aantal`, `sandwich_prijs`) VALUES
(103, 77, 3, 4.90),
(104, 77, 2, 5.00),
(106, 79, 3, 4.90),
(107, 79, 2, 5.00),
(108, 81, 1, 3.20),
(109, 82, 1, 3.20),
(110, 83, 3, 3.20),
(111, 84, 1, 3.20),
(112, 85, 1, 3.20),
(113, 86, 1, 2.70),
(114, 87, 1, 3.20),
(115, 88, 1, 3.20),
(116, 89, 1, 3.70);

-- --------------------------------------------------------

--
-- Table structure for table `brood`
--

CREATE TABLE `brood` (
  `brood_id` int(50) NOT NULL,
  `brood_naam` varchar(200) NOT NULL,
  `brood_samenstelling` varchar(200) NOT NULL,
  `brood_prijs` decimal(10,2) NOT NULL,
  `brood_image` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brood`
--

INSERT INTO `brood` (`brood_id`, `brood_naam`, `brood_samenstelling`, `brood_prijs`, `brood_image`) VALUES
(1, 'Klein wit', 'bloem, gist, water, suiker, zout', 2.00, 'klein_wit.jpg'),
(2, 'Klein bruin', 'bloem, gist, water, suiker, zout', 2.00, 'klein_bruin.jpg'),
(3, 'Groot wit', 'bloem, gist, water, suiker, zout', 3.00, 'groot_wit.jpg'),
(4, 'Groot bruin', 'bloem, gist, water, suiker, zout', 3.00, 'groot_bruin.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `broodje_samenstelling`
--

CREATE TABLE `broodje_samenstelling` (
  `samenstelling_id` int(50) NOT NULL,
  `bestel_regel_id` int(50) NOT NULL,
  `beleg_id` int(50) NOT NULL,
  `brood_id` int(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `broodje_samenstelling`
--

INSERT INTO `broodje_samenstelling` (`samenstelling_id`, `bestel_regel_id`, `beleg_id`, `brood_id`) VALUES
(6, 103, 1, 1),
(7, 103, 2, 1),
(8, 103, 3, 1),
(9, 103, 6, 1),
(10, 103, 7, 1),
(11, 104, 2, 4),
(12, 104, 4, 4),
(13, 104, 5, 4),
(14, 104, 8, 4),
(15, 106, 1, 1),
(16, 106, 2, 1),
(17, 106, 3, 1),
(18, 106, 6, 1),
(19, 106, 7, 1),
(20, 107, 2, 4),
(21, 107, 4, 4),
(22, 107, 5, 4),
(23, 107, 8, 4),
(24, 108, 1, 1),
(25, 108, 2, 1),
(26, 109, 1, 1),
(27, 109, 2, 1),
(28, 110, 1, 1),
(29, 110, 2, 1),
(30, 111, 1, 1),
(31, 111, 2, 1),
(32, 112, 1, 1),
(33, 112, 2, 1),
(34, 113, 2, 1),
(35, 114, 1, 1),
(36, 114, 2, 1),
(37, 115, 1, 1),
(38, 115, 2, 1),
(39, 116, 3, 1),
(40, 116, 6, 1),
(41, 116, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(50) NOT NULL,
  `voornaam` varchar(200) NOT NULL,
  `familienaam` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `wachtwoord` varchar(200) NOT NULL,
  `registratie_datum` datetime NOT NULL,
  `bestel_status` tinyint(1) NOT NULL DEFAULT '0',
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `email_hash` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `voornaam`, `familienaam`, `email`, `wachtwoord`, `registratie_datum`, `bestel_status`, `verified`, `email_hash`) VALUES
(5, 'Rudyard', 'Kipling', 'kipling@mail.ru', '$2y$10$5I.Zi9UsP9tXskJLlUBoUuwiyfsiXmXjv/RbWBM8ppK/04AIeP/p2', '2015-05-25 01:51:48', 0, 0, '3f5ba9938e0a78d5ccb1cca994dc2202'),
(8, 'Ruslan', 'Valiev', 'rvaliev22@gmail.com', '$2y$10$6gR4SMu5SDNiGutbUNJjLuKwZO8rryvT7FumHQ/wZHtdr5.4VsJma', '2015-05-25 03:25:05', 0, 1, '49643b35b31417adc0ec20fce5093122'),
(9, 'Leo', 'Tolstoy', 'tolstoy@gmail.com', '$2y$10$Ptg2QV8LvYIpemM7x8PnQ.Qcc3dNUoc0ayl4kA25PPxyzCU8UKDnu', '2015-05-26 15:44:48', 0, 1, '0fd990630fc39ae66e8c0a197e692bfa'),
(14, 'Mark', 'Twain', 'twain@mail.com', '$2y$10$pF5BU2utMmWzlbHG2NNUfebYdwdSlt324jAii3UtR9bMEGdRyphY.', '2015-05-27 09:31:37', 0, 0, 'e76164d55be73438322480eb143fe16c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beleg`
--
ALTER TABLE `beleg`
  ADD PRIMARY KEY (`beleg_id`),
  ADD KEY `beleg_id` (`beleg_id`);

--
-- Indexes for table `bestelling`
--
ALTER TABLE `bestelling`
  ADD PRIMARY KEY (`bestelling_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `bestel_regel`
--
ALTER TABLE `bestel_regel`
  ADD PRIMARY KEY (`bestel_regel_id`),
  ADD KEY `bestelling_id` (`bestelling_id`);

--
-- Indexes for table `brood`
--
ALTER TABLE `brood`
  ADD PRIMARY KEY (`brood_id`),
  ADD KEY `brood_id` (`brood_id`);

--
-- Indexes for table `broodje_samenstelling`
--
ALTER TABLE `broodje_samenstelling`
  ADD PRIMARY KEY (`samenstelling_id`),
  ADD KEY `bestel_regel_id` (`bestel_regel_id`),
  ADD KEY `beleg_id` (`beleg_id`),
  ADD KEY `brood_id` (`brood_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beleg`
--
ALTER TABLE `beleg`
  MODIFY `beleg_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `bestelling`
--
ALTER TABLE `bestelling`
  MODIFY `bestelling_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `bestel_regel`
--
ALTER TABLE `bestel_regel`
  MODIFY `bestel_regel_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `brood`
--
ALTER TABLE `brood`
  MODIFY `brood_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `broodje_samenstelling`
--
ALTER TABLE `broodje_samenstelling`
  MODIFY `samenstelling_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bestelling`
--
ALTER TABLE `bestelling`
  ADD CONSTRAINT `bestelling_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `bestel_regel`
--
ALTER TABLE `bestel_regel`
  ADD CONSTRAINT `bestel_regel_ibfk_1` FOREIGN KEY (`bestelling_id`) REFERENCES `bestelling` (`bestelling_id`);

--
-- Constraints for table `broodje_samenstelling`
--
ALTER TABLE `broodje_samenstelling`
  ADD CONSTRAINT `broodje_samenstelling_ibfk_1` FOREIGN KEY (`bestel_regel_id`) REFERENCES `bestel_regel` (`bestel_regel_id`),
  ADD CONSTRAINT `broodje_samenstelling_ibfk_2` FOREIGN KEY (`brood_id`) REFERENCES `brood` (`brood_id`),
  ADD CONSTRAINT `broodje_samenstelling_ibfk_3` FOREIGN KEY (`beleg_id`) REFERENCES `beleg` (`beleg_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
