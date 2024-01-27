-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2024 at 12:58 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.4

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
  `adm_id` int NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(6, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@gmail.com', '', '2023-12-08 08:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int NOT NULL,
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
(6, 'QMTZ2J');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `d_id` int NOT NULL,
  `rs_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(11, 48, 'Tele ', 'Musko Tele staro 15 dana', 55.77, 'tele.jpg'),
(12, 48, 'Traktor Zetor 652', 'Traktor u extra stanju.Najbolje doci i pogledati.Sve provjere dozvoljene', 22.12, 'zetor.jpg'),
(13, 49, 'Prikolica', 'Ima sitnih ulaganja u pod od prikolice,a ostalo sve uredno.', 12.35, 'prikolica.jpg'),
(14, 50, 'Mlijeko', 'Domace mlijeko, posjedujemo ovcje ili kravlje po vasoj zelji.', 34.99, 'mlijeko.png'),
(15, 51, 'Krava', 'Krava steona 5 mjeseci, daje 17l mlijeka.', 11.99, 'krava1.jpg'),
(16, 52, 'Sijeno', 'Bale po 35kg', 22.55, 'sijeno.jpg'),
(17, 53, 'Zemljiste', 'Prodajem zemljiste 200 duluma.', 17.99, 'zemlja3.jpg'),
(18, 53, 'Janje', 'Peceno Janje', 23.34, '65a46af4a821b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int NOT NULL,
  `frm_id` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(62, 32, 'in process', 'hi', '2024-01-10 18:35:52'),
(63, 32, 'closed', 'cc', '2024-01-10 18:25:23'),
(64, 32, 'in process', 'fff', '2024-01-10 18:33:51'),
(65, 32, 'closed', 'its delv', '2024-01-10 18:30:25'),
(66, 34, 'in process', 'on a way', '2024-01-10 18:45:45'),
(67, 35, 'closed', 'ok', '2024-01-10 18:12:38'),
(68, 37, 'in process', 'on the way!', '2024-01-10 18:11:15'),
(69, 37, 'rejected', 'hoho', '2024-01-10 18:16:42'),
(70, 37, 'closed', 'uspjesno', '2024-01-10 18:10:48'),
(71, 40, 'in process', 'platiii', '2024-01-13 12:29:20'),
(72, 45, 'rejected', 'Top', '2024-01-23 23:53:39'),
(73, 40, 'in process', 'Sve preporuke\r\n', '2024-01-23 23:54:07'),
(74, 42, 'closed', 'Top', '2024-01-23 23:54:25');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(5, 'Masine', '2024-01-14 23:28:50'),
(6, 'mlijeko', '2024-01-14 23:30:31'),
(7, 'zivotinja', '2024-01-14 23:37:52'),
(8, 'Sijeno', '2024-01-14 23:39:03'),
(9, 'zemljiste', '2024-01-14 23:27:41');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `rs_id` int NOT NULL,
  `c_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(48, 5, 'Haris Husic', 'Haris@gmail.com', ' 090412 64676', 'HariBurger.com', '7am', '4pm', 'mon-tue', 'Travnik, Han Bila', 'cimi.jpg', '2024-01-14 23:24:45'),
(49, 5, 'Sahib Huseinspahic', 'sahib@gmail.com', '011 2677 9070', 'kwbab.com', '6am', '5pm', 'mon-fri', 'Zenica, Crkvice 72', 'sahib.jpg', '2024-01-14 23:47:02'),
(50, 6, 'Ajla Huskic', 'ajla@gmail.com', '090410 35147', 'Vaishno.com', '6am', '6pm', 'mon-sat', 'Jajce, Kruscica 69', 'Ajla.jpg', '2024-01-16 23:13:01'),
(51, 7, 'Amel Coric', 'amel@gmail.com', '3454345654', 'martin.com', '8am', '4pm', 'mon-thu', 'Jajce, Rika 33', 'cora.jpg', '2024-01-14 23:49:19'),
(52, 8, 'Anis  Buljubasic', 'anis@gmail.com', '2345434567', 'hudson.com', '6am', '7pm', 'mon-fri', 'Zenica, Nemila', 'Anis.jpg', '2024-01-16 23:14:18'),
(53, 9, 'Amer Delic', 'amer@gmail.com', '4512545784', 'kari.com', '7am', '7pm', 'mon-sat', 'Kakanj', 'Amer.jpg', '2024-01-16 23:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(33, 'Haris', 'Husic', 'Sahib', 'amelhodzic432@gmail.com', '+38762454434', 'e10adc3949ba59abbe56e057f20f883e', 'Han Bila', 1, '2024-01-13 12:23:44'),
(34, 'Sina', 'Anis', 'Biljubasic', 'harissajfapfj@gmail.com', '+38762454434', 'e10adc3949ba59abbe56e057f20f883e', 'Zenica, Nemila', 1, '2024-01-18 12:28:38'),
(35, 'Sahib', 'Sahib', 'Huseinspahic', 'sahibsahib@gmail.com', '+38762454434', 'e10adc3949ba59abbe56e057f20f883e', 'Zenica,Crkvice\r\n', 1, '2024-01-18 17:37:41');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int NOT NULL,
  `u_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(37, 31, 'Tele', 5, 17.99, 'closed', '2024-01-14 23:20:54'),
(38, 31, 'Traktor Zetor 652', 2, 34.99, NULL, '2024-01-14 23:21:07'),
(39, 33, 'Janje', 1, 17.99, NULL, '2024-01-14 23:21:11'),
(40, 33, 'Mlijeko', 1, 55.77, 'in process', '2024-01-14 23:21:22'),
(41, 33, 'Zemljiste', 1, 17.99, NULL, '2024-01-14 23:21:27'),
(42, 33, 'Mlijeko', 1, 55.77, 'closed', '2024-01-23 23:54:25'),
(44, 33, 'Prikolica', 1, 12.35, NULL, '2024-01-18 12:24:21'),
(45, 34, 'Traktor Zetor 652', 1, 22.12, 'rejected', '2024-01-23 23:53:39'),
(46, 35, 'Janje', 1, 23.34, NULL, '2024-01-18 17:38:39');

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`rs_id`);

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
  MODIFY `adm_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `d_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `rs_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
