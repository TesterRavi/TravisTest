USE ``;

-- Table structure for table `site_events`
--

DROP TABLE IF EXISTS `site_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_events` (
  `site_event_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL,
  `event_id` int(10) unsigned NOT NULL,
  `is_deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `modified_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`site_event_id`),
  KEY `publisher_id` (`publisher_id`),
  KEY `site_id` (`site_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `FK_SiteEvents::Events` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`),
  CONSTRAINT `FK_SiteEvents::Publishers` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`publisher_id`),
  CONSTRAINT `FK_SiteEvents::PublisherSites` FOREIGN KEY (`site_id`) REFERENCES `publisher_sites` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_events`
--

LOCK TABLES `site_events` WRITE;
/*!40000 ALTER TABLE `site_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_events` ENABLE KEYS */;
UNLOCK TABLES;

--
