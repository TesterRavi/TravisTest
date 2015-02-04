USE ``;

-- Table structure for table `coupons_events`
--

DROP TABLE IF EXISTS `coupons_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons_events` (
  `coupon_code` varchar(25) NOT NULL DEFAULT '',
  `event_id` int(10) unsigned NOT NULL DEFAULT '0',
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expiration_date` datetime DEFAULT NULL,
  PRIMARY KEY (`coupon_code`,`event_id`),
  KEY `FK_coupons_events::events` (`event_id`),
  CONSTRAINT `FK_coupons_events::coupons` FOREIGN KEY (`coupon_code`) REFERENCES `coupons` (`coupon_code`) ON UPDATE CASCADE,
  CONSTRAINT `FK_coupons_events::events` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons_events`
--

LOCK TABLES `coupons_events` WRITE;
/*!40000 ALTER TABLE `coupons_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons_events` ENABLE KEYS */;
UNLOCK TABLES;

--
