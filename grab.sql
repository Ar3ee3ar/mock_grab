-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2020 at 07:47 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grab`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Cus_Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Cus_tel` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Cus_address` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Cus_email` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Cus_username` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Cus_password` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Cus_work_status` bit(1) NOT NULL,
  `Cus_credit_card_number` char(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Cus_credit_card_exp_date` date DEFAULT NULL,
  `cus_credit_card_CVV` int(3) DEFAULT NULL,
  `ID_Cus_Status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Cus_Name`, `Cus_tel`, `Cus_address`, `Cus_email`, `Cus_username`, `Cus_password`, `Cus_work_status`, `Cus_credit_card_number`, `Cus_credit_card_exp_date`, `cus_credit_card_CVV`, `ID_Cus_Status`) VALUES
('กกก กกกก', '4444444444', '123/2', 'c@c.com', 'arar44', '777777', b'0', '1234567890123456', '2020-09-09', 123, 0),
('อาซีซ่าร์  ลอดิง', '0812121212', '111 ซ.เจ้าพระยา เขตมหานคร กรุงเทพ ', 'a@a.com', 'arzearze', 'arzearze', b'0', NULL, NULL, NULL, NULL),
('อา ซี', '0824469932', '159/2', 's6104062610092@email.kmutnb.ac.th', 'arzeezar123', '123456', b'0', '', '0000-00-00', 0, 0),
('ท็อป ชลกวิน ', ' 0000000000 ', '2222222 ', ' v@v.com ', 'vk', ' 123456 ', b'0', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_status`
--

CREATE TABLE `customer_status` (
  `ID_Cus_Status` int(11) NOT NULL,
  `type_cus_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_status`
--

INSERT INTO `customer_status` (`ID_Cus_Status`, `type_cus_status`) VALUES
(0, 'ปกติ'),
(1, 'VIP');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driver_username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `driver_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `driver_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `driver_tel` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `driver_earn_acc_no` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `driver_earn_price` float NOT NULL,
  `driver_work_status` bit(1) NOT NULL DEFAULT b'0',
  `ID_driver_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_username`, `driver_password`, `driver_name`, `driver_tel`, `driver_earn_acc_no`, `driver_earn_price`, `driver_work_status`, `ID_driver_status`) VALUES
('dr001', '111', 'กย กย', '0123456789', '1234567891234', 156.51, b'0', 1),
('dr002', '11111', 'ออ ออ', '0123456780', '1234567891234', 15.6541, b'0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `driver_status`
--

CREATE TABLE `driver_status` (
  `ID_driver_status` int(11) NOT NULL,
  `driver_status_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `driver_status_rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `driver_status`
--

INSERT INTO `driver_status` (`ID_driver_status`, `driver_status_name`, `driver_status_rate`) VALUES
(0, 'ปกติ', 0.1),
(1, 'VIP', 0.2);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id_food` int(11) NOT NULL,
  `food_name` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `food_size` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `food_cash` float NOT NULL,
  `shop_username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `FilesName` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id_food`, `food_name`, `food_size`, `food_cash`, `shop_username`, `FilesName`) VALUES
