USE ``;

-- Table structure for table `members_optin_sources`
--

DROP TABLE IF EXISTS `members_optin_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members_optin_sources` (
  `members_optin_source` varchar(30) NOT NULL,
  PRIMARY KEY (`members_optin_source`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_optin_sources`
--

LOCK TABLES `members_optin_sources` WRITE;
/*!40000 ALTER TABLE `members_optin_sources` DISABLE KEYS */;
INSERT INTO `members_optin_sources` VALUES ('admin'),('exact_target'),('file import'),('initial'),('manual'),('member'),('registration');
/*!40000 ALTER TABLE `members_optin_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
