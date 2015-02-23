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
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouses` (
  `warehouse_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `warehouse` varchar(15) NOT NULL DEFAULT '',
  `address` varchar(45) NOT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(3) NOT NULL DEFAULT 'ZZ',
  `country_iso` varchar(2) NOT NULL DEFAULT 'ZZ',
  `zipcode` varchar(10) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_phone` varchar(45) NOT NULL,
  `warehouse_status` enum('inactive','active') NOT NULL DEFAULT 'active',
  PRIMARY KEY (`warehouse_id`),
  UNIQUE KEY `warehouse` (`warehouse`),
  KEY `FK_warehouses::states` (`state`,`country_iso`),
  CONSTRAINT `FK_warehouses::states` FOREIGN KEY (`state`, `country_iso`) REFERENCES `states` (`state`, `country_iso`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouses`
--

LOCK TABLES `warehouses` WRITE;
/*!40000 ALTER TABLE `warehouses` DISABLE KEYS */;
INSERT INTO `warehouses` VALUES (1,'Hautelook - CA','2733 Carrier Ave','','Commerce','CA','US','90040','Tracey Rico','1-213-741-1890 x146 tracey.rico@hautelook.com','active'),(2,'Bergen - NJ','c/o Bergen Shippers','7373 Westside Ave.','North Bergen','NJ','US','07047','Tracey Rico','1-213-741-1890 x146 tracey.rico@hautelook.com','active'),(3,'CASI','','','','CA','US','','','','active');
/*!40000 ALTER TABLE `warehouses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-23 22:22:21
