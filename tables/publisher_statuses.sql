USE ``;

-- Table structure for table `publisher_statuses`
--

DROP TABLE IF EXISTS `publisher_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publisher_statuses` (
  `publisher_status` int(10) unsigned NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`publisher_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher_statuses`
--

LOCK TABLES `publisher_statuses` WRITE;
/*!40000 ALTER TABLE `publisher_statuses` DISABLE KEYS */;
INSERT INTO `publisher_statuses` VALUES (0,'open'),(10,'active'),(15,'on_hold'),(20,'declined');
/*!40000 ALTER TABLE `publisher_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
