USE ``;

-- Table structure for table `hazmat_types`
--

DROP TABLE IF EXISTS `hazmat_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hazmat_types` (
  `hazmat_type` varchar(10) NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`hazmat_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hazmat_types`
--

LOCK TABLES `hazmat_types` WRITE;
/*!40000 ALTER TABLE `hazmat_types` DISABLE KEYS */;
INSERT INTO `hazmat_types` VALUES ('class_9','Class 9',1),('liquid','Liquid',1);
/*!40000 ALTER TABLE `hazmat_types` ENABLE KEYS */;
UNLOCK TABLES;

--
