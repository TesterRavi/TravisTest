USE ``;

-- Table structure for table `paypal_log`
--

DROP TABLE IF EXISTS `paypal_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_log` (
  `paypal_log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Please forgive me, THEY FORCED me to add this nasty little surrogate key',
  `member_id` int(10) unsigned NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_id` int(10) unsigned DEFAULT NULL,
  `return_id` int(10) unsigned DEFAULT NULL,
  `request_type` varchar(45) NOT NULL,
  `raw_request` text NOT NULL,
  `raw_response` text NOT NULL,
  `response_status` varchar(45) NOT NULL DEFAULT '',
  `response_code` varchar(45) NOT NULL DEFAULT '',
  `response_message` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`paypal_log_id`),
  KEY `FK_paypal_log::orders` (`order_id`),
  KEY `FK_paypal_log::returns` (`return_id`),
  KEY `FK_paypal_log::members` (`member_id`),
  CONSTRAINT `FK_paypal_log::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_paypal_log::orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_paypal_log::returns` FOREIGN KEY (`return_id`) REFERENCES `returns` (`return_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_log`
--

LOCK TABLES `paypal_log` WRITE;
/*!40000 ALTER TABLE `paypal_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_log` ENABLE KEYS */;
UNLOCK TABLES;

--
