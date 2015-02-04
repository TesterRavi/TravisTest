USE ``;

-- Table structure for table `tmp_unset_return_complete_date`
--

DROP TABLE IF EXISTS `tmp_unset_return_complete_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_unset_return_complete_date` (
  `return_id` int(10) unsigned NOT NULL,
  `complete_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp_unset_return_complete_date`
--

LOCK TABLES `tmp_unset_return_complete_date` WRITE;
/*!40000 ALTER TABLE `tmp_unset_return_complete_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmp_unset_return_complete_date` ENABLE KEYS */;
UNLOCK TABLES;

--
