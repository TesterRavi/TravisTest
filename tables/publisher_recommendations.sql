USE ``;

-- Table structure for table `publisher_recommendations`
--

DROP TABLE IF EXISTS `publisher_recommendations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publisher_recommendations` (
  `site_id` int(10) unsigned NOT NULL,
  `event_id` int(10) unsigned NOT NULL,
  `style_id` int(10) unsigned NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`site_id`,`event_id`,`style_id`),
  KEY `FK_publisher_recommendations::events` (`event_id`),
  KEY `FK_publisher_recommendations::styles` (`style_id`),
  CONSTRAINT `FK_publisher_recommendations::events` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`),
  CONSTRAINT `FK_publisher_recommendations::publisher_sites` FOREIGN KEY (`site_id`) REFERENCES `publisher_sites` (`site_id`),
  CONSTRAINT `FK_publisher_recommendations::styles` FOREIGN KEY (`style_id`) REFERENCES `styles` (`style_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher_recommendations`
--

LOCK TABLES `publisher_recommendations` WRITE;
/*!40000 ALTER TABLE `publisher_recommendations` DISABLE KEYS */;
/*!40000 ALTER TABLE `publisher_recommendations` ENABLE KEYS */;
UNLOCK TABLES;

--
