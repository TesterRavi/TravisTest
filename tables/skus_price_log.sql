USE ``;

-- Table structure for table `skus_price_log`
--

DROP TABLE IF EXISTS `skus_price_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skus_price_log` (
  `skus_price_log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sku` int(10) unsigned NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `member_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`skus_price_log_id`),
  KEY `FK_skus_price_log::skus` (`sku`),
  KEY `FK_skus_price_log::members` (`member_id`),
  CONSTRAINT `FK_skus_price_log::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_skus_price_log::skus` FOREIGN KEY (`sku`) REFERENCES `skus` (`sku`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skus_price_log`
--

LOCK TABLES `skus_price_log` WRITE;
/*!40000 ALTER TABLE `skus_price_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `skus_price_log` ENABLE KEYS */;
UNLOCK TABLES;

--
