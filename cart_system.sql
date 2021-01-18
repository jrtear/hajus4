-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Loomise aeg: Jaan 18, 2021 kell 10:06 EL
-- Serveri versioon: 5.7.24
-- PHP versioon: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `cart_system`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `cart`
--

INSERT INTO `cart` (`id`, `product_name`, `product_price`, `product_image`, `qty`, `total_price`, `product_code`) VALUES
(65, 'MI Note 5 Pro', '300', 'image/mi_note_5_pro.jpg', 1, '300', 'p1003');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`) VALUES
(12, 'Johan-Rasmus TeÃ¤r', 'johanrasmustear97@gmail.com', '56469135', 'Oja\r\nOja 7-2', 'cod', 'Huawei 10 Pro(1)', '750'),
(13, 'Johan-Rasmus TeÃ¤r', 'johanrasmustear97@gmail.com', '56469135', 'Oja\r\nOja 7-2', 'netbanking', 'LG v30(3), Huawei 10 Pro(1), Nokia 7 Plus(1)', '3000');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_qty` int(11) NOT NULL DEFAULT '1',
  `product_image` varchar(255) NOT NULL,
  `product_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `product_qty`, `product_image`, `product_code`) VALUES
(1, 'Apple iPhone X', '800', 1, 'image/iphone_x.jpg', 'p1000'),
(2, 'Huawei 10 Pro', '750', 1, 'image/huawei_mate10_pro.jpg', 'p1001'),
(3, 'LG v30', '600', 1, 'image/lg_v30.jpg', 'p1002'),
(4, 'MI Note 5 Pro', '300', 1, 'image/mi_note_5_pro.jpg', 'p1003'),
(5, 'Nokia 7 Plus', '450', 1, 'image/nokia_7_plus.jpg', 'p1004'),
(6, 'One Plus 6', '500', 1, 'image/one_plus_6.jpg', 'p1005'),
(7, 'Zenfone Max Pro', '200', 1, 'image/zenfone_m1.jpg', 'p1006'),
(8, 'Samsung A50', '500', 1, 'image/samsung_a50.jpg', 'p1007'),
(9, 'Xiaomi Mi 9', '300', 1, 'image/Xiaomi_mi_9.jpg', 'p1008');

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code_2` (`product_code`),
  ADD KEY `product_code` (`product_code`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT tabelile `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT tabelile `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
