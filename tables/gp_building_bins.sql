USE ``;

-- Table structure for table `gp_building_bins`
--

DROP TABLE IF EXISTS `gp_building_bins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_building_bins` (
  `building_bin` varchar(11) NOT NULL,
  `building` varchar(10) NOT NULL,
  KEY `building_bin` (`building_bin`,`building`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_building_bins`
--

LOCK TABLES `gp_building_bins` WRITE;
/*!40000 ALTER TABLE `gp_building_bins` DISABLE KEYS */;
/*!40000 ALTER TABLE `gp_building_bins` ENABLE KEYS */;
UNLOCK TABLES;

--
