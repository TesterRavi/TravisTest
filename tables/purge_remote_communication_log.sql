USE ``;

-- Table structure for table `purge_remote_communication_log`
--

DROP TABLE IF EXISTS `purge_remote_communication_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purge_remote_communication_log` (
  `id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purge_remote_communication_log`
--

LOCK TABLES `purge_remote_communication_log` WRITE;
/*!40000 ALTER TABLE `purge_remote_communication_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `purge_remote_communication_log` ENABLE KEYS */;
UNLOCK TABLES;

--
