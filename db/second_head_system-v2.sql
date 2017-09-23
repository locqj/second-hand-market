-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: second_head_system
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `status_del` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status_del` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (5,'D0','制冷与低温技术',1),(6,'D1','光电子技术科学',1),(7,'D2','电子信息科学与技术',1),(8,'D3','信息资源管理',1);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `good`
--

DROP TABLE IF EXISTS `good`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `status_sell` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `good`
--

LOCK TABLES `good` WRITE;
/*!40000 ALTER TABLE `good` DISABLE KEYS */;
/*!40000 ALTER TABLE `good` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lessons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `free` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2017_08_14_030502_create_lessons_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `private_letter`
--

DROP TABLE IF EXISTS `private_letter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `private_letter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `son_code` varchar(50) NOT NULL,
  `send_code` varchar(50) NOT NULL,
  `receive_code` varchar(50) NOT NULL,
  `good_code` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `status_saw` int(11) NOT NULL DEFAULT '0' COMMENT '0-未读',
  `time` datetime NOT NULL,
  `status_del` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `private_letter`
--

LOCK TABLES `private_letter` WRITE;
/*!40000 ALTER TABLE `private_letter` DISABLE KEYS */;
/*!40000 ALTER TABLE `private_letter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `public_letter`
--

DROP TABLE IF EXISTS `public_letter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `public_letter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `son_code` varchar(50) NOT NULL,
  `send_code` varchar(50) NOT NULL,
  `receive_code` varchar(50) NOT NULL,
  `good_code` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `status_saw` int(11) NOT NULL DEFAULT '0',
  `status_del` int(11) NOT NULL DEFAULT '1',
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `public_letter`
--

