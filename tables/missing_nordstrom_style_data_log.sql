USE ``;

-- Table structure for table `missing_nordstrom_style_data_log`
--

DROP TABLE IF EXISTS `missing_nordstrom_style_data_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `missing_nordstrom_style_data_log` (
  `missing_nordstrom_style_data_log_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `style_id` int(10) unsigned NOT NULL,
  `missing_data` text NOT NULL,
  `response` text,
  PRIMARY KEY (`missing_nordstrom_style_data_log_id`),
  KEY `timestamp` (`created_at`),
  KEY `FK_missing_nordstrom_style_data_log::styles` (`style_id`),
  CONSTRAINT `FK_missing_nordstrom_style_data_log::styles` FOREIGN KEY (`style_id`) REFERENCES `styles` (`style_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `missing_nordstrom_style_data_log`
--

LOCK TABLES `missing_nordstrom_style_data_log` WRITE;
/*!40000 ALTER TABLE `missing_nordstrom_style_data_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `missing_nordstrom_style_data_log` ENABLE KEYS */;
UNLOCK TABLES;

--
