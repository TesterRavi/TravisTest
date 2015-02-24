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
-- Table structure for table `ship_methods`
--

DROP TABLE IF EXISTS `ship_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ship_methods` (
  `ship_method_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ship_method` varchar(45) NOT NULL DEFAULT '',
  `agent` varchar(45) NOT NULL,
  `service_code` char(2) NOT NULL,
  `freight_class` varchar(255) NOT NULL DEFAULT 'Halo_Freight_StandardWeightFreight',
  `min_freight` decimal(7,2) unsigned NOT NULL DEFAULT '0.00',
  `max_freight` decimal(7,2) unsigned NOT NULL DEFAULT '0.00',
  `admin_selectable` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ship_method_calc_rule` varchar(50) NOT NULL DEFAULT 'none',
  PRIMARY KEY (`ship_method_id`),
  UNIQUE KEY `ship_method` (`ship_method`),
  KEY `agent` (`agent`),
  KEY `FK_ship_methods::ship_method_calc_rules` (`ship_method_calc_rule`),
  CONSTRAINT `FK_ship_methods::ship_method_calc_rules` FOREIGN KEY (`ship_method_calc_rule`) REFERENCES `ship_method_calc_rules` (`ship_method_calc_rule`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ship_methods`
--

LOCK TABLES `ship_methods` WRITE;
/*!40000 ALTER TABLE `ship_methods` DISABLE KEYS */;
INSERT INTO `ship_methods` VALUES (1,'PICK-UP','','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(2,'2nd Day Air','','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(3,'Standard Ground','UPS','03','Halo_Freight_MixedFreight, Halo_Freight_SingleEventValueChargeDecorator',5.95,299.95,1,'none'),(4,'Worldwide Express','','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(5,'Worldwide Expedited','','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(6,'WragTime','','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(7,'UPS Ground','UPS','03','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(8,'Canada Standard','UPS','','Halo_Freight_StandardWeightFreight,Halo_Freight_SingleEventWeightChargeDecorator',10.95,299.95,0,'none'),(9,'3 Day Select','UPS','12','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(10,'Next Day Air','UPS','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(11,'UPS Standard Mail','UPS','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(12,'UPS 3 Day Select','UPS','12','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(13,'UPS 2nd Day Air','UPS','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(14,'UPS Next Day Air Saver','UPS','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(15,'UPS Next Day Air','UPS','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(16,'UPS Next Day Air Early AM','UPS','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(18,'FedEx 1st Overnight','FEDEX','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(20,'UPS 2nd Day Air Saver Early AM','UPS','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(21,'FedEx Priority Overnight','FEDEX','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(23,'FedEx Overnight','FEDEX','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(25,'FedEx 2-day','FEDEX','','Halo_Freight_StandardWeightFreight',5.95,299.95,1,'none'),(26,'Worldwide Saver','UPS','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(27,'Ship','','','Halo_Freight_StandardWeightFreight',5.95,299.95,1,'none'),(28,'Our Truck','','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(29,'Yellow Freight','','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(31,'UPS Canada Standard','UPS','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(32,'UPS Worldwide Express Plus','UPS','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(33,'UPS Worldwide Expedited','UPS','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(34,'UPS Worldwide Express','UPS','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(35,'Landmark Canada Standard','LANDMARK','','Halo_Freight_StandardFlatFreight,Halo_Freight_SingleEventChargeDecorator,Halo_Freight_LandmarkSurchargeDecorator',5.95,299.95,1,'landmark: .20'),(36,'DHL','DHL','','Halo_Freight_StandardWeightFreight',5.95,299.95,1,'none'),(37,'USPS','USPS','','Halo_Freight_StandardWeightFreight',5.95,299.95,1,'none'),(38,'Landmark Canada West','LANDMARK','','Halo_Freight_StandardFlatFreight,Halo_Freight_SingleEventChargeDecorator,Halo_Freight_LandmarkSurchargeDecorator',5.95,299.95,0,'none'),(39,'Landmark Canada East','LANDMARK','','Halo_Freight_StandardFlatFreight,Halo_Freight_SingleEventChargeDecorator,Halo_Freight_LandmarkSurchargeDecorator',5.95,299.95,0,'none'),(40,'UPS Ground West','UPS','03','Halo_Freight_StandardWeightFreight,Halo_Freight_SingleEventWeightChargeDecorator',5.95,299.95,0,'none'),(41,'UPS Ground East','UPS','03','Halo_Freight_StandardWeightFreight,Halo_Freight_SingleEventWeightChargeDecorator',5.95,299.95,0,'none'),(42,'Email','','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(43,'Drop Ship','','','Halo_Freight_StandardWeightFreight',5.95,299.95,0,'none'),(44,'Landmark Australia','LANDMARK','','Halo_Freight_StandardFlatFreight,Halo_Freight_SingleEventChargeDecorator,Halo_Freight_LandmarkSurchargeDecorator',5.95,299.95,0,'none');
/*!40000 ALTER TABLE `ship_methods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-24  0:05:03
