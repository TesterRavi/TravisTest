USE ``;

-- Table structure for table `acl_domain_whitelist`
--

DROP TABLE IF EXISTS `acl_domain_whitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_domain_whitelist` (
  `domain` varchar(100) NOT NULL,
  PRIMARY KEY (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_domain_whitelist`
--

LOCK TABLES `acl_domain_whitelist` WRITE;
/*!40000 ALTER TABLE `acl_domain_whitelist` DISABLE KEYS */;
INSERT INTO `acl_domain_whitelist` VALUES ('bergenshippers.com'),('hautelook.com');
/*!40000 ALTER TABLE `acl_domain_whitelist` ENABLE KEYS */;
UNLOCK TABLES;

--
