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
-- Table structure for table `delivery_estimates`
--

DROP TABLE IF EXISTS `delivery_estimates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_estimates` (
  `delivery_low_day` int(10) unsigned NOT NULL DEFAULT '0',
  `delivery_high_day` int(10) unsigned NOT NULL DEFAULT '0',
  `delivery_estimate_rule` enum('Business','Calendar') NOT NULL DEFAULT 'Business',
  `delivery_estimate_category` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `sort` tinyint(3) unsigned DEFAULT '0',
  `active` tinyint(3) unsigned DEFAULT '1',
  PRIMARY KEY (`delivery_low_day`,`delivery_high_day`,`delivery_estimate_rule`),
  KEY `FK_delivery_estimates::delivery_estimate_categories` (`delivery_estimate_category`),
  CONSTRAINT `FK_delivery_estimates::delivery_estimate_categories` FOREIGN KEY (`delivery_estimate_category`) REFERENCES `delivery_estimate_categories` (`delivery_estimate_category`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_estimates`
--

LOCK TABLES `delivery_estimates` WRITE;
/*!40000 ALTER TABLE `delivery_estimates` DISABLE KEYS */;
INSERT INTO `delivery_estimates` VALUES (1,1,'Calendar','Expedited Delivery Dates','',13,1),(1,2,'Business','Expedited Delivery Dates','',1,1),(2,3,'Business','Expedited Delivery Dates','',2,1),(2,5,'Business','Estimated Delivery Dates','',3,1),(3,7,'Business','Estimated Delivery Dates','',4,1),(4,6,'Business','Estimated Delivery Dates','',5,1),(5,7,'Business','Estimated Delivery Dates','',6,1),(6,9,'Business','Estimated Delivery Dates','',7,1),(7,10,'Business','Estimated Delivery Dates','',8,1),(8,11,'Business','Estimated Delivery Dates','',9,1),(10,12,'Business','Estimated Delivery Dates','',10,1),(10,14,'Business','Estimated Delivery Dates','',11,1),(14,21,'Business','Extended Delivery Dates','',12,1),(35,42,'Calendar','Extended Delivery Dates','',14,1),(42,56,'Calendar','Extended Delivery Dates','',15,1),(56,63,'Calendar','Extended Delivery Dates','',16,1);
/*!40000 ALTER TABLE `delivery_estimates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-24  0:05:05
