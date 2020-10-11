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
-- Table structure for table `qnareply`
--

DROP TABLE IF EXISTS `qnareply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qnareply` (
  `replyNo` int NOT NULL AUTO_INCREMENT,
  `qnaNo` int NOT NULL DEFAULT '0',
  `replyText` varchar(1000) NOT NULL,
  `replyWriter` varchar(50) NOT NULL,
  `regDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`replyNo`),
  KEY `qna_no_idx` (`qnaNo`),
  CONSTRAINT `qnaNo` FOREIGN KEY (`qnaNo`) REFERENCES `qna` (`qnano`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qnareply`
--

LOCK TABLES `qnareply` WRITE;
/*!40000 ALTER TABLE `qnareply` DISABLE KEYS */;
INSERT INTO `qnareply` VALUES (1,2,'rep1','reper1','2020-10-08 02:06:25','2020-10-08 02:06:25'),(2,2,'3','reper2','2020-10-08 02:06:37','2020-10-08 05:24:01'),(3,1,'rep1','reper3','2020-10-08 02:06:54','2020-10-08 02:06:54'),(5,2,'4','test','2020-10-08 04:27:01','2020-10-08 05:24:04'),(6,2,'231','tester','2020-10-08 04:30:15','2020-10-08 04:30:15'),(8,2,'test11111','tester','2020-10-08 04:30:43','2020-10-08 04:30:43'),(9,2,'test11111','tester','2020-10-08 04:31:47','2020-10-08 04:31:47'),(10,2,'321','tester','2020-10-08 04:32:14','2020-10-08 04:32:14'),(23,2,'123','tester','2020-10-08 07:22:11','2020-10-08 07:22:11'),(24,2,'321','tester','2020-10-08 07:37:04','2020-10-08 07:37:04'),(25,1,'123','tester','2020-10-08 07:37:38','2020-10-08 07:37:38'),(31,3,'123','tester','2020-10-08 07:44:59','2020-10-08 07:44:59'),(32,2,'333','tester','2020-10-08 07:46:20','2020-10-08 07:46:20'),(34,6,'123','tester','2020-10-08 07:54:45','2020-10-08 07:54:45'),(35,5,'321','tester','2020-10-08 07:54:53','2020-10-08 07:54:53'),(36,5,'123','tester','2020-10-08 07:54:57','2020-10-08 07:54:57'),(37,7,'112','tester','2020-10-08 08:04:14','2020-10-08 08:04:14'),(38,8,'321\r\n213\r\n+321','tester','2020-10-08 08:10:50','2020-10-08 08:10:50'),(39,8,'231\r\n1231','tester','2020-10-08 08:11:02','2020-10-08 08:11:02'),(41,1,'123\r\n321\r\n321\r\n222','tester','2020-10-08 08:26:12','2020-10-08 08:26:12'),(43,7,'<p>123 321</p>\r\n','tester','2020-10-08 08:36:45','2020-10-08 10:24:40'),(44,3,'1111','tester','2020-10-08 08:37:10','2020-10-08 08:37:10'),(45,3,'32\r\n222\r\n1','tester','2020-10-08 08:37:15','2020-10-08 08:37:15'),(46,3,'222\r\n222\r\n111\r\n','tester','2020-10-08 08:38:47','2020-10-08 08:38:47'),(47,3,'<p>111</p>\r\n\r\n<p>222</p>\r\n\r\n<p>333</p>\r\n\r\n<p>444</p>\r\n\r\n<p>&nbsp;</p>\r\n','tester','2020-10-08 08:40:18','2020-10-08 08:40:18'),(50,7,'<p>123</p>\r\n\r\n<p>321</p>\r\n\r\n<p>222</p>\r\n\r\n<p>111</p>\r\n\r\n<p>&nbsp;</p>\r\n','tester','2020-10-08 08:54:27','2020-10-08 08:54:27'),(51,3,'<p>왜 위,아래만 안되는데?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>그냥 HTML이 안합니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><strong>&ldquo;If &ldquo;margin-top&rdquo; or &ldquo;margin-bottom&rdquo; is &ldquo;auto&rdquo;, their used value is 0&Prime;</strong></em></p>\r\n\r\n<p><em>&quot;margin-top과 margin-bottom이 auto이면 그들의 실제 값은 0이다.&quot;</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>world-wide-web(www)의 표준을 개발하는 w3c의 문서 중 일부입니다.</p>\r\n','tester','2020-10-08 09:46:14','2020-10-08 09:46:14'),(53,9,'<p>이 기상과 이 맘으로 충성을 다하여</p>\r\n\r\n<p>괴로우나 즐거우나 나라 사랑하세.</p>\r\n\r\n<p>무궁화 삼천리 화려 강산</p>\r\n\r\n<p>대한 사람, 대한으로 길이 보전하세.</p>\r\n','tester','2020-10-08 09:47:25','2020-10-08 10:24:25'),(54,9,'<p>애국심이 불타오른다~~~!</p>\r\n','tester','2020-10-08 14:19:45','2020-10-08 14:19:45');
/*!40000 ALTER TABLE `qnareply` ENABLE KEYS */;
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
