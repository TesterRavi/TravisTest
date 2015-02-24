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
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `event_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `priority` tinyint(3) unsigned DEFAULT NULL,
  `brand_id` int(10) unsigned DEFAULT NULL,
  `code` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `title` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `notes` text NOT NULL,
  `event_type` varchar(20) NOT NULL DEFAULT 'post_event',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `private_indicator` tinyint(1) NOT NULL DEFAULT '0',
  `private_event_note` varchar(300) DEFAULT '',
  `split` decimal(10,2) NOT NULL DEFAULT '70.00',
  `r_holdback` tinyint(2) DEFAULT '25',
  `zoom` tinyint(1) unsigned DEFAULT '1',
  `viewable_date` datetime DEFAULT NULL,
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `event_status` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `event_modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delivery_low_day` int(10) unsigned DEFAULT '10',
  `delivery_high_day` int(10) unsigned DEFAULT '14',
  `delivery_canadian_offset` int(10) unsigned DEFAULT '3',
  `delivery_estimate_rule` enum('Business','Calendar') DEFAULT NULL,
  `event_delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `first_payment` float(10,2) NOT NULL DEFAULT '0.00',
  `event_cap` int(10) unsigned NOT NULL DEFAULT '6',
  `handlingfee` decimal(4,2) NOT NULL DEFAULT '0.00',
  `agent` varchar(50) CHARACTER SET utf8 NOT NULL,
  `commission` decimal(10,2) NOT NULL DEFAULT '0.00',
  `group_by_style` tinyint(1) NOT NULL DEFAULT '0',
  `adjustment` float(10,2) NOT NULL,
  `adjustment_notes` text CHARACTER SET utf8 NOT NULL,
  `short_ship` decimal(4,2) NOT NULL DEFAULT '20.00',
  `short_ship_brand` decimal(4,2) NOT NULL DEFAULT '25.00',
  `description` text CHARACTER SET utf8 NOT NULL,
  `tagline` varchar(55) NOT NULL DEFAULT '',
  `finalsale` tinyint(1) NOT NULL DEFAULT '0',
  `region` enum('west','east') NOT NULL DEFAULT 'west',
  `sort_order` int(11) NOT NULL DEFAULT '99',
  `received_date` datetime DEFAULT NULL,
  `hl_default_sale_type` enum('default','select') CHARACTER SET utf8 NOT NULL DEFAULT 'default',
  `display_brand_name` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `return_to` varchar(20) NOT NULL DEFAULT 'brand',
  `vertical` varchar(30) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL,
  `opp_id` int(10) unsigned DEFAULT NULL,
  `event_rating` tinyint(3) unsigned DEFAULT '1' COMMENT 'rating 1 to 5 will be DEPRECATED replaced by event_type',
  `event_class` varchar(20) NOT NULL DEFAULT 'Branded',
  `event_platform` varchar(20) NOT NULL DEFAULT 'HL Email',
  `discount_range` varchar(45) DEFAULT NULL COMMENT 'ex 0-0',
  `price_range` varchar(45) DEFAULT NULL COMMENT 'ex 0-0',
  `no_skus` int(10) unsigned DEFAULT '0',
  `hazard_material` enum('Y','N') NOT NULL DEFAULT 'N',
  `studio` enum('Y','N') NOT NULL DEFAULT 'N',
  `models` enum('Y','N') NOT NULL DEFAULT 'N',
  `image_sent` enum('Y','N') NOT NULL DEFAULT 'N',
  `factor_style` tinyint(3) unsigned DEFAULT '1' COMMENT '1 to 5',
  `factor_color` tinyint(3) unsigned DEFAULT '1',
  `factor_size` tinyint(3) unsigned DEFAULT '1',
  `ots_initial` decimal(11,2) DEFAULT '0.00',
  `ots_final` decimal(11,2) DEFAULT '0.00',
  `sales_projection_initial` decimal(11,2) DEFAULT '0.00',
  `sales_projection_final` decimal(11,2) DEFAULT '0.00',
  `sales_associate` varchar(30) DEFAULT NULL,
  `oversized` enum('Y','N') NOT NULL DEFAULT 'N',
  `drop_ship` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT 'will be DEPRECATED replaced by event_type',
  `gift_with_purchase` enum('Y','N') NOT NULL DEFAULT 'N',
  `rma_required` enum('Y','N') NOT NULL DEFAULT 'Y',
  `prepaid_percentage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `first_payment_percentage` tinyint(3) unsigned NOT NULL DEFAULT '75',
  `first_payment_timing` tinyint(3) unsigned NOT NULL DEFAULT '10' COMMENT 'days',
  `net_payment_percentage` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `net_payment_timing` tinyint(3) unsigned NOT NULL DEFAULT '35' COMMENT 'days',
  `supplier` varchar(15) DEFAULT NULL,
  `msa_group` varchar(100) NOT NULL DEFAULT '',
  `shipping_calc_rule` varchar(50) NOT NULL DEFAULT 'weight',
  `price_visible` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `discount_visible` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `preview_minutes` int(10) unsigned NOT NULL DEFAULT '15',
  `coa` varchar(50) DEFAULT NULL,
  `built_in_freight` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `carrier` varchar(20) NOT NULL DEFAULT 'UPS',
  `event_display_format` varchar(25) NOT NULL DEFAULT 'Regular',
  `affinity` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `nordstrom_transfer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `email_purchase_order_to` varchar(100) NOT NULL DEFAULT '',
  `first_received_in_warehouse_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `show_event_title` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT 'display the event title on the tile?',
  `hero_title_display_format` varchar(20) NOT NULL DEFAULT 'text-blue',
  `is_afternoon_event` tinyint(1) NOT NULL DEFAULT '0',
  `is_case_pack_purchase` tinyint(1) NOT NULL DEFAULT '0',
  `is_high_priority` tinyint(1) NOT NULL DEFAULT '0',
  `production_due_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `primary_production_source` varchar(30) DEFAULT NULL,
  `production_approval_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`event_id`),
  UNIQUE KEY `priority` (`priority`,`parent_id`),
  KEY `end_date` (`end_date`),
  KEY `createDate` (`create_date`),
  KEY `received_date` (`received_date`),
  KEY `FK_events::verticals` (`vertical`),
  KEY `FK_events::departments` (`department`),
  KEY `FK_events::categories` (`category`),
  KEY `FK_events::sales_associates` (`sales_associate`),
  KEY `FK_events::brands` (`brand_id`),
  KEY `FK_events::suppliers` (`supplier`),
  KEY `code` (`code`),
  KEY `FK_events::event_statuses` (`event_status`),
  KEY `FK_events::events` (`parent_id`),
  KEY `FK_events::delivery_estimates` (`delivery_low_day`,`delivery_high_day`,`delivery_estimate_rule`),
  KEY `idx1` (`event_status`,`start_date`,`end_date`),
  KEY `code_2` (`code`),
  KEY `event_id` (`event_id`,`event_type`,`region`),
  KEY `FK_events::shipping_calc_rules` (`shipping_calc_rule`),
  KEY `start_date_2` (`start_date`,`event_status`,`brand_id`,`event_id`),
  KEY `FK_events::category_of_activity` (`coa`),
  KEY `end_date_2` (`end_date`),
  KEY `brand_id` (`brand_id`,`event_id`),
  KEY `event_type` (`event_type`,`start_date`,`event_status`,`event_id`),
  KEY `FK_events::carriers` (`carrier`),
  KEY `FK_events::event_display_formats` (`event_display_format`),
  KEY `sort_order` (`sort_order`,`event_id`),
  KEY `FK_events::return_tos` (`return_to`),
  KEY `FK_events::hero_title_display_format` (`hero_title_display_format`),
  KEY `primary_production_source` (`primary_production_source`),
  KEY `FK_events::event_class` (`event_class`),
  KEY `FK_events::event_platform` (`event_platform`),
  CONSTRAINT `FK_events::brands` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_events::carriers` FOREIGN KEY (`carrier`) REFERENCES `carriers` (`carrier`) ON UPDATE CASCADE,
  CONSTRAINT `FK_events::categories` FOREIGN KEY (`category`) REFERENCES `categories` (`category`) ON UPDATE CASCADE,
  CONSTRAINT `FK_events::category_of_activity` FOREIGN KEY (`coa`) REFERENCES `category_of_activity` (`coa`) ON UPDATE CASCADE,
  CONSTRAINT `FK_events::delivery_estimates` FOREIGN KEY (`delivery_low_day`, `delivery_high_day`, `delivery_estimate_rule`) REFERENCES `delivery_estimates` (`delivery_low_day`, `delivery_high_day`, `delivery_estimate_rule`) ON UPDATE CASCADE,
  CONSTRAINT `FK_events::departments` FOREIGN KEY (`department`) REFERENCES `departments` (`department`) ON UPDATE CASCADE,
  CONSTRAINT `FK_events::events` FOREIGN KEY (`parent_id`) REFERENCES `events` (`event_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_events::events_primary_production_sources` FOREIGN KEY (`primary_production_source`) REFERENCES `events_primary_production_sources` (`primary_production_source`) ON UPDATE CASCADE,
  CONSTRAINT `FK_events::event_class` FOREIGN KEY (`event_class`) REFERENCES `event_classes` (`event_class`) ON UPDATE CASCADE,
  CONSTRAINT `FK_events::event_display_formats` FOREIGN KEY (`event_display_format`) REFERENCES `event_display_formats` (`event_display_format`) ON UPDATE CASCADE,
  CONSTRAINT `FK_events::event_platform` FOREIGN KEY (`event_platform`) REFERENCES `event_platforms` (`event_platform`) ON UPDATE CASCADE,
  CONSTRAINT `FK_events::event_statuses` FOREIGN KEY (`event_status`) REFERENCES `event_statuses` (`event_status`) ON UPDATE CASCADE,
  CONSTRAINT `FK_events::event_types` FOREIGN KEY (`event_type`) REFERENCES `event_types` (`event_type`) ON UPDATE CASCADE,
  CONSTRAINT `FK_events::hero_title_display_format` FOREIGN KEY (`hero_title_display_format`) REFERENCES `title_display_formats` (`title_display_format`) ON UPDATE CASCADE,
  CONSTRAINT `FK_events::return_tos` FOREIGN KEY (`return_to`) REFERENCES `return_tos` (`return_to`),
  CONSTRAINT `FK_events::sales_associates` FOREIGN KEY (`sales_associate`) REFERENCES `sales_associates` (`sales_associate`) ON UPDATE CASCADE,
  CONSTRAINT `FK_events::shipping_calc_rules` FOREIGN KEY (`shipping_calc_rule`) REFERENCES `shipping_calc_rules` (`shipping_calc_rule`) ON UPDATE CASCADE,
  CONSTRAINT `FK_events::suppliers` FOREIGN KEY (`supplier`) REFERENCES `suppliers` (`supplier`),
  CONSTRAINT `FK_events::verticals` FOREIGN KEY (`vertical`) REFERENCES `verticals` (`vertical`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38569 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,NULL,NULL,6235,'tracyreesesep09wf','Tracy Reese','','','post_h',0,0,'',70.00,1,1,NULL,'2015-02-23 23:59:13','2015-02-24 21:37:22',50,'2015-02-22 19:07:45','2015-02-23 18:38:05',7,10,3,'Business','2010-06-02',15959.24,6,1.00,'',0.00,0,0.00,'',20.00,25.00,'Known for providing women with the feminine cuts they crave.','',0,'east',3,NULL,'default',1,'brand','Accessories','Women','Shoes',7696,1,'Branded','HL Email','','',0,'N','N','N','N',1,1,1,145455.00,43636.00,15000.00,15000.00,'Elza Hamill','N','N','N','Y',0,1,1,1,1,'39pmuihr','','flat_event 5.95',0,0,15,'womens_accessories',0,'UPS','Regular',1,0,'Shoes.HandbagsAP@hautelook.com','1979-09-11 10:06:57',1,'text-blue',0,0,0,'1997-02-09 07:46:27','model photography','1996-04-08 05:10:36'),(1234,NULL,NULL,878,'tracyreesesep09wf','Tracy Reese','','','post_event',1,0,'',70.00,25,1,NULL,'2011-09-11 08:00:00','2011-09-14 08:00:00',100,'0000-00-00 00:00:00','2013-10-09 16:41:02',7,10,3,'Business','0000-00-00',15959.24,6,1.00,'NONE',0.00,0,0.00,'',20.00,25.00,'Known for providing women with the feminine cuts they crave, Tracy Reese\'s collections marry vibrant colors and textures with flattering silhouettes. Wear her patterned dresses from day to night with her detailed, embellished cardigans.','',0,'east',3,NULL,'default',1,'brand','Accessories','Women','Shoes',7696,1,'Branded','HL Email','','',0,'N','N','N','N',1,1,1,145455.00,43636.00,15000.00,15000.00,'Dana Hauser2','N','N','N','Y',0,75,10,25,35,NULL,'','weight',0,0,15,NULL,0,'UPS','Regular',1,0,'Shoes.HandbagsAP@hautelook.com','0000-00-00 00:00:00',1,'text-blue',0,0,0,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00'),(2435,NULL,NULL,1449,'rotarymar10unisex','Rotary','','','post_event',0,0,'',70.00,10,1,NULL,'2010-03-24 08:00:00','2010-03-26 08:00:00',100,'2010-03-11 10:17:14','2013-10-09 16:41:02',10,14,3,'Business','0000-00-00',29763.00,6,1.00,'NONE',0.00,0,0.00,'',20.00,25.00,'Classic wristwatches with a timeless elegance and style.','',0,'east',7,NULL,'default',1,'brand','Jewelry','Unisex','Watches',8466,0,'Branded','HL Email','','',0,'N','N','N','N',0,0,0,0.00,0.00,0.00,0.00,'Amber Berger','N','N','N','Y',0,90,10,10,35,NULL,'','weight',0,0,15,NULL,0,'UPS','Regular',1,0,'JewelryAP@hautelook.com','0000-00-00 00:00:00',1,'text-blue',0,0,0,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00'),(2663,NULL,NULL,1416,'beccamay10wb','BECCA','','','post_event',0,0,'',70.00,10,1,NULL,'2010-05-03 08:00:00','2010-05-05 08:00:00',100,'2010-04-07 10:12:59','2013-10-09 16:41:02',10,14,3,'Business','0000-00-00',14044.32,12,0.50,'NONE',0.00,0,0.00,'',5.00,6.00,'Give your skin a flawless finish with the help of this bestselling line.','',0,'west',5,NULL,'default',1,'brand','Beauty','Women','Color',8651,1,'Branded','HL Email','','',0,'N','N','N','N',1,1,1,0.00,0.00,0.00,0.00,'Paula Scandone','N','N','N','Y',0,90,10,10,35,NULL,'','weight',0,0,15,NULL,0,'UPS','Regular',1,0,'BeautyAP@hautelook.com','0000-00-00 00:00:00',1,'text-blue',0,0,0,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00'),(2813,NULL,NULL,1833,'rotarygroupwatchesmay10unisex','Rotary Group Watches','','','post_event',0,0,'',70.00,10,1,'0000-00-00 00:00:00','2010-05-26 08:00:00','2010-05-28 06:00:00',100,'2010-04-27 15:15:40','2013-10-09 16:41:02',10,14,3,'Business','0000-00-00',14751.72,6,1.00,'NONE',0.00,0,0.00,'',20.00,25.00,'Find a classic watch design from this unbelievably affordable brand.','Watches',0,'east',4,NULL,'select',1,'brand','Jewelry','Unisex','Watches',8866,1,'Branded','HL Email','','',0,'N','N','N','N',1,1,1,0.00,0.00,0.00,0.00,'Amber Berger','N','N','N','Y',0,90,10,10,35,NULL,'','weight',0,0,15,'jewelry_watches',0,'UPS','Regular',1,0,'JewelryAP@hautelook.com','0000-00-00 00:00:00',1,'text-blue',0,0,0,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00'),(6156,NULL,NULL,1026,'fusionbeauty6156wb','Fusion Beauty','','','post_event',0,0,'',70.00,10,1,'0000-00-00 00:00:00','2011-03-15 08:00:00','2011-03-17 06:00:00',100,'2011-02-22 15:04:05','0000-00-00 00:00:00',10,14,3,'Business','0000-00-00',40667.61,12,0.50,'',0.00,0,0.00,'',5.00,6.00,'Get plumper lips and firmer, tanner skin.','Get plumper lips and firmer, tanner skin',0,'east',2,NULL,'default',1,'brand','Beauty','Women','Skincare',12647,1,'Branded','HL Email',NULL,NULL,0,'N','N','N','N',1,1,1,0.00,0.00,40000.00,0.00,'Paula Scandone','N','N','N','Y',0,90,10,10,35,'FUSIO40','','weight',0,0,15,'beauty',0,'UPS','Regular',1,0,'BeautyAP@hautelook.com','0000-00-00 00:00:00',1,'text-blue',0,0,0,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00'),(6257,NULL,NULL,1466,'bootyparlor6257wb','Booty Parlor','','','post_event',0,0,'',65.00,10,1,'0000-00-00 00:00:00','2011-03-14 08:00:00','2011-03-16 08:00:00',100,'2011-02-24 14:09:38','2014-08-01 09:12:11',10,14,3,'Business','0000-00-00',13246.31,12,1.00,'',0.00,0,0.00,'',5.00,6.00,'Sexy skincare and lush beauty products.','Sexy skincare and lush beauty products',1,'west',11,NULL,'default',1,'brand','Beauty','Women','Color',12805,1,'Branded','HL Email',NULL,NULL,0,'N','N','N','N',1,1,1,0.00,0.00,25000.00,0.00,'Nicole Anello','N','N','N','Y',0,90,10,10,35,'BOOTY2695','','weight',0,0,15,'beauty',0,'UPS','Regular',1,0,'BeautyAP@hautelook.com','0000-00-00 00:00:00',1,'text-blue',0,0,0,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00'),(9998,NULL,NULL,1466,'9998bootyparlorwb','Booty Parlor','','','post_event',0,0,'',65.00,10,1,'0000-00-00 00:00:00','2011-10-05 08:00:00','2011-10-08 08:00:00',100,'2011-09-22 18:07:15','0000-00-00 00:00:00',10,14,3,'Business','0000-00-00',19283.11,12,1.00,'',0.00,0,0.00,'',5.00,6.00,'Sultry skincare that turns up the heat.','Sultry skincare that turns up the heat',1,'east',8,NULL,'default',1,'brand','Beauty','Women','Color',16360,1,'Branded','HL Email',NULL,NULL,0,'N','N','N','N',1,1,1,0.00,0.00,40000.00,0.00,'Nicole Anello','N','N','N','Y',0,90,10,10,35,'BOOTY2695','','weight',0,0,15,'beauty',0,'UPS','Regular',1,0,'BeautyAP@hautelook.com','0000-00-00 00:00:00',1,'text-blue',0,0,0,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00'),(12798,NULL,NULL,3679,'12798bacciwc','Bacci','','','post_event',0,0,'',65.00,25,1,NULL,'2012-01-14 08:00:00','2012-01-17 08:00:00',100,'2012-01-03 10:32:02','0000-00-00 00:00:00',10,14,3,'Business','0000-00-00',0.00,6,0.00,'',0.00,0,0.00,'',20.00,25.00,'','The colors you crave, and textures you love',0,'west',1,NULL,'default',1,'brand','Apparel','Women','Collections Contemporary',19246,1,'Branded','HL Email',NULL,NULL,0,'N','N','N','N',1,1,1,0.00,0.00,0.00,0.00,'Mary Beth Boyle','N','N','N','Y',0,75,10,25,35,'BACCI224','','weight',0,0,15,'womens_apparel',0,'UPS','Regular',1,0,'ApparelAP@hautelook.com','0000-00-00 00:00:00',1,'text-blue',0,0,0,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00'),(13470,12774,NULL,1590,'13470frenchconnectionwccchild','French Connection','','','post_event',0,0,'',0.00,25,1,NULL,'2012-03-14 08:00:00','2012-03-18 06:00:00',100,'2012-01-24 18:11:52','0000-00-00 00:00:00',10,14,3,'Business','0000-00-00',0.00,6,0.00,'',0.00,0,0.00,'- 70/30 split- No handling fee- 75% pre-payment- Split short ships-Purchase returns 60% off wholesale- purchasing samples 60% off wholesale',10.00,20.00,'','',0,'east',99,NULL,'default',1,'hautelook','Apparel','Women','Collections Contemporary',19912,1,'Branded','HL Email',NULL,NULL,0,'N','N','N','N',1,1,1,0.00,0.00,100000.00,0.00,'Chris Lepold','N','N','N','N',75,75,10,25,35,'FRENC184-10','','weight',0,0,15,'womens_apparel',0,'UPS','Regular',1,0,'ApparelAP@hautelook.com','0000-00-00 00:00:00',1,'text-blue',0,0,0,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00'),(16972,NULL,NULL,4033,'16972lucienpiccarddodwa','Lucien Piccard Women\'s Watch','','','post_event',0,0,'',0.00,25,1,NULL,'2012-05-26 08:00:00','2012-05-27 08:00:00',100,'2012-05-18 17:32:59','0000-00-00 00:00:00',10,14,3,'Business','0000-00-00',0.00,4,0.00,'',0.00,0,0.00,'BRAND APPROVED',10.00,20.00,'','A simply stunning watch with standout style',0,'east',13,NULL,'select',1,'brand','Accessories','Women','Watches',23383,1,'Branded','HL Email',NULL,NULL,0,'N','N','N','N',1,1,1,108849.00,0.00,25000.00,0.00,'Anne Lustyan','N','N','N','Y',0,75,10,25,35,'SWISS101','','weight',0,0,15,NULL,0,'UPS','Daily Deal',1,0,'JewelryAP@hautelook.com','0000-00-00 00:00:00',1,'text-blue',0,0,0,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00'),(21712,NULL,NULL,1517,'21712rapidlashwb','RapidLash','','','post_event',0,0,'',65.00,0,1,NULL,'2012-10-12 08:00:00','2012-10-15 08:00:00',90,'2012-09-13 14:30:50','0000-00-00 00:00:00',10,14,3,'Business','0000-00-00',0.00,12,1.00,'',0.00,0,0.00,'',5.00,15.00,'','',1,'east',2,NULL,'default',1,'brand','Beauty','Women','Skincare',27313,1,'Branded','HL Email',NULL,NULL,0,'N','N','N','N',1,1,1,0.00,0.00,60000.00,0.00,'Jessica Nguyen','N','N','N','Y',0,0,10,100,45,'ROCAS766','','weight',0,0,15,NULL,0,'UPS','Regular',1,0,'BeautyAP@hautelook.com','0000-00-00 00:00:00',1,'text-blue',0,0,0,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00'),(38568,NULL,NULL,8166,'persistent-catalog','Nordstrom Rack','','','owned_inv',0,0,'',70.00,25,1,NULL,'2025-08-22 08:00:00','2025-08-25 08:00:00',50,'2013-08-21 15:59:50','2014-08-20 11:09:00',5,7,3,'Business','0000-00-00',0.00,6,0.00,'',0.00,0,0.00,'',10.00,20.00,'','',0,'west',99,NULL,'default',1,'hautelook','Accessories','Women','Accessories',NULL,1,'Branded','HL Email',NULL,NULL,0,'N','N','N','N',1,1,1,0.00,0.00,0.00,0.00,NULL,'N','N','N','Y',0,75,10,25,35,NULL,'','weight',0,0,15,'beauty',0,'UPS','Persistent',1,0,'JewelryAP@hautelook.com','0000-00-00 00:00:00',1,'text-blue',0,0,0,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger events_bi BEFORE INSERT ON `events` FOR EACH ROW
BEGIN

DECLARE v_email VARCHAR(100) DEFAULT '';
SELECT get_email_purchase_order_to(NEW.vertical, NEW.department, NEW.category) INTO v_email;
SET NEW.email_purchase_order_to = v_email;

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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger events_bu BEFORE UPDATE ON `events` FOR EACH ROW
BEGIN

DECLARE v_email VARCHAR(100) DEFAULT '';
SELECT get_email_purchase_order_to(NEW.vertical, NEW.department, NEW.category) INTO v_email;
SET NEW.email_purchase_order_to = v_email;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trigger_events_update AFTER UPDATE ON events
FOR EACH ROW
  BEGIN
    
    IF NOT (OLD.event_status <=> NEW.event_status)
    THEN
      INSERT INTO solr_queue_event_status_changed (event_id, triggered_at) VALUES (NEW.event_id, NOW());
    END IF;

    IF
      ( 
        (50 <=> OLD.event_status AND 50 <=> NEW.event_status)
        AND (
          NOT (OLD.title <=> NEW.title)
          OR NOT (OLD.start_date <=> NEW.start_date)
          OR NOT (OLD.end_date <=> NEW.end_date)
          OR NOT (OLD.parent_id <=> NEW.parent_id)
          OR NOT (OLD.event_type <=> NEW.event_type)
        )
      )
      OR ( 
        NOT (OLD.event_status <=> NEW.event_status)
        AND (
          NEW.event_status <=> 50
          OR OLD.event_status <=> 50
        )
      )
    THEN
      INSERT INTO solr_queue_flash(event_id, triggered_at) VALUES (NEW.event_id, NOW());
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

-- Dump completed on 2015-02-24  0:05:07
