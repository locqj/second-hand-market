-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2017-08-24 17:52:28
-- 服务器版本： 5.6.36-log
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `second_head_system`
--

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `status_del` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status_del` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `good`
--

CREATE TABLE `good` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `school_code` varchar(50) NOT NULL,
  `department_code` varchar(50) NOT NULL,
  `category_code` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  `price` float DEFAULT NULL,
  `content` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `imgs` text NOT NULL,
  `status_del` int(11) NOT NULL DEFAULT '1',
  `status_sell` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `private_letter`
--

CREATE TABLE `private_letter` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `son_code` varchar(50) NOT NULL,
  `send_code` varchar(50) NOT NULL,
  `receive_code` varchar(50) NOT NULL,
  `good_code` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `status_saw` int(11) NOT NULL DEFAULT '0' COMMENT '0-未读',
  `time` datetime NOT NULL,
  `status_del` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `public_letter`
--

CREATE TABLE `public_letter` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `son_code` varchar(50) NOT NULL,
  `send_code` varchar(50) NOT NULL,
  `receive_code` varchar(50) NOT NULL,
  `good_code` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `status_saw` int(11) NOT NULL DEFAULT '0',
  `status_del` int(11) NOT NULL DEFAULT '1',
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `school`
--

CREATE TABLE `school` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status_del` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `school_department`
--

CREATE TABLE `school_department` (
  `id` int(11) NOT NULL,
  `department_code` varchar(50) NOT NULL,
  `school_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `user_credit`
--

CREATE TABLE `user_credit` (
  `id` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `user_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `user_code` varchar(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `sex` int(11) NOT NULL COMMENT '0-female',
  `phone` varchar(255) NOT NULL,
  `img_head` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `entry_year` year(4) NOT NULL,
  `school_code` varchar(50) NOT NULL,
  `department_code` varchar(50) NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT '0' COMMENT '是否身份验证',
  `status_school` int(11) NOT NULL DEFAULT '0' COMMENT '是否学校验证',
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `user_login`
--

CREATE TABLE `user_login` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `status_del` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `user_message`
--

CREATE TABLE `user_message` (
  `id` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `verity_num` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `user_verity`
--

CREATE TABLE `user_verity` (
  `id` int(11) NOT NULL,
  `user_code` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `good`
--
ALTER TABLE `good`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `private_letter`
--
ALTER TABLE `private_letter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `public_letter`
--
ALTER TABLE `public_letter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_department`
--
ALTER TABLE `school_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_credit`
--
ALTER TABLE `user_credit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_message`
--
ALTER TABLE `user_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_verity`
--
ALTER TABLE `user_verity`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `good`
--
ALTER TABLE `good`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `private_letter`
--
ALTER TABLE `private_letter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `public_letter`
--
ALTER TABLE `public_letter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `school_department`
--
ALTER TABLE `school_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `user_credit`
--
ALTER TABLE `user_credit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `user_message`
--
ALTER TABLE `user_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `user_verity`
--
ALTER TABLE `user_verity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
