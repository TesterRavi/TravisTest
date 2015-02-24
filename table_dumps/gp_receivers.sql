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
-- Table structure for table `gp_receivers`
--

DROP TABLE IF EXISTS `gp_receivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_receivers` (
  `dex_row_id` int(10) unsigned NOT NULL,
  `po_id` int(10) unsigned NOT NULL DEFAULT '0',
  `revision_number` int(10) unsigned NOT NULL DEFAULT '0',
  `receipt_line_number` int(10) unsigned NOT NULL DEFAULT '0',
  `sku` int(10) unsigned NOT NULL DEFAULT '0',
  `event_id` int(10) unsigned NOT NULL DEFAULT '0',
  `qty_shipped` decimal(9,2) NOT NULL DEFAULT '0.00',
  `qty_rejected` decimal(9,2) NOT NULL DEFAULT '0.00',
  `qty_net` decimal(9,2) NOT NULL DEFAULT '0.00',
  `location_code` varchar(11) NOT NULL DEFAULT '',
  `date_received` date NOT NULL DEFAULT '0000-00-00',
  `source` char(1) DEFAULT NULL,
  PRIMARY KEY (`po_id`,`dex_row_id`),
  KEY `FK_gp_receivers::skus` (`sku`),
  KEY `FK_gp_receivers::events` (`event_id`),
  CONSTRAINT `FK_gp_receivers::events` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_gp_receivers::purchase_orders` FOREIGN KEY (`po_id`) REFERENCES `purchase_orders` (`po_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_gp_receivers::skus` FOREIGN KEY (`sku`) REFERENCES `skus` (`sku`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_receivers`
--

LOCK TABLES `gp_receivers` WRITE;
/*!40000 ALTER TABLE `gp_receivers` DISABLE KEYS */;
/*!40000 ALTER TABLE `gp_receivers` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER gp_receivers_ai AFTER INSERT ON gp_receivers
FOR EACH ROW
BEGIN
declare var_cost double default 0;
declare var_qty  int default 0;
select new.qty_net * cost into var_cost from purchase_orders_line_items where po_id=new.po_id and sku=new.sku;
select new.qty_net into var_qty from purchase_orders_line_items where po_id=new.po_id and sku=new.sku;
update purchase_orders set received_date=now(),purchase_order_status=75,received_qty=received_qty+var_qty,received_subtotal=received_subtotal+var_cost where po_id=new.po_id;
update purchase_orders_line_items set received=received+new.qty_net where po_id=new.po_id and sku=new.sku;

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

-- Dump completed on 2015-02-24  0:05:30
