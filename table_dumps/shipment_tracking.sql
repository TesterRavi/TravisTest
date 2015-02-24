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
-- Table structure for table `shipment_tracking`
--

DROP TABLE IF EXISTS `shipment_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment_tracking` (
  `shipment_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tracking_num` varchar(25) NOT NULL DEFAULT '',
  `ship_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delivery_attempt_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delivery_estimate_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delivery_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `return_to_shipper_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `email_notification_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `email_notification_type` enum('full','partial','remainder') DEFAULT NULL,
  `tracking_info` varchar(150) NOT NULL DEFAULT '',
  `tracking_info_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `label_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `group_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `source` varchar(25) NOT NULL DEFAULT 'gearman',
  PRIMARY KEY (`tracking_num`,`shipment_id`),
  KEY `FK_shipment_tracking::shipments` (`shipment_id`),
  KEY `ship_date` (`ship_date`),
  KEY `email_notification_type` (`email_notification_type`),
  KEY `tracking_info_date` (`tracking_info_date`),
  KEY `delivery_date` (`delivery_date`,`tracking_info_date`),
  KEY `FK_shipment_tracking::shipment_tracking_sources` (`source`),
  CONSTRAINT `FK_shipment_tracking::shipments` FOREIGN KEY (`shipment_id`) REFERENCES `shipments` (`shipment_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_shipment_tracking::shipment_tracking_sources` FOREIGN KEY (`source`) REFERENCES `shipment_tracking_sources` (`shipment_tracking_source`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_tracking`
--

LOCK TABLES `shipment_tracking` WRITE;
/*!40000 ALTER TABLE `shipment_tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipment_tracking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-24  0:05:58
