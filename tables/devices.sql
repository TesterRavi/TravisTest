USE ``;

-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devices` (
  `device` varchar(20) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`device`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` VALUES ('Alvenda','Facebook store front'),('Android Phone',''),('Android Tablet',''),('iPad',''),('iPad App',''),('iPad Browser',''),('iPhone',''),('MFC','Added to cart but no record of login'),('MFEV','Visited event but no record of login'),('MFO','Placed order but no record of login'),('PC',''),('WAP','');
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
