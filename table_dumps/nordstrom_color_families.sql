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
-- Table structure for table `nordstrom_color_families`
--

DROP TABLE IF EXISTS `nordstrom_color_families`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nordstrom_color_families` (
  `nordstrom_color_family` varchar(3) NOT NULL,
  `color_family` varchar(25) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nordstrom_color_family`),
  KEY `FK_nordstrom_color_families::color_families` (`color_family`),
  CONSTRAINT `FK_nordstrom_color_families::color_families` FOREIGN KEY (`color_family`) REFERENCES `color_families` (`color_family`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Map of Nordstrom Color Families to Hautelook Color Families';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nordstrom_color_families`
--

LOCK TABLES `nordstrom_color_families` WRITE;
/*!40000 ALTER TABLE `nordstrom_color_families` DISABLE KEYS */;
INSERT INTO `nordstrom_color_families` VALUES ('CBE','Beige','BEIGE TONES'),('CBG','Blue','BLUE/GREEN TONES'),('CBK','Black','BLACK TONES'),('CBL','Blue','BLUE TONES'),('CBR','Brown','BROWN TONES'),('CBU','Purple','BURGUNDY TONES'),('CCO','Orange','CORAL TONES'),('CGR','Green','GREEN TONES'),('CGY','Gray','GREY TONES'),('CIV','White','IVORY TONES'),('CMT','Metallic','METALLIC TONES'),('CNO','No Color','NO COLOR'),('COR','Orange','ORANGE TONES'),('CPK','Pink','PINK TONES'),('CPU','Purple','PURPLE TONES'),('CRE','Red','RED TONES'),('CWH','White','WHITE TONES'),('CYE','Yellow','YELLOW TONES');
/*!40000 ALTER TABLE `nordstrom_color_families` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-23 22:22:56
