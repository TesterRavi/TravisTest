USE ``;

-- Table structure for table `events_event_tabs_categories`
--

DROP TABLE IF EXISTS `events_event_tabs_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events_event_tabs_categories` (
  `event_id` int(10) unsigned NOT NULL,
  `event_tab` varchar(50) NOT NULL,
  `category` varchar(30) NOT NULL,
  PRIMARY KEY (`event_id`,`event_tab`,`category`),
  KEY `FK_events_event_tabs_categories::event_tabs` (`event_tab`),
  KEY `FK_events_event_tabs_categories::categories` (`category`),
  CONSTRAINT `FK_events_event_tabs_categories::categories` FOREIGN KEY (`category`) REFERENCES `categories` (`category`) ON UPDATE CASCADE,
  CONSTRAINT `FK_events_event_tabs_categories::events` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`),
  CONSTRAINT `FK_events_event_tabs_categories::event_tabs` FOREIGN KEY (`event_tab`) REFERENCES `event_tabs` (`event_tab`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Karif Battle does not endorse this naming convention for map';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_event_tabs_categories`
--

LOCK TABLES `events_event_tabs_categories` WRITE;
/*!40000 ALTER TABLE `events_event_tabs_categories` DISABLE KEYS */;
INSERT INTO `events_event_tabs_categories` VALUES (1,'All Events','Shoes'),(1,'WOmen','Shoes');
/*!40000 ALTER TABLE `events_event_tabs_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
