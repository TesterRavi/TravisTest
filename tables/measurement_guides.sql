USE ``;

-- Table structure for table `measurement_guides`
--

DROP TABLE IF EXISTS `measurement_guides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measurement_guides` (
  `measurement_guide` varchar(40) NOT NULL,
  PRIMARY KEY (`measurement_guide`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measurement_guides`
--

LOCK TABLES `measurement_guides` WRITE;
/*!40000 ALTER TABLE `measurement_guides` DISABLE KEYS */;
INSERT INTO `measurement_guides` VALUES ('MeasuringGuides_Kids.png'),('MeasuringGuides_Men.png'),('MeasuringGuides_Women.png');
/*!40000 ALTER TABLE `measurement_guides` ENABLE KEYS */;
UNLOCK TABLES;

--
