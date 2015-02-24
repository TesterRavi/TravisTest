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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `member_id` int(10) unsigned NOT NULL,
  `session_id` varchar(32) NOT NULL DEFAULT '',
  `billing_id` int(10) unsigned NOT NULL,
  `shipping_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ship_method_id` int(10) unsigned NOT NULL,
  `payment_method` varchar(10) NOT NULL DEFAULT '',
  `card_number` varchar(10) NOT NULL DEFAULT '0',
  `transaction_id` varchar(20) NOT NULL DEFAULT '',
  `transaction_type` enum('na','auth','capture','sales') NOT NULL DEFAULT 'na',
  `ordered` smallint(6) NOT NULL DEFAULT '0',
  `tax_rate` decimal(10,4) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL DEFAULT '0.00',
  `taxes` decimal(10,2) DEFAULT '0.00',
  `freight` decimal(10,2) NOT NULL,
  `freight_class` varchar(400) NOT NULL DEFAULT 'Halo_Freight_StandardFreight',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `charged` decimal(10,2) NOT NULL,
  `rcredit` decimal(10,2) NOT NULL,
  `ccredit` decimal(10,2) NOT NULL,
  `scredit` decimal(10,2) NOT NULL,
  `coupon` decimal(10,2) DEFAULT '0.00',
  `gift_card` decimal(10,2) DEFAULT '0.00',
  `fcoupon` decimal(10,2) NOT NULL,
  `acredit` decimal(10,2) NOT NULL,
  `notes` text NOT NULL,
  `processor` varchar(20) DEFAULT NULL,
  `sid` int(10) unsigned NOT NULL DEFAULT '100',
  `mid` varchar(255) DEFAULT NULL,
  `cid` varchar(200) DEFAULT NULL,
  `aid` varchar(200) DEFAULT NULL,
  `surcharge` decimal(10,2) unsigned DEFAULT '0.00',
  `surcharge_rate` decimal(10,4) unsigned DEFAULT '0.0000',
  `fraud` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `age_verified` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`),
  KEY `ship_method_id` (`ship_method_id`),
  KEY `FK_orders::campaigns` (`sid`),
  KEY `FK_orders::members` (`member_id`),
  KEY `FK_orders::shipping` (`shipping_id`),
  KEY `FK_orders::billing` (`billing_id`),
  KEY `FK_orders::processors` (`processor`),
  KEY `order_date` (`order_date`,`order_id`,`member_id`),
  CONSTRAINT `FK_orders::billing` FOREIGN KEY (`billing_id`) REFERENCES `billing` (`billing_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_orders::campaigns` FOREIGN KEY (`sid`) REFERENCES `campaigns` (`sid`),
  CONSTRAINT `FK_orders::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_orders::processors` FOREIGN KEY (`processor`) REFERENCES `processors` (`processor`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Orders::ShipMethods` FOREIGN KEY (`ship_method_id`) REFERENCES `ship_methods` (`ship_method_id`),
  CONSTRAINT `FK_orders::shipping` FOREIGN KEY (`shipping_id`) REFERENCES `shipping` (`shipping_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7539554 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1002411,'2010-03-25 18:36:38',4134,'',415752,397117,3,'VISA','3550','2909376515','sales',1,9.7500,60.00,5.85,7.95,'Halo_Freight_StandardWeightFreight,Halo_Freight_SingleEventWeightChargeDecorator',73.80,73.80,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'Placed by new Checkout System.','Authnet2',101,NULL,NULL,'',0.00,0.0000,0,0),(1158482,'2010-05-04 20:54:36',4134,'',415752,397117,3,'VISA','3550','2973662427','sales',1,9.7500,19.50,1.90,5.95,'Halo_Freight_StandardWeightFreight,Halo_Freight_SingleEventWeightChargeDecorator',27.35,27.35,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'','Authnet2',101,NULL,NULL,'',0.00,0.0000,0,0),(1248156,'2010-05-27 10:58:24',4134,'',415752,397117,3,'VISA','3550','3009201805','sales',1,9.7500,69.00,6.73,7.95,'Halo_Freight_StandardWeightFreight,Halo_Freight_SingleEventWeightChargeDecorator',83.68,83.68,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'','Authnet2',101,NULL,NULL,'',0.00,0.0000,0,0),(2670045,'2011-03-15 20:33:31',4134,'iaj3u2f6c6p3fpf74nnrme1tb1',415752,397117,3,'VISA','3550','29618283447858','capture',3,9.7500,32.97,3.22,5.95,'Halo_Freight_MixedFreight, Halo_Freight_SingleEventValueChargeDecorator',42.14,42.14,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'','Litle',100,NULL,NULL,NULL,0.00,0.0000,0,0),(4834440,'2012-01-14 09:28:21',4134,'fh98taq80vc9msbc57ccrlm8n1',1599680,1526201,3,'VISA','1956','825688675176859385','capture',1,7.2500,35.00,2.54,7.95,'Halo_Freight_StandardFreight',45.49,45.49,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'CI[28131163]CI\n Order placed utilizing the new Shipping Strategy project!','Litle',100,NULL,NULL,NULL,0.00,0.0000,1,0),(5415631,'2012-03-14 10:53:09',4134,'7mda6pgqu3p4om3mmk6tjqfk35',1599680,1526201,3,'VISA','1956','825689099980718092','capture',1,7.2500,89.00,6.45,7.95,'Halo_Freight_StandardFreight',103.40,103.40,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'CI[32221980]CI\n Order placed utilizing the new Shipping Strategy project!','Litle',100,NULL,NULL,NULL,0.00,0.0000,1,0),(6178799,'2012-05-26 10:49:28',4134,'dehkma1uhe4itr05lu907tnv16',1599680,1526201,3,'VISA','1956','825777577577923244','capture',1,7.2500,39.00,2.83,7.95,'Halo_Freight_StandardFreight',49.78,49.78,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'CI[37728260]CI\n Order placed utilizing the new Shipping Strategy project!','Litle',100,NULL,NULL,NULL,0.00,0.0000,1,0),(7539552,'2012-10-14 20:47:13',4134,'vlhul4ac9c4496gl5kccceb7d2',1599680,1526201,3,'VISA','1956','817070446403749515','capture',1,7.2500,25.00,1.81,5.95,'Halo_Freight_StandardFreight',32.76,32.76,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'CI[47832023]CI\n Order placed utilizing the new Shipping Strategy project!','Litle',100,NULL,NULL,NULL,0.00,0.0000,1,0),(7539553,'2012-10-14 20:48:13',4134,'vlhul4jl4fdasjfj5kccceb7d2',1599681,1526201,3,'VISA','1956','817070446403749515','capture',1,7.2500,25.00,1.81,5.95,'Halo_Freight_StandardFreight',32.76,32.76,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'CI[47832024]CI\n Order placed utilizing the new Shipping Strategy project!','Litle',100,NULL,NULL,NULL,0.00,0.0000,1,0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
