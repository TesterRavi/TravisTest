USE ``;

-- Table structure for table `publisher_earnings`
--

DROP TABLE IF EXISTS `publisher_earnings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publisher_earnings` (
  `publisher_earning_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL,
  `member_id` int(10) unsigned DEFAULT NULL,
  `order_item_id` int(10) unsigned DEFAULT NULL,
  `return_item_id` int(10) unsigned DEFAULT NULL,
  `type_id` tinyint(3) unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `rate` decimal(3,1) unsigned DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`publisher_earning_id`),
  KEY `publisher_site` (`publisher_id`,`site_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `return_item_id` (`return_item_id`),
  KEY `type_id` (`type_id`),
  KEY `FK_publisher_earnings::publisher_sites` (`site_id`),
  KEY `FK_publisher_earnings::members` (`member_id`),
  CONSTRAINT `FK_PublisherEarnings::OrderItems` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`item_id`),
  CONSTRAINT `FK_PublisherEarnings::PublisherEarningTypes` FOREIGN KEY (`type_id`) REFERENCES `publisher_earning_types` (`type_id`),
  CONSTRAINT `FK_PublisherEarnings::Publishers` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`publisher_id`),
  CONSTRAINT `FK_PublisherEarnings::ReturnItems` FOREIGN KEY (`return_item_id`) REFERENCES `return_items` (`item_id`),
  CONSTRAINT `FK_publisher_earnings::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_publisher_earnings::publisher_sites` FOREIGN KEY (`site_id`) REFERENCES `publisher_sites` (`site_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher_earnings`
--

LOCK TABLES `publisher_earnings` WRITE;
/*!40000 ALTER TABLE `publisher_earnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `publisher_earnings` ENABLE KEYS */;
UNLOCK TABLES;

--
