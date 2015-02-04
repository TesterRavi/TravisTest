USE ``;

-- Table structure for table `purge_bill_me_later_log`
--

DROP TABLE IF EXISTS `purge_bill_me_later_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purge_bill_me_later_log` (
  `bill_me_later_log_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bill_me_later_log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purge_bill_me_later_log`
--

LOCK TABLES `purge_bill_me_later_log` WRITE;
/*!40000 ALTER TABLE `purge_bill_me_later_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `purge_bill_me_later_log` ENABLE KEYS */;
UNLOCK TABLES;

--
