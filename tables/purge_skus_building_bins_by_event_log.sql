USE ``;

-- Table structure for table `purge_skus_building_bins_by_event_log`
--

DROP TABLE IF EXISTS `purge_skus_building_bins_by_event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purge_skus_building_bins_by_event_log` (
  `sku` int(10) unsigned NOT NULL DEFAULT '0',
  `building_bin` varchar(11) NOT NULL DEFAULT '',
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `modify_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `purge_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `sku` (`sku`,`building_bin`),
  KEY `modify_date` (`modify_date`,`sku`),
  KEY `purge_date` (`purge_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purge_skus_building_bins_by_event_log`
--

LOCK TABLES `purge_skus_building_bins_by_event_log` WRITE;
/*!40000 ALTER TABLE `purge_skus_building_bins_by_event_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `purge_skus_building_bins_by_event_log` ENABLE KEYS */;
UNLOCK TABLES;

--
