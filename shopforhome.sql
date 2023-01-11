-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2022 at 02:22 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopforhome`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `userid` varchar(255) NOT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userid`, `pwd`, `uname`) VALUES
('admin', 'admin', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `qty`, `customer_id`, `product_id`) VALUES
(6, 1, 1, 7),
(7, 1, 1, 2),
(8, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `catname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `catname`) VALUES
(1, 'grocery'),
(2, 'electronics'),
(3, 'fashion');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `city`, `gender`, `name`, `phone`, `pwd`, `userid`) VALUES
(1, 'Khandwa East Nimar District', 'Male', 'Hariom Mahajan', '9755374875', '1234', 'hariom@gmail.com'),
(2, 'Khandwa East Nimar District', 'Male', 'Rahul Bhosle', '895643423', '1234', 'rahul@gmail.com'),
(3,'Upputur Prakasam District','Male','Venkatesh Mogilipula','6305664224','Venky@123','venkymogilipula2000@gmail.com'),
(4, 'Varanasi', 'Male', 'Vikas ', '9755374834', '1234', 'vikas@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` int(11) NOT NULL,
  `couponCode` varchar(255) DEFAULT NULL,
  `status` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `couponCode`, `status`) VALUES
(1, 'HARI10', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `qty`, `orderId`, `productid`) VALUES
(1, 2, 1, 1),
(2, 3, 2, 1),
(3, 2, 3, 2),
(4, 2, 4, 2),
(5, 2, 5, 11);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `orderDate` date DEFAULT NULL,
  `paymethod` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `addressId` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `paymentId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `orderDate`, `paymethod`, `status`, `addressId`, `customerId`, `paymentId`) VALUES
(1, '2022-08-10', 'By Card', 'Pending', NULL, 1, NULL),
(2, '2022-08-10', 'By Card', 'Pending', NULL, 1, NULL),
(3, '2022-08-10', 'By Card', 'Pending', NULL, 1, NULL),
(4, '2022-08-10', 'By Card', 'Pending', NULL, 1, NULL),
(5, '2022-08-10', 'By Card', 'Pending', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `cardno` varchar(255) DEFAULT NULL,
  `nameoncard` varchar(255) DEFAULT NULL,
  `paymentdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `descr`, `photo`, `pname`, `price`, `cat_id`) VALUES
(1, '13 (Starlight, 512 GB)', '4d2faac0129b4349868dcb9a6550da52.png', 'Asus Laptop', 45000, 2),
(2, 'furture Cooking Oil for Healthier Heart, 5l Jar', 'f7264e63da1d43ad9803fc39cffd12c9.png', 'Cooking Oil for Healthier Heart, 5l Jar', 749, 1),
(3, 'Comport Cleaning product', 'e7fe87e56b27499eae1947b27bf22a3e.png', 'Comport', 167, 1),
(4, 'Shampoo for hair', 'bd64b27e879b471b8b9a6616833d312b.png', 'Shampoo', 68, 1),
(5, 'Ac', 'e5a5abdf6acb4870860abb6925b45c98.png', 'AC', 25000, 2),
(6, 'Polo T-Shirt', 'fcf47d8b258d46d2b5a518aa064d02b8.png', 'T-Shirt', 687, 3),
(7, 'Dark Fantasy Cookies', 'ae29d7d157144c83be657b3d2102b927.png', 'Cookies', 99, 1),
(8, 'Shirt for Man', 'b7e0527c28904892aa3ee6bd77f29d02.png', 'Shirt', 987, 3),
(9, 'TV ', 'b6dc020259cc4884bcf145ea80e69760.png', 'TV', 23000, 2),
(10, 'Man Watch', '798498903f05409e997a6ca80c233212.png', 'Watch', 999, 3),
(11, 'sunglasses', '47fcccdd5b5444cf8fc3163409406e6a.png', 'Sunglasses', 299, 3),
(12, 'Rice', 'ec99af51d8af44d39820d74f0f12ddc6.png', 'Rice', 324, 1),
(13, 'chocos for child', '11081fe1d3b641a98a808ac15cece4e5.png', 'Chocos', 87, 1),
(14, 'kurta and palazzo for girls', 'fdc3844a96464369b909d9380c152c3a.png', 'kurta and palazzo', 1199, 3),
(15, 'Camera', 'c0f51c7e90c44fe28691d5dc6d641e01.png', 'Canera', 45000, 2),
(16, 'Washing Machine', 'ecfeb49ac8d94005be0651e15acaed9a.png', 'Washing Machine', 34000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `customer_id`, `product_id`) VALUES
(1, 1, 1),
(3, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKjh6lsweiw8ipasfagjwmmgi9u` (`customer_id`),
  ADD KEY `FK1prjnseb2sioiqy35ijp0upfd` (`product_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4p5c64mj3tsqj1v4ypeq3jans` (`orderId`),
  ADD KEY `FKgvhajjkcym4a5g960y6gus6dc` (`productid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `FKh9mg44fdpi0pwusk56r0xged5` (`addressId`),
  ADD KEY `FKeokvurs5fbw7s13q8nmgpqx71` (`customerId`),
  ADD KEY `FK3uouvmvg4j5yov27idsmpw468` (`paymentId`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKf6jqtf7fbsr0gil5ofrnbme0e` (`cat_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKo3e9kgr4b9p91pjm3uyfpdr3u` (`customer_id`),
  ADD KEY `FKm4dcpslidmyxx6a4572hm1740` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FK1prjnseb2sioiqy35ijp0upfd` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKjh6lsweiw8ipasfagjwmmgi9u` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `FK4p5c64mj3tsqj1v4ypeq3jans` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderid`),
  ADD CONSTRAINT `FKgvhajjkcym4a5g960y6gus6dc` FOREIGN KEY (`productid`) REFERENCES `product` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK3uouvmvg4j5yov27idsmpw468` FOREIGN KEY (`paymentId`) REFERENCES `payments` (`id`),
  ADD CONSTRAINT `FKeokvurs5fbw7s13q8nmgpqx71` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `FKh9mg44fdpi0pwusk56r0xged5` FOREIGN KEY (`addressId`) REFERENCES `address` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FKf6jqtf7fbsr0gil5ofrnbme0e` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `FKm4dcpslidmyxx6a4572hm1740` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKo3e9kgr4b9p91pjm3uyfpdr3u` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
