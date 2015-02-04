USE ``;

-- Table structure for table `title_display_formats`
--

DROP TABLE IF EXISTS `title_display_formats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `title_display_formats` (
  `title_display_format` varchar(20) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`title_display_format`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title_display_formats`
--

LOCK TABLES `title_display_formats` WRITE;
/*!40000 ALTER TABLE `title_display_formats` DISABLE KEYS */;
INSERT INTO `title_display_formats` VALUES ('text-blue',1),('text-none',1),('text-white',1);
/*!40000 ALTER TABLE `title_display_formats` ENABLE KEYS */;
UNLOCK TABLES;

--
