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
-- Table structure for table `styles_shipping_rules`
--

DROP TABLE IF EXISTS `styles_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `styles_shipping_rules` (
  `style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_rule` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`style_id`,`shipping_rule`),
  KEY `FK_styles_shipping_rules::shipping_rules` (`shipping_rule`),
  CONSTRAINT `FK_styles_shipping_rules::shipping_rules` FOREIGN KEY (`shipping_rule`) REFERENCES `shipping_rules` (`shipping_rule`) ON UPDATE CASCADE,
  CONSTRAINT `FK_styles_shipping_rules::styles` FOREIGN KEY (`style_id`) REFERENCES `styles` (`style_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `styles_shipping_rules`
--

LOCK TABLES `styles_shipping_rules` WRITE;
/*!40000 ALTER TABLE `styles_shipping_rules` DISABLE KEYS */;
INSERT INTO `styles_shipping_rules` VALUES (73393,'no_3_day'),(156236,'no_3_day'),(156237,'no_3_day'),(156238,'no_3_day'),(156240,'no_3_day'),(156241,'no_3_day'),(156242,'no_3_day'),(156243,'no_3_day'),(156245,'no_3_day'),(156246,'no_3_day'),(156247,'no_3_day'),(156248,'no_3_day'),(156249,'no_3_day'),(173882,'no_3_day'),(173883,'no_3_day'),(173884,'no_3_day'),(156236,'premier'),(156237,'premier'),(156238,'premier'),(156240,'premier'),(156241,'premier'),(156242,'premier'),(156243,'premier'),(156245,'premier'),(156246,'premier'),(156247,'premier'),(156248,'premier'),(156249,'premier');
/*!40000 ALTER TABLE `styles_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-24  0:06:07
