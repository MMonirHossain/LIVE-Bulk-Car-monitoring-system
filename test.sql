-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2021 at 07:12 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `fullname` varchar(50) NOT NULL,
  `nidno` varchar(20) NOT NULL,
  `nidphoto` varchar(50) NOT NULL,
  `shopname` varchar(80) NOT NULL,
  `shoplicenceno` varchar(50) NOT NULL,
  `licencephoto` varchar(50) NOT NULL,
  `address` varchar(80) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `sl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`fullname`, `nidno`, `nidphoto`, `shopname`, `shoplicenceno`, `licencephoto`, `address`, `latitude`, `longitude`, `username`, `password`, `sl`) VALUES
('Monir', '1010', 'nidimage/1010.JPG', '10', '1010', 'licenceimage/Capture1.JPG', 'Joydebpur', 23.9994, 90.4199, '10@gmail.com', '12345', 18),
('Monir', '1111', 'nidimage/footer.JPG', '1', '1111', 'licenceimage/footer.JPG', 'Matlab', 24.003784, 90.4106324, '1@gmail.com', '12345', 10),
('Monir', '2222', 'nidimage/footer.JPG', '2', '2222', 'licenceimage/footer.JPG', 'Shimultoly', 24.029, 90.4152, '2@gmail.com', '12345', 2),
('Monir', '3333', '1.jpg', '3', '3333', '3000.jpg', 'Gazipur', 24.0294, 90.4153, '3@gmail.com', '12345', 1),
('Monir', '4444', 'nidimage/4444.JPG', '4', '4444', 'licenceimage/Capture1.JPG', 'Shimultoly Road', 24.0262, 90.4146, '4@gmail.com', '12345', 12),
('Monir', '5555', 'nidimage/5555.JPG', '5', '5555', 'licenceimage/Writing_Format.JPG', 'Shimultoly Road', 24.0262, 90.4146, '5@gmail.com', '12345', 13),
('Monir', '6666', 'nidimage/6666.JPG', '6', '6666', 'licenceimage/Capture1.JPG', 'BMTF', 24.025, 90.42, '6@gmail.com', '12345', 14),
('Monir', '7777', 'nidimage/7777.JPG', '7', '7777', 'licenceimage/Capture1.JPG', 'DUET', 24.0208, 90.4182, '7@gmail.com', '12345', 15),
('Monir', '8888', 'nidimage/8888.JPG', '8', '8888', 'licenceimage/Capture1.JPG', 'Majirkhola', 24.0162, 90.4163, '8@gmail.com', '12345', 16),
('Monir', '9999', 'nidimage/9999.JPG', '9', '9999', 'licenceimage/Capture1.JPG', 'RailCrossing', 24.0099, 90.4152, '9@gmail.com', '12345', 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`username`,`nidno`),
  ADD KEY `sl` (`sl`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `sl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
