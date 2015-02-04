USE ``;

-- Table structure for table `purge_short_urls_inventory`
--

DROP TABLE IF EXISTS `purge_short_urls_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purge_short_urls_inventory` (
  `short_url_id` int(10) unsigned NOT NULL,
  `inventory_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`short_url_id`),
  KEY `inventory_id` (`inventory_id`,`short_url_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purge_short_urls_inventory`
--

LOCK TABLES `purge_short_urls_inventory` WRITE;
/*!40000 ALTER TABLE `purge_short_urls_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `purge_short_urls_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
