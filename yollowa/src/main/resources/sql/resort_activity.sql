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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity` (
  `activity_number` int NOT NULL AUTO_INCREMENT,
  `activity_userNumber` int DEFAULT NULL,
  `activity_title` varchar(45) DEFAULT NULL,
  `activity_location` varchar(45) DEFAULT NULL,
  `activity_LatLng` varchar(100) DEFAULT NULL,
  `activity_category` varchar(45) DEFAULT NULL,
  `activity_hashTag` varchar(45) DEFAULT NULL,
  `activity_goodCount` int DEFAULT '0',
  `activity_reviewGradeRate` double DEFAULT '0',
  `activity_reviewCount` int DEFAULT '0',
  `activity_img` varchar(1000) DEFAULT NULL,
  `activity_temp` int DEFAULT '0',
  PRIMARY KEY (`activity_number`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1,1,'스키1','위치1','1234','ski','해시',1,1,1,'resources/img/bigmeet1.jpg',1),(2,2,'번지점프1','위치2','1234','jumping','해시',2,2,2,'resources/img/dog.jpg',1),(8,3,'래프팅1','위치3','1234','rafting','해시',3,3,3,'resources/img/hiker.jp',1),(9,4,'수상레저1','위치4','1234','leisure','해시',4,4,4,'resources/img/dog.jpg',0),(10,5,'스키2','위치5','1234','ski','해시',5,5,5,'resources/img/dog.jpg',1),(11,5,'번지점프2','위치5','1234','jumping','해시',5,1,6,'resources/img/girl.jpg',0),(12,5,'래프팅2','위치5','1234','rafting','해시',5,2,7,'resources/img/hiker.jpg',0),(13,5,'수상레저2','위치5','1234','leisure','해시',5,3,8,'resources/img/hotel1.jpg',1),(14,1,'스키3','위치1','1234','ski','해시',1,4,9,'resources/img/girl.jpg',1),(15,2,'번지점프3','위치2','1234','jumping','해시',2,5,10,'resources/img/girl.jpg',1),(16,3,'레프팅3','위치3','1234','rafting','해시',3,1,12,'resources/img/hotel1.jpg',1),(17,4,'수상레저3','위치4','1234','leisure','해시',4,2,3,'resources/img/hiker.jpg',0),(18,5,'스키4','위치5','1234','ski','해시',5,3,4,'resources/img/dog.jpg',1),(19,5,'번지점프4','위치5','1234','jumping','해시',5,4,6,'resources/img/girl.jpg',0),(20,5,'래프팅4','위치5','1234','rafting','해시',5,5,7,'resources/img/hiker.jpg',1),(21,5,'수상레저4','위치5','1234','leisure','해시',5,1,8,'resources/img/hotel1.jpg',1);
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-11 20:46:16
