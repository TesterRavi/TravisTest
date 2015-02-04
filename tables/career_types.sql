USE ``;

-- Table structure for table `career_types`
--

DROP TABLE IF EXISTS `career_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `career_types` (
  `career_type` varchar(10) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`career_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `career_types`
--

LOCK TABLES `career_types` WRITE;
/*!40000 ALTER TABLE `career_types` DISABLE KEYS */;
INSERT INTO `career_types` VALUES ('General','',1,'2009-10-23 00:25:15');
/*!40000 ALTER TABLE `career_types` ENABLE KEYS */;
UNLOCK TABLES;

--
