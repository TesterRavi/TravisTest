USE ``;

-- Table structure for table `file_extensions`
--

DROP TABLE IF EXISTS `file_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file_extensions` (
  `file_extension` varchar(5) NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`file_extension`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_extensions`
--

LOCK TABLES `file_extensions` WRITE;
/*!40000 ALTER TABLE `file_extensions` DISABLE KEYS */;
INSERT INTO `file_extensions` VALUES ('pdf','',1,'2011-09-22 23:43:03');
/*!40000 ALTER TABLE `file_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
