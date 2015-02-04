USE ``;

-- Table structure for table `vouchers`
--

DROP TABLE IF EXISTS `vouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vouchers` (
  `voucher_code` varchar(25) NOT NULL,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sku` int(10) unsigned NOT NULL,
  `event_id` int(10) unsigned NOT NULL DEFAULT '0',
  `first_name` varchar(40) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL,
  `style_num` varchar(45) NOT NULL,
  `style_name` varchar(255) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`voucher_code`),
  KEY `FK_vouchers::orders` (`order_id`),
  KEY `FK_vouchers::events` (`event_id`),
  KEY `FK_vouchers::skus` (`sku`),
  CONSTRAINT `FK_vouchers::events` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`),
  CONSTRAINT `FK_vouchers::orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `FK_vouchers::skus` FOREIGN KEY (`sku`) REFERENCES `skus` (`sku`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vouchers`
--

LOCK TABLES `vouchers` WRITE;
/*!40000 ALTER TABLE `vouchers` DISABLE KEYS */;
/*!40000 ALTER TABLE `vouchers` ENABLE KEYS */;
UNLOCK TABLES;

--
