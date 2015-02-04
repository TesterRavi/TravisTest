USE ``;

-- Table structure for table `api_actions`
--

DROP TABLE IF EXISTS `api_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_actions` (
  `api_action` varchar(16) NOT NULL,
  PRIMARY KEY (`api_action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_actions`
--

LOCK TABLES `api_actions` WRITE;
/*!40000 ALTER TABLE `api_actions` DISABLE KEYS */;
INSERT INTO `api_actions` VALUES ('DELETE'),('GET'),('POST');
/*!40000 ALTER TABLE `api_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
