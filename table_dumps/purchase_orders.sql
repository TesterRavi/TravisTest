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
-- Table structure for table `purchase_orders`
--

DROP TABLE IF EXISTS `purchase_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_orders` (
  `po_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(10) unsigned NOT NULL DEFAULT '0',
  `brand_contact_id` int(10) unsigned DEFAULT NULL,
  `ordered_qty` int(10) unsigned NOT NULL DEFAULT '0',
  `ordered_subtotal` decimal(9,2) unsigned NOT NULL DEFAULT '0.00',
  `received_qty` int(10) unsigned NOT NULL DEFAULT '0',
  `received_subtotal` decimal(9,2) unsigned NOT NULL DEFAULT '0.00',
  `post_date` datetime NOT NULL,
  `in_transit_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `received_date` datetime NOT NULL,
  `short_in_transit_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `short_received_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `purchase_order_status` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `original` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `warehouse_id` int(10) unsigned NOT NULL DEFAULT '1',
  `freight_paid_by` enum('brand','hautelook','split') NOT NULL DEFAULT 'brand',
  `description` text NOT NULL,
  `purchase_order_type` varchar(20) NOT NULL,
  `deadline_delivery_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`po_id`),
  KEY `FK_purchase_orders::purchase_order_types` (`purchase_order_type`),
  KEY `FK_purchase_orders::warehouses` (`warehouse_id`),
  KEY `FK_purchase_orders::purchase_orders_statuses` (`purchase_order_status`),
  KEY `FK_purchase_orders::brand_contacts` (`brand_contact_id`),
  KEY `FK_purchase_orders::events` (`event_id`),
  CONSTRAINT `FK_purchase_orders::brand_contacts` FOREIGN KEY (`brand_contact_id`) REFERENCES `brand_contacts` (`brand_contact_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_purchase_orders::events` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_purchase_orders::purchase_orders_statuses` FOREIGN KEY (`purchase_order_status`) REFERENCES `purchase_order_statuses` (`purchase_order_status`),
  CONSTRAINT `FK_purchase_orders::purchase_order_types` FOREIGN KEY (`purchase_order_type`) REFERENCES `purchase_order_types` (`purchase_order_type`),
  CONSTRAINT `FK_purchase_orders::warehouses` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 225280 kB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_orders`
--

LOCK TABLES `purchase_orders` WRITE;
/*!40000 ALTER TABLE `purchase_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER purchase_orders_au AFTER UPDATE ON `purchase_orders` FOR EACH ROW
BEGIN

call generate_purchase_order_line_nbr(NEW.po_id);


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

-- Dump completed on 2015-02-23 22:22:41
