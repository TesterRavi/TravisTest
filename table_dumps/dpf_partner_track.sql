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
-- Table structure for table `dpf_partner_track`
--

DROP TABLE IF EXISTS `dpf_partner_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpf_partner_track` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL COMMENT 'Partners are members with members.role = 11',
  `event_id` int(10) unsigned DEFAULT NULL,
  `inventory_id` int(10) unsigned DEFAULT NULL,
  `hit_count` int(10) unsigned NOT NULL DEFAULT '1',
  `partner_sid` int(10) unsigned NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE_member_id::event_id::inventory_id` (`member_id`,`event_id`,`inventory_id`),
  KEY `FK_DpfPartnerTrack:event_id::Events:event_id` (`event_id`),
  KEY `FK_DpfPartnerTrack:inventory_id::Inventory:inventory_id` (`inventory_id`),
  KEY `FK_DpfPartnerTrack:partner_sid::DpfPartnerAccounts:partner_sid` (`partner_sid`),
  CONSTRAINT `C_DpfPartnerTrack:event_id::Events:event_id` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`),
  CONSTRAINT `C_DpfPartnerTrack:inventory_id::Inventory:inventory_id` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`inventory_id`),
  CONSTRAINT `C_DpfPartnerTrack:member_id::Members:member_id` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`),
  CONSTRAINT `C_DpfPartnerTrack:partner_sid::DpfPartnerAccounts:partner_sid` FOREIGN KEY (`partner_sid`) REFERENCES `dpf_partner_accounts` (`partner_sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dpf_partner_track`
--

LOCK TABLES `dpf_partner_track` WRITE;
/*!40000 ALTER TABLE `dpf_partner_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `dpf_partner_track` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-24  0:05:21
