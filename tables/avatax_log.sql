USE ``;

-- Table structure for table `avatax_log`
--

DROP TABLE IF EXISTS `avatax_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avatax_log` (
  `avatax_log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_id` int(10) unsigned DEFAULT NULL,
  `return_item_id` int(10) unsigned DEFAULT NULL,
  `doc_id` int(10) unsigned DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `total_tax` decimal(10,2) DEFAULT NULL,
  `freight_tax` decimal(10,2) DEFAULT NULL,
  `request_type` varchar(45) NOT NULL,
  `status` varchar(10) NOT NULL,
  `notes` text,
  `request_content` text,
  `process_status` enum('1','2','3','4') DEFAULT '1' COMMENT '1=not processed, 2=processed, 3=post_process failed, 4=cancelled',
  `last_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `process_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`avatax_log_id`),
  KEY `FK_avatax_log::return_items` (`return_item_id`),
  KEY `FK_avatax_log::orders` (`order_id`),
  CONSTRAINT `FK_avatax_log::orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_avatax_log::return_items` FOREIGN KEY (`return_item_id`) REFERENCES `return_items` (`item_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avatax_log`
--

LOCK TABLES `avatax_log` WRITE;
/*!40000 ALTER TABLE `avatax_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `avatax_log` ENABLE KEYS */;
UNLOCK TABLES;

--
