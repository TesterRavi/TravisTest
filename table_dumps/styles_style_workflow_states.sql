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
-- Table structure for table `styles_style_workflow_states`
--

DROP TABLE IF EXISTS `styles_style_workflow_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `styles_style_workflow_states` (
  `style_id` int(10) unsigned NOT NULL,
  `style_workflow_state` tinyint(3) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`style_id`),
  KEY `FK_styles_workflow::workflow_state` (`style_workflow_state`),
  KEY `FK_styles_workflow::member_id` (`member_id`),
  CONSTRAINT `FK_styles_workflow::workflow_state` FOREIGN KEY (`style_workflow_state`) REFERENCES `style_workflow_states` (`style_workflow_state`) ON UPDATE CASCADE,
  CONSTRAINT `FK_styles_workflow::style_id` FOREIGN KEY (`style_id`) REFERENCES `styles` (`style_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `styles_style_workflow_states`
--

LOCK TABLES `styles_style_workflow_states` WRITE;
/*!40000 ALTER TABLE `styles_style_workflow_states` DISABLE KEYS */;
/*!40000 ALTER TABLE `styles_style_workflow_states` ENABLE KEYS */;
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
