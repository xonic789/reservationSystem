-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: resort
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_reviewNumber` int NOT NULL AUTO_INCREMENT,
  `review_articleNumber` int NOT NULL,
  `review_category` int NOT NULL,
  `review_starPoint` int NOT NULL,
  `review_writedDate` date NOT NULL,
  `review_content` varchar(1000) NOT NULL,
  `review_writer` varchar(24) NOT NULL,
  PRIMARY KEY (`review_reviewNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,1,2,'2020-09-30','이집 정말 개떡같네요~','마이클잭슨'),(2,2,1,5,'2020-09-30','이집 정말 찰떡같네요~','숀마이클스'),(3,1,1,5,'2020-09-30','이집 정말 찰떡같네요1~이집 정말 찰떡같네요1~이집 정말 찰떡같네요1~이집 정말 찰떡같네요1~이집 정말 찰떡같네요1~이집 정말 찰떡같네요1~이집 정말 찰떡같네요1~이집 정말 찰떡같네요1~이집 정말 찰떡같네요1~이집 정말 찰떡같네요1~이집 정말 찰떡같네요1~이집 정말 찰떡같네요1~','숀마이클스'),(4,1,1,4,'2020-09-30','이집 정말 찰떡같네요2~','숀마이클스'),(5,1,1,1,'2020-10-20','이집 정말 찰떡같네요3~이집 정말 찰떡같네요3~이집 정말 찰떡같네요3~이집 정말 찰떡같네요3~이집 정말 찰떡같네요3~이집 정말 찰떡같네요3~이집 정말 찰떡같네요3~이집 정말 찰떡같네요3~이집 정말 찰떡같네요3~이집 정말 찰떡같네요3~이집 정말 찰떡같네요3~이집 정말 찰떡같네요3~이집 정말 찰떡같네요3~이집 정말 찰떡같네요3~이집 정말 찰떡같네요3~이집 정말 찰떡같네요3~이집 정말 찰떡같네요3~이집 정말 찰떡같네요3~이집 정말 찰떡같네요3~이집 정말 찰떡같네요3~이집 정말 찰떡같네요3~이집 정말 찰떡같네요3~이집 정말 찰떡같네요3~','숀마이클스'),(6,1,1,2,'2020-10-02','이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~','숀마이클스'),(7,1,1,2,'2020-10-02','이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~','숀마이클스'),(8,1,1,2,'2020-10-02','이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~이집 정말 찰떡같네요4~','숀마이클스'),(9,1,1,5,'2020-09-30','이집 정말 찰떡같네요1~이집 정말 찰떡같네요1~이집 정말 찰떡같네요1~이집 정말 찰떡같네요1~이집 정말 찰떡같네요1~이집 정말 찰떡같네요1~이집 정말 찰떡같네요1~이집 정말 찰떡같네요1~이집 정말 찰떡같네요1~이집 정말 찰떡같네요1~이집 정말 찰떡같네요1~이집 정말 찰떡같네요1~','숀마이클스'),(10,1,1,4,'2020-09-30','이집 정말 개떡같네요~','마이클잭슨'),(11,2,1,3,'2020-10-30','컨텐츠컨텐츠컨텐츠','글쓴이'),(12,1,1,4,'2020-10-03','sadasdasdasdㅁㄴㅇㅁ','ㅋㅋ'),(13,1,2,3,'2020-10-03','aaaaaaaaasdsdahjkhㅗㅓㅏㅗ로','네ㅔ');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-07 14:54:44
