USE ``;

-- Table structure for table `rest_verbs`
--

DROP TABLE IF EXISTS `rest_verbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rest_verbs` (
  `verb` varchar(10) NOT NULL,
  PRIMARY KEY (`verb`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rest_verbs`
--

LOCK TABLES `rest_verbs` WRITE;
/*!40000 ALTER TABLE `rest_verbs` DISABLE KEYS */;
INSERT INTO `rest_verbs` VALUES ('DELETE'),('GET'),('POST'),('PUT');
/*!40000 ALTER TABLE `rest_verbs` ENABLE KEYS */;
UNLOCK TABLES;

--
