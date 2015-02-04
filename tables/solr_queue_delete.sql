USE ``;

-- Table structure for table `solr_queue_delete`
--

DROP TABLE IF EXISTS `solr_queue_delete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solr_queue_delete` (
  `message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `triggered_at` datetime NOT NULL,
  `locked_since` datetime DEFAULT NULL,
  `sku` int(10) unsigned NOT NULL,
  `connection_id` int(10) unsigned DEFAULT NULL,
  KEY `message_id` (`message_id`),
  KEY `IDX_solr_queue_delete::locked_since_connection_id` (`locked_since`,`connection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solr_queue_delete`
--

LOCK TABLES `solr_queue_delete` WRITE;
/*!40000 ALTER TABLE `solr_queue_delete` DISABLE KEYS */;
/*!40000 ALTER TABLE `solr_queue_delete` ENABLE KEYS */;
UNLOCK TABLES;

--
