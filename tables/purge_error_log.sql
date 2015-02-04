USE ``;

-- Table structure for table `purge_error_log`
--

DROP TABLE IF EXISTS `purge_error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purge_error_log` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purge_error_log`
--

LOCK TABLES `purge_error_log` WRITE;
/*!40000 ALTER TABLE `purge_error_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `purge_error_log` ENABLE KEYS */;
UNLOCK TABLES;

--
