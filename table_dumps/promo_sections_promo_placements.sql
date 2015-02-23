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
-- Table structure for table `promo_sections_promo_placements`
--

DROP TABLE IF EXISTS `promo_sections_promo_placements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promo_sections_promo_placements` (
  `promo_section` varchar(25) NOT NULL DEFAULT '',
  `promo_placement` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`promo_section`,`promo_placement`),
  KEY `FK_promo_sections_promo_placements::promo_placements` (`promo_placement`),
  CONSTRAINT `FK_promo_sections_promo_placements::promo_placements` FOREIGN KEY (`promo_placement`) REFERENCES `promo_placements` (`promo_placement`) ON UPDATE CASCADE,
  CONSTRAINT `FK_promo_sections_promo_placements::promo_sections` FOREIGN KEY (`promo_section`) REFERENCES `promo_sections` (`promo_section`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo_sections_promo_placements`
--

LOCK TABLES `promo_sections_promo_placements` WRITE;
/*!40000 ALTER TABLE `promo_sections_promo_placements` DISABLE KEYS */;
INSERT INTO `promo_sections_promo_placements` VALUES ('event_page','0'),('cart','1'),('checkout','1'),('event_page','1'),('merch_page','1'),('receipt','1'),('event_page','2'),('merch_page','2'),('event_page','3'),('merch_page','3'),('event_page','4'),('merch_page','4'),('event_page','5'),('merch_page','5'),('event_page','6'),('merch_page','6'),('event_page','7'),('event_page','bottom_promo'),('event_page','collapsible_promo'),('event_page','grid_promo'),('event_page','top_promo');
/*!40000 ALTER TABLE `promo_sections_promo_placements` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-23 22:22:59
