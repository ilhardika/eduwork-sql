-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2023 at 05:45 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_eduwork`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `Nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `Telepon` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `Alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Nama`, `Telepon`, `Alamat`) VALUES
('William Johnson', '1111111111', '890 Maple Ave'),
('Sophia Anderson', '2222222222', '567 Oak St'),
('James Wilson', '3333333333', '432 Pine Rd'),
('Emma Martinez', '4444444444', '765 Cedar Ln'),
('Alexander Davis', '5555555555', '321 Elm Blvd'),
('Ava Garcia', '6666666666', '678 Birch Ave'),
('Benjamin Smith', '7777777777', '123 Oak St'),
('Mia Miller', '8888888888', '456 Pine Rd'),
('Daniel Johnson', '9999999999', '789 Maple Ave'),
('Charlotte Anderson', '1234567890', '234 Cedar Ln'),
('Jacob Wilson', '9876543210', '567 Elm Blvd'),
('Olivia Martinez', '8765432109', '890 Birch Ave'),
('Liam Davis', '7654321098', '901 Oak St'),
('Isabella Garcia', '6543210987', '234 Pine Rd'),
('Ethan Smith', '5432109876', '567 Maple Ave'),
('Amelia Miller', '4321098765', '890 Cedar Ln'),
('Michael Johnson', '3210987654', '123 Elm Blvd'),
('Sophia Anderson', '2109876543', '456 Birch Ave'),
('William Wilson', '1098765432', '789 Oak St'),
('Emma Martinez', '0987654321', '901 Pine Rd'),
('Alexander Davis', '9876543210', '234 Maple Ave'),
('Ava Garcia', '8765432109', '567 Cedar Ln'),
('Benjamin Smith', '7654321098', '890 Elm Blvd'),
('Mia Miller', '6543210987', '123 Birch Ave'),
('Daniel Johnson', '5432109876', '456 Oak St');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