(1, 'กะเพราเป็ด', 'ปกติ', 45, 'shop001', 'basil_duck.jpg'),
(2, 'ต้มยำกุ้ง', 'ปกติ', 50, 'shop001', 'tomyam.jpg'),
(3, 'ต้มยำกุ้ง', 'พิเศษ', 80, 'shop001', 'tomyam.jpg'),
(4, 'ผัดไทย', 'ปกติ', 70, 'shop001', 'padthai.jpg'),
(5, 'ไก่ย่าง', 'ปกติ', 7, 'shop001', 'basil_duck.jpg'),
(6, 'กระเพาะปลา', 'ปกติ', 45, 'shop001', 'fish_maw.jpg'),
(7, 'ไข่เจียวทรงเครื่อง', 'ปกติ', 50, 'shop001', 'omelet.jpg'),
(8, 'ลาบหมู', 'ปกติ', 45, 'shop001', 'pork_spicy_salad.jpg'),
(9, 'แกงป่าปลา', 'ปกติ', 70, 'shop001', 'soup_fish.jpg'),
(12, 'ชุดคุ้มทุกวัน', 'กล่อง12ชิ้น', 279, 'shop002', 'kfc1.jpg'),
(13, 'ชุดไก่จัดใหญ่', 'กล่อง11ชิ้น', 199, 'shop002', 'kfc2.jpg'),
(14, 'ชุดทุกอังคาร', 'กล่อง24ชิ้น', 199, 'shop002', 'kfc3.jpg'),
(15, 'ชุดเป็ดคุ้ม', 'เซ็ต', 599, 'shop003', 'mk1.jpg'),
(16, 'ปาร์ตี้3ดี', 'เล็ก', 299, 'shop003', 'mk2.jpg'),
(17, 'ปาร์ตี้3ดี', 'กลาง', 499, 'shop003', 'mk2.jpg'),
(18, 'ปาร์ตี้3ดี', 'ใหญ่', 699, 'shop003', 'mk2.jpg'),
(19, 'Happy Combo', 'กล่องข้าว', 99, 'shop003', 'mk3.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_orders` int(11) NOT NULL,
  `Cus_username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `driver_username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_vat` float NOT NULL,
  `orders_pay_type` bit(1) DEFAULT NULL,
  `id_orders_status` int(11) NOT NULL,
  `orders_total_price` float NOT NULL,
  `orders_date_start_send` datetime NOT NULL,
  `orders_date_end_send` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_orders`, `Cus_username`, `driver_username`, `orders_vat`, `orders_pay_type`, `id_orders_status`, `orders_total_price`, `orders_date_start_send`, `orders_date_end_send`) VALUES
(30, 'arar44', 'dr002', 10.241, b'0', 2, 156.541, '2020-10-04 19:02:36', '2020-10-17 15:42:15'),
(34, 'arzeezar123', 'dr002', 19.038, b'0', 99, 291.01, '2020-10-05 23:47:49', '2020-10-17 15:00:02'),
(35, 'arzeezar123', 'dr001', 51.195, b'0', 4, 782.552, '2020-10-20 12:26:01', '2020-10-20 12:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id_orders_detail` int(11) NOT NULL,
  `id_food` int(11) NOT NULL,
  `orders_detail_item` float NOT NULL,
  `id_orders` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id_orders_detail`, `id_food`, `orders_detail_item`, `id_orders`) VALUES
(11, 1, 2, 30),
(12, 2, 1, 30),
(21, 1, 1, 34),
(22, 2, 1, 34),
(23, 3, 1, 34),
(25, 12, 1, 35),
(26, 13, 1, 35),
(27, 14, 1, 35);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

CREATE TABLE `orders_status` (
  `id_orders_status` int(11) NOT NULL,
  `orders_status_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`id_orders_status`, `orders_status_name`) VALUES
