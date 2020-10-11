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
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qna` (
  `qnano` int NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `writer` varchar(45) DEFAULT NULL,
  `content` varchar(3000) DEFAULT NULL,
  `writeddate` datetime DEFAULT CURRENT_TIMESTAMP,
  `cnt` int DEFAULT '0',
  PRIMARY KEY (`qnano`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (1,'test1','tester','test',NULL,1),(2,'test2','teser','test',NULL,2),(3,'안녕하세요','tester','<h1>안녕하세요</h1>\r\n\r\n<p>글씨체가 이쁘다~</p>\r\n\r\n<p><img alt=\"\" src=\"/yollowa/resources/img/board/4fdcd483-f9a4-41a6-9c1f-2f7728b69f30\" style=\"height:363px; width:383px\" /></p>\r\n',NULL,1),(5,'321','tester','<p>123</p>\r\n',NULL,3),(6,'321','tester','<p>123</p>\r\n',NULL,1),(7,'채용공고~~','tester','<p>채용공고 확인 후 회사에 대해서 (*직무내용,인재상,고용형태, 근무예정지,급여수준,근무시간,사원수등)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>신중하게 알아보시고, 입사지원을 희망하시는 학생들은 job@bitcamp.co.kr로 이력서 및 포트폴리오</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>보내주시면 됩니다.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>메일 제목 작성 예) 이름 / 과정 수료일 / 면접 가능일 / 홈페이지상 해당채용정보 글번호 기재요망</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>* 첨부파일 (이력서,자기소개서, 포트폴리오)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>=======================================================</p>\r\n\r\n<p>비트캠프 | bitcamp |</p>\r\n\r\n<p>job@bitcamp.co.kr</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>비트캠프 서울시 서초구 강남대로 459 (서초동, 백암빌딩)​</p>\r\n\r\n<p>TEL: 02-3453-5803&nbsp;</p>\r\n\r\n<p>Homepage:&nbsp;<a href=\"http://www.bitcamp.co.kr/\">www.bitcamp.co.kr</a></p>\r\n\r\n<p>=======================================================​&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n',NULL,0),(8,'321','tester','<p>&lt;script&gt;alert(1)&lt;/script&gt;</p>\r\n','2020-10-08 08:10:34',0),(9,'애국가','tester','<p><a href=\"https://ko.wikipedia.org/wiki/%EB%8F%99%ED%95%B4\">동해</a>&nbsp;물과&nbsp;<a href=\"https://ko.wikipedia.org/wiki/%EB%B0%B1%EB%91%90%EC%82%B0\">백두산</a>이 마르고 닳도록</p>\r\n\r\n<p><a href=\"https://ko.wikipedia.org/wiki/%ED%95%98%EB%8A%90%EB%8B%98\">하느님</a>이 보우하사 우리나라 만세.</p>\r\n\r\n<p><a href=\"https://ko.wikipedia.org/wiki/%EB%AC%B4%EA%B6%81%ED%99%94\">무궁화</a>&nbsp;삼천<a href=\"https://ko.wikipedia.org/wiki/%EB%A6%AC\">리</a>&nbsp;화려 강산</p>\r\n\r\n<p>대한 사람, 대한으로 길이 보전하세.</p>\r\n\r\n<p><img alt=\"\" src=\"/yollowa/resources/img/board/aa6542de-e647-4e3c-9f0f-13e680538c73\" style=\"height:190px; width:200px\" /></p>\r\n\r\n<p><cite>남산 위에 저</cite><cite> 소나무, 철갑을 두른 듯</cite></p>\r\n\r\n<p><cite>바람 서리 불변함은 우리 기상일세.</cite></p>\r\n\r\n<p><cite>무궁화 삼천리 화려 강산</cite></p>\r\n\r\n<p><cite>대한 사람, 대한으</cite><cite>로 길이 보전하세.</cite></p>\r\n','2020-10-08 09:47:12',0);
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
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
