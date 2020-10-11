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
-- Table structure for table `lodgement`
--

DROP TABLE IF EXISTS `lodgement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lodgement` (
  `lodgement_number` int NOT NULL AUTO_INCREMENT,
  `lodgement_userNumber` int DEFAULT NULL,
  `lodgement_companyName` varchar(45) DEFAULT NULL,
  `lodgement_location` varchar(45) DEFAULT NULL,
  `lodgement_LatLng` varchar(100) DEFAULT NULL,
  `lodgement_category` varchar(45) DEFAULT NULL,
  `lodgement_hashTag` varchar(45) DEFAULT NULL,
  `lodgement_goodCount` int DEFAULT '0',
  `lodgement_reviewGradeRate` double DEFAULT '0',
  `lodgement_reviewCount` int DEFAULT '0',
  `lodgement_img` varchar(1000) DEFAULT NULL,
  `lodgement_temp` int DEFAULT '0',
  PRIMARY KEY (`lodgement_number`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lodgement`
--

LOCK TABLES `lodgement` WRITE;
/*!40000 ALTER TABLE `lodgement` DISABLE KEYS */;
INSERT INTO `lodgement` VALUES (3,1,'나야나게스트하우스','경기 안산시 단원구 갈마지길 5',NULL,'guest','#게스트하우스&#게하&#게스트게스트',0,4.2,182,'3_hotel1.jpg&3_naverButton.png&3_dog.jpg',1),(4,1,'하하호호리조트','울산 동구 안산들로 55',NULL,'resort','123',0,2.6,234,'4_pension4_3.jpg&dsadasd',1),(5,1,'바다뷰호텔','부산 수영구 남천바다로 6',NULL,'hotel','#부산&#바다뷰호텔',0,3.6,12,'4_pension4_3.jpg&dsadasd',1),(6,1,'욜로와펜션','울산 동구 안산들로 55',NULL,'pension','#펜션',0,4.5,123,'6_pension1_1.jpg&6_pension1_2.jpg',1),(7,1,'롯데리조트','울산 동구 안산들로 55',NULL,'resort','#해쉬태그1&#해시1',0,1.5,423,'7_hotel_1.jpg&7_hotel_3.jpg',1),(8,1,'안산펜션','경기 안산시 단원구 갈마지길 5',NULL,'pension','#해쉬태그1&#해시1',0,3.9,573,'8_pension3_1.jpg&8_pension3_2.jpg',1),(9,1,'욜로와모텔','세종특별자치시 연기면 호수공원길 155',NULL,'motel','#욜로와 단독',0,0,0,'9_hotel_4.jpg&9_pension2_1.jpg',1),(10,1,'기가맥힌게스트하우스','서울 강남구 양재대로 333',NULL,'guest','#욜로와 단독',0,0,0,'10_pension1_3.jpg&10_pension3_1.jpg',1),(11,1,'사랑모텔','경기 안산시 단원구 갈마지길 5-2',NULL,'motel','123',0,0,0,'11_pension2_3.jpg&11_pension4_1.jpg',1),(12,1,'난다요호텔','세종특별자치시 연기면 호수공원길 155',NULL,'hotel','3',0,0,0,'12_room5_1.jpg&12_room5_3.jpg',1),(13,1,'하하호호리조트','123',NULL,'resort','dsad',0,0,0,'13_naver.PNG&13_surffing.jpg',1),(14,1,'난다요호텔','충북 음성군 음성읍 가섭길 5',NULL,'hotel','#해쉬태그1',0,0,0,'14_guest1_1.jpg&14_guest1_2.jpg',1),(15,1,'안산펜션','경기 안산시 단원구 선부광장남로 13',NULL,'hotel','#안산펜션&#안산안산&#대박펜션&#여기가 최고야',0,0,0,'15_pension3_3.jpg&15_pension4_1.jpg&15_pension4_3.jpg',1);
/*!40000 ALTER TABLE `lodgement` ENABLE KEYS */;
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
