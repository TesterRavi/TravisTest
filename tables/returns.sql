USE ``;

-- Table structure for table `returns`
--

DROP TABLE IF EXISTS `returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `returns` (
  `return_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `request_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `creation_method` enum('manual','automated') CHARACTER SET utf8 NOT NULL DEFAULT 'manual',
  `ship_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `received_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `complete_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `member_id` int(10) unsigned NOT NULL,
  `shipping_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ship_method_id` int(10) unsigned NOT NULL DEFAULT '3',
  `return_payment_method` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT 'Original_Payment',
  `tracking_num` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `tracking_info_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `return_ship_method` varchar(30) DEFAULT NULL,
  `returned` int(10) unsigned NOT NULL DEFAULT '0',
  `subtotal` decimal(10,2) NOT NULL DEFAULT '0.00',
  `taxes` decimal(10,2) NOT NULL,
  `freight` decimal(10,2) NOT NULL,
  `surcharge` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `freight_taxes` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `charged` decimal(10,2) NOT NULL,
  `rcredit` decimal(10,2) NOT NULL,
  `ccredit` decimal(10,2) NOT NULL,
  `coupon` decimal(10,2) DEFAULT '0.00',
  `fcoupon` decimal(10,2) NOT NULL,
  `giftcard` decimal(10,2) NOT NULL DEFAULT '0.00',
  `rlabel` tinyint(1) DEFAULT '0',
  `label_cost` decimal(10,2) DEFAULT '0.00',
  `comments` text CHARACTER SET utf8,
  `notes` text CHARACTER SET utf8,
  `restocking_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`return_id`),
  KEY `FK_returns::members` (`member_id`),
  KEY `FK_returns::shipping` (`shipping_id`),
  KEY `FK_returns::ship_methods` (`ship_method_id`),
  KEY `tracking_num` (`tracking_num`,`ship_method_id`,`request_date`,`tracking_info_date`,`return_id`),
  KEY `FK_returns::return_payment_methods` (`return_payment_method`),
  KEY `FK_returns::return_ship_methods` (`return_ship_method`),
  CONSTRAINT `FK_returns::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_returns::return_payment_methods` FOREIGN KEY (`return_payment_method`) REFERENCES `return_payment_methods` (`return_payment_method`) ON UPDATE CASCADE,
  CONSTRAINT `FK_returns::return_ship_methods` FOREIGN KEY (`return_ship_method`) REFERENCES `return_ship_methods` (`return_ship_method`),
  CONSTRAINT `FK_returns::shipping` FOREIGN KEY (`shipping_id`) REFERENCES `shipping` (`shipping_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_returns::ship_methods` FOREIGN KEY (`ship_method_id`) REFERENCES `ship_methods` (`ship_method_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='InnoDB free: 148480 kB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returns`
--

LOCK TABLES `returns` WRITE;
/*!40000 ALTER TABLE `returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `returns` ENABLE KEYS */;
UNLOCK TABLES;

--
