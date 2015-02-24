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
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping` (
  `shipping_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `company` varchar(35) NOT NULL DEFAULT '',
  `address` varchar(45) NOT NULL,
  `address2` varchar(45) NOT NULL DEFAULT '',
  `city` varchar(45) NOT NULL,
  `state` varchar(3) NOT NULL DEFAULT 'ZZ',
  `zipcode` varchar(20) NOT NULL DEFAULT '',
  `country_iso` varchar(2) NOT NULL DEFAULT 'ZZ',
  `create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `label` varchar(45) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `email` varchar(100) NOT NULL DEFAULT '',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `verified` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`shipping_id`),
  UNIQUE KEY `member_id` (`member_id`,`first_name`,`last_name`,`address`,`address2`,`city`,`state`,`zipcode`,`country_iso`,`phone`,`company`),
  KEY `state` (`state`,`country_iso`,`shipping_id`),
  CONSTRAINT `FK_shipping::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_shipping::states` FOREIGN KEY (`state`, `country_iso`) REFERENCES `states` (`state`, `country_iso`)
) ENGINE=InnoDB AUTO_INCREMENT=1526202 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping`
--

LOCK TABLES `shipping` WRITE;
/*!40000 ALTER TABLE `shipping` DISABLE KEYS */;
INSERT INTO `shipping` VALUES (397117,4133,'nighat','khan','','12158 palmer drive','','moorpark','CA','93021','US','2010-03-25 18:35:47','12158 palmer drive','805-523-7171',1,'','2011-03-15 20:33:32','N'),(1526201,4133,'nighat','khan','','6695 north benwood drive','','moorpark','CA','93021','US','2012-01-14 09:25:22','6695 north benwood drive','805-523-7171',1,'','2012-10-14 20:47:14','N');
/*!40000 ALTER TABLE `shipping` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER shipping_bi BEFORE INSERT ON shipping
FOR EACH ROW
BEGIN

IF NEW.address2 LIKE '%google toolbar%' THEN
 SET NEW.address2 = '';
END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER shipping_bu BEFORE UPDATE ON shipping
FOR EACH ROW
BEGIN

IF NEW.address2 LIKE '%google toolbar%' THEN
 SET NEW.address2 = '';
END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-24  0:05:03
