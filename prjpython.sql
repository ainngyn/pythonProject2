-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 23, 2023 lúc 03:16 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `prjpython`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `name` varchar(20) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`name`, `id`) VALUES
('Dien thoai', 1),
('May tinh bang', 2),
('Dong ho thong minh', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `content` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`content`, `product_id`, `users_id`, `created_date`, `id`) VALUES
('good', 2, 1, '2023-12-14 17:09:33', 1),
('good', 2, 1, '2023-12-14 17:09:33', 2),
('good', 2, 1, '2023-12-14 17:09:33', 3),
('good', 2, 1, '2023-12-14 17:09:33', 4),
('good', 2, 1, '2023-12-14 17:09:33', 5),
('good', 2, 1, '2023-12-14 17:09:33', 6),
('dd', 2, 1, '2023-12-14 17:09:33', 7),
('dd', 2, 1, '2023-12-14 17:09:33', 8),
('dd', 2, 1, '2023-12-14 17:09:33', 9),
('dd', 2, 1, '2023-12-14 17:09:33', 10),
('dd', 2, 1, '2023-12-14 17:09:33', 11),
('dd', 2, 1, '2023-12-14 17:09:33', 12),
('iuygf', 2, 1, '2023-12-14 17:09:33', 13),
('iuygf', 2, 1, '2023-12-14 17:09:33', 14),
('iuygf', 2, 1, '2023-12-14 17:09:33', 15),
('iuygf', 2, 1, '2023-12-14 17:09:33', 16),
('iuygf', 2, 1, '2023-12-14 17:09:33', 17),
('iuygf', 2, 1, '2023-12-14 17:09:33', 18),
('iuygf', 2, 1, '2023-12-14 17:09:33', 19),
('iuygf', 2, 1, '2023-12-14 17:09:33', 20),
('sdad', 2, 1, '2023-12-14 17:09:33', 21),
('sdad', 2, 1, '2023-12-14 17:09:33', 22),
('sdad', 2, 1, '2023-12-14 17:09:33', 23),
('sdad', 2, 1, '2023-12-14 17:09:33', 24),
('sdad', 2, 1, '2023-12-14 17:09:33', 25),
('sdad', 2, 1, '2023-12-14 17:09:33', 26),
('sa', 2, 1, '2023-12-14 17:09:33', 27),
('', 2, 1, '2023-12-14 17:09:33', 28),
('', 2, 1, '2023-12-14 17:09:33', 29),
('', 2, 1, '2023-12-14 17:09:33', 30),
('jj', 2, 1, '2023-12-14 17:09:33', 31),
('jj', 2, 1, '2023-12-14 17:09:33', 32),
('jj', 2, 1, '2023-12-14 17:09:33', 33),
('jj', 2, 1, '2023-12-14 17:09:33', 34),
('jj', 2, 1, '2023-12-14 17:09:33', 35),
('jj', 2, 1, '2023-12-14 17:09:33', 36),
('jj', 2, 1, '2023-12-14 17:09:33', 37),
('jj', 2, 1, '2023-12-14 17:09:33', 38),
('jj', 2, 1, '2023-12-14 17:09:33', 39),
('jj', 2, 1, '2023-12-14 17:09:33', 40),
('acsax', 2, 1, '2023-12-14 19:02:11', 41),
('acsax', 2, 1, '2023-12-14 19:02:11', 42),
('ws', 2, 1, '2023-12-14 19:04:13', 43),
('jnk', 2, 1, '2023-12-14 19:08:43', 44),
('jnk', 2, 1, '2023-12-14 19:08:43', 45),
('jnk', 2, 1, '2023-12-14 19:08:43', 46),
('', 2, 1, '2023-12-14 19:08:43', 47),
('sedcs', 2, 1, '2023-12-14 20:44:41', 48),
('abc', 2, 1, '2023-12-14 20:44:41', 49),
('fg', 2, 1, '2023-12-14 20:47:21', 50),
('sad', 2, 1, '2023-12-14 20:48:45', 51),
('scdsc', 2, 1, '2023-12-14 20:48:45', 52),
('scdsc', 2, 1, '2023-12-14 20:48:45', 53),
('scdsc', 2, 1, '2023-12-14 20:48:45', 54),
('scdsc', 2, 1, '2023-12-14 20:48:45', 55),
('scdsc', 2, 1, '2023-12-14 20:48:45', 56),
('vbn', 2, 1, '2023-12-14 20:48:45', 57),
('nmnm', 2, 1, '2023-12-14 20:54:24', 58),
('jhj', 2, 1, '2023-12-14 20:56:27', 59),
('xzsx', 2, 1, '2023-12-14 20:59:52', 60),
('xzsx', 2, 1, '2023-12-14 20:59:52', 61),
('xzsx', 2, 1, '2023-12-14 20:59:52', 62),
('xzsx', 2, 1, '2023-12-14 20:59:52', 63),
('xzsx', 2, 1, '2023-12-14 20:59:52', 64),
('xzsx', 2, 1, '2023-12-14 20:59:52', 65),
('xzsx', 2, 1, '2023-12-14 20:59:52', 66),
('xzsx', 2, 1, '2023-12-14 20:59:52', 67),
('xzsx', 2, 1, '2023-12-14 20:59:52', 68),
('xzsx', 2, 1, '2023-12-14 20:59:52', 69),
('xzsx', 2, 1, '2023-12-14 20:59:52', 70),
('sxs', 2, 1, '2023-12-14 21:00:29', 71),
('sxs', 2, 1, '2023-12-14 21:00:29', 72),
('xzxa', 2, 1, '2023-12-14 21:00:29', 73),
('xzxa', 2, 1, '2023-12-14 21:00:29', 74),
('xzxa', 2, 1, '2023-12-14 21:00:29', 75),
('lkjhgf', 2, 1, '2023-12-14 21:00:29', 76),
('dc', 2, 1, '2023-12-14 21:51:53', 77),
('dc', 2, 1, '2023-12-14 21:51:53', 78),
('dc', 2, 1, '2023-12-14 21:51:53', 79),
('dc', 2, 1, '2023-12-14 21:51:53', 80),
('dc', 2, 1, '2023-12-14 21:51:53', 81);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`name`, `description`, `price`, `image`, `active`, `create_date`, `category_id`, `id`) VALUES
('Đồng hồ thông minh Xiaomi Watch 2 Pro', 'Hệ điều hành Wear OS,màn hình AMOLED', 5990000, 'images/p6.png', 1, '2023-12-21 20:52:16', 3, 1),
('iPad Pro 2020', 'Apple, 128GB, RAM: 6GB', 37000000, 'images/p2.png', 1, '2023-12-05 02:27:09', 2, 2),
('Iphone 15 promax 1TB', 'Apple,1TB,RAM: 8G', 38830000, 'images/p4.png', 1, '2023-12-19 20:49:02', 1, 4),
('Apple watch SE', 'Màn hình Retina,chip S8 SiP', 5790000, 'images/p5.png', 1, '2023-12-12 20:49:16', 3, 5),
('Galaxy Note 10 Plus', 'Samsung, 64GB, RAM: 6GB', 24000000, 'images/p3.png', 1, '2023-12-05 02:36:32', 1, 6),
('iPhone 7 Plus', 'Apple, 32GB, RAM: 3GB, iOS13', 17000000, 'images/p1.png', 1, '2023-12-05 02:37:42', 1, 7),
('Đồng hồ thông minh Huawei Watch GT4 46mm dây Compo', 'pin 14 ngày, nghe gọi trên đồng hồ', 5490000, 'images/p7.png', 1, '2023-12-20 20:52:16', 3, 8),
('iPad Air 5', 'Cáp USB-C - USB-C, Cốc sạc 20W USB-C, 254G', 17990000, 'images/p8.png', 2, '2023-12-21 20:58:45', 2, 9),
('Samsung Galaxy Tab A9+', 'WIFI 4GB 64GB', 5420000, 'images/p9.png', 4, '2023-12-20 20:58:45', 2, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `receipt`
--

CREATE TABLE `receipt` (
  `created_date` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `receipt`
--

INSERT INTO `receipt` (`created_date`, `user_id`, `id`) VALUES
('2023-12-12 02:41:30', 2, 1),
('2023-12-12 02:45:44', 2, 2),
('2023-12-12 22:41:48', 2, 3),
('2023-12-12 22:41:48', 2, 4),
('2023-12-12 22:41:48', 2, 5),
('2023-12-13 16:11:35', 1, 6),
('2023-12-23 21:07:56', 1, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `receipt_detail`
--

CREATE TABLE `receipt_detail` (
  `receipt_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `receipt_detail`
--

INSERT INTO `receipt_detail` (`receipt_id`, `product_id`, `quantity`, `unit_price`) VALUES
(1, 2, 1, 37000000),
(1, 6, 3, 24000000),
(2, 2, 1, 37000000),
(2, 6, 3, 24000000),
(3, 2, 2, 37000000),
(3, 6, 1, 24000000),
(3, 7, 3, 17000000),
(4, 6, 1, 24000000),
(5, 2, 1, 37000000),
(6, 2, 1, 37000000),
(6, 6, 1, 24000000),
(6, 7, 1, 17000000),
(7, 2, 1, 37000000),
(7, 4, 1, 38830000),
(7, 5, 1, 5790000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `joined_date` datetime DEFAULT NULL,
  `user_role` enum('ADMIN','USER') DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`name`, `username`, `password`, `email`, `avatar`, `active`, `joined_date`, `user_role`, `id`) VALUES
('Nguyen anh', 'ainngyn', '81dc9bdb52d04dc20036dbd8313ed055', 'nguyenngananh44@gmail.com', NULL, 1, '2023-12-07 22:12:33', 'USER', 1),
('ha khanh dang', 'dangchodien', '81dc9bdb52d04dc20036dbd8313ed055', 'dangchodien@gmail.com', 'https://res.cloudinary.com/da2sddtiy/image/upload/v1701965750/ydo8uejy8iboz6bsx0di.jpg', 1, '2023-12-07 23:14:30', 'ADMIN', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `users_id` (`users_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `receipt_detail`
--
ALTER TABLE `receipt_detail`
  ADD PRIMARY KEY (`receipt_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `receipt_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `receipt_detail`
--
ALTER TABLE `receipt_detail`
  ADD CONSTRAINT `receipt_detail_ibfk_1` FOREIGN KEY (`receipt_id`) REFERENCES `receipt` (`id`),
  ADD CONSTRAINT `receipt_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
