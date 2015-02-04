USE ``;

-- Table structure for table `styles_filters`
--

DROP TABLE IF EXISTS `styles_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `styles_filters` (
  `style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `filter` varchar(100) NOT NULL DEFAULT '',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `parameters` text NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`style_id`,`filter`),
  KEY `FK_styles_filters::filters` (`filter`),
  KEY `FK_styles_filters::members` (`modified_by`),
  CONSTRAINT `FK_styles_filters::filters` FOREIGN KEY (`filter`) REFERENCES `filters` (`filter`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_styles_filters::members` FOREIGN KEY (`modified_by`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_styles_filters::styles` FOREIGN KEY (`style_id`) REFERENCES `styles` (`style_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `styles_filters`
--

LOCK TABLES `styles_filters` WRITE;
/*!40000 ALTER TABLE `styles_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `styles_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
