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
-- Table structure for table `fashion_rewards_bonus`
--

DROP TABLE IF EXISTS `fashion_rewards_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fashion_rewards_bonus` (
  `points` char(1) NOT NULL DEFAULT '1',
  `property_id` int(10) unsigned NOT NULL,
  `bonus_date` date NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`bonus_date`,`property_id`),
  KEY `FK_nordstrom_properties::nordstrom_properties` (`property_id`),
  CONSTRAINT `FK_nordstrom_properties::nordstrom_properties` FOREIGN KEY (`property_id`) REFERENCES `nordstrom_properties` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fashion_rewards_bonus`
--

LOCK TABLES `fashion_rewards_bonus` WRITE;
/*!40000 ALTER TABLE `fashion_rewards_bonus` DISABLE KEYS */;
INSERT INTO `fashion_rewards_bonus` VALUES ('B',3,'2015-03-09','2014-10-19 22:24:24','2014-06-26 10:59:54'),('B',2,'2015-03-11','2014-10-03 02:15:41','2014-05-02 23:37:30'),('B',4,'2015-03-13','2015-01-31 11:18:29','2014-08-13 08:03:52'),('B',1,'2015-03-14','2015-01-02 06:42:41','2014-11-28 21:23:49');
/*!40000 ALTER TABLE `fashion_rewards_bonus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-24  0:05:25
