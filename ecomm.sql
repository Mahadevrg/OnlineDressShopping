-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2023 at 08:38 AM
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
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(23, 13, 39, 1),
(28, 12, 30, 1),
(29, 31, 30, 1),
(30, 31, 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Men', 'Mens'),
(2, 'Women', 'Womens'),
(3, 'Boys', 'Boys'),
(5, 'Girls', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5),
(21, 11, 30, 1),
(22, 12, 43, 1),
(23, 13, 37, 1),
(24, 14, 36, 1),
(25, 15, 36, 1),
(26, 16, 57, 5),
(27, 17, 39, 1),
(28, 18, 31, 1),
(29, 19, 34, 1),
(30, 20, 30, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` decimal(11,0) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(6, 1, 'blackjeans', '', 'blackjeans', 450, 'blackjeans_1694196741.jpeg', '2023-09-08', 1),
(30, 1, 'Blue Jeans', '', 'blue-jeans', 400, 'blue-jeans_1694196752.jpeg', '2023-09-13', 2),
(31, 1, 'Blue Shirt', '', 'blue-shirt', 350, 'blue-shirt_1694196763.jpg', '2023-09-10', 1),
(32, 1, 'Men Grey Pant', '', 'men-grey-pant', 500, 'men-grey-pant_1694199124.jpeg', '2023-09-13', 1),
(33, 1, 'Checks Shirt', '', 'checks-shirt', 400, 'checks-shirt_1694199066.jpeg', '0000-00-00', 0),
(34, 2, 'Women Pink Dress', '', 'women-pink-dress', 600, 'women-pink-dress_1694199210.jpeg', '2023-09-10', 1),
(35, 2, 'Women White Dress', '', 'women-white-dress', 700, 'women-white-dress_1694199249.jpeg', '2023-09-11', 1),
(36, 2, 'Women Red Dress', '', 'women-red-dress', 550, 'women-red-dress_1694199230.jpeg', '2023-09-10', 1),
(38, 1, 'Men Skyblue Shirt', '', 'men-skyblue-shirt', 450, 'men-skyblue-shirt_1694199152.jpeg', '0000-00-00', 0),
(39, 2, 'Women White Top', '', 'women-white-top', 600, 'women-white-top_1694199269.jpeg', '2023-09-11', 1),
(40, 2, 'Shoulder Dress in Pink', '', 'shoulder-dress-pink', 600, 'shoulder-dress-pink_1694199187.jpeg', '0000-00-00', 0),
(41, 2, 'Embroidery Work Satin Silk Saree', '', 'embroidery-work-satin-silk-saree', 750, 'embroidery-work-satin-silk-saree_1694199093.jpeg', '0000-00-00', 0),
(42, 2, 'Blue Wedding Bridal', '', 'blue-wedding-bridal', 600, 'blue-wedding-bridal_1694196785.jpeg', '0000-00-00', 0),
(43, 2, 'Womens Classic Fit Top', '', 'womens-classic-fit-top', 300, 'womens-classic-fit-top_1694199292.jpeg', '2023-09-08', 1),
(45, 3, 'Boys Blue Kurta', '', 'boys-blue-kurta', 200, 'boys-blue-kurta_1694198937.jpg', '0000-00-00', 0),
(46, 3, 'Boys New Kurta', '', 'boys-new-kurta', 350, 'boys-new-kurta_1694198952.jpg', '2023-09-11', 1),
(47, 3, 'Boys White Shirt', '', 'boys-white-shirt', 300, 'boys-white-shirt_1694198992.jpg', '0000-00-00', 0),
(48, 3, 'Boys Red Tshirt', '', 'boys-red-tshirt', 200, 'boys-red-tshirt_1694198977.jpg', '0000-00-00', 0),
(49, 3, 'Boys Printed Tshirt', '', 'boys-printed-tshirt', 150, 'boys-printed-tshirt_1694198966.jpg', '0000-00-00', 0),
(50, 5, 'Girls White Dress', '', 'girls-white-dress', 400, 'girls-white-dress_1694199448.jpg', '0000-00-00', 0),
(51, 5, 'Girls Pink Dress', '', 'girls-pink-dress', 340, 'girls-pink-dress_1694199412.jpg', '0000-00-00', 0),
(52, 5, 'Girls Blue Dress', '', 'girls-blue-dress', 350, 'girls-blue-dress_1694199399.jpg', '0000-00-00', 0),
(53, 5, 'Girls Black Dress', '', 'girls-black-dress', 400, 'girls-black-dress_1694199374.jpg', '0000-00-00', 0),
(54, 5, 'Girls Red Dress', '', 'girls-red-dress', 250, 'girls-red-dress_1694199427.jpg', '0000-00-00', 0),
(56, 1, 'Men Black Tshirt', '', 'men-black-tshirt', 300, 'men-black-tshirt.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2023-08-28'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2023-08-10'),
(17, 12, 'PAYID-MT62KBY3AX90682725158429', '2023-09-10'),
(18, 12, 'PAYID-MT62KPI4R221228BV6276627', '2023-09-10'),
(19, 12, 'PAYID-MT62K2I1X633265Y7973960G', '2023-09-10'),
(20, 12, 'PAYID-MT7VFZA97S944547K412815H', '2023-09-11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$UHCStba/3rMSd/mc5ARpq.d4VZf2qhFuH.XVeAf6XEJr4htpoyWG2', 1, 'Admin', '1', '', '', '1.jpeg', 1, '', '', '2023-08-28'),
(9, 'abhishekbadavagol@gmail.com', '$2y$10$Mbabtv7RjxfXTdNy0MTtWOdvunDT1BASgs/n./fqntj99PVcda36K', 0, 'Abhishek', 'Badavagol', 'Jamkhandi', '6363501148', 'IMG_20210406_101920.jpg', 1, 'k8FBpynQfqsv', 'F46vgqZlNL1fUzK', '2023-08-29'),
(12, 'suraj@gmai.com', '$2y$10$G/i3.XuI7mnHyj3W8wYGaO09KxnFl8wl1zEpFidKbEe4dzeqjqDuK', 0, 'suraj', 'anntpur', 'Jamkhandi', '6363501148', 'IMG_4723.jpg', 1, '', 'QnUmEl8X3fCB4RY', '2023-08-29'),
(17, 'praveenks3299@gmail.com', '$2y$10$wuHU2AwCbJnTw897bhE29eG.oOclcZeqjQUhhwXEkbuJ3836KPFuG', 0, 'praveen', 'ks', '', '', '', 1, 'BqZyaRMbr2zW', '', '2023-09-12'),
(20, 'malipraveen777@gmail.com', '$2y$10$nefSncP0CL7d5KLMVjdide236j73yOn03T6BwBW1AOC4NSwyZtlpq', 0, 'praveen', 'mali', '', '', '', 1, 'uF8JVqDTesYK', '', '2023-09-12'),
(24, 'rahul@gmail.com', '$2y$10$gK0dsi5WKFTRQXM6JqDAhO3t8bWTdjdaIUMH/ZeGz/Cn305vTc6DG', 0, 'Rahul', 'Jain', 'BLDEA college, Jamkhandi', '9845476889', 'IMG_20210406_101920.jpg', 1, '', '', '2023-09-13'),
(28, 'maddymahadev@gmail.com', '$2y$10$m/AfADfmgi/JixoBRA0m6OmubdcOjx2ePclwiorV3.uC3qtpZhynK', 0, 'Mahadev', 'Gubachi', '', '', '', 1, '', '', '2023-09-13'),
(31, 'chivatejai@gmail.com', '$2y$10$LZf0uDA9GGLS7hHVG4XUcO/njvw9diGplIfZxha8SwK31s2yKY4La', 0, 'Jaikumar', 'Chivate', '', '', '', 1, '', '', '2023-09-13'),
(34, 'sudeep@gmail.com', '$2y$10$b7hck3N29YOfpb5pyCjh4enWALU.u4yNwqDu4qt0tqueduoqQzW62', 0, 'sudeep', 'janavad', '', '', '', 1, '', '', '2023-09-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
