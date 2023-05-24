-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2023 at 10:28 AM
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
-- Database: `db_join`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `code`, `name`, `slug`, `description`, `status`, `photo`) VALUES
(1, 1, 'code1', 'Category 1', 'category-1', 'Description 1', 'Active', 'photo1.jpg'),
(2, 1, 'code2', 'Category 2', 'category-2', 'Description 2', 'Active', 'photo2.jpg'),
(3, 2, 'code3', 'Category 3', 'category-3', 'Description 3', 'Inactive', 'photo3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `user_id`, `code`, `name`, `slug`, `description`, `photo`, `qty`, `unit`, `price`, `status`) VALUES
(1, 1, 1, 'code1', 'Product 1', 'product-1', 'Description 1', 'photo1.jpg', 10, 'pcs', 100.00, 'Active'),
(2, 1, 2, 'code2', 'Product 2', 'product-2', 'Description 2', 'photo2.jpg', 5, 'pcs', 200.00, 'Active'),
(3, 2, 1, 'code3', 'Product 3', 'product-3', 'Description 3', 'photo3.jpg', 8, 'pcs', 150.00, 'Inactive'),
(4, 2, 3, 'code4', 'Product 4', 'product-4', 'Description 4', 'photo4.jpg', 12, 'pcs', 120.00, 'Active'),
(5, 3, 1, 'code5', 'Product 5', 'product-5', 'Description 5', 'photo5.jpg', 6, 'pcs', 180.00, 'Active'),
(6, 1, 2, 'code6', 'Product 6', 'product-6', 'Description 6', 'photo6.jpg', 3, 'pcs', 250.00, 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `address`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'user1@example.com', 'User 1', 'password1', 'Address 1', 'Role 1', 'Active', '2023-05-24 08:23:19', '2023-05-24 08:23:19'),
(2, 'user2@example.com', 'User 2', 'password2', 'Address 2', 'Role 2', 'Active', '2023-05-24 08:23:19', '2023-05-24 08:23:19'),
(3, 'user3@example.com', 'User 3', 'password3', 'Address 3', 'Role 1', 'Inactive', '2023-05-24 08:23:19', '2023-05-24 08:23:19'),
(4, 'user4@example.com', 'User 4', 'password4', 'Address 4', 'Role 2', 'Inactive', '2023-05-24 08:23:19', '2023-05-24 08:23:19'),
(5, 'user5@example.com', 'User 5', 'password5', 'Address 5', 'Role 1', 'Active', '2023-05-24 08:23:19', '2023-05-24 08:23:19'),
(6, 'user6@example.com', 'User 6', 'password6', 'Address 6', 'Role 2', 'Active', '2023-05-24 08:23:19', '2023-05-24 08:23:19'),
(7, 'user7@example.com', 'User 7', 'password7', 'Address 7', 'Role 1', 'Inactive', '2023-05-24 08:23:19', '2023-05-24 08:23:19'),
(8, 'user8@example.com', 'User 8', 'password8', 'Address 8', 'Role 2', 'Active', '2023-05-24 08:23:19', '2023-05-24 08:23:19'),
(9, 'user9@example.com', 'User 9', 'password9', 'Address 9', 'Role 1', 'Active', '2023-05-24 08:23:19', '2023-05-24 08:23:19'),
(10, 'user10@example.com', 'User 10', 'password10', 'Address 10', 'Role 2', 'Inactive', '2023-05-24 08:23:19', '2023-05-24 08:23:19'),
(11, 'user11@example.com', 'User 11', 'password11', 'Address 11', 'Role 1', 'Active', '2023-05-24 08:23:19', '2023-05-24 08:23:19'),
(12, 'user12@example.com', 'User 12', 'password12', 'Address 12', 'Role 2', 'Active', '2023-05-24 08:23:19', '2023-05-24 08:23:19'),
(13, 'user13@example.com', 'User 13', 'password13', 'Address 13', 'Role 1', 'Inactive', '2023-05-24 08:23:19', '2023-05-24 08:23:19'),
(14, 'user14@example.com', 'User 14', 'password14', 'Address 14', 'Role 2', 'Active', '2023-05-24 08:23:19', '2023-05-24 08:23:19'),
(15, 'user15@example.com', 'User 15', 'password15', 'Address 15', 'Role 1', 'Active', '2023-05-24 08:23:19', '2023-05-24 08:23:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
