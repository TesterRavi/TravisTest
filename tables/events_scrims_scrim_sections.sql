USE ``;

-- Table structure for table `events_scrims_scrim_sections`
--

DROP TABLE IF EXISTS `events_scrims_scrim_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events_scrims_scrim_sections` (
  `event_id` int(10) unsigned NOT NULL,
  `scrim` varchar(50) NOT NULL,
  `scrim_section` varchar(25) NOT NULL,
  PRIMARY KEY (`event_id`,`scrim`,`scrim_section`),
  KEY `FK_events_scrims_scrim_sections::scrims` (`scrim`),
  KEY `FK_events_scrims_scrim_sections::scrim_sections` (`scrim_section`),
  CONSTRAINT `FK_events_scrims_scrim_sections::events` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`),
  CONSTRAINT `FK_events_scrims_scrim_sections::scrims` FOREIGN KEY (`scrim`) REFERENCES `scrims` (`scrim`) ON UPDATE CASCADE,
  CONSTRAINT `FK_events_scrims_scrim_sections::scrim_sections` FOREIGN KEY (`scrim_section`) REFERENCES `scrim_sections` (`scrim_section`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_scrims_scrim_sections`
--

LOCK TABLES `events_scrims_scrim_sections` WRITE;
/*!40000 ALTER TABLE `events_scrims_scrim_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `events_scrims_scrim_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
