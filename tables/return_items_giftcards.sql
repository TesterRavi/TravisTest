USE ``;

-- Table structure for table `return_items_giftcards`
--

DROP TABLE IF EXISTS `return_items_giftcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_items_giftcards` (
  `item_id` int(10) unsigned NOT NULL,
  `giftcard_number` varchar(30) NOT NULL,
  PRIMARY KEY (`item_id`,`giftcard_number`),
  KEY `FK_return_items_giftcards::giftcards` (`giftcard_number`),
  CONSTRAINT `FK_return_items_giftcards::giftcards` FOREIGN KEY (`giftcard_number`) REFERENCES `giftcards` (`giftcard_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_return_items_giftcards::return_items` FOREIGN KEY (`item_id`) REFERENCES `return_items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_items_giftcards`
--

LOCK TABLES `return_items_giftcards` WRITE;
/*!40000 ALTER TABLE `return_items_giftcards` DISABLE KEYS */;
/*!40000 ALTER TABLE `return_items_giftcards` ENABLE KEYS */;
UNLOCK TABLES;

--
