USE ``;

-- Table structure for table `litle_return_queue`
--

DROP TABLE IF EXISTS `litle_return_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `litle_return_queue` (
  `return_item_id` int(10) unsigned NOT NULL,
  `billing_id` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `process_status` enum('complete','pending','retry','failed','review') NOT NULL DEFAULT 'pending',
  `process_id` varchar(100) NOT NULL DEFAULT '',
  `batch_id` varchar(100) NOT NULL DEFAULT '',
  `create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`return_item_id`),
  KEY `FK_litle_return_queue::billing` (`billing_id`),
  CONSTRAINT `FK_litle_return_queue::billing` FOREIGN KEY (`billing_id`) REFERENCES `billing` (`billing_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_litle_return_queue::return_items` FOREIGN KEY (`return_item_id`) REFERENCES `return_items` (`item_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `litle_return_queue`
--

LOCK TABLES `litle_return_queue` WRITE;
/*!40000 ALTER TABLE `litle_return_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `litle_return_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
