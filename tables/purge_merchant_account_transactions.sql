USE ``;

-- Table structure for table `purge_merchant_account_transactions`
--

DROP TABLE IF EXISTS `purge_merchant_account_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purge_merchant_account_transactions` (
  `member_id` int(10) unsigned NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `request_type` varchar(45) NOT NULL,
  `transaction_id` varchar(20) NOT NULL DEFAULT '',
  `processor` varchar(20) NOT NULL DEFAULT '3Delta',
  PRIMARY KEY (`create_date`,`member_id`,`request_type`,`transaction_id`,`processor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purge_merchant_account_transactions`
--

LOCK TABLES `purge_merchant_account_transactions` WRITE;
/*!40000 ALTER TABLE `purge_merchant_account_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `purge_merchant_account_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
