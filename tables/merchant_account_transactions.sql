USE ``;

-- Table structure for table `merchant_account_transactions`
--

DROP TABLE IF EXISTS `merchant_account_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchant_account_transactions` (
  `member_id` int(10) unsigned NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `request_type` varchar(45) NOT NULL,
  `transaction_id` varchar(20) NOT NULL DEFAULT '',
  `processor` varchar(20) NOT NULL DEFAULT '3Delta',
  `order_id` int(10) unsigned DEFAULT NULL,
  `return_id` int(10) unsigned DEFAULT NULL,
  `raw_request` text NOT NULL,
  `raw_response` text,
  `response_status` varchar(45) NOT NULL DEFAULT '',
  `response_code` varchar(45) NOT NULL DEFAULT '',
  `response_message` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`create_date`,`member_id`,`request_type`,`transaction_id`,`processor`),
  KEY `FK_merchant_account_transactions::returns` (`return_id`),
  KEY `FK_merchant_account_transactions::members` (`member_id`),
  KEY `FK_merchant_account_transactions::orders` (`order_id`),
  KEY `FK_merchant_account_transactions::processors` (`processor`),
  CONSTRAINT `FK_merchant_account_transactions::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`),
  CONSTRAINT `FK_merchant_account_transactions::orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `FK_merchant_account_transactions::processors` FOREIGN KEY (`processor`) REFERENCES `processors` (`processor`),
  CONSTRAINT `FK_merchant_account_transactions::returns` FOREIGN KEY (`return_id`) REFERENCES `returns` (`return_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_account_transactions`
--

LOCK TABLES `merchant_account_transactions` WRITE;
/*!40000 ALTER TABLE `merchant_account_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchant_account_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
