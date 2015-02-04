USE ``;

-- Table structure for table `refunds_giftcards`
--

DROP TABLE IF EXISTS `refunds_giftcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refunds_giftcards` (
  `refund_date` datetime NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `return_id` int(10) unsigned NOT NULL,
  `giftcard_number` varchar(30) NOT NULL,
  PRIMARY KEY (`refund_date`,`order_id`,`return_id`,`giftcard_number`),
  KEY `FK_refunds_giftcards::giftcards` (`giftcard_number`),
  CONSTRAINT `FK_refunds_giftcards::giftcards` FOREIGN KEY (`giftcard_number`) REFERENCES `giftcards` (`giftcard_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_refunds_giftcards::refunds` FOREIGN KEY (`refund_date`, `order_id`, `return_id`) REFERENCES `refunds` (`refund_date`, `order_id`, `return_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refunds_giftcards`
--

LOCK TABLES `refunds_giftcards` WRITE;
/*!40000 ALTER TABLE `refunds_giftcards` DISABLE KEYS */;
/*!40000 ALTER TABLE `refunds_giftcards` ENABLE KEYS */;
UNLOCK TABLES;

--
