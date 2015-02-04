USE ``;

-- Table structure for table `mas_types`
--

DROP TABLE IF EXISTS `mas_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mas_types` (
  `mas_type` varchar(25) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`mas_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Member Access System Types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mas_types`
--

LOCK TABLES `mas_types` WRITE;
/*!40000 ALTER TABLE `mas_types` DISABLE KEYS */;
INSERT INTO `mas_types` VALUES ('Logging In','Logging in as another member'),('Logging Out','Logging out of another members');
/*!40000 ALTER TABLE `mas_types` ENABLE KEYS */;
UNLOCK TABLES;

--
