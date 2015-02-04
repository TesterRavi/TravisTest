USE ``;

-- Table structure for table `join_sites`
--

DROP TABLE IF EXISTS `join_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `join_sites` (
  `join_site` varchar(20) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`join_site`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `join_sites`
--

LOCK TABLES `join_sites` WRITE;
/*!40000 ALTER TABLE `join_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `join_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
