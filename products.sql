-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2021 at 07:11 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pro_name` varchar(50) NOT NULL,
  `pro_price` int(11) NOT NULL,
  `pro_dec` varchar(100) NOT NULL,
  `pro_img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `username`, `pro_name`, `pro_price`, `pro_dec`, `pro_img`) VALUES
(10, '1@gmail.com', 'Rice', 65, ' Minicat', 'products/download.jpg'),
(11, '1@gmail.com', 'Potato', 32, ' Gole Alu', 'products/download (1).jpg'),
(12, '2@gmail.com', 'Oil', 150, ' Soyabin', 'products/Sunflower-oil-b79e8f8.jpg'),
(13, '2@gmail.com', 'Potato', 32, ' Gol alu', 'products/download (1).jpg'),
(14, '3@gmail.com', 'Rice', 65, ' Basmoti', 'products/download.jpg'),
(15, '3@gmail.com', 'Onion', 45, ' Misori', 'products/download (2).jpg'),
(16, '4@gmail.com', 'Oil', 150, ' Soyabin', 'products/Sunflower-oil-b79e8f8.jpg'),
(17, '4@gmail.com', 'Onion', 65, ' Indian', 'products/download (2).jpg'),
(18, '5@gmail.com', 'Rice', 65, ' basmoit', 'products/download.jpg'),
(19, '5@gmail.com', 'Potato', 32, ' Indian', 'products/download (1).jpg'),
(20, '6@gmail.com', 'Oil', 150, ' Sarisa', 'products/Sunflower-oil-b79e8f8.jpg'),
(21, '6@gmail.com', 'Potato', 32, ' Indian', 'products/download (1).jpg'),
(22, '7@gmail.com', 'Rice', 50, ' 28', 'products/download.jpg'),
(23, '7@gmail.com', 'Onion', 45, ' Deshi', 'products/download (2).jpg'),
(24, '8@gmail.com', 'Oil', 150, ' sarisha', 'products/Sunflower-oil-b79e8f8.jpg'),
(25, '8@gmail.com', 'Onion', 50, ' Misori', 'products/download (2).jpg'),
(26, '9@gmail.com', 'Rice', 65, ' Basmoti', 'products/download.jpg'),
(27, '9@gmail.com', 'Potato', 32, ' Indian', 'products/download (1).jpg'),
(28, '10@gmail.com', 'Oil', 165, ' Super SOya', 'products/Sunflower-oil-b79e8f8.jpg'),
(29, '10@gmail.com', 'Potato', 32, 'Diamond', 'products/download (1).jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
