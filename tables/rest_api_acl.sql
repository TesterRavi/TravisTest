USE ``;

-- Table structure for table `rest_api_acl`
--

DROP TABLE IF EXISTS `rest_api_acl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rest_api_acl` (
  `api_key` varchar(40) NOT NULL,
  `service` varchar(100) NOT NULL,
  `method` varchar(100) NOT NULL,
  PRIMARY KEY (`api_key`,`service`,`method`),
  KEY `FK_rest_api_acl::rest_api` (`service`,`method`),
  CONSTRAINT `FK_rest_api_acl::members` FOREIGN KEY (`api_key`) REFERENCES `members` (`key`) ON UPDATE CASCADE,
  CONSTRAINT `FK_rest_api_acl::rest_api` FOREIGN KEY (`service`, `method`) REFERENCES `rest_api` (`service`, `method`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rest_api_acl`
--

LOCK TABLES `rest_api_acl` WRITE;
/*!40000 ALTER TABLE `rest_api_acl` DISABLE KEYS */;
/*!40000 ALTER TABLE `rest_api_acl` ENABLE KEYS */;
UNLOCK TABLES;

--
