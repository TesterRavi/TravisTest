USE ``;

-- Table structure for table `ledger`
--

DROP TABLE IF EXISTS `ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ledger` (
  `ledger_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `credit_debit` enum('credit','debit') NOT NULL DEFAULT 'credit',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `amount` decimal(10,2) NOT NULL,
  `order_id` int(10) unsigned DEFAULT NULL,
  `return_id` int(10) unsigned DEFAULT NULL,
  `invite_id` int(10) unsigned DEFAULT NULL,
  `employee_id` int(10) unsigned DEFAULT NULL,
  `notes` text NOT NULL,
  `create_date` datetime NOT NULL,
  `expiration_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `return_item_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ledger_id`),
  KEY `FK_ledger::members` (`member_id`),
  KEY `FK_ledger::orders` (`order_id`),
  KEY `FK_ledger::returns` (`return_id`),
  KEY `FK_ledger::invitations` (`invite_id`),
  KEY `FK_ledger::members2` (`employee_id`),
  KEY `FK_ledger::return_items` (`return_item_id`),
  KEY `FK_ledger::ledger_types` (`type`),
  KEY `expiration_date` (`expiration_date`,`credit_debit`,`ledger_id`),
  CONSTRAINT `FK_ledger::invitations` FOREIGN KEY (`invite_id`) REFERENCES `invitations` (`invitation_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ledger::ledger_types` FOREIGN KEY (`type`) REFERENCES `ledger_types` (`ledger_type`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ledger::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ledger::members2` FOREIGN KEY (`employee_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ledger::orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ledger::returns` FOREIGN KEY (`return_id`) REFERENCES `returns` (`return_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ledger::return_items` FOREIGN KEY (`return_item_id`) REFERENCES `return_items` (`item_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ledger`
--

LOCK TABLES `ledger` WRITE;
/*!40000 ALTER TABLE `ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
