USE ``;

-- Table structure for table `litle_batch_queue`
--

DROP TABLE IF EXISTS `litle_batch_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `litle_batch_queue` (
  `batch_process_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(50) NOT NULL DEFAULT '',
  `batch_type` enum('orders','returns') DEFAULT NULL,
  `raw_request` mediumtext NOT NULL,
  `raw_response` mediumtext NOT NULL,
  `process_status` enum('complete','pending','retry','failed','review') NOT NULL DEFAULT 'pending',
  `process_id` varchar(100) NOT NULL DEFAULT '',
  `process_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `process_attempts` tinyint(3) unsigned DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`batch_process_id`),
  UNIQUE KEY `filename` (`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `litle_batch_queue`
--

LOCK TABLES `litle_batch_queue` WRITE;
/*!40000 ALTER TABLE `litle_batch_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `litle_batch_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
