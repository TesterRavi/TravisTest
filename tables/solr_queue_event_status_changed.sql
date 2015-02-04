USE ``;

-- Table structure for table `solr_queue_event_status_changed`
--

DROP TABLE IF EXISTS `solr_queue_event_status_changed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solr_queue_event_status_changed` (
  `message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `triggered_at` datetime NOT NULL,
  `locked_since` datetime DEFAULT NULL,
  `event_id` int(10) unsigned NOT NULL,
  `connection_id` int(10) unsigned DEFAULT NULL,
  KEY `message_id` (`message_id`),
  KEY `FK_solr_queue_event_status_changed::events` (`event_id`),
  KEY `IDX_solr_queue_event_status_changed::locked_since_connection_id` (`locked_since`,`connection_id`),
  CONSTRAINT `FK_solr_queue_event_status_changed::events` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solr_queue_event_status_changed`
--

LOCK TABLES `solr_queue_event_status_changed` WRITE;
/*!40000 ALTER TABLE `solr_queue_event_status_changed` DISABLE KEYS */;
/*!40000 ALTER TABLE `solr_queue_event_status_changed` ENABLE KEYS */;
UNLOCK TABLES;

--
