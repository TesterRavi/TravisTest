USE ``;

-- Table structure for table `db_error_log`
--

DROP TABLE IF EXISTS `db_error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_error_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `priority_name` varchar(10) NOT NULL,
  `priority` int(2) NOT NULL,
  `message` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `server_name` varchar(32) NOT NULL,
  `browser` varchar(100) NOT NULL,
  `query` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_error_log`
--

LOCK TABLES `db_error_log` WRITE;
/*!40000 ALTER TABLE `db_error_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_error_log` ENABLE KEYS */;
UNLOCK TABLES;

--
