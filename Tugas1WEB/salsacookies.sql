-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2022 at 10:02 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salsacookies`
--

-- --------------------------------------------------------

--
-- Table structure for table `detailproduk`
--

CREATE TABLE `detailproduk` (
  `id` int(11) NOT NULL,
  `namaProduk` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detailproduk`
--

INSERT INTO `detailproduk` (`id`, `namaProduk`, `gambar`, `harga`, `tanggal`) VALUES
(2, 'Brown Cookies', 'Brown cookies.jpeg', 5000, '2022-11-18 02:00:00'),
(3, 'Oreo Cookies', 'Oreo cookies.jpg', 10000, '2022-11-18 02:00:20'),
(4, 'Redvelvet Cookies', 'Redvelvet cookies.jpg', 12000, '2022-11-18 02:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$aa9kPQvUy1K0n0bsjBX8e.kjViKYtXRzjBwOVjvqHCl8MC50mlZhK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailproduk`
--
ALTER TABLE `detailproduk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detailproduk`
--
ALTER TABLE `detailproduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
