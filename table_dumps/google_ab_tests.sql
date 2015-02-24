-- MySQL dump 10.13  Distrib 5.5.34, for Linux (x86_64)
--
-- Host: localhost    Database: hautelook
-- ------------------------------------------------------
-- Server version	5.5.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `google_ab_tests`
--

DROP TABLE IF EXISTS `google_ab_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `google_ab_tests` (
  `google_ab_code` varchar(10) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_date` timestamp NULL DEFAULT NULL,
  `page_type` varchar(20) NOT NULL,
  `query_string` varchar(100) NOT NULL,
  PRIMARY KEY (`start_date`,`google_ab_code`,`page_type`,`query_string`),
  KEY `FK_google_ab_tests::google_ab_page_types` (`page_type`),
  CONSTRAINT `FK_google_ab_tests::google_ab_page_types` FOREIGN KEY (`page_type`) REFERENCES `google_ab_page_types` (`page_type`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `google_ab_tests`
--

LOCK TABLES `google_ab_tests` WRITE;
/*!40000 ALTER TABLE `google_ab_tests` DISABLE KEYS */;
INSERT INTO `google_ab_tests` VALUES ('0045362282','2010-01-05 08:00:00','2010-03-05 08:00:00','conversion','/events/start'),('0045362282','2010-01-05 08:00:00','2010-03-05 08:00:00','original','/campaigns/canada'),('0045362282','2010-01-05 08:00:00','2010-03-05 08:00:00','variation','/campaigns/canada2'),('0871279381','2010-01-05 08:00:00','2010-09-19 17:56:28','conversion','/catalog'),('0871279381','2010-01-05 08:00:00','2010-09-19 17:56:28','conversion','/events/start'),('0871279381','2010-01-05 08:00:00','2010-09-19 17:56:28','conversion','/product'),('0871279381','2010-01-05 08:00:00','2010-09-19 17:56:28','original','/'),('0871279381','2010-01-05 08:00:00','2010-09-19 17:56:28','variation','/index/index/mk/indexf'),('0871279381','2010-01-05 08:00:00','2010-09-19 17:56:28','variation','/index/index/mk/indexg'),('0871279381','2010-01-05 08:00:00','2010-09-19 17:56:28','variation','/index/index/mk/indexh'),('2955683673','2010-01-05 08:00:00','2010-06-15 23:49:02','conversion','/events/start'),('2955683673','2010-01-05 08:00:00','2010-06-15 23:49:02','original','/'),('2955683673','2010-01-05 08:00:00','2010-06-15 23:49:02','variation','/index/index/mk/indexb'),('2955683673','2010-01-05 08:00:00','2010-06-15 23:49:02','variation','/index/index/mk/indexc'),('2955683673','2010-01-05 08:00:00','2010-06-15 23:49:02','variation','/index/index/mk/indexd'),('2955683673','2010-01-05 08:00:00','2010-06-15 23:49:02','variation','/index/index/mk/indexe'),('4216632558','2010-01-05 08:00:00','2010-03-05 08:00:00','conversion','/events/start'),('4216632558','2010-01-05 08:00:00','2010-03-05 08:00:00','original','/campaigns/canada'),('4216632558','2010-01-05 08:00:00','2010-03-05 08:00:00','variation','/campaigns/canada2'),('3938861552','2010-05-11 18:11:18','2010-06-15 23:49:02','conversion','/events/start'),('3938861552','2010-05-11 18:11:18','2010-06-15 23:49:02','original','/campaigns/canada'),('3938861552','2010-05-11 18:11:18','2010-06-15 23:49:02','variation','/campaigns'),('3938861552','2010-05-11 18:11:18','2010-06-15 23:49:02','variation','/index/index/mk/indexd');
/*!40000 ALTER TABLE `google_ab_tests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-24  0:05:28
