USE ``;

-- Table structure for table `purge_avatax_log`
--

DROP TABLE IF EXISTS `purge_avatax_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purge_avatax_log` (
  `avatax_log_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avatax_log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purge_avatax_log`
--

LOCK TABLES `purge_avatax_log` WRITE;
/*!40000 ALTER TABLE `purge_avatax_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `purge_avatax_log` ENABLE KEYS */;
UNLOCK TABLES;

--
