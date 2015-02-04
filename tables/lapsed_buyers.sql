USE ``;

-- Table structure for table `lapsed_buyers`
--

DROP TABLE IF EXISTS `lapsed_buyers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lapsed_buyers` (
  `member_id` int(10) unsigned NOT NULL,
  `email` varchar(255) NOT NULL,
  `ship_coupon` varchar(25) DEFAULT NULL,
  `dollar_coupon` varchar(25) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`member_id`),
  KEY `FK_lapsed_buyers::coupons` (`ship_coupon`),
  KEY `FK_lapsed_buyers::coupons2` (`dollar_coupon`),
  CONSTRAINT `FK_lapsed_buyers::coupons` FOREIGN KEY (`ship_coupon`) REFERENCES `coupons` (`coupon_code`) ON UPDATE CASCADE,
  CONSTRAINT `FK_lapsed_buyers::coupons2` FOREIGN KEY (`dollar_coupon`) REFERENCES `coupons` (`coupon_code`) ON UPDATE CASCADE,
  CONSTRAINT `member_id_exists` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lapsed_buyers`
--

LOCK TABLES `lapsed_buyers` WRITE;
/*!40000 ALTER TABLE `lapsed_buyers` DISABLE KEYS */;
/*!40000 ALTER TABLE `lapsed_buyers` ENABLE KEYS */;
UNLOCK TABLES;

--
