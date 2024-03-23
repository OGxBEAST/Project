-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 21, 2024 at 09:24 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zerowaste`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

DROP TABLE IF EXISTS `buyers`;
CREATE TABLE IF NOT EXISTS `buyers` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(150) NOT NULL,
  `user_name` varchar(150) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `password` varchar(150) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `reset_code` varchar(16) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`user_id`, `email`, `user_name`, `phone_number`, `password`, `created_at`, `reset_code`) VALUES
(1, 'manishsjc12@gmail.com', 'Manish', '0774338308', '123', '2024-03-14 03:53:56', '204799'),
(2, 'ayani123@gmail.com', 'ayani', '0774338308', '123', '2024-03-14 05:36:56', ''),
(4, 'singhesinghe123@gmail.com', 'singhe', '+94761683094', '123', '2024-03-17 12:30:26', '');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
CREATE TABLE IF NOT EXISTS `chats` (
  `chat_id` int NOT NULL AUTO_INCREMENT,
  `from_id` int NOT NULL,
  `to_id` int NOT NULL,
  `message` text NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`chat_id`, `from_id`, `to_id`, `message`, `opened`, `created_at`) VALUES
(6, 3, 2, 'h', 1, '2024-03-07 08:28:54'),
(8, 3, 2, 'gjkg\n', 1, '2024-03-07 08:48:25'),
(9, 2, 3, 'jyfhychyyhfc', 1, '2024-03-07 08:48:29'),
(10, 3, 2, 'jhgjgb', 1, '2024-03-07 08:48:33'),
(11, 4, 3, 'hi', 1, '2024-03-13 22:11:31'),
(12, 4, 3, 'hey', 1, '2024-03-13 23:19:06'),
(13, 4, 3, 'hello', 1, '2024-03-13 23:51:29'),
(26, 4, 2, 'hi', 1, '2024-03-21 05:30:56'),
(27, 5, 6, 'hi', 1, '2024-03-21 05:34:46'),
(30, 2, 4, 'hi', 1, '2024-03-21 05:46:05'),
(39, 4, 2, 'hi', 1, '2024-03-21 06:12:01'),
(40, 6, 2, 'hi', 1, '2024-03-21 06:25:18'),
(41, 4, 5, 'hi', 1, '2024-03-21 06:29:00'),
(42, 2, 2, 'hi', 1, '2024-03-21 06:33:57'),
(43, 5, 5, 'hi', 1, '2024-03-21 06:34:10'),
(44, 5, 5, 'hi', 1, '2024-03-21 06:46:11'),
(45, 5, 5, 'hi', 1, '2024-03-21 06:46:16'),
(46, 5, 5, 'hi', 1, '2024-03-21 06:48:27'),
(47, 5, 5, 'hi', 1, '2024-03-21 06:48:33'),
(48, 2, 4, 'hi', 0, '2024-03-21 07:02:20'),
(49, 2, 2, 'hi', 1, '2024-03-21 07:04:16'),
(50, 5, 5, 'hi', 1, '2024-03-21 07:13:47'),
(51, 5, 6, 'hi', 0, '2024-03-21 07:14:20'),
(52, 5, 5, 'ho', 1, '2024-03-21 07:25:10'),
(53, 5, 5, 'hi', 1, '2024-03-21 07:27:00'),
(54, 5, 5, 'hi', 1, '2024-03-21 07:40:04'),
(55, 5, 5, 'hello', 1, '2024-03-21 07:40:43'),
(56, 1, 5, 'hi', 0, '2024-03-21 08:20:56'),
(57, 1, 5, 'hi', 0, '2024-03-21 08:21:11'),
(58, 4, 5, 'hi', 1, '2024-03-21 08:24:50'),
(59, 5, 4, 'hi', 1, '2024-03-21 08:25:03'),
(60, 5, 4, 'hi', 1, '2024-03-21 08:33:40'),
(61, 4, 5, 'hi', 1, '2024-03-21 08:34:25'),
(62, 5, 4, 'how about kilos', 1, '2024-03-21 08:34:37'),
(63, 4, 5, 'good', 1, '2024-03-21 08:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

DROP TABLE IF EXISTS `chat_messages`;
CREATE TABLE IF NOT EXISTS `chat_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `message` text NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
CREATE TABLE IF NOT EXISTS `conversations` (
  `conversation_id` int NOT NULL AUTO_INCREMENT,
  `user_1` int NOT NULL,
  `user_2` int NOT NULL,
  PRIMARY KEY (`conversation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`conversation_id`, `user_1`, `user_2`) VALUES
(1, 2, 1),
(2, 3, 2),
(3, 4, 3),
(5, 2, 4),
(6, 5, 6),
(8, 2, 2),
(9, 5, 5),
(10, 1, 5),
(11, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

DROP TABLE IF EXISTS `donations`;
CREATE TABLE IF NOT EXISTS `donations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `weight` decimal(10,2) NOT NULL,
  `category` varchar(50) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `seller_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `seller_id` (`seller_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `name`, `weight`, `category`, `image`, `seller_id`, `created_at`) VALUES
(1, 'All Food Waste', '150.00', 'food', 'https://th.bing.com/th/id/OIP.c8Fulqt59ihSk13D4cWwkwHaE8?rs=1&pid=ImgDetMain', 2, '2024-02-21 03:06:02'),
(2, 'All Food Waste', '150.00', 'food', 'https://th.bing.com/th/id/OIP.c8Fulqt59ihSk13D4cWwkwHaE8?rs=1&pid=ImgDetMain', 2, '2024-02-21 03:08:05'),
(3, 'All Food Waste', '150.00', 'food', 'https://th.bing.com/th/id/OIP.c8Fulqt59ihSk13D4cWwkwHaE8?rs=1&pid=ImgDetMain', 2, '2024-02-21 03:09:43'),
(4, 'All Food Waste', '150.00', 'food', 'https://th.bing.com/th/id/OIP.c8Fulqt59ihSk13D4cWwkwHaE8?rs=1&pid=ImgDetMain', 2, '2024-02-21 03:12:08'),
(5, 'All Food Waste', '150.00', 'food', 'https://th.bing.com/th/id/OIP.c8Fulqt59ihSk13D4cWwkwHaE8?rs=1&pid=ImgDetMain', 2, '2024-02-21 03:12:32'),
(6, 'All Food Waste', '150.00', 'food', 'https://th.bing.com/th/id/OIP.c8Fulqt59ihSk13D4cWwkwHaE8?rs=1&pid=ImgDetMain', 2, '2024-02-21 03:13:47'),
(7, 'All Food Waste', '150.00', 'food', 'https://th.bing.com/th/id/OIP.c8Fulqt59ihSk13D4cWwkwHaE8?rs=1&pid=ImgDetMain', 2, '2024-02-21 14:03:53'),
(8, 'waste', '1.00', 'food', '', 2, '2024-02-29 12:53:41'),
(9, 'waste', '1.00', 'food', 'https://th.bing.com/th/id/OIP.c8Fulqt59ihSk13D4cWwkwHaE8?rs=1&pid=ImgDetMain', 2, '2024-02-29 12:53:53'),
(10, 'waste', '1.00', 'food', 'https://th.bing.com/th/id/OIP.c8Fulqt59ihSk13D4cWwkwHaE8?rs=1&pid=ImgDetMain', 2, '2024-03-01 16:06:34'),
(11, 'waste', '1.00', 'food', 'https://th.bing.com/th/id/OIP.c8Fulqt59ihSk13D4cWwkwHaE8?rs=1&pid=ImgDetMain', 2, '2024-03-01 17:18:07'),
(12, 'waste', '1.00', 'food', 'https://th.bing.com/th/id/OIP.c8Fulqt59ihSk13D4cWwkwHaE8?rs=1&pid=ImgDetMain', 2, '2024-03-01 17:18:38'),
(13, 'waste', '1.00', 'food', 'https://th.bing.com/th/id/OIP.c8Fulqt59ihSk13D4cWwkwHaE8?rs=1&pid=ImgDetMain', 2, '2024-03-01 17:22:18'),
(14, 'waste', '1.00', 'waste', 'https://th.bing.com/th/id/OIP.c8Fulqt59ihSk13D4cWwkwHaE8?rs=1&pid=ImgDetMain', 2, '2024-03-01 18:26:16'),
(15, 'waste', '100000.00', 'waste', 'https://th.bing.com/th/id/OIP.c8Fulqt59ihSk13D4cWwkwHaE8?rs=1&pid=ImgDetMain', 2, '2024-03-01 18:26:43');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rating` int NOT NULL,
  `improvements` text,
  `suggestions` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `rating`, `improvements`, `suggestions`, `created_at`) VALUES
(1, 1, 'Transparency', 'Good', '2024-02-22 03:08:23'),
(2, 2, 'Overall Service', 'Good', '2024-02-22 03:11:23'),
(3, 1, 'Overall Service', 'Good', '2024-02-22 03:14:33'),
(4, 1, 'Transparency', 'very good excellent condition', '2024-03-02 04:01:25'),
(5, 5, '', '', '2024-03-02 04:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `weight` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(1, 'Noodles', '250.00', 'https://th.bing.com/th/id/R.0b7129d20ac9acfed54004acfb7a1c9f?rik=15jQ%2bYsfVztnpA&pid=ImgRaw&r=0'),
(2, 'Rice and Curry', '200.00', 'rice_and_curry.jpg'),
(3, 'Sandwich', '150.00', 'sandwich.jpg'),
(4, 'Burger', '300.00', 'burger.jpg'),
(5, 'Pizza', '200.00', 'pizza.jpg'),
(6, 'Fish Roll', '100.00', 'fish_roll.jpg'),
(7, 'Chicken Kottu', '450.00', 'chicken_kottu.jpg'),
(8, 'Noodles', '250.00', 'noodles.jpg'),
(9, 'Rice and Curry', '200.00', 'rice_and_curry.jpg'),
(10, 'Sandwich', '150.00', 'sandwich.jpg'),
(11, 'Burger', '300.00', 'burger.jpg'),
(12, 'Pizza', '200.00', 'pizza.jpg'),
(13, 'Fish Roll', '100.00', 'fish_roll.jpg'),
(14, 'Chicken Kottu', '450.00', 'chicken_kottu.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;
CREATE TABLE IF NOT EXISTS `sellers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `seller_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `business_type` enum('Restaurant','Hotel','Grocery Stores','House/Resident') NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `email`, `seller_name`, `phone_number`, `address`, `password`, `business_type`, `created_at`) VALUES
(3, 'singhesinghe123@gmail.com', 'Singhe', '+94761683094', 'colombo', '123', 'Restaurant', '2024-03-17 12:36:24'),
(5, 'manishsjc12@gmail.com', 'Manishs', '0774338308', '123dhhgmd', '123', 'Restaurant', '2024-03-14 03:58:42'),
(6, 'Nimesha@gmail.com', 'Nimesha', '077777777', 'Kandy', '123', 'Restaurant', '2024-03-21 01:37:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `p_p` varchar(255) DEFAULT 'user-default.png',
  `last_seen` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `username`, `password`, `p_p`, `last_seen`) VALUES
(2, 'Ayani', '2', '$2y$10$JIC3ey2/ZeAtiNwGOFPoGuAcKyA2NZUOrIDxZxhM8KdUuQgYKzzU2', 'user-default.png', '2024-03-21 08:34:40'),
(3, 'Singhe', '3', '$2y$10$JIC3ey2/ZeAtiNwGOFPoGuAcKyA2NZUOrIDxZxhM8KdUuQgYKzzU2', 'https://th.bing.com/th/id/OIP.leRaZskYpTKA55a0St0tZgHaJa?rs=1&pid=ImgDetMain', '2024-03-21 06:41:45'),
(4, 'singhe', '4', '$2y$10$JIC3ey2/ZeAtiNwGOFPoGuAcKyA2NZUOrIDxZxhM8KdUuQgYKzzU2', 'user-default.png', '2024-03-18 16:20:25'),
(5, 'Manish', '5', '$2y$10$JIC3ey2/ZeAtiNwGOFPoGuAcKyA2NZUOrIDxZxhM8KdUuQgYKzzU2', 'user-default.png', '2024-03-21 14:53:55'),
(6, 'Nimesha', '6', '$2y$10$JIC3ey2/ZeAtiNwGOFPoGuAcKyA2NZUOrIDxZxhM8KdUuQgYKzzU2', 'https://th.bing.com/th/id/OIP.leRaZskYpTKA55a0St0tZgHaJa?rs=1&pid=ImgDetMain', '2024-03-21 06:41:45');

-- --------------------------------------------------------

--
-- Table structure for table `waste`
--

DROP TABLE IF EXISTS `waste`;
CREATE TABLE IF NOT EXISTS `waste` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `weight` decimal(10,2) NOT NULL,
  `price` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'donated',
  `image` varchar(255) DEFAULT NULL,
  `category` enum('food','waste') NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `contact` varchar(50) DEFAULT NULL,
  `address` text,
  `ratings` decimal(3,2) DEFAULT NULL,
  `seller_id` int NOT NULL,
  `is_donation` varchar(6) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `seller_id` (`seller_id`)
) ENGINE=MyISAM AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `waste`
--

INSERT INTO `waste` (`id`, `name`, `weight`, `price`, `image`, `category`, `created_at`, `contact`, `address`, `ratings`, `seller_id`, `is_donation`) VALUES
(253, 'Expired Canned Goods', '90.00', '120', 'path-to-canned-goods-image.jpg', 'food', '2024-03-20 23:54:18', '+94771234569', '789 Supermarket Shelf Road', '4.30', 3, '1'),
(252, 'Some Waste', '106.00', '100', 'path-to-waste-image.jpg', 'waste', '2024-03-20 23:54:18', NULL, NULL, NULL, 5, '0'),
(251, 'Organic Apple Waste', '185.00', '100', 'path-to-apple-image.jpg', 'food', '2024-03-20 23:54:18', '+94771234567', '123 Orchard Lane', '4.50', 5, '1'),
(250, 'Expired Canned Goods', '90.00', '120', 'path-to-canned-goods-image.jpg', 'food', '2024-03-20 23:54:18', '+94771234569', '789 Supermarket Shelf Road', '4.30', 3, '1'),
(249, 'Some Waste', '106.00', '100', 'path-to-waste-image.jpg', 'waste', '2024-03-20 23:54:18', NULL, NULL, NULL, 5, '0'),
(248, 'Organic Apple Waste', '185.00', '100', 'path-to-apple-image.jpg', 'food', '2024-03-20 23:54:18', '+94771234567', '123 Orchard Lane', '4.50', 6, '1'),
(246, 'Some Waste', '106.00', '100', 'path-to-waste-image.jpg', 'waste', '2024-03-20 23:54:18', NULL, NULL, NULL, 2, '0');

-- --------------------------------------------------------

--
-- Table structure for table `waste_factories`
--

DROP TABLE IF EXISTS `waste_factories`;
CREATE TABLE IF NOT EXISTS `waste_factories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `details` text,
  `image` varchar(255) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `efficiency` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `waste_factories`
--

INSERT INTO `waste_factories` (`id`, `name`, `details`, `image`, `contact`, `efficiency`) VALUES
(1, 'EcoCycle Compost Solution', 'Comprehensive composting solutions for organic waste.', 'https://th.bing.com/th/id/OIP.yqKvhTECNI3ig7mCLhQFpAHaD2?rs=1&pid=ImgDetMain', '+94 76 279 5612', 80),
(2, 'EcoCycle Compost Solution', 'Comprehensive composting solutions for organic waste.', 'https://149539057.v2.pressablecdn.com/wp-content/uploads/2023/03/Industrial-Waste.jpeg', '+94 76 279 5612', 80),
(3, 'GreenEarth Recycling', 'Recycling services focused on sustainability and reusability.', 'https://th.bing.com/th/id/OIP.2FpaQELnzYB4FL3xHukA6AHaE_?rs=1&pid=ImgDetMain', '+94 77 123 4567', 75);

-- --------------------------------------------------------

--
-- Table structure for table `waste_providers`
--

DROP TABLE IF EXISTS `waste_providers`;
CREATE TABLE IF NOT EXISTS `waste_providers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `efficiency` int DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `details` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
