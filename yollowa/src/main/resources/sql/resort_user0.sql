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
  `user_birthday` varchar(8) NOT NULL,
  `user_phoneNumber` varchar(11) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `user_password` varchar(15) NOT NULL,
  `user_email` varchar(40) NOT NULL,
  `user_likes` varchar(1000) DEFAULT NULL,
  `user_wishList` varchar(1000) DEFAULT NULL,
  `user_companyNumber` varchar(12) DEFAULT NULL,
  `user_companyName` varchar(45) DEFAULT NULL,
  `user_level` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_number`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `user_email_UNIQUE` (`user_email`),
  UNIQUE KEY `user_phonenumber_UNIQUE` (`user_phoneNumber`),
  UNIQUE KEY `user_nickname_UNIQUE` (`user_nickName`),
  UNIQUE KEY `user_companyid_UNIQUE` (`user_companyNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'user9','lee','남','20000101','01022223330','경기도 광주시 창뜰','leeseungwoo9','1234','dltmddn9@gmail.com','다이빙,스카이다이빙,번지점프',NULL,NULL,NULL,0),(2,'xonic','이승우','남','19950906','01022223331','경기도 광주시 창뜰','dltmddn','1234','dltmddn951@gmail.com','다이빙,스카이다이빙,번지점프',NULL,NULL,NULL,0),(3,'user1','lee','여','20000102','01022223332','경기도 광주시 창뜰','leeseungwoo1','1234','dltmddn1@gmail.com','다이빙,스카이다이빙,번지점프',NULL,NULL,NULL,0),(4,'user2','lee','남','20000103','01022223333','경기도 광주시 창뜰','leeseungwoo2','1234','dltmddn2@gmail.com','다이빙,스카이다이빙,번지점프',NULL,NULL,NULL,0),(5,'user3','lee','여','20000104','01022223334','경기도 광주시 창뜰','leeseungwoo3','1234','dltmddn3@gmail.com','다이빙,스카이다이빙,번지점프',NULL,NULL,NULL,0),(6,'user4','lee','남','20000105','01022223335','경기도 광주시 창뜰','leeseungwoo4','1234','dltmddn4@gmail.com','다이빙,스카이다이빙,번지점프',NULL,NULL,NULL,0),(7,'user5','lee','남','20000106','01022223336','경기도 광주시 창뜰','leeseungwoo5','1234','dltmddn5@gmail.com','다이빙,스카이다이빙,번지점프',NULL,NULL,NULL,0),(8,'user6','lee','남','20000107','01022223337','경기도 광주시 창뜰','leeseungwoo6','1234','dltmddn6@gmail.com','다이빙,스카이다이빙,번지점프',NULL,NULL,NULL,0),(9,'user7','lee','남','20000108','01022223338','경기도 광주시 창뜰','leeseungwoo7','1234','dltmddn7@gmail.com','다이빙,스카이다이빙,번지점프',NULL,NULL,NULL,0),(10,'user8','lee','여','20000109','01022223339','경기도 광주시 창뜰','leeseungwoo8','1234','dltmddn8@gmail.com','다이빙,스카이다이빙,번지점프',NULL,NULL,NULL,0);
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

-- Dump completed on 2020-09-26  1:57:21