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
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `information` (
  `information_number` int NOT NULL,
  `information_type` int NOT NULL,
  `information_notice` varchar(1000) DEFAULT NULL,
  `information_basicInfo` varchar(1000) DEFAULT NULL,
  `information_comment` varchar(1000) DEFAULT NULL,
  `information_addPeopleInfo` varchar(1000) DEFAULT NULL,
  `information_service` varchar(1000) DEFAULT NULL,
  `information_refundInfo` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information`
--

LOCK TABLES `information` WRITE;
/*!40000 ALTER TABLE `information` DISABLE KEYS */;
INSERT INTO `information` VALUES (1,2,'123','123','123','123','123','123'),(2,2,'123','123','123','123','123','123'),(1,2,'123','123','123','123','123','123'),(2,2,'123','123','123','123','123','123'),(3,2,'공지1','기본정보1','우리 게스트하우스로 놀러오세용','추가정보1','편의시설 1','취소 및 환불규정1'),(4,2,'공지1','기본정보 등록1','사장님 한마디','추가정보1','서비스1','취소 환불 규정1'),(5,2,'공지1','기본정보 등록1','ㅎㅎ','추가정보1','서비스1','취소 환불 규정1'),(6,2,'공지1','기본정보 등록1','욜로왕','추가정보1','서비스1','취소 환불 규정1'),(7,2,'공지1','기본정보 등록1','1','추가정보1','서비스1','취소 환불 규정1'),(8,2,'공지1','기본정보 등록1','ㅇㅇㅇ','추가정보1','서비스1','취소 환불 규정1'),(9,2,'1','1','d','1','123','1'),(10,2,'11','1','123','1','1','1'),(11,2,'123','1','423','1','1','1'),(12,2,'3','4','2','5','6','7'),(13,2,'ds','1','das','1','1','1'),(14,2,'1','1','1','1','1','1'),(15,2,'공지테스트1&공지테스트2&공지테스트3&공지테스트4','기본정보 등록1&기본정보 등록2&기본정보 등록3&기본정보 등록4','안녕하세요 안산펜션은 한마디로 대바깁니다. 어서오세요~','추가정보1&추가정보2&추가정보3&추가정보4','서비스1&서비스2&서비스3&서비스4','취소 환불 규정1&취소 환불 규정2&취소 환불 규정3&취소 환불 규정4');
/*!40000 ALTER TABLE `information` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-11 20:46:14
