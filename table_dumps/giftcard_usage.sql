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
-- Table structure for table `giftcard_usage`
--

DROP TABLE IF EXISTS `giftcard_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcard_usage` (
  `giftcard_number` varchar(255) NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DEPRECATED_giftcard_usage_id` int(10) unsigned NOT NULL,
  `DEPRECATED_giftcard_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`giftcard_number`,`order_id`,`member_id`),
  KEY `FK_giftcard_usage::giftcards` (`DEPRECATED_giftcard_id`),
  KEY `FK_giftcard_usage::members` (`member_id`),
  KEY `FK_giftcard_usage::orders` (`order_id`),
  CONSTRAINT `FK_giftcard_usage::giftcards` FOREIGN KEY (`giftcard_number`) REFERENCES `giftcards` (`giftcard_number`) ON UPDATE CASCADE,
  CONSTRAINT `FK_giftcard_usage::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_giftcard_usage::orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giftcard_usage`
--

LOCK TABLES `giftcard_usage` WRITE;
/*!40000 ALTER TABLE `giftcard_usage` DISABLE KEYS */;
INSERT INTO `giftcard_usage` VALUES ('150010142647996',5936316,2823622,39.05,'2012-05-03 21:36:51',0,0),('150010259384458',264191,546666,46.95,'2009-04-16 20:45:24',366,4165),('150010748237028',3773359,2586096,47.10,'2011-09-11 00:11:44',0,0),('150011031663185',2248728,3964355,33.39,'2011-01-04 16:38:40',0,0);
/*!40000 ALTER TABLE `giftcard_usage` ENABLE KEYS */;
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
