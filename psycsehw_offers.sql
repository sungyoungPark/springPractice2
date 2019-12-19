-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: psycsehw
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `course_code` varchar(45) NOT NULL,
  `course_name` varchar(45) NOT NULL,
  `division` varchar(45) NOT NULL,
  `credits` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
INSERT INTO `offers` VALUES (1,2014,1,'MME0003','컴퓨터언어Ⅰ','전기',3),(2,2014,1,'GEN0043','물리실험I','일교',2),(3,2014,1,'CAE0002','공학의 이해','핵교A',2),(4,2014,1,'CAE0001','일반물리I','핵교A',2),(5,2014,1,'REQ0122','영어커뮤니케이션 청취/회화A-II','교필',1),(6,2014,1,'REQ0112','영어커뮤니케이션 독해/작문A-II','교필',1),(7,2014,1,'REQ0013','사고와 표현I','교필',2),(8,2014,2,'MME0005','컴퓨터언어Ⅱ','전기',3),(9,2014,2,'MME0006','논리회로','전선',3),(10,2014,2,'U122059','배명진 교수와 소리탐험','자율',3),(11,2014,2,'CBS0006	','한국사회의 이해','핵교B',2),(12,2014,2,'CBE0005','일반화학','핵교B	',2),(13,2014,2,'CAH0005	','역사와 문명','핵교A	',2),(14,2014,2,'CAE0006','과학기술사','핵교A',2),(15,2014,2,'REQ0222','영어커뮤니케이션 청취/회화B-II','교필',1),(16,2014,2,'REQ0212	','	영어커뮤니케이션 독해/작문B-II','교필',1),(17,2014,2,'REQ0015	','	대학과 지성','교필',2),(18,2014,2,'REQ0014	','사고와 표현II','교필',2),(19,2017,1,'CSE0007','자료구조','전지',3),(20,2017,1,'CSE0010','프로그래밍랩','전선',3),(21,2017,1,'CSE0009	','컴퓨터구조','전선',3),(22,2017,1,'CSE0008','프로그래밍언어론','전선',3),(23,2017,1,'CSE0006','객체지향언어1','전선',3),(24,2017,1,'GEN9000','High-Success Point','자율',1),(25,2017,1,'U121027','생태친화적 기업경영','인재',2),(26,2017,1,'GEN0200','컴퓨터와 인터넷개론','인재',3),(27,2017,2,'CSE0060','모바일&스마트시스템','전선',3),(28,2017,2,'CSE0016','웹프로그래밍','전선',3),(29,2017,2,'CSE0015','데이터통신','전선',3),(30,2017,2,'CSE0013','알고리즘','전선',3),(31,2017,2,'CSE0012','객체지향언어2','전선',3),(32,2017,2,'GEN0497','취업실전영어-기본','인재',3),(33,2017,2,'REQ0016	','	디자인','교필',2),(34,2018,1,'CSE0019','데이터베이스','전지',3),(35,2018,1,'CSE0061	','	안드로이드프로그래밍','전선',3),(36,2018,1,'CSE0033','데이터마이닝','전선',3),(37,2018,1,'CSE0020','	소프트웨어공학','전선',3),(38,2018,1,'GEN0513	','	4차 산업혁명과 현대조직','토대',3),(39,2018,2,'	CSE0063','고급 모바일 프로그래밍','전선',3),(40,2018,2,'CSE0034','컴퓨터비젼','전선',3),(41,2018,2,'CSE0029	','네트워크프로그래밍	','전선',3),(42,2018,2,'CSE0026	','고급시스템프로그래밍','전선',3),(43,2018,2,'U121014	','고객관계관리 전략','인재',3),(44,2018,2,'GEN0377','	구기스포츠의 이해','인재',3),(45,2019,1,'V020014','(R)운영체제','전지',3),(46,2019,1,'CSE0025	','	캡스톤디자인1','전지',3),(47,2019,1,'V024004	','웹서버프로그래밍','전선',3),(48,2019,1,'CSE0062','	iOS 프로그래밍','전선',3),(49,2019,1,'CSE0043	','빅데이터프로그래밍','전선',3),(50,2019,1,'GEN0601','지식재산입문','자율',3),(59,2020,1,'캡스톤디자인2','CSE0025	','전공선택22',3),(60,2020,1,'한국사회의 이해','CSE0026','일반교양A',2);
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-06  2:06:38
