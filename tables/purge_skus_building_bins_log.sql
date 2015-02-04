USE ``;

-- Table structure for table `purge_skus_building_bins_log`
--

DROP TABLE IF EXISTS `purge_skus_building_bins_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purge_skus_building_bins_log` (
  `sku` int(10) unsigned NOT NULL,
  `building_bin` varchar(11) NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `modify_date` datetime NOT NULL,
  `purge_date` date NOT NULL,
  `purge_time` time NOT NULL,
  PRIMARY KEY (`purge_date`,`sku`,`building_bin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purge_skus_building_bins_log`
--

LOCK TABLES `purge_skus_building_bins_log` WRITE;
/*!40000 ALTER TABLE `purge_skus_building_bins_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `purge_skus_building_bins_log` ENABLE KEYS */;
UNLOCK TABLES;

--