LOCK TABLES `public_letter` WRITE;
/*!40000 ALTER TABLE `public_letter` DISABLE KEYS */;
/*!40000 ALTER TABLE `public_letter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status_del` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (3,'S0','广东工业大学',1),(4,'S1','重庆交通大学',1),(5,'S2','重庆大学',1),(6,'S3','合肥工业大学',1),(7,'S4','兰州交通大学',1),(8,'S5','重庆邮电大学',1),(9,'S6','厦门大学',1);
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_department`
--

DROP TABLE IF EXISTS `school_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_code` varchar(50) NOT NULL,
  `school_code` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_department`
--

LOCK TABLES `school_department` WRITE;
/*!40000 ALTER TABLE `school_department` DISABLE KEYS */;
INSERT INTO `school_department` VALUES (1,'D0','S0'),(2,'D1','S1'),(3,'D2','S2'),(4,'D2','S3'),(5,'D3','S4'),(6,'D3','S5'),(7,'D2','S6'),(8,'D3','S1');
/*!40000 ALTER TABLE `school_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_credit`
--

DROP TABLE IF EXISTS `user_credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_credit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` int(11) NOT NULL,
  `user_code` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_credit`
--

LOCK TABLES `user_credit` WRITE;
/*!40000 ALTER TABLE `user_credit` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_credit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_detail`
--

DROP TABLE IF EXISTS `user_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(50) NOT NULL,
  `sex` int(11) DEFAULT NULL COMMENT '2-female',
  `phone` varchar(255) DEFAULT NULL,
  `img_head` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `entry_year` year(4) DEFAULT NULL,
  `school_code` varchar(50) DEFAULT NULL,
  `department_code` varchar(50) DEFAULT NULL,
  `status_id` int(11) DEFAULT '0' COMMENT '是否身份验证',
  `status_school` int(11) DEFAULT '0' COMMENT '是否学校验证',
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_detail`
--

LOCK TABLES `user_detail` WRITE;
/*!40000 ALTER TABLE `user_detail` DISABLE KEYS */;
INSERT INTO `user_detail` VALUES (2,'C0',1,'15501526809',NULL,'2017-09-22',2014,'S1','D1',0,0,NULL),(8,'C2',2,'15501526809',NULL,'2007-09-22',2011,'S1','D3',0,0,NULL);
/*!40000 ALTER TABLE `user_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login`
--

DROP TABLE IF EXISTS `user_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `status_del` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login`
--

LOCK TABLES `user_login` WRITE;
/*!40000 ALTER TABLE `user_login` DISABLE KEYS */;
INSERT INTO `user_login` VALUES (21,'','$2y$10$EqUCRXr68qfRdEPjwnJiv.nOKkgH9jHTm.5Mavel9QfHf1423AQwK',0,'locqj','2017-09-17 20:44:23','2017-09-17 20:44:23'),(22,'','$2y$10$t28KfhBj0M6kMYJMm3aZSec.kloKwAfBGtvN3CQqukt13d85Utp/6',0,'locqj','2017-09-17 20:44:40','2017-09-17 20:44:40'),(23,'','$2y$10$XthxxCO03wH44AWdprRWZOkCPpbqewSYDniStzvGwDnHkOpF9Lyh2',0,'locqj','2017-09-17 20:51:56','2017-09-17 20:51:56'),(24,'','$2y$10$7rYWNe9wf0dIN0U.kuAmh.QJNfOYJQ8sWiGwcbBY9qGLrPoYXU9x2',0,'locqj','2017-09-17 20:58:42','2017-09-17 20:58:42'),(25,'','$2y$10$.4TSw/D3Jsuk9.Zb0NNn5uCRH0XWtrt8DcJqqcRlPV9IWv/1.3jXu',0,'locqj','2017-09-17 20:58:54','2017-09-17 20:58:54'),(26,'','$2y$10$PV0ibmeiMWT9rrYyggyMjuStwPELKKz8VBdgOJk19loupKGVycfjK',0,'locqj','2017-09-17 21:00:12','2017-09-17 21:00:12');
/*!40000 ALTER TABLE `user_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_message`
--

DROP TABLE IF EXISTS `user_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) NOT NULL,
  `verity_num` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_message`
--

LOCK TABLES `user_message` WRITE;
/*!40000 ALTER TABLE `user_message` DISABLE KEYS */;
INSERT INTO `user_message` VALUES (1,'15501526809','9999');
/*!40000 ALTER TABLE `user_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_verity`
--

DROP TABLE IF EXISTS `user_verity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_verity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status_side` int(11) NOT NULL COMMENT '1--正面, 0--反面',
  `status_type` int(11) NOT NULL COMMENT '1--身份证, 2--学生证',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_verity`
--

LOCK TABLES `user_verity` WRITE;
/*!40000 ALTER TABLE `user_verity` DISABLE KEYS */;
INSERT INTO `user_verity` VALUES (1,'C2','2017-09-23-16-52-58-59c620eae19e4.jpg',1,1),(2,'C2','2017-09-23-16-53-01-59c620ed62679.jpg',0,1),(3,'C2','2017-09-23-16-53-29-59c62109a4ed9.jpg',0,2),(4,'C2','2017-09-23-16-53-33-59c6210d12add.jpg',1,2);
/*!40000 ALTER TABLE `user_verity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10,'locqj','locqj@163.com','$2y$10$M2fk0WZMxnyiB4Ul.sQ4duoMd/KkRq79sIi22al1pBuc5eTelslRS',NULL,'2017-09-21 00:57:10','2017-09-21 00:57:10','C0'),(11,'locq','locqj@163.com','$2y$10$ITewGze/n8ktknsLVoNI0ev2u8U.Nh6WuZuxSZ3Jb9UF81cBTxJZy',NULL,'2017-09-23 05:57:46','2017-09-23 05:57:46','C1'),(12,'陈庆杰','locqj@163.com','$2y$10$xXuWR4QwGjXRvz9Sz7IkKueCouMRkg.2KtwG1U0brexYQR5fRXWba',NULL,'2017-09-23 07:27:34','2017-09-23 07:27:34','C2');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-23 17:02:02
