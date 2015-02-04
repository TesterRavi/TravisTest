USE ``;

-- Table structure for table `return_transactions`
--

DROP TABLE IF EXISTS `return_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_transactions` (
  `return_transactions_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(32) NOT NULL,
  `processor` varchar(16) NOT NULL,
  `card_number` smallint(4) unsigned DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`return_transactions_id`),
  UNIQUE KEY `transaction_id` (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_transactions`
--

LOCK TABLES `return_transactions` WRITE;
/*!40000 ALTER TABLE `return_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `return_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
