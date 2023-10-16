-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2023 at 07:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electric-shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `sid` int(11) NOT NULL,
  `pid` int(50) NOT NULL,
  `uid` int(50) NOT NULL,
  `product` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `status` enum('active','purchased') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`sid`, `pid`, `uid`, `product`, `price`, `quantity`, `status`) VALUES
(226, 33, 13, 'L12 Tri', 2000, 1, 'active'),
(233, 30, 9, 'Geforce keyboard', 2000, 1, 'active'),
(234, 29, 9, 'Sea-Mouse', 300, 3, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(100) NOT NULL,
  `customer_fname` varchar(50) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_pwd` varchar(100) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_role` varchar(50) NOT NULL DEFAULT 'normal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_fname`, `customer_email`, `customer_pwd`, `customer_phone`, `customer_address`, `customer_role`) VALUES
(9, 'jayesh', 'wanijayesh02@gmail.com', 'jayesh123', '9307695937', 'Bandra, Mumbai', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(120) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_catag` varchar(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_date` varchar(50) NOT NULL,
  `product_img` text NOT NULL,
  `product_left` int(100) NOT NULL,
  `product_author` varchar(100) NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_catag`, `product_title`, `product_price`, `product_desc`, `product_date`, `product_img`, `product_left`, `product_author`) VALUES
(19, 'mouse', 'Digicom (DG-w10)', 400, 'Digicom futuristics technologictics industries with 1500dpi anti slip and it is easy on hand for general gaming homeuse and business purpose.   ', '03, October, 2023', 'dgw10.jpg', 50, 'Nibin'),
(21, 'laptop', 'Asus Gaming ', 80000, 'It has 8gb Ram, 4GB AmdRyzon graphics card with backlit keyboard.', '03, October, 2023', 'asusx550c.jpg', 100, 'Jayesh'),
(22, 'laptop', 'Acer', 60000, 'It is acer series.It has 6gb ram with 2Gb Nvidia graphics along with 1 TB HDD ', '03, October, 2023', 'laptop1.jpg', 18, 'Yash'),
(23, 'mouse', 'Hp-Mouse', 6000, 'Hp branded USA mouse industry has 2500dpi with anti slip technology', '03, October, 2023', 'mouse2.jpg', 50, 'Yash'),
(24, 'keyboard', 'Digicom-keyboard', 1500, ' It has 126 key and has backlit with water resistence features along and suspension.', '03, October, 2023', 'keyboard1.jpg', 56, 'Jayesh'),
(25, 'laptop', 'Lenovo xx556G i7', 120000, 'It is Lonovo series.It has 6gb ram with 2Gb\r\n Nvidia graphics along with 1TB ssd', '03, October, 2023', 'laptop2.jpg', 30, 'Nibin'),
(26, 'mouse', 'Nokia mouse', 1500, 'Nokia branded USA mouse industry has 3500dpi with anti slip technology.', '03, October, 2023', 'mouse4.jpg', 50, 'bhabishya'),
(27, 'keyboard', 'HP-Desertkey', 700, 'It has 128 key and has backlit with water resistence and great touch.\r\nfeatures along and suspension.', '03, October, 2023', 'keyboard2.jpg', 40, 'Nibin'),
(28, 'laptop', 'Dell intel i9', 110000, 'It is dell series.It has 6gb ram with 2Gb Rygen graphics along with 500gb ssd.', '03, October, 2023', 'laptop3.jpg', 49, 'Yash'),
(29, 'mouse', 'Sea-Mouse', 300, 'Sea branded USA mouse industry has 500dpi with anti slip technology.', '03, October, 2023', 'mouse3.jpg', 45, 'Jayesh'),
(30, 'keyboard', 'Geforce keyboard', 2000, 'Gaming keyboard and has backlit with water resistence features along and suspension.', '03, October, 2023', 'keyboard3.jpg', 56, 'Jayesh'),
(31, 'laptop', 'HP-77GT intel i5', 60000, ' It has 4gb ram with 256gb ssd and having 3gb HUD graphics.', '03, October, 2023', 'laptop5.jpg', 45, 'Jayesh'),
(32, 'laptop', 'HP inteli11', 150000, '  It has intel core processor i11 with new technology gaming laptop with 8gb ram.', '03, October, 2023', 'laptop6.png', 100, 'Yash'),
(33, 'mouse', 'L12 Tri', 2000, '   Mouse of tri-lateral button, having 3500dpi with anti-slip  technology', '03, October, 2023', 'mouse5.jpg', 25, 'Nibin'),
(34, 'keyboard', 'Lokai', 15000, 'It is a cheap backlit gaming keyboard with 120keys along with water resistance.', '03, October, 2023', 'keyboard4a.jpg', 120, 'Jayesh'),
(35, 'mobile', 'Iphone12', 130000, '           It is apple usa company with water resistance along with 6gb ram with fired processor.It has smooth glasses to protect screen.', '03, October, 2023', 'mobile4.jpg', 25, 'Yash');

-- --------------------------------------------------------

--
-- Table structure for table `servicestatus`
--

CREATE TABLE `servicestatus` (
  `sid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `pid` int(11) DEFAULT NULL,
  `uuid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `website_name` varchar(60) NOT NULL,
  `website_logo` varchar(50) NOT NULL,
  `website_footer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`website_name`, `website_logo`, `website_footer`) VALUES
('Electric-Shop', 'logo.png', '© Electric Shop 2023 <br> All right reserved.');

-- --------------------------------------------------------

--
-- Table structure for table `soldproducts`
--

CREATE TABLE `soldproducts` (
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(50) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL,
  `date` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_email` (`customer_email`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `servicestatus`
--
ALTER TABLE `servicestatus`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `soldproducts`
--
ALTER TABLE `soldproducts`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `servicestatus`
--
ALTER TABLE `servicestatus`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `soldproducts`
--
ALTER TABLE `soldproducts`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
