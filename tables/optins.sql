USE ``;

-- Table structure for table `optins`
--

DROP TABLE IF EXISTS `optins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `optins` (
  `optin` varchar(20) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`optin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optins`
--

LOCK TABLES `optins` WRITE;
/*!40000 ALTER TABLE `optins` DISABLE KEYS */;
INSERT INTO `optins` VALUES ('daily','daily',1),('none','none',1),('weekly','weekly',1),('weekly_forced','weekly_forced',1);
/*!40000 ALTER TABLE `optins` ENABLE KEYS */;
UNLOCK TABLES;

--
