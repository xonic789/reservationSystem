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
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `noticeno` int NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `writer` varchar(45) DEFAULT NULL,
  `content` varchar(3000) DEFAULT NULL,
  `writeddate` datetime DEFAULT CURRENT_TIMESTAMP,
  `cnt` int DEFAULT '0',
  PRIMARY KEY (`noticeno`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'	test01	','tester','test','2020-10-07 16:45:11',0),(2,'	test02	','tester','test','2020-10-07 16:45:11',0),(3,'	test03	','tester','test','2020-10-07 16:45:11',0),(4,'	test04	','tester','test','2020-10-07 16:45:11',0),(5,'	test05	','tester','test','2020-10-07 16:45:11',0),(6,'	test06	','tester','test','2020-10-07 16:45:11',0),(7,'	test07	','tester','test','2020-10-07 16:45:11',0),(8,'	test08	','tester','test','2020-10-07 16:45:11',0),(9,'	test09	','tester','test','2020-10-07 16:45:11',0),(10,'	test10	','tester','test','2020-10-07 16:45:11',0),(11,'	test11	','tester','test','2020-10-07 16:45:11',0),(12,'	test12	','tester','test','2020-10-07 16:45:11',0),(13,'	test13	','tester','test','2020-10-07 16:45:11',0),(14,'	test14	','tester','test','2020-10-07 16:45:11',0),(15,'	test15	','tester','test','2020-10-07 16:45:11',0),(16,'	test16	','tester','test','2020-10-07 16:45:11',0),(17,'	test17	','tester','test','2020-10-07 16:45:11',0),(18,'	test18	','tester','test','2020-10-07 16:45:11',0),(19,'	test19	','tester','test','2020-10-07 16:45:11',0),(20,'	test20	','tester','test','2020-10-07 16:45:11',0),(21,'	test21	','tester','test','2020-10-07 16:45:11',0),(22,'	test22	','tester','test','2020-10-07 16:45:11',0),(23,'	test23	','tester','test','2020-10-07 16:45:11',0),(24,'	test24	','tester','test','2020-10-07 16:45:11',0),(25,'	test25	','tester','test','2020-10-07 16:45:11',0),(26,'	test26	','tester','test','2020-10-07 16:45:11',0),(27,'	test27	','tester','test','2020-10-07 16:45:11',0),(28,'	test28	','tester','test','2020-10-07 16:45:11',0),(29,'	test29	','tester','test','2020-10-07 16:45:12',0),(30,'	test30	','tester','test','2020-10-07 16:45:12',0),(31,'	test31	','tester','test','2020-10-07 16:45:12',0),(32,'	test32	','tester','test','2020-10-07 16:45:12',0),(33,'	test33	','tester','test','2020-10-07 16:45:12',0),(34,'	test34	','tester','test','2020-10-07 16:45:12',0),(35,'	test35	','tester','test','2020-10-07 16:45:12',0),(36,'	test36	','tester','test','2020-10-07 16:45:12',0),(37,'	test37	','tester','test','2020-10-07 16:45:12',0),(38,'	test38	','tester','test','2020-10-07 16:45:12',0),(39,'	test39	','tester','test','2020-10-07 16:45:12',0),(40,'	test40	','tester','test','2020-10-07 16:45:12',0),(41,'	test41	','tester','test','2020-10-07 16:45:12',0),(42,'	test42	','tester','test','2020-10-07 16:45:12',0),(43,'	test43	','tester','test','2020-10-07 16:45:12',0),(44,'	test44	','tester','test','2020-10-07 16:45:12',0),(45,'	test45	','tester','test','2020-10-07 16:45:12',0),(46,'	test46	','tester','test','2020-10-07 16:45:12',0),(47,'	test47	','tester','test','2020-10-07 16:45:12',0),(48,'	test48	','tester','test','2020-10-07 16:45:12',0),(49,'	test49	','tester','test','2020-10-07 16:45:12',0),(50,'	test50	','tester','test','2020-10-07 16:45:12',0),(51,'	test51	','tester','test','2020-10-07 16:45:12',0),(52,'	test52	','tester','test','2020-10-07 16:45:12',0),(53,'	test53	','tester','test','2020-10-07 16:45:12',0),(54,'	test54	','tester','test','2020-10-07 16:45:12',0),(55,'	test55	','tester','test','2020-10-07 16:45:12',0),(56,'	test56	','tester','test','2020-10-07 16:45:12',0),(57,'	test57	','tester','test','2020-10-07 16:45:12',0),(58,'	test58	','tester','test','2020-10-07 16:45:12',0),(59,'	test59	','tester','test','2020-10-07 16:45:12',0),(60,'	test60	','tester','test','2020-10-07 16:45:12',0),(61,'	test61	','tester','test','2020-10-07 16:45:12',0),(62,'	test62	','tester','test','2020-10-07 16:45:12',0),(63,'	test63	','tester','test','2020-10-07 16:45:12',0),(64,'	test64	','tester','test','2020-10-07 16:45:12',0),(65,'	test65	','tester','test','2020-10-07 16:45:12',0),(66,'	test66	','tester','test','2020-10-07 16:45:12',0),(67,'	test67	','tester','test','2020-10-07 16:45:12',0),(68,'	test68	','tester','test','2020-10-07 16:45:12',0),(69,'	test69	','tester','test','2020-10-07 16:45:12',0),(70,'	test70	','tester','test','2020-10-07 16:45:12',0),(71,'	test71	','tester','test','2020-10-07 16:45:12',0),(72,'	test72	','tester','test','2020-10-07 16:45:12',0),(73,'	test73	','tester','test','2020-10-07 16:45:12',0),(74,'	test74	','tester','test','2020-10-07 16:45:12',0),(75,'	test75	','tester','test','2020-10-07 16:45:12',0),(76,'	test76	','tester','test','2020-10-07 16:45:12',0),(77,'	test77	','tester','test','2020-10-07 16:45:12',0),(78,'	test78	','tester','test','2020-10-07 16:45:12',0),(79,'	test79	','tester','test','2020-10-07 16:45:12',0),(80,'	test80	','tester','test','2020-10-07 16:45:13',0),(81,'	test81	','tester','test','2020-10-07 16:45:13',0),(82,'	test82	','tester','test','2020-10-07 16:45:13',0),(83,'	test83	','tester','test','2020-10-07 16:45:13',0),(84,'	test84	','tester','test','2020-10-07 16:45:13',0),(85,'	test85	','tester','test','2020-10-07 16:45:13',0),(86,'	test86	','tester','test','2020-10-07 16:45:13',0),(87,'	test87	','tester','test','2020-10-07 16:45:13',0),(88,'	test88	','tester','test','2020-10-07 16:45:13',0),(89,'	test89	','tester','test','2020-10-07 16:45:13',0),(90,'	test90	','tester','test','2020-10-07 16:45:13',0),(91,'	test91	','tester','test','2020-10-07 16:45:13',0),(92,'	test92	','tester','test','2020-10-07 16:45:13',0),(93,'	test93	','tester','test','2020-10-07 16:45:13',0),(94,'	test94	','tester','test','2020-10-07 16:45:13',0),(95,'	test95	','tester','test','2020-10-07 16:45:13',0),(96,'	test96	','tester','test','2020-10-07 16:45:13',0),(97,'	test97	','tester','test','2020-10-07 16:45:13',0),(98,'	test98	','tester','test','2020-10-07 16:45:13',0),(99,'	test99	','tester','test','2020-10-07 16:45:13',0),(100,'	test100	','tester','test','2020-10-07 16:45:13',0),(101,'123','tester','<h2 style=\"font-style:italic;\">321</h2>\r\n','2020-10-07 17:11:32',0),(102,'ryan','tester','<p><img alt=\"\" src=\"/yollowa/resources/img/board/45073d28-955c-41e2-9357-7a770ea1029e\" style=\"height:363px; width:383px\" /></p>\r\n\r\n<h3>ryan</h3>\r\n','2020-10-07 17:27:08',0);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-11 20:46:12
