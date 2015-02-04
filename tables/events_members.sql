USE ``;

-- Table structure for table `events_members`
--

DROP TABLE IF EXISTS `events_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events_members` (
  `batch_id` varchar(40) NOT NULL DEFAULT '',
  `event_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`member_id`,`event_id`),
  KEY `modify_date` (`modify_date`),
  KEY `batch_id` (`batch_id`),
  KEY `event_id` (`event_id`,`member_id`),
  CONSTRAINT `FK_events_members::events` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_events_members::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_members`
--

LOCK TABLES `events_members` WRITE;
/*!40000 ALTER TABLE `events_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `events_members` ENABLE KEYS */;
UNLOCK TABLES;

--
