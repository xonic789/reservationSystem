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
  `user_wishList` varchar(1000) DEFAULT NULL,
  `user_companyNumber` varchar(12) DEFAULT NULL,
  `user_companyName` varchar(45) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'user9','lee','남','2000-01-01','01022223330','경기도 광주시 창뜰','leeseungwoo9','1234','dltmddn9@gmail.com','다이빙,스카이다이빙,번지점프',NULL,NULL,NULL,0,NULL,NULL,NULL),(2,'xonic','이승우','남','1995-09-06','01022223331','경기도 광주시 창뜰','dltmddn','1234','dltmddn951@gmail.com','다이빙,스카이다이빙,번지점프',NULL,NULL,'안녕&안녕1',0,NULL,NULL,''),(3,'user1','lee','여','2000-01-02','01022223332','경기도 광주시 창뜰','leeseungwoo1','1234','dltmddn1@gmail.com','다이빙,스카이다이빙,번지점프',NULL,NULL,NULL,0,NULL,'',''),(4,'user2','lee','남','2000-01-03','01022223333','경기도 광주시 창뜰','leeseungwoo2','1234','dltmddn2@gmail.com','다이빙,스카이다이빙,번지점프',NULL,NULL,NULL,0,NULL,NULL,NULL),(5,'user3','lee','여','2000-01-04','01022223334','경기도 광주시 창뜰','leeseungwoo3','1234','dltmddn3@gmail.com','다이빙,스카이다이빙,번지점프',NULL,NULL,NULL,0,NULL,NULL,NULL),(6,'user4','lee','남','2000-01-05','01022223335','경기도 광주시 창뜰','leeseungwoo4','1234','dltmddn4@gmail.com','다이빙,스카이다이빙,번지점프',NULL,NULL,NULL,0,NULL,NULL,NULL),(7,'user5','lee','남','2000-01-06','01022223336','경기도 광주시 창뜰','leeseungwoo5','1234','dltmddn5@gmail.com','다이빙,스카이다이빙,번지점프',NULL,NULL,NULL,0,NULL,NULL,NULL),(8,'user6','lee','남','2000-01-07','01022223337','경기도 광주시 창뜰','leeseungwoo6','1234','dltmddn6@gmail.com','다이빙,스카이다이빙,번지점프',NULL,NULL,NULL,0,NULL,NULL,NULL),(9,'user7','lee','남','2000-01-08','01022223338','경기도 광주시 창뜰','leeseungwoo7','1234','dltmddn7@gmail.com','다이빙,스카이다이빙,번지점프',NULL,NULL,NULL,0,NULL,NULL,NULL),(10,'user8','lee','여','2000-01-09','01022223339','경기도 광주시 창뜰','leeseungwoo8','1234','dltmddn8@gmail.com','다이빙,스카이다이빙,번지점프',NULL,NULL,NULL,0,NULL,NULL,NULL),(12,'마리오123','이승우','남',NULL,NULL,'제주특별자치도 서귀포시 가가로 14 ㅁㄴㅇㄹ','dltmddn123','asdf123!',NULL,'액티비티 예약',NULL,NULL,NULL,0,NULL,NULL,NULL),(13,'이승우우우','이승우','남',NULL,NULL,'제주특별자치도 서귀포시 가가로 14 123123','dltmddn987','asdf123!',NULL,'액티비티 예약',NULL,NULL,NULL,0,NULL,NULL,NULL),(14,'승우리','이승우','남',NULL,NULL,'제주특별자치도 서귀포시 가가로 14 가라좀','dltmddn123123','asdf123!',NULL,'액티비티 예약',NULL,NULL,NULL,0,NULL,'',NULL),(15,'승우리1','이승우','남',NULL,NULL,'제주특별자치도 서귀포시 가가로 14 가라좀','manager1','asdf123!!',NULL,'액티비티 예약',NULL,NULL,NULL,0,NULL,NULL,NULL),(16,'마리오','이승우','남',NULL,NULL,'제주특별자치도 서귀포시 가가로 14 가가가','dltmddn078','asdf123!',NULL,'액티비티 예약',NULL,NULL,NULL,0,NULL,'20006076',NULL),(17,'승우리112','이승우','남',NULL,NULL,'제주특별자치도 서귀포시 가가로 14 가가로','dltmddn9871','asdf123!',NULL,'액티비티 예약',NULL,NULL,NULL,0,NULL,NULL,'1488585483'),(18,'도가영','이승우','여',NULL,NULL,'제주특별자치도 서귀포시 가가로 14 가가가','dodogaga','asdf!123',NULL,'액티비티 예약',NULL,NULL,NULL,0,NULL,NULL,'1488743584'),(19,'dget3','이승우','남',NULL,NULL,'제주특별자치도 제주시 가령골길 1-1 ㅇㄻㄴㅇㄹ','awega3gw3','awegaw3!23',NULL,'액티비티 예약',NULL,NULL,NULL,0,NULL,NULL,NULL),(20,'sag3wa','이승우','남',NULL,NULL,'제주특별자치도 서귀포시 가가로 14 ㅁㄴㅇㄹ','wesawe3','235235a!2',NULL,'액티비티 예약',NULL,NULL,NULL,0,NULL,NULL,NULL),(21,'aw4tawe','이승우','남',NULL,NULL,'제주특별자치도 서귀포시 가가로 14 ','dltmddn1245','w3535!24',NULL,'액티비티 예약',NULL,NULL,NULL,0,NULL,NULL,NULL),(22,'wa3ta3w!','이승우','남',NULL,NULL,'제주특별자치도 서귀포시 가가로 14 awegawe','dltmddn35235','2q35235!42',NULL,'액티비티 예약',NULL,NULL,NULL,0,NULL,NULL,NULL),(23,'ㄷㄴㅁㅎㅁㅈㄷ','갸맥고','남',NULL,NULL,'서울 강남구 가로수길 5 ','353aw3tga3','wa3ga3w!',NULL,'액티비티 예약',NULL,NULL,NULL,0,NULL,NULL,NULL);
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

-- Dump completed on 2020-10-07 14:54:49
