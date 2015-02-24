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
-- Table structure for table `promo_placements_promo_placement_sorts`
--

DROP TABLE IF EXISTS `promo_placements_promo_placement_sorts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promo_placements_promo_placement_sorts` (
  `promo_placement` varchar(25) NOT NULL,
  `promo_placement_sort` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`promo_placement`,`promo_placement_sort`),
  KEY `FK_promo_placements_promo_placement_sorts::promo_placement_sorts` (`promo_placement_sort`),
  CONSTRAINT `FK_promo_placements_promo_placement_sorts::promo_placements` FOREIGN KEY (`promo_placement`) REFERENCES `promo_placements` (`promo_placement`) ON UPDATE CASCADE,
  CONSTRAINT `FK_promo_placements_promo_placement_sorts::promo_placement_sorts` FOREIGN KEY (`promo_placement_sort`) REFERENCES `promo_placement_sorts` (`promo_placement_sort`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo_placements_promo_placement_sorts`
--

LOCK TABLES `promo_placements_promo_placement_sorts` WRITE;
/*!40000 ALTER TABLE `promo_placements_promo_placement_sorts` DISABLE KEYS */;
INSERT INTO `promo_placements_promo_placement_sorts` VALUES ('bottom_promo',1),('grid_promo',1),('bottom_promo',2),('grid_promo',2),('bottom_promo',3);
/*!40000 ALTER TABLE `promo_placements_promo_placement_sorts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-24  0:05:48
