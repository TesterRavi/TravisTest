USE ``;

-- Table structure for table `metro_stat_area_events`
--

DROP TABLE IF EXISTS `metro_stat_area_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metro_stat_area_events` (
  `event_id` int(10) unsigned NOT NULL,
  `msa` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`event_id`,`msa`),
  KEY `FK_metro_stat_area_events::metro_stat_areas` (`msa`),
  CONSTRAINT `FK_metro_stat_area_events::events` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_metro_stat_area_events::metro_stat_areas` FOREIGN KEY (`msa`) REFERENCES `metro_stat_areas` (`msa`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metro_stat_area_events`
--

LOCK TABLES `metro_stat_area_events` WRITE;
/*!40000 ALTER TABLE `metro_stat_area_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `metro_stat_area_events` ENABLE KEYS */;
UNLOCK TABLES;

--
