-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: sophia
-- Generation Time: Mar 21, 2019 at 02:37 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kylee3`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `itemID` int(11) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `itemDescription` longtext NOT NULL,
  `itemCategory` varchar(255) NOT NULL,
  `itemImage` varchar(255) NOT NULL,
  `itemPrice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`itemID`, `itemName`, `itemDescription`, `itemCategory`, `itemImage`, `itemPrice`) VALUES
(1, 'Glass-door cabinet', 'A cabinet with sliding doors which do not take up any space when opened.', 'Living Room', 'glass_door_cabinet.jpg', 1390),
(2, '3-seat sofa', 'An extra deep and comfortable sofa with a thick bed mattress. Enjoy cosy nights and lazy days.', 'Living Room', '3seat_sofa.jpg', 2790),
(3, 'Coffee table', 'A sturdy and stable coffee table which has practical storage under the table top. Perfect when you want to relax on the sofa and have magazines, remote controls and tablets close at your hand.', 'Living Room', 'coffee_table.jpg', 549),
(4, 'Bed frame', 'A sofa, a single bed, a double bed and storage in one piece of furniture. Perfect if you are tight of space. ', 'Bedroom', 'bed_frame.jpg', 2490),
(5, 'Wall lamp', 'A soft, comfortable light with a unified look. It has a timeless design that fits right in your bedroom.', 'Bedroom', 'wall_lamp.jpg', 199),
(6, 'Bedside table', 'A clean, simple bedside table with soft-closing drawers that fits nicely next to high beds.  ', 'Bedroom', 'bedside_table.jpg', 649),
(7, 'Dining table with chairs', 'An extendable dining table with 4-6 seats. It is possible to adjust the table size according to need.', 'Dining Room', 'dining_table_with_chairs.jpg', 3166),
(8, 'Display cabinet', 'A simple white glass cabinet. You can display your favorite dishes and cups inside.', 'Dining Room', 'display_cabinet.jpg', 1490),
(9, 'Step stool', 'A step stool which makes it easier to reach things highest up in cabinets.', 'Dining Room', 'step_stool.jpg', 169),
(10, 'Bookcase', 'A simple white bookcase that can store as much books as you can!', 'Living Room', 'bookcase.jpg', 499),
(11, 'TV bench', 'A television bench that has adjustable shelves.', 'Living Room', 'tv_bench.jpg', 899),
(12, '2-seat sofa', 'A very soft and comfortable 2-seat sofa.', 'Living Room', '2seat_sofa.jpg', 2290),
(13, 'TV storage combination', 'A very large television storage combination.You can keep your things in the large drawers and feed the cables through the outlets in the back.', 'Living Room', 'tv_storage.jpg', 2750),
(14, 'Wall shelf', 'A wall shelf which can be hung on the wall. You can keep your thing without taking any space!', 'Living Room', 'wall_shelf.jpg', 109),
(15, 'Arm chair', 'A very soft and comfortable arm chair. You can sit on the arm chair and take a nap.', 'Living Room', 'arm_chair.jpg', 399),
(16, 'Loft bed', 'A loft bed with a desk and storages. This is a bed for sleeping, studying and storing!', 'Bedroom', 'loft_bed.jpg', 2690),
(17, 'Bed with storage', 'A bed with storage. This bed gives you spacious storage without taking up any space in the room.', 'Bedroom', 'bed_with_storage.jpg', 1590),
(18, 'Mattress', 'A very soft mattress with 25-year guarantee.', 'Bedroom', 'mattress.jpg', 1190),
(19, 'Bed spread', 'A bed spread made of linen, a hard-wearing natural material.', 'Bedroom', 'bed_spread.jpg', 599),
(20, 'White rug', 'A thick dense white rug which is very nice and soft. ', 'Bedroom', 'white_rug.jpg', 990),
(21, 'Beige cushion', 'A small beige patterned cushion.', 'Bedroom', 'beige_cushion.jpg', 80),
(22, 'Trolley', 'A trolley which can fit in the smallest of spaces and can be moved to wherever you need.', 'Dining Room', 'trolley.jpg', 399),
(23, 'Shelf section', 'A shelf that is perfect for your kitchen. You can add sections and adjust the shelf heights to fit your need.', 'Dining Room', 'shelf_section.jpg', 698),
(24, 'Kitchen mixer tap', 'A kitchen mixer tap which helps lower water and energy-use.', 'Dining Room', 'kitchen_mixer_tap.jpg', 890),
(25, 'Dish drainer', 'A dish drainer which frees up workspace for slicing, dicing and kneading the dough.', 'Dining Room', 'dish_drainer.jpg', 99),
(26, 'Kitchen rail', 'A kitchen rail that can be put on the wall. It frees up workspace in your kitchen. ', 'Dining Room', 'kitchen_rail.jpg', 89),
(27, 'Knife tray', 'A knife tray where you can keep things organized.', 'Dining Room', 'knife_tray.jpg', 69);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`itemID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
