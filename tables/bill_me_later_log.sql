USE ``;

-- Table structure for table `bill_me_later_log`
--

DROP TABLE IF EXISTS `bill_me_later_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill_me_later_log` (
  `bill_me_later_log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Please forgive me, THEY FORCED me to add this nasty little surrogate key',
  `member_id` int(10) unsigned NOT NULL,
  `bill_me_later_ref_id` varchar(20) NOT NULL DEFAULT '',
  `transaction_id` varchar(20) NOT NULL DEFAULT '',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_id` int(10) unsigned DEFAULT NULL,
  `return_id` int(10) unsigned DEFAULT NULL,
  `request_type` varchar(45) NOT NULL,
  `raw_request` text NOT NULL,
  `raw_response` text NOT NULL,
  `response_status` varchar(45) NOT NULL DEFAULT '',
  `response_code` varchar(45) NOT NULL DEFAULT '',
  `response_message` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`bill_me_later_log_id`),
  KEY `FK_bill_me_later_log::orders` (`order_id`),
  KEY `FK_bill_me_later_log::returns` (`return_id`),
  KEY `FK_bill_me_later_log::members` (`member_id`),
  KEY `create_date` (`create_date`,`bill_me_later_log_id`),
  CONSTRAINT `FK_bill_me_later_log::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_bill_me_later_log::orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_bill_me_later_log::returns` FOREIGN KEY (`return_id`) REFERENCES `returns` (`return_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_me_later_log`
--

LOCK TABLES `bill_me_later_log` WRITE;
/*!40000 ALTER TABLE `bill_me_later_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill_me_later_log` ENABLE KEYS */;
UNLOCK TABLES;

--
