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
-- Table structure for table `file_types_file_extensions`
--

DROP TABLE IF EXISTS `file_types_file_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file_types_file_extensions` (
  `file_type` varchar(25) NOT NULL,
  `file_extension` varchar(5) NOT NULL,
  PRIMARY KEY (`file_type`,`file_extension`),
  KEY `FK_file_types_file_extensions:file_extensions` (`file_extension`),
  CONSTRAINT `FK_file_types_file_extensions:file_extensions` FOREIGN KEY (`file_extension`) REFERENCES `file_extensions` (`file_extension`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_file_types_file_extensions:file_types` FOREIGN KEY (`file_type`) REFERENCES `file_types` (`file_type`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_types_file_extensions`
--

LOCK TABLES `file_types_file_extensions` WRITE;
/*!40000 ALTER TABLE `file_types_file_extensions` DISABLE KEYS */;
INSERT INTO `file_types_file_extensions` VALUES ('Child Safety PDF','pdf');
/*!40000 ALTER TABLE `file_types_file_extensions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-24  0:05:25
