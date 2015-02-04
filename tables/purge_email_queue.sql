USE ``;

-- Table structure for table `purge_email_queue`
--

DROP TABLE IF EXISTS `purge_email_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purge_email_queue` (
  `email_queue_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`email_queue_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purge_email_queue`
--

LOCK TABLES `purge_email_queue` WRITE;
/*!40000 ALTER TABLE `purge_email_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `purge_email_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
