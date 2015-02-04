USE ``;

-- Table structure for table `giftcards`
--

DROP TABLE IF EXISTS `giftcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcards` (
  `giftcard_number` varchar(30) NOT NULL,
  `giftcard_template` varchar(25) DEFAULT NULL,
  `order_item_id` int(10) unsigned DEFAULT NULL,
  `return_item_id` int(10) unsigned DEFAULT NULL,
  `return_id` int(10) unsigned DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `recipient_name` varchar(100) NOT NULL DEFAULT '',
  `sender_name` varchar(100) NOT NULL DEFAULT '',
  `recipient_email` varchar(100) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `schedule_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`giftcard_number`),
  UNIQUE KEY `number` (`giftcard_number`),
  KEY `FK_giftcards::order_items` (`order_item_id`),
  KEY `FK_giftcards::giftcard_templates` (`giftcard_template`),
  KEY `FK_giftcards::return_items` (`return_item_id`),
  KEY `FK_giftcards::returns` (`return_id`),
  CONSTRAINT `FK_giftcards::giftcard_templates` FOREIGN KEY (`giftcard_template`) REFERENCES `giftcard_templates` (`giftcard_template`) ON UPDATE CASCADE,
  CONSTRAINT `FK_giftcards::order_items` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`item_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_giftcards::returns` FOREIGN KEY (`return_id`) REFERENCES `returns` (`return_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_giftcards::return_items` FOREIGN KEY (`return_item_id`) REFERENCES `return_items` (`item_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giftcards`
--

LOCK TABLES `giftcards` WRITE;
/*!40000 ALTER TABLE `giftcards` DISABLE KEYS */;
INSERT INTO `giftcards` VALUES ('150010142647996',NULL,NULL,NULL,NULL,50.00,'','','','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('150010259384458',NULL,NULL,NULL,NULL,50.00,'','','','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('150010357888137',NULL,NULL,NULL,NULL,50.00,'','','','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('150010420357664',NULL,NULL,NULL,NULL,50.00,'','','','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('150010519115775',NULL,NULL,NULL,NULL,50.00,'','','','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('150010661948148',NULL,NULL,NULL,NULL,25.00,'','','','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('150010748237028',NULL,NULL,NULL,NULL,100.00,'','','','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('150010868581619',NULL,NULL,NULL,NULL,25.00,'','','','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('150010947726995',NULL,NULL,NULL,NULL,25.00,'','','','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('150011031663185',NULL,NULL,NULL,NULL,50.00,'','','','','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `giftcards` ENABLE KEYS */;
UNLOCK TABLES;

--
