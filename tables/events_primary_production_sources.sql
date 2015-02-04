USE ``;

-- Table structure for table `events_primary_production_sources`
--

DROP TABLE IF EXISTS `events_primary_production_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events_primary_production_sources` (
  `primary_production_source` varchar(30) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`primary_production_source`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_primary_production_sources`
--

LOCK TABLES `events_primary_production_sources` WRITE;
/*!40000 ALTER TABLE `events_primary_production_sources` DISABLE KEYS */;
INSERT INTO `events_primary_production_sources` VALUES ('brand images',1),('model photography',1),('past sale images',1),('product photography',1);
/*!40000 ALTER TABLE `events_primary_production_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
