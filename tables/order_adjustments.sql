USE ``;

-- Table structure for table `order_adjustments`
--

DROP TABLE IF EXISTS `order_adjustments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_adjustments` (
  `order_adjustment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `type` int(10) unsigned NOT NULL,
  `subtype` int(10) unsigned DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `log` text NOT NULL,
  `description` text NOT NULL,
  `reason` text NOT NULL,
  `credit_card_failure` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `request_date` datetime DEFAULT NULL,
  `complete_date` datetime DEFAULT NULL,
  `member_id_requester` int(10) unsigned NOT NULL,
  `member_id_completer` int(10) unsigned DEFAULT NULL,
  `check_sent_date` datetime NOT NULL,
  `print_check_request` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `order_item_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`order_adjustment_id`),
  KEY `order_id` (`order_id`),
  KEY `member_id_requester` (`member_id_requester`),
  KEY `member_id_completer` (`member_id_completer`),
  KEY `order_item_id` (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_adjustments`
--

LOCK TABLES `order_adjustments` WRITE;
/*!40000 ALTER TABLE `order_adjustments` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_adjustments` ENABLE KEYS */;
UNLOCK TABLES;

--
