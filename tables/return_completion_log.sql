USE ``;

-- Table structure for table `return_completion_log`
--

DROP TABLE IF EXISTS `return_completion_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_completion_log` (
  `return_completion_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `return_id` int(11) NOT NULL,
  `return_item_id` int(11) NOT NULL,
  `return_status` varchar(50) NOT NULL,
  PRIMARY KEY (`return_completion_log_id`),
  KEY `timestamp` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_completion_log`
--

LOCK TABLES `return_completion_log` WRITE;
/*!40000 ALTER TABLE `return_completion_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `return_completion_log` ENABLE KEYS */;
UNLOCK TABLES;

--
