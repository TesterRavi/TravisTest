USE ``;

-- Table structure for table `litle_log`
--

DROP TABLE IF EXISTS `litle_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `litle_log` (
  `member_id` int(10) unsigned NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `request_type` varchar(45) NOT NULL,
  `transaction_id` varchar(20) NOT NULL DEFAULT '',
  `order_id` int(10) unsigned DEFAULT NULL,
  `return_id` int(10) unsigned DEFAULT NULL,
  `raw_request` text NOT NULL,
  `raw_response` text,
  `response_status` varchar(45) NOT NULL DEFAULT '',
  `response_code` varchar(45) NOT NULL DEFAULT '',
  `response_message` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`member_id`,`create_date`,`request_type`,`transaction_id`),
  KEY `order_id` (`order_id`),
  KEY `FK_litle_log::returns` (`return_id`),
  CONSTRAINT `FK_litle_log::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_litle_log::returns` FOREIGN KEY (`return_id`) REFERENCES `returns` (`return_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `litle_log`
--

LOCK TABLES `litle_log` WRITE;
/*!40000 ALTER TABLE `litle_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `litle_log` ENABLE KEYS */;
UNLOCK TABLES;

--
