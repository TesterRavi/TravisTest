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
-- Table structure for table `invitation_promotions`
--

DROP TABLE IF EXISTS `invitation_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitation_promotions` (
  `inv_camp_id` int(10) unsigned NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `purchase_end_date` datetime DEFAULT NULL,
  `member_specific` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`inv_camp_id`),
  CONSTRAINT `FK_invitation_promotions::invitation_campaigns` FOREIGN KEY (`inv_camp_id`) REFERENCES `invitation_campaigns` (`inv_camp_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitation_promotions`
--

LOCK TABLES `invitation_promotions` WRITE;
/*!40000 ALTER TABLE `invitation_promotions` DISABLE KEYS */;
INSERT INTO `invitation_promotions` VALUES (1,NULL,NULL,NULL,0),(2,NULL,NULL,'1998-12-18 00:00:00',0),(3,NULL,NULL,'1998-12-18 00:00:00',0),(4,NULL,NULL,'1998-12-18 00:00:00',0),(5,NULL,NULL,'1998-12-18 00:00:00',0),(6,NULL,NULL,'1998-12-18 00:00:00',0),(7,NULL,NULL,'1998-12-18 00:00:00',0),(8,NULL,NULL,'1998-12-18 00:00:00',0),(9,NULL,NULL,NULL,0),(10,'2011-01-26 00:00:00','2011-01-28 23:59:59','2011-02-28 00:00:00',0),(11,'2011-03-16 00:00:00','2011-03-16 00:00:00','2011-04-16 23:59:59',0),(12,'2011-07-11 00:00:00','2011-07-13 23:59:59','2011-08-11 23:59:59',0),(13,'2011-07-28 00:00:00','2011-08-03 23:59:59','2011-08-10 23:59:59',1),(14,'2011-10-10 08:00:00','2011-10-16 23:59:59','2011-11-16 23:59:59',0);
/*!40000 ALTER TABLE `invitation_promotions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-24  0:05:36
