-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 20, 2020 at 08:23 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_member`
--

-- --------------------------------------------------------

--
-- Table structure for table `my_member`
--

CREATE TABLE `my_member` (
  `id` tinyint(100) NOT NULL COMMENT '流水號',
  `idd` int(100) DEFAULT NULL,
  `memberId` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '會員編號',
  `loginId` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '會員帳號',
  `loginPwd` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '會員密碼',
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '會員頭像',
  `fullName` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '全名',
  `gender` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性別',
  `birthDate` date DEFAULT NULL COMMENT '生日',
  `email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '電子郵件',
  `mobileNumber` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手機號碼',
  `address` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `joinDate` date DEFAULT current_timestamp() COMMENT '加入日期',
  `currentStatus` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '現行狀態',
  `rankCoin` int(10) DEFAULT NULL COMMENT '貝殼幣',
  `rankId` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '級別名稱',
  `created_at` datetime DEFAULT current_timestamp() COMMENT '創建日期',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_member`
--

INSERT INTO `my_member` (`id`, `idd`, `memberId`, `loginId`, `loginPwd`, `avatar`, `fullName`, `gender`, `birthDate`, `email`, `mobileNumber`, `address`, `joinDate`, `currentStatus`, `rankCoin`, `rankId`, `created_at`, `updated_at`) VALUES
(12, 2, 'M20010002', 'member123', 'member123', '20200117105655.jpg', 'Berry', '男', '2020-01-02', 'berry@gmail.com', '0999-999-228', '台北市106大安區和平東路二段106號11樓', '2020-01-17', 'ACTIVE', 600, '銅牌小丑魚', '2020-01-17 02:56:55', '2020-01-20 03:35:11'),
(14, 4, 'M20010004', 'member123', 'member123', '20200117113418.jpg', 'David', '男', '2020-01-01', 'random@gmail.com', '0999-999-444', '台北市106大安區和平東路二段106號11樓', '2020-01-17', 'ACTIVE', 4999, '銀牌海龜', '2020-01-17 03:34:18', '2020-01-17 06:08:00'),
(15, 5, 'M20010005', 'member123', 'member123', '20200117113449.jpg', 'Ellen', '男', '2020-01-01', 'random@gmail.com', '0999-999-777', '台北市106大安區和平東路二段106號11樓', '2020-01-17', 'ACTIVE', 30000, '金牌海豚', '2020-01-17 03:34:49', '2020-01-17 06:07:56'),
(16, 6, 'M20010006', 'member123', 'member123', '20200117113550.jpg', 'Fable', '女', '2020-01-01', 'random777@gmail.com', '0999-999-777', '台北市106大安區和平東路二段106號11樓', '2020-01-17', 'ACTIVE', 50001, '鑽石鯨魚', '2020-01-17 03:35:50', '2020-01-17 06:07:52'),
(17, 7, 'M20010007', 'member123', 'member123', '20200117113745.jpg', 'Garry', '男', '2020-01-01', 'random@gmail.com', '0999-999-777', '台北市106大安區和平東路二段106號11樓', '2020-01-17', 'ACTIVE', NULL, '', '2020-01-17 03:37:45', '2020-01-17 03:37:45'),
(18, 8, 'M20010008', 'member123', 'member123', '20200117113819.jpg', 'Harry', '男', '2020-01-01', 'random@gmail.com', '0999-999-333', '台北市106大安區和平東路二段106號11樓', '2020-01-17', 'DEACTIVE', NULL, '', '2020-01-17 03:38:19', '2020-01-17 03:38:19'),
(19, 9, 'M20010009', 'member123', 'member123', '20200117113920.jpg', 'Ivy', '女', '2020-01-01', 'random@gmail.com', '0999-999-777', '台北市106大安區和平東路二段106號11樓', '2020-01-17', 'SUSPENDED', NULL, '', '2020-01-17 03:39:20', '2020-01-17 03:39:20'),
(20, 10, 'M20010010', 'member123', 'member123', '20200117114008.jpg', 'Jamie', '男', '2020-01-01', 'random777@gmail.com', '0999-999-777', '台北市106大安區和平東路二段106號11樓', '2020-01-17', 'ACTIVE', NULL, '', '2020-01-17 03:40:08', '2020-01-17 03:40:08'),
(21, 11, 'M20010011', 'member123', 'member123', '20200117114041.jpg', 'Karen', '女', '2020-01-01', 'random777@gmail.com', '0999-999-333', '台北市106大安區和平東路二段106號11樓', '2020-01-17', 'DEACTIVE', NULL, '', '2020-01-17 03:40:41', '2020-01-17 03:40:41'),
(22, 12, 'M20010012', 'member123', 'member123', '20200117114119.jpg', 'Lorraine', '女', '2020-01-01', 'random777@gmail.com', '0999-999-333', '台北市106大安區和平東路二段106號11樓', '2020-01-17', 'SUSPENDED', NULL, '', '2020-01-17 03:41:19', '2020-01-17 03:41:19'),
(23, 13, 'M20010013', 'member123', 'member123', '20200117114155.jpg', 'Mandy', '女', '2020-01-01', 'random777@gmail.com', '0999-999-333', '台北市106大安區和平東路二段106號11樓', '2020-01-17', 'ACTIVE', NULL, '', '2020-01-17 03:41:55', '2020-01-17 03:41:55'),
(24, 14, 'M20010014', 'member123', 'member123', '20200117114237.jpg', 'Nathan', '男', '2020-01-01', 'random@gmail.com', '0999-999-999', '台北市106大安區和平東路二段106號11樓', '2020-01-17', 'ACTIVE', NULL, '', '2020-01-17 03:42:37', '2020-01-17 03:42:37'),
(25, 15, 'M20010015', 'member123', 'member123', '20200117184457.jpg', 'Octavia', '男', '2020-01-01', 'random@gmail.com', '0999-999-888', '台北市大安區和平東路二段106號9樓', '2020-01-17', 'ACTIVE', NULL, NULL, '2020-01-17 10:44:57', '2020-01-17 10:47:54'),
(26, 16, 'M20010016', 'member123', 'member123', '20200117185042.jpg', 'Penny', '男', '2020-01-01', 'random@gmail.com', '0999-999-777', '台北市106大安區和平東路二段106號11樓', '2020-01-17', 'ACTIVE', NULL, NULL, '2020-01-17 10:50:42', '2020-01-17 10:50:42'),
(27, 17, 'M20010017', 'member123', 'member123', '20200117194537.jpg', 'Queenie', '女', '2020-01-01', 'random@gmail.com', '0999-999-777', '台北市106大安區和平東路二段106號11樓', '2020-01-17', 'ACTIVE', NULL, NULL, '2020-01-17 11:45:37', '2020-01-17 11:45:37'),
(28, 18, 'M20010018', 'member123', 'member123', '20200120105326.jpg', 'Rudy', '男', '2020-01-01', 'random@gmail.com', '0999-999-999', '台北市大安區和平東路二段106號9樓', '2020-01-20', 'ACTIVE', 500, '銀牌海龜', '2020-01-20 02:53:26', '2020-01-20 03:36:01'),
(29, 19, 'M20010019', 'member123', 'member123', '20200120114151.jpg', 'Sandy', '女', '2020-01-01', 'random@gmail.com', '0999-999-999', '台北市大安區和平東路二段106號9樓 ', '2020-01-20', 'DEACTIVE', 500, '銀牌海龜', '2020-01-20 03:41:51', '2020-01-20 03:43:02'),
(30, 20, 'M20010020', 'member123', 'member123', '20200120114514.jpg', 'Terry', '男', '2020-01-01', 'random@gmail.com', '0999-999-999', '台北市大安區和平東路二段106號9樓', '2020-01-20', 'DEACTIVE', 500, '銀牌海龜', '2020-01-20 03:45:14', '2020-01-20 03:45:14'),
(31, 21, 'M20010021', 'member123', 'member123', '20200120121156.jpg', 'Ursula', '女', '2020-01-01', 'random@gmail.com', '0999-999-999', '台北市大安區和平東路二段106號9樓', '2020-01-20', 'ACTIVE', 0, '銅牌小丑魚', '2020-01-20 04:11:56', '2020-01-20 04:11:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `my_member`
--
ALTER TABLE `my_member`
  ADD PRIMARY KEY (`id`,`memberId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `my_member`
--
ALTER TABLE `my_member`
  MODIFY `id` tinyint(100) NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
