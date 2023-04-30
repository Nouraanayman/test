-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2023 at 10:27 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joy_cafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `dName` varchar(200) NOT NULL,
  `dPass` varchar(1000) NOT NULL,
  `dEmail` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `dName`, `dPass`, `dEmail`) VALUES
(1, 'nehal', '123', 'nehal.gamal'),
(2, 'nouran', '123', 'nouran.ayman'),
(3, 'mariam', '123', 'mariam.mohamed'),
(4, 'malak', '123', 'malak.mohamed'),
(5, 'maria', '123', 'maria.refaat'),
(6, 'nancy', '123', 'nancy.hesham');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `ID` int(100) NOT NULL,
  `prodID` int(255) NOT NULL,
  `price` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `userID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ID` int(11) NOT NULL,
  `catName` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ID`, `catName`) VALUES
(1, 'iced '),
(2, 'dessert'),
(3, 'salads'),
(4, 'sandwiches');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `ID` int(100) NOT NULL,
  `comment` mediumtext NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ID` int(200) NOT NULL,
  `prodID` int(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `quantity` int(200) NOT NULL,
  `userID` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(200) NOT NULL,
  `proName` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `image` mediumtext NOT NULL,
  `price` varchar(200) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `adminID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `proName`, `description`, `image`, `price`, `categoryID`, `adminID`) VALUES
(7, 'Chocolate Marshmallow Milkshake', 'Creamy beverage made by blending chocolate ice cream, milk, and marshmallows.', 'WhatsApp Image 2023-04-18 at 9.53.54 PM.jpeg', '70$', 1, 3),
(8, 'Cinnamon Toast Crunch', 'Cinnamon Toast Crunch is a breakfast cereal made from sweetened wheat and rice cereal squares flavored with cinnamon and sugar.', 'WhatsApp Image 2023-04-18 at 7.54.27 PM.jpeg', '65$', 1, 4),
(9, 'Chocolate Milkshake', 'A chocolate milkshake is a sweet, cold, and creamy beverage made by blending together milk, chocolate syrup or powder, and ice cream.', 'WhatsApp Image 2023-04-18 at 7.54.40 PM (1).jpeg', '60$', 1, 5),
(10, 'Kinder Bueno milkshake', 'It\'s a nutty and sweet drink made with milk, vanilla ice cream, hazelnut spread, Kinder Bueno chocolate bars, and whipped cream.', 'WhatsApp Image 2023-04-18 at 7.54.01 PM.jpeg', '75$', 1, 6),
(11, 'Blueberry Milkshake', 'It\'s a fruity and creamy beverage made with blueberries, vanilla ice cream, and milk, resulting in a sweet and refreshing shake with a hint of vanilla flavor.', 'WhatsApp Image 2023-04-18 at 7.54.49 PM.jpeg', '65$', 1, 2),
(18, 'Lotus Caramel Latte Frappe', 'Coffee frappe with a rich Lotus flavor, topped with whipped cream, Lotus Biscuit and Caramel sauce.', 'WhatsApp Image 2023-04-18 at 8.00.53 PM.jpeg', '65$', 1, 3),
(19, 'oreo shake', 'Chocolate Milkshake Blended With Oreos And Topped With Whipped Cream, Chocolate Sauce And Oreo Bits.', 'WhatsApp Image 2023-04-18 at 8.22.34 PM.jpeg', '55$', 1, 1),
(20, 'latte frappe', 'Our creamy iced cold coffee with our in-house frappe powder.', 'WhatsApp Image 2023-04-18 at 7.58.36 PM.jpeg', '60$', 1, 1),
(21, 'mocha frappe', 'Our creamy ice cold coffee with in-house frappe powder and flavoured with chocolate.', 'WhatsApp Image 2023-04-18 at 7.59.52 PM.jpeg', '65$', 1, 6),
(22, 'iced matcha and vanilla ice cream', 'A delightful combination of refreshing matcha and creamy vanilla ice cream, perfect for cooling down on a hot day.', 'WhatsApp Image 2023-04-18 at 7.55.25 PM.jpeg', '65$', 1, 3),
(23, 'matcha ice latte', 'A refreshing and energizing Japanese beverage made with matcha green tea powder, steamed milk, and a touch of sweetness.', 'WhatsApp Image 2023-04-18 at 7.53.45 PM.jpeg', '65$', 1, 6),
(24, 'Blueberry cheese cake', 'Blueberry cheesecake with crumbly crust and fresh blueberries on top.', 'WhatsApp Image 2023-04-12 at 9.38.28 PM.jpeg', '55$', 2, 3),
(25, 'Crème Brûlée', 'French elegance in a dessert, with creamy custard and caramelized sugar, a divine treat for the senses', 'WhatsApp Image 2023-04-12 at 10.22.32 PM.jpeg', '50$', 2, 5),
(26, 'cheesecake', 'Creamy and buttery dessert with delicious flavors that tantalize the taste buds.', 'WhatsApp Image 2023-04-12 at 10.05.51 PM.jpeg', '55$', 2, 3),
(27, 'tart', 'Delicate flavors, buttery crust, and luscious fillings in perfect harmony, a delightful treat for the senses.', 'WhatsApp Image 2023-04-12 at 10.17.15 PM.jpeg', '50$', 2, 3),
(28, 'muffins', 'Fluffy parcels of joy, bursting with delightful flavors and textures, a comforting indulgence in every bite.', 'WhatsApp Image 2023-04-12 at 10.10.15 PM.jpeg', '40$', 2, 6),
(29, 'tiramisu', 'A heavenly dessert that will transport your taste buds to Italy.', 'WhatsApp Image 2023-04-12 at 10.20.03 PM.jpeg', '40$', 2, 3),
(30, 'Nutella cups', 'A delicious combination of Nutella and chocolate that melts in your mouth.', 'WhatsApp Image 2023-04-12 at 10.15.00 PM.jpeg', '35$', 2, 3),
(31, 'ice cream', 'Frozen happiness in a bowl. Ice cream is a little luxury that makes life sweeter.', 'WhatsApp Image 2023-04-12 at 9.57.24 PM.jpeg', '60$', 2, 3),
(32, 'fruit salad', 'Fresh, sweet, and vibrant medley of nature\'s best, a wholesome and refreshing treat.', 'WhatsApp Image 2023-04-12 at 10.25.25 PM.jpeg', '35$', 2, 3),
(33, 'pasta salad', 'Its loaded with fresh corn, tomatoes, onion & cilantro all tossed in a creamy homemade cilantro lime dressing.', 'WhatsApp Image 2023-04-18 at 5.42.18 PM.jpeg', '70$', 3, 3),
(34, 'chicken Caesar salad', 'Grilled chicken Caesar salad with fresh lettuce, croutons, and tangy dressing.', 'WhatsApp Image 2023-04-18 at 5.47.39 PM.jpeg', '76$', 3, 3),
(35, 'Mixed Greens with Balsamic & Walnuts', 'Mixed greens salad with mushrooms, cherry tomatoes, and walnuts, drizzled with balsamic vinaigrette.', 'WhatsApp Image 2023-04-18 at 5.50.35 PM.jpeg', '85$', 3, 3),
(36, 'chicken quinoa salad', 'Grilled chicken with colored Quinoa, fresh vegetables and cherry tomatoes, topped with honey mustard dressing.', 'WhatsApp Image 2023-04-18 at 5.49.37 PM.jpeg', '110$', 3, 3),
(37, 'Dijon Beef Brisket', 'A flavor explosion - tender beef brisket with a tangy Dijon mustard kick, nestled in a delicious sandwich.\r\n', 'WhatsApp Image 2023-04-12 at 11.13.23 PM (1).jpeg', '90$', 4, 3),
(38, 'roast beef & cheddar', 'Hearty sandwich with juicy roast beef and melty cheddar.', 'WhatsApp Image 2023-04-12 at 11.24.21 PM (1).jpeg', '70$', 4, 3),
(39, 'Sriracha Chicken', 'Spicy Sriracha Chicken Sandwich, a flavor explosion that satisfies the heat-seekers.', 'WhatsApp Image 2023-04-12 at 11.04.30 PM (1).jpeg', '110$', 4, 3),
(40, 'roast turkey', 'A classic favorite made even better - Roast Turkey Sandwich, a perfect blend of juicy turkey, crisp lettuce, tangy cranberry sauce, and creamy mayo for the ultimate sandwich experience.', 'WhatsApp Image 2023-04-12 at 11.20.28 PM (1).jpeg', '70$', 4, 3),
(41, 'turkey & emmental', 'A classic combination - tender turkey and creamy Emmental cheese, layered to perfection in a delicious sandwich.', 'WhatsApp Image 2023-04-12 at 11.06.19 PM (1).jpeg', '70$', 4, 3),
(42, 'tuna baguette', 'A refreshing and delicious option - Tuna Baguette, a zesty and satisfying sandwich that\'s perfect for seafood lovers.', 'WhatsApp Image 2023-04-12 at 11.10.56 PM (1).jpeg', '55$', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `pickupTime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(200) NOT NULL,
  `userName` varchar(500) NOT NULL,
  `userPass` varchar(5000) NOT NULL,
  `email` varchar(5000) NOT NULL,
  `phoneNo` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `prodID` (`prodID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `categoryID` (`categoryID`),
  ADD KEY `adminID` (`adminID`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(200) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`prodID`) REFERENCES `product` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`adminID`) REFERENCES `admin` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`categoryID`) REFERENCES `category` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
