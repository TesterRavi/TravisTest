USE ``;

-- Table structure for table `purge_return_items`
--

DROP TABLE IF EXISTS `purge_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purge_return_items` (
  `item_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purge_return_items`
--

LOCK TABLES `purge_return_items` WRITE;
/*!40000 ALTER TABLE `purge_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `purge_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
