-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2025 at 02:17 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pinevalley`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(30) DEFAULT NULL,
  `CustomerAddress` varchar(50) DEFAULT NULL,
  `CustomerCity` varchar(20) DEFAULT NULL,
  `CustomerState` varchar(2) DEFAULT NULL,
  `CustomerPostalCode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `CustomerName`, `CustomerAddress`, `CustomerCity`, `CustomerState`, `CustomerPostalCode`) VALUES
(1, 'Contemporary Casuals', '1355 S Hines Blvd', 'Gainsville', 'FL', '32601-2871'),
(2, 'Value Furniture', '15145 S.W. 17th St.', 'Plano', 'TX', '75094-7743'),
(3, 'Home Furnishings', '1900 Allard Ave.', 'Albany', 'NY', '12209-1125'),
(4, 'Easter Furniture', '1925 Beltine Rd.', 'Carteret', 'TX', '07008-3188'),
(5, 'Impressions', '5585 Westcott Ct.', 'Sacramento', 'CA', '94206-4056'),
(6, 'Furniture Gallery', '325 Flatiron Dr.', 'Boulder', 'CO', '80514-4432'),
(7, 'Peroid Furniture', '394 Rainbow Dr.', 'Seattle', 'WA', '97954-5589'),
(8, 'California Classics', '816 Peach Rd.', 'Santa Clara', 'CA', '96915-7754'),
(9, 'M and H Casual Furniture', '3709 First Street', 'Clearwater', 'FL', '34620-2314'),
(10, 'Seminole Interiors', '2400 Rocky Point Dr.', 'Seminole', 'FL', '34646-4423'),
(11, 'American Euro Lifestyles', '2424 Missouri Ave N.', 'Prospect Park', 'NJ', '07508-5621'),
(12, 'Battle Creek Furniture', '145 Capitol Ave. SW', 'Battle Creek', 'MI', '49015-1401'),
(13, 'Heritage Furnishings', '66789 College Ave.', 'Carlisle', 'PA', '17013-8814'),
(14, 'Kaneohe Homes', '112 Klowal St.', 'Kaneohe', 'MI', '96744-2537'),
(15, 'Mountain Scenes', '4132 Main Street', 'Ogden', 'UT', '84403-4432');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `OrderID` int(11) NOT NULL,
  `OrderDate` date DEFAULT NULL,
  `CustomerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`OrderID`, `OrderDate`, `CustomerID`) VALUES
(1001, '2015-10-21', 1),
(1002, '2015-10-21', 8),
(1003, '2015-10-21', 15),
(1004, '2015-10-22', 5),
(1005, '2015-10-24', 3),
(1006, '2015-10-24', 2),
(1007, '2015-10-27', 11),
(1008, '2015-10-30', 12),
(1009, '2015-11-05', 4),
(1010, '2015-11-05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderline`
--

CREATE TABLE `orderline` (
  `OrderID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `OrderedQuantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderline`
--

INSERT INTO `orderline` (`OrderID`, `ProductID`, `OrderedQuantity`) VALUES
(1001, 1, 2),
(1001, 2, 2),
(1001, 4, 1),
(1002, 3, 5),
(1003, 3, 3),
(1004, 6, 2),
(1004, 8, 2),
(1005, 4, 4),
(1006, 4, 1),
(1006, 5, 2),
(1006, 7, 2),
(1007, 1, 3),
(1007, 2, 2),
(1008, 3, 3),
(1008, 8, 3),
(1009, 4, 2),
(1009, 7, 3),
(1010, 8, 10);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL,
  `ProductDescription` varchar(50) DEFAULT NULL,
  `ProductFinish` varchar(30) DEFAULT NULL,
  `ProductStandardPrice` decimal(7,2) DEFAULT NULL,
  `ProductLineID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `ProductDescription`, `ProductFinish`, `ProductStandardPrice`, `ProductLineID`) VALUES
(1, 'End Table', 'Cherry', '175.00', 1),
(2, 'Coffee Table', 'Natural Ash', '200.00', 2),
(3, 'Computer Desk', 'Natural Ash', '375.00', 2),
(4, 'Entertainment Center', 'Natural Maple', '650.00', 3),
(5, 'Writers Desk', 'Cherry', '325.00', 1),
(6, '8-Drawer Desk', 'White Ash', '750.00', 2),
(7, 'Dining Table', 'Natural Ash', '800.00', 2),
(8, 'Computer Desk', 'Walnut', '250.00', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `orderline`
--
ALTER TABLE `orderline`
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);

--
-- Constraints for table `orderline`
--
ALTER TABLE `orderline`
  ADD CONSTRAINT `orderline_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `order` (`OrderID`),
  ADD CONSTRAINT `orderline_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
