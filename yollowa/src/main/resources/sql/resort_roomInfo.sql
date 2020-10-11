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
-- Table structure for table `roominfo`
--

DROP TABLE IF EXISTS `roominfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roominfo` (
  `roomInfo_roomNumber` int NOT NULL AUTO_INCREMENT,
  `roomInfo_articleNumber` int NOT NULL,
  `roomInfo_name` varchar(45) NOT NULL,
  `roomInfo_peakPrice` int NOT NULL,
  `roomInfo_offPeakPrice` int NOT NULL,
  `roomInfo_peakStartDate` date NOT NULL,
  `roomInfo_peakEndDate` date NOT NULL,
  `roomInfo_minPeople` int NOT NULL,
  `roomInfo_maxPeople` int NOT NULL,
  `roomInfo_extraPrice` int NOT NULL,
  `roomInfo_img` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`roomInfo_roomNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roominfo`
--

LOCK TABLES `roominfo` WRITE;
/*!40000 ALTER TABLE `roominfo` DISABLE KEYS */;
INSERT INTO `roominfo` VALUES (1,3,'나야나 방1',150000,100000,'2020-10-01','2020-10-09',2,4,15000,'3_1_pension1_1.jpg'),(2,3,'나야나 방2',4100000,1200000,'2020-10-01','2020-10-31',12,41,40000,'3_2_pension3_1.jpg&3_2_pension2_4.jpg'),(3,4,'하하호호 방1',123000,230000,'2020-10-10','2020-10-29',2,4,13000,'4_3_pension1_4.jpg'),(4,5,'바다뷰호텔 방1',420000,120000,'2020-10-01','2020-10-27',2,12,20000,'5_4_pension3_1.jpg&5_4_pension3_2.jpg'),(5,5,'바다뷰호텔 방2',150000,120000,'2020-10-07','2020-11-04',2,5,15000,'5_5_pension2_3.jpg'),(6,6,'욜로와 펜션 방 1',2400000,200000,'2020-10-02','2020-10-28',23,45,20000,'6_6_room2_1.jpg&6_6_room2_2.jpg'),(7,8,'안산 방1',2500000,1500000,'2020-10-29','2020-11-27',2,4,30000,'8_7_room4_1.jpg'),(8,7,'테스트 방',540000,230000,'2020-10-19','2020-11-03',2,4,19000,'7_8_room3_1.jpg'),(9,12,'테스트 방',12450000,240000,'2020-10-01','2020-10-27',2,4,41400,'12_9_pension2_2.jpg&12_9_pension2_2.jpg'),(10,10,'기가맥힌방',160000,140000,'2020-10-01','2020-10-31',2,4,12345,'10_10_room2_4.jpg&10_10_room4_3.jpg'),(11,15,'안산펜션 방1',160000,120000,'2020-10-01','2020-10-31',2,6,20000,'15_11_room1_4.jpg&15_11_room1_3.jpg&15_11_room1_1.jpg'),(12,15,'안산펜션 방2',150000,100000,'2020-10-15','2020-11-17',2,4,20000,'15_12_room2_2.jpg&15_12_room5_1.jpg&15_12_room2_3.jpg');
/*!40000 ALTER TABLE `roominfo` ENABLE KEYS */;
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
