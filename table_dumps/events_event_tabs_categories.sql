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
-- Table structure for table `events_event_tabs_categories`
--

DROP TABLE IF EXISTS `events_event_tabs_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events_event_tabs_categories` (
  `event_id` int(10) unsigned NOT NULL,
  `event_tab` varchar(50) NOT NULL,
  `category` varchar(30) NOT NULL,
  PRIMARY KEY (`event_id`,`event_tab`,`category`),
  KEY `FK_events_event_tabs_categories::event_tabs` (`event_tab`),
  KEY `FK_events_event_tabs_categories::categories` (`category`),
  CONSTRAINT `FK_events_event_tabs_categories::categories` FOREIGN KEY (`category`) REFERENCES `categories` (`category`) ON UPDATE CASCADE,
  CONSTRAINT `FK_events_event_tabs_categories::events` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`),
  CONSTRAINT `FK_events_event_tabs_categories::event_tabs` FOREIGN KEY (`event_tab`) REFERENCES `event_tabs` (`event_tab`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Karif Battle does not endorse this naming convention for map';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_event_tabs_categories`
--

LOCK TABLES `events_event_tabs_categories` WRITE;
/*!40000 ALTER TABLE `events_event_tabs_categories` DISABLE KEYS */;
INSERT INTO `events_event_tabs_categories` VALUES (1,'All Events','Shoes'),(1,'WOmen','Shoes');
/*!40000 ALTER TABLE `events_event_tabs_categories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-23 22:22:37
