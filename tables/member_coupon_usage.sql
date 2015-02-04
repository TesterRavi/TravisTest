USE ``;

-- Table structure for table `member_coupon_usage`
--

DROP TABLE IF EXISTS `member_coupon_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_coupon_usage` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `coupon_code` varchar(25) NOT NULL DEFAULT '',
  `order_item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `member_coupon_status` enum('returned','reusable','single_use') NOT NULL DEFAULT 'single_use',
  PRIMARY KEY (`member_id`,`coupon_code`,`order_item_id`),
  KEY `FK_member_coupon_usage:coupons` (`coupon_code`),
  KEY `FK_member_coupon_usage:order_items` (`order_item_id`),
  CONSTRAINT `FK_member_coupon_usage:coupons` FOREIGN KEY (`coupon_code`) REFERENCES `coupons` (`coupon_code`) ON UPDATE CASCADE,
  CONSTRAINT `FK_member_coupon_usage:members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`),
  CONSTRAINT `FK_member_coupon_usage:order_items` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_coupon_usage`
--

LOCK TABLES `member_coupon_usage` WRITE;
/*!40000 ALTER TABLE `member_coupon_usage` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_coupon_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
