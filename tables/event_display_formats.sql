USE ``;

-- Table structure for table `event_display_formats`
--

DROP TABLE IF EXISTS `event_display_formats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_display_formats` (
  `event_display_format` varchar(25) NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`event_display_format`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_display_formats`
--

LOCK TABLES `event_display_formats` WRITE;
/*!40000 ALTER TABLE `event_display_formats` DISABLE KEYS */;
INSERT INTO `event_display_formats` VALUES ('Daily Deal','hide the event on the grid as it will be shown instead as a promotion',1),('Nested Parent Child','Only available on a parent. Appears the same on the events page, but different on the catalog page.',1),('Persistent','Persistent event - 38568',1),('Regular','default for all events',1);
/*!40000 ALTER TABLE `event_display_formats` ENABLE KEYS */;
UNLOCK TABLES;

--
