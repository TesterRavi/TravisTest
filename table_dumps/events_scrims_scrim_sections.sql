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
-- Table structure for table `events_scrims_scrim_sections`
--

DROP TABLE IF EXISTS `events_scrims_scrim_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events_scrims_scrim_sections` (
  `event_id` int(10) unsigned NOT NULL,
  `scrim` varchar(50) NOT NULL,
  `scrim_section` varchar(25) NOT NULL,
  PRIMARY KEY (`event_id`,`scrim`,`scrim_section`),
  KEY `FK_events_scrims_scrim_sections::scrims` (`scrim`),
  KEY `FK_events_scrims_scrim_sections::scrim_sections` (`scrim_section`),
  CONSTRAINT `FK_events_scrims_scrim_sections::events` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`),
  CONSTRAINT `FK_events_scrims_scrim_sections::scrims` FOREIGN KEY (`scrim`) REFERENCES `scrims` (`scrim`) ON UPDATE CASCADE,
  CONSTRAINT `FK_events_scrims_scrim_sections::scrim_sections` FOREIGN KEY (`scrim_section`) REFERENCES `scrim_sections` (`scrim_section`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_scrims_scrim_sections`
--

LOCK TABLES `events_scrims_scrim_sections` WRITE;
/*!40000 ALTER TABLE `events_scrims_scrim_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `events_scrims_scrim_sections` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-23 22:22:38
