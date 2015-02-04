USE ``;

-- Table structure for table `rabbitmq_messages`
--

DROP TABLE IF EXISTS `rabbitmq_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rabbitmq_messages` (
  `message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lock_date` bigint(20) DEFAULT NULL,
  `lock_connection_id` int(11) DEFAULT NULL,
  `exchange` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `properties_json` text,
  KEY `message_id` (`message_id`),
  KEY `IDX_rabbitmq_messages::lock_date_lock_connection_id` (`lock_date`,`lock_connection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rabbitmq_messages`
--

LOCK TABLES `rabbitmq_messages` WRITE;
/*!40000 ALTER TABLE `rabbitmq_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `rabbitmq_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
