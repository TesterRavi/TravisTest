USE ``;

-- Table structure for table `api_acl`
--

DROP TABLE IF EXISTS `api_acl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_acl` (
  `api_key` varchar(36) NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT '0',
  `resource` varchar(64) NOT NULL DEFAULT '',
  `api_action` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`version`,`api_action`,`api_key`,`resource`),
  KEY `FK_api_acl::api_key` (`api_key`),
  KEY `FK_api_acl::api_actions` (`api_action`),
  CONSTRAINT `FK_api_acl::api_actions` FOREIGN KEY (`api_action`) REFERENCES `api_actions` (`api_action`) ON UPDATE CASCADE,
  CONSTRAINT `FK_api_acl::api_key` FOREIGN KEY (`api_key`) REFERENCES `api_auth` (`api_key`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_acl`
--

LOCK TABLES `api_acl` WRITE;
/*!40000 ALTER TABLE `api_acl` DISABLE KEYS */;
INSERT INTO `api_acl` VALUES ('9f853ed83b5399d9089faae2f5dac070',3,'event/dotd','GET');
/*!40000 ALTER TABLE `api_acl` ENABLE KEYS */;
UNLOCK TABLES;

--
