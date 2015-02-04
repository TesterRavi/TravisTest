USE ``;

-- Table structure for table `authnet_log`
--

DROP TABLE IF EXISTS `authnet_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authnet_log` (
  `auth_log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `member_id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned DEFAULT NULL,
  `return_id` int(10) unsigned DEFAULT NULL,
  `billing_id` int(10) unsigned DEFAULT NULL,
  `request_type` varchar(45) NOT NULL,
  `request_xml` text,
  `response_xml` text NOT NULL,
  `status` enum('SUCCESS','FAIL') NOT NULL,
  `return_code` varchar(45) NOT NULL,
  `return_message` varchar(255) NOT NULL,
  PRIMARY KEY (`auth_log_id`),
  KEY `FK_authnet_log::members` (`member_id`),
  KEY `FK_authnet_log::orders` (`order_id`),
  KEY `FK_authnet_log::returns` (`return_id`),
  KEY `FK_authnet_log::billing` (`billing_id`),
  CONSTRAINT `FK_authnet_log::billing` FOREIGN KEY (`billing_id`) REFERENCES `billing` (`billing_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_authnet_log::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_authnet_log::orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_authnet_log::returns` FOREIGN KEY (`return_id`) REFERENCES `returns` (`return_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authnet_log`
--

LOCK TABLES `authnet_log` WRITE;
/*!40000 ALTER TABLE `authnet_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `authnet_log` ENABLE KEYS */;
UNLOCK TABLES;

--
