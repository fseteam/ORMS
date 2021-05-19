-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2021 at 12:00 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(6, 'admin', 'kaalid', 'admin@gmail.com', '', '2021-04-19 10:12:45'),
(8, 'abc888', '6d0361d5777656072438f6e314a852bc', 'abc@gmail.com', 'QX5ZMN', '2021-04-13 18:12:30'),
(9, 'ararso', 'd08dc92ac16bad7cef0912bf0247f834', 'arasoalisho2@gmail.com', 'kaalid', '2021-05-02 12:24:09');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J'),
(7, 'kaalid');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(19, 49, 'shiro', 'good quality shiro with many ingredient', '25.00', '60a4cf7da9307.jpg'),
(25, 50, 'Chachabsa', 'Choose chachabsa with best quality and ingredient', '60.00', '60a570921d8cc.jpg'),
(26, 48, 'Firfir', 'Kuantal firfir', '40.00', '60a57dc0d8f18.jpg'),
(27, 48, 'Burger', 'good quality Burger with many ingredient', '105.00', '60a57fbb45d53.jpg'),
(28, 52, 'Doro wet', 'with good quality ', '120.00', '60a58077159e9.jpg'),
(29, 48, 'Dr Abiy', 'New Ethiopian Arogade ashara food', '150.00', '60a5812372930.jpg'),
(30, 53, 'Sandawich', 'Sweetest sandawich ', '30.00', '60a581fcbcd4d.jpg'),
(35, 51, 'Pasta', 'Standard respect pasta', '50.00', '60a585998bd89.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(48, 5, 'Habesha cultural Restaurant ', 'Habesha@gmail.com', ' 0934408928', 'habesha.com', '12hr', '4pm', 'mon-sun', 'Bole, K 03/05, Addis Ababa Ethiopia', '5ad74ce37c383.jpg', '2021-04-20 21:37:55'),
(49, 5, 'Addis Ababa Restaurant', 'addisabeba@gmail.com', '093440828', 'Addisabeba.com', '6am', '5pm', 'mon-fri', 'Messalmia, Addis Ababa Ethiopia', '5ad74de005016.jpg', '2021-04-20 21:45:32'),
(50, 6, 'Hemen Pizza And Juice', 'hamen@gmail.com', '0934408928', 'hamen.com', '6am', '6pm', 'mon-sat', 'A1 Adama, Adama Ethiopia', '5ad74e5310ae4.jpg', '2021-04-20 21:49:23'),
(51, 7, 'Lucy Lounge & Restaurant', 'lucyloung@gmail.com', '034408928', 'lucy.com', '8am', '4pm', 'mon-thu', 'Next to National Museum, Addis Ababa Ethiopia', '5ad74ebf1d103.jpg', '2021-04-20 21:57:13'),
(52, 8, 'Kategna Restaurant', 'ket@gmail.com', '0934408928', 'kategna.com', '6am', '7pm', 'mon-fri', 'Cameroon Street Bole Millenium, Addis Ababa Ethiopia', '5ad756f1429e3.jpg', '2021-04-20 22:01:50'),
(53, 9, 'Dashen Traditional Ethiopian Restaurant', 'dashen@gmail.com', '0934408928', 'dashen.com', '7am', '7pm', 'mon-sat', 'Kasinches Aware Road Opposite Meles Z Foundation, Addis Ababa Ethiopia', '5ad79e7d01c5a.jpg', '2021-04-20 22:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(5, 'best grill', '2021-05-19 08:02:57'),
(6, 'pizza', '2021-04-08 18:44:56'),
(7, 'pasta', '2021-04-01 18:45:13'),
(8, 'thaifood', '2021-04-02 18:32:56'),
(9, 'fish', '2021-04-18 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(33, 'ararso', 'Ararso', 'Alisho', 'ararso@gmail.com', '6232125458', 'kaalid', 'Adama bole ', 1, '2021-04-20 22:57:06'),
(34, 'ararso1', 'Ararso', 'Alisho', 'areealisho12@gmail.com', '0934408928', 'd08dc92ac16bad7cef0912bf0247f834', 'Adama bole', 1, '2021-04-20 23:00:44'),
(35, 'abdure', 'Abdirohman', 'mekonen', 'abdimak602@gmail.com', '0965143905', 'dd1ff80976f466d3ace3e1d511a27924', 'astu', 1, '2021-04-22 09:32:58'),
(36, 'Absra1', 'Absera', 'girma', 'absera@gmail.com', '04223222354', '79cfeb94595de33b3326c06ab1c7dbda', 'Adama', 1, '2021-04-25 19:21:23');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(39, 36, 'Firfir', 1, '2.00', NULL, '2021-04-25 19:23:47'),
(42, 34, 'shiro', 1, '25.00', NULL, '2021-05-19 20:58:38'),
(43, 34, 'shiro', 1, '25.00', NULL, '2021-05-19 21:00:46'),
(44, 34, 'shiro', 1, '25.00', NULL, '2021-05-19 21:01:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
