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
-- Table structure for table `return_reasons`
--

DROP TABLE IF EXISTS `return_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_reasons` (
  `return_reasons_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `return_type_id` int(11) DEFAULT NULL,
  `return_reason_type` varchar(40) NOT NULL DEFAULT 'No reason',
  PRIMARY KEY (`return_reasons_id`),
  KEY `FK_return_reasons::return_types` (`return_type_id`),
  KEY `FK_return_reasons::return_reason_types` (`return_reason_type`),
  CONSTRAINT `FK_return_reasons::return_reason_types` FOREIGN KEY (`return_reason_type`) REFERENCES `return_reason_types` (`return_reason_type`) ON UPDATE CASCADE,
  CONSTRAINT `FK_return_reasons::return_types` FOREIGN KEY (`return_type_id`) REFERENCES `return_types` (`return_type_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_reasons`
--

LOCK TABLES `return_reasons` WRITE;
/*!40000 ALTER TABLE `return_reasons` DISABLE KEYS */;
INSERT INTO `return_reasons` VALUES (1,'Fit size too small',1,'Did not fit'),(2,'Fit size too large',1,'Did not fit'),(3,'Did not like what I ordered',1,'Did not like'),(4,'Item not as shown on website',2,'Warehouse'),(5,'Item not as described on website',2,'Warehouse'),(6,'Item is damaged',3,'Damage'),(7,'Wrong Item',6,'Warehouse'),(8,'Other',1,'Other'),(10,'Changed My Mind',18,'Cancel'),(21,'In warehouse, return n/a',21,'In warehouse, return n/a');
/*!40000 ALTER TABLE `return_reasons` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-23 22:23:06
