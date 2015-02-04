USE ``;

-- Table structure for table `coupon_campaigns`
--

DROP TABLE IF EXISTS `coupon_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_campaigns` (
  `coupon_campaign_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`coupon_campaign_id`),
  KEY `FK_coupon_campaigns::campaigns` (`sid`),
  CONSTRAINT `FK_coupon_campaigns::campaigns` FOREIGN KEY (`sid`) REFERENCES `campaigns` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COMMENT='Groups coupons together';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_campaigns`
--

LOCK TABLES `coupon_campaigns` WRITE;
/*!40000 ALTER TABLE `coupon_campaigns` DISABLE KEYS */;
INSERT INTO `coupon_campaigns` VALUES (1,'CUST_SERV_OAS','Coupons for Order Adjustment System',1,'2009-10-01 18:00:29',NULL),(2,'FreeShipEvent','FreeShipEvent',1,'2009-11-06 02:13:04',46665),(3,'10OffOprah','10OffOprah',1,'2009-11-06 02:13:04',95424),(4,'10OffHouse','10OffHouse',1,'2009-11-06 02:13:04',40683),(5,'20OffGB','20OffGB',1,'2009-11-06 02:13:04',75043),(6,'20OffRed','20OffRed',1,'2009-11-06 02:13:04',55410),(7,'FreeShip17','FreeShip17',1,'2009-11-06 02:13:04',88974),(8,'FreeShipRkd10','FreeShipRkd10',1,'2009-11-06 02:13:04',28877),(9,'FreeShipRkd12','FreeShipRkd12',1,'2009-11-06 02:13:04',28877),(10,'FreeShipRkd','FreeShipRkd',1,'2009-11-06 02:13:04',28877),(11,'10OffCosmo2','10OffCosmo2',1,'2009-11-06 02:13:04',31160),(12,'FreeShipHB','FreeShipHB',1,'2009-11-06 02:13:04',49678),(13,'FreeShipMC','FreeShipMC',1,'2009-11-06 02:13:04',10136),(14,'20OffGH2','20OffGH2',1,'2009-11-06 02:13:04',75043),(15,'20OffRed2','20OffRed2',1,'2009-11-06 02:13:04',55410),(16,'10OffEater','10OffEater',1,'2009-11-06 02:13:04',82479),(17,'FreeShipVital2','FreeShipVital2',1,'2009-11-06 02:13:04',95424),(18,'FreeShipO','FreeShipO',1,'2009-11-06 02:13:04',31160),(19,'FreeShipTC','FreeShipTC',1,'2009-11-06 02:13:04',64048),(20,'FreeShip172','FreeShip172',1,'2009-11-06 02:13:04',88974),(21,'20OffHouse','20OffHouse',1,'2009-11-09 22:18:02',40683),(22,'10OffVeranda','10OffVeranda',1,'2009-11-09 22:18:02',29065),(23,'10OffTc','10OffTc',1,'2009-11-09 23:12:38',64048),(24,'FreeShipCg','FreeShipCg',1,'2009-11-09 22:18:02',81671),(25,'FreeShipMemberCare','FreeShipMemberCare',1,'2010-04-08 18:14:32',NULL),(26,'DirectMailApr2010','DirectMailApr2010',1,'2010-04-13 23:56:47',NULL),(27,'EmailRe-engagementCampaign','EmailRe-engagementCampaign',1,'2010-05-10 22:37:49',NULL),(28,'lifecycle','Lifecycle Activation',1,'2010-08-27 20:15:24',NULL),(29,'3_yr_tenure','3 Year Tenure',1,'2010-12-06 17:17:39',NULL),(30,'2011JulyInvitePromo','2011 July Invite Promo',1,'2011-07-08 21:39:21',NULL),(31,'2011OctInvitePromo','2011 Oct Invite Promo',1,'2011-10-10 14:24:11',NULL),(32,'DailyDeals','Daily Deals',1,'2011-10-27 18:00:00',NULL);
/*!40000 ALTER TABLE `coupon_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
