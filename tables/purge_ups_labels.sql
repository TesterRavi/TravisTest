USE ``;

-- Table structure for table `purge_ups_labels`
--

DROP TABLE IF EXISTS `purge_ups_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purge_ups_labels` (
  `ups_label_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ups_label_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purge_ups_labels`
--

LOCK TABLES `purge_ups_labels` WRITE;
/*!40000 ALTER TABLE `purge_ups_labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `purge_ups_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
