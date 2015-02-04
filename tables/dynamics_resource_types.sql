USE ``;

-- Table structure for table `dynamics_resource_types`
--

DROP TABLE IF EXISTS `dynamics_resource_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dynamics_resource_types` (
  `resource_type` varchar(5) NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`resource_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynamics_resource_types`
--

LOCK TABLES `dynamics_resource_types` WRITE;
/*!40000 ALTER TABLE `dynamics_resource_types` DISABLE KEYS */;
INSERT INTO `dynamics_resource_types` VALUES ('css','Cascading Style Sheets'),('js','JavaScript');
/*!40000 ALTER TABLE `dynamics_resource_types` ENABLE KEYS */;
UNLOCK TABLES;

--
