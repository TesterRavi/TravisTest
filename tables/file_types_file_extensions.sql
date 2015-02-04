USE ``;

-- Table structure for table `file_types_file_extensions`
--

DROP TABLE IF EXISTS `file_types_file_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file_types_file_extensions` (
  `file_type` varchar(25) NOT NULL,
  `file_extension` varchar(5) NOT NULL,
  PRIMARY KEY (`file_type`,`file_extension`),
  KEY `FK_file_types_file_extensions:file_extensions` (`file_extension`),
  CONSTRAINT `FK_file_types_file_extensions:file_extensions` FOREIGN KEY (`file_extension`) REFERENCES `file_extensions` (`file_extension`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_file_types_file_extensions:file_types` FOREIGN KEY (`file_type`) REFERENCES `file_types` (`file_type`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_types_file_extensions`
--

LOCK TABLES `file_types_file_extensions` WRITE;
/*!40000 ALTER TABLE `file_types_file_extensions` DISABLE KEYS */;
INSERT INTO `file_types_file_extensions` VALUES ('Child Safety PDF','pdf');
/*!40000 ALTER TABLE `file_types_file_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
