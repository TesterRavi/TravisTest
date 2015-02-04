USE ``;

-- Table structure for table `buildings`
--

DROP TABLE IF EXISTS `buildings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buildings` (
  `building` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL DEFAULT '',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`building`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildings`
--

LOCK TABLES `buildings` WRITE;
/*!40000 ALTER TABLE `buildings` DISABLE KEYS */;
INSERT INTO `buildings` VALUES ('2701','2701 Carrier Avenue, Commerce, CA 90040 (Originally Commerce)',1,'2011-09-27 23:23:16'),('2733','2733 Carrier Avenue, Commerce, CA 90040 (Originally Vernon)',1,'2011-09-27 07:00:00');
/*!40000 ALTER TABLE `buildings` ENABLE KEYS */;
UNLOCK TABLES;

--
