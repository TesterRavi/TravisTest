USE ``;

-- Table structure for table `purge_returns_log`
--

DROP TABLE IF EXISTS `purge_returns_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purge_returns_log` (
  `return_log` int(10) unsigned NOT NULL,
  PRIMARY KEY (`return_log`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purge_returns_log`
--

LOCK TABLES `purge_returns_log` WRITE;
/*!40000 ALTER TABLE `purge_returns_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `purge_returns_log` ENABLE KEYS */;
UNLOCK TABLES;

--
