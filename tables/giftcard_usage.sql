USE ``;

-- Table structure for table `giftcard_usage`
--

DROP TABLE IF EXISTS `giftcard_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcard_usage` (
  `giftcard_number` varchar(30) NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DEPRECATED_giftcard_usage_id` int(10) unsigned NOT NULL,
  `DEPRECATED_giftcard_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`giftcard_number`,`order_id`,`member_id`),
  KEY `FK_giftcard_usage::giftcards` (`DEPRECATED_giftcard_id`),
  KEY `FK_giftcard_usage::members` (`member_id`),
  KEY `FK_giftcard_usage::orders` (`order_id`),
  CONSTRAINT `FK_giftcard_usage::giftcards` FOREIGN KEY (`giftcard_number`) REFERENCES `giftcards` (`giftcard_number`) ON UPDATE CASCADE,
  CONSTRAINT `FK_giftcard_usage::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_giftcard_usage::orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giftcard_usage`
--

LOCK TABLES `giftcard_usage` WRITE;
/*!40000 ALTER TABLE `giftcard_usage` DISABLE KEYS */;
INSERT INTO `giftcard_usage` VALUES ('150010142647996',5936316,2823622,39.05,'2012-05-03 21:36:51',0,0),('150010259384458',264191,546666,46.95,'2009-04-16 20:45:24',366,4165),('150010748237028',3773359,2586096,47.10,'2011-09-11 00:11:44',0,0),('150011031663185',2248728,3964355,33.39,'2011-01-04 16:38:40',0,0);
/*!40000 ALTER TABLE `giftcard_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
