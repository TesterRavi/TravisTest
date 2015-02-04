USE ``;

-- Table structure for table `rest_api`
--

DROP TABLE IF EXISTS `rest_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rest_api` (
  `noun` varchar(200) NOT NULL,
  `verb` varchar(10) NOT NULL,
  `service` varchar(100) NOT NULL,
  `method` varchar(100) NOT NULL,
  `success_code` int(10) unsigned NOT NULL,
  PRIMARY KEY (`noun`,`verb`),
  KEY `service` (`service`,`method`),
  KEY `FK_rest_api::rest_verbs` (`verb`),
  CONSTRAINT `FK_rest_api::rest_verbs` FOREIGN KEY (`verb`) REFERENCES `rest_verbs` (`verb`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rest_api`
--

LOCK TABLES `rest_api` WRITE;
/*!40000 ALTER TABLE `rest_api` DISABLE KEYS */;
/*!40000 ALTER TABLE `rest_api` ENABLE KEYS */;
UNLOCK TABLES;

--
