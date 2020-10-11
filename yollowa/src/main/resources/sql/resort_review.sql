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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (14,15,2,4,'2020-10-11','장점\n사진 그대로 객실과 스파가 잘갖추어져있구요 주인분들도 정말 친절했습니다. 그리고 바베큐 파티할때도 각자 방에서 먹을수 있어서 너무 좋았고 재밌었어요\n단점\n집안에 생각보다 콘센트가 적어서 조금 불편했어요 특히 침실에 콘센트가 하나도 없어요.. ㅠㅠ\n보중금제도 있는거 잊지마시고 준비하고 가세요~~','나야나'),(15,15,2,5,'2020-10-11','사장님 친절하시고 깨끗해서 잘 놀다왔어요.\n주차장이 비탈길에 있어 짐을 옮기기 쪼끔 어려웠으나 집에 갈땐 가볍게 돌아가서 괜찮았어요 ㅎㅎ\n바베큐 방이 따로 있어서 너무 좋았어요! 관리 잘 된 정수기도 있고 냉장고도 크고 깔끔했습니다~','오뚱땡');
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

-- Dump completed on 2020-10-11 20:46:15
