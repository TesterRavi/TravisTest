USE ``;

-- Table structure for table `brand_profile`
--

DROP TABLE IF EXISTS `brand_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand_profile` (
  `profile_code` varchar(5) NOT NULL,
  `profile_description` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`profile_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_profile`
--

LOCK TABLES `brand_profile` WRITE;
/*!40000 ALTER TABLE `brand_profile` DISABLE KEYS */;
INSERT INTO `brand_profile` VALUES ('','None'),('H','Halo'),('MP','Moderately Popular'),('VOT','Value on Trend'),('VP','Very Popular');
/*!40000 ALTER TABLE `brand_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
