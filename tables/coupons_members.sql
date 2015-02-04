USE ``;

-- Table structure for table `coupons_members`
--

DROP TABLE IF EXISTS `coupons_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons_members` (
  `coupon_code` varchar(25) NOT NULL DEFAULT '',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expiration_date` datetime DEFAULT NULL,
  PRIMARY KEY (`coupon_code`,`member_id`),
  KEY `FK_coupons_members::members` (`member_id`),
  CONSTRAINT `FK_coupons_members::coupons` FOREIGN KEY (`coupon_code`) REFERENCES `coupons` (`coupon_code`) ON UPDATE CASCADE,
  CONSTRAINT `FK_coupons_members::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons_members`
--

LOCK TABLES `coupons_members` WRITE;
/*!40000 ALTER TABLE `coupons_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons_members` ENABLE KEYS */;
UNLOCK TABLES;

--