(1, 'ทำการสั่งซื้อ'),
(2, 'รับงาน'),
(3, 'กำลังนำส่ง'),
(4, 'จัดส่งเรียบร้อย'),
(88, 'คนขับยกเลิกงาน'),
(99, 'ลูกค้ายกเลิก');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `shop_username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `shop_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `shop_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `shop_address` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `shop_tel` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `shop_work_status` bit(1) NOT NULL,
  `shop_earn_acc_no` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `shop_earn_price` float NOT NULL,
  `shop_business_time_day` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `shop_business_time_open_time` time NOT NULL,
  `shop_business_time_close_time` time NOT NULL,
  `shop_share` float NOT NULL DEFAULT 0.4,
  `FilesName` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`shop_username`, `shop_password`, `shop_name`, `shop_address`, `shop_tel`, `shop_work_status`, `shop_earn_acc_no`, `shop_earn_price`, `shop_business_time_day`, `shop_business_time_open_time`, `shop_business_time_close_time`, `shop_share`, `FilesName`) VALUES
('aaa', '789456', 'ร้านชวนกิน', '89/7 ซอยมหิน แขวงมหา นครปฐม', '1234567890', b'0', '1472583690123', 0, 'จันทร์-อังคาร', '14:00:00', '15:00:00', 0.4, 'default-shop.png'),
('rankindee', '12345678', 'rankindee', '111 ซอยรามคำแหง แขวงวงเวียน กรุงเทพ', '0888888888', b'0', '1234567890123', 0, 'จันทร์', '15:00:00', '10:00:00', 0.4, 'default-shop.png'),
('rankk', '456789', 'rankk', '222 ตำบลบ้านเชียง อำเภอเมือง นครราชสีมา ', '0888888111', b'0', '7945123680123', 0, 'จันทร์-อังคาร', '19:00:00', '20:00:00', 0.4, 'default-shop.png'),
('shop001', '111', 'ร้านอาหารไทยมโนราห์', 'นครปฐ', '0834695784', b'0', '1234567890123', 62.6164, 'จันทร์-ศุกร์', '10:00:00', '17:00:00', 0.4, 'shop001.jpg'),
('shop002', 'shop002', 'KFC', 'พระนครศรีอยุธยา', '0934567121', b'0', '1203456782013', 313.021, 'จันทร์-อาทิตย์', '08:00:00', '20:00:00', 0.4, 'shop002.jpg'),
('shop003', 'shop003', 'MK', 'กรุงเทพ', '0314520231', b'0', '5486021443210', 0, 'อาทิตย์', '10:00:00', '14:00:00', 0.4, 'shop003.jpg'),
('shop004', 'shop004', 'Mcdonald', 'กรุงเทพ', '0412345789', b'0', '7845120326598', 0, 'อังคาร', '13:00:00', '22:00:00', 0.4, 'shop004.jpg'),
('shop005', 'shop005', 'great steak', 'กรุงเทพ', '0746890123', b'0', '9461325801346', 0, 'อังคาร-พุธ', '00:00:00', '05:00:00', 0.4, 'shop005.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Cus_username`),
  ADD KEY `id_cus_status` (`ID_Cus_Status`);

--
-- Indexes for table `customer_status`
--
ALTER TABLE `customer_status`
  ADD PRIMARY KEY (`ID_Cus_Status`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_username`),
  ADD KEY `ID_driver_status` (`ID_driver_status`);

--
-- Indexes for table `driver_status`
--
ALTER TABLE `driver_status`
  ADD PRIMARY KEY (`ID_driver_status`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id_food`) USING BTREE,
  ADD KEY `shop_username` (`shop_username`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_orders`),
  ADD KEY `Cus_username` (`Cus_username`),
  ADD KEY `driver_username` (`driver_username`),
  ADD KEY `id_orders_status` (`id_orders_status`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id_orders_detail`),
  ADD KEY `id_orders` (`id_orders`),
  ADD KEY `id_food` (`id_food`);

--
-- Indexes for table `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`id_orders_status`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`shop_username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id_food` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_orders` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id_orders_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id_cus_status`) REFERENCES `customer_status` (`ID_Cus_Status`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`ID_driver_status`) REFERENCES `driver_status` (`ID_driver_status`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`shop_username`) REFERENCES `shop` (`shop_username`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Cus_username`) REFERENCES `customer` (`Cus_username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`driver_username`) REFERENCES `driver` (`driver_username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`id_orders_status`) REFERENCES `orders_status` (`id_orders_status`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `orders_detail_ibfk_2` FOREIGN KEY (`id_orders`) REFERENCES `orders` (`id_orders`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_detail_ibfk_3` FOREIGN KEY (`id_food`) REFERENCES `food` (`id_food`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
