USE ``;

-- Table structure for table `purge_events_members`
--

DROP TABLE IF EXISTS `purge_events_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purge_events_members` (
  `event_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`,`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purge_events_members`
--

LOCK TABLES `purge_events_members` WRITE;
/*!40000 ALTER TABLE `purge_events_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `purge_events_members` ENABLE KEYS */;
UNLOCK TABLES;

--
