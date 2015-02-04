USE ``;

-- Table structure for table `admin_ip_allow`
--

DROP TABLE IF EXISTS `admin_ip_allow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_ip_allow` (
  `low_ip` int(10) unsigned NOT NULL,
  `high_ip` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`low_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_ip_allow`
--

LOCK TABLES `admin_ip_allow` WRITE;
/*!40000 ALTER TABLE `admin_ip_allow` DISABLE KEYS */;
INSERT INTO `admin_ip_allow` VALUES (0,4294967295);
/*!40000 ALTER TABLE `admin_ip_allow` ENABLE KEYS */;
UNLOCK TABLES;

--
