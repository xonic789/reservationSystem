-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: resort
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_number` int NOT NULL AUTO_INCREMENT,
  `user_nickName` varchar(24) NOT NULL,
  `user_name` varchar(15) NOT NULL,
  `user_gender` varchar(10) NOT NULL,
  `user_birthday` date DEFAULT NULL,
  `user_phoneNumber` varchar(11) DEFAULT NULL,
  `user_address` varchar(100) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `user_password` varchar(15) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_likes` varchar(1000) DEFAULT NULL,
  `user_aWishList` varchar(1000) DEFAULT NULL,
  `user_lWishList` varchar(1000) DEFAULT NULL,
  `user_companyNumber` varchar(12) DEFAULT NULL,
  `user_companyName` varchar(1000) DEFAULT NULL,
  `user_level` int NOT NULL DEFAULT '0',
  `user_googleId` varchar(45) DEFAULT NULL,
  `user_naverId` varchar(45) DEFAULT NULL,
  `user_kakaoId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_number`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `user_nickname_UNIQUE` (`user_nickName`),
  UNIQUE KEY `user_phonenumber_UNIQUE` (`user_phoneNumber`),
  UNIQUE KEY `user_companyid_UNIQUE` (`user_companyNumber`),
  UNIQUE KEY `user_email_UNIQUE` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'호스트1','호스트1','남','1995-08-31','01000000000','d','host1','1234','host1',NULL,NULL,NULL,'1','안산펜션&욜로와펜션&롯데리조트&바다뷰호텔&욜로와모텔&나야나게스트하우스&하하호호리조트&의자왕모텔&사랑모텔&난다요호텔&기가맥힌게스트하우스',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-11 20:46:13
