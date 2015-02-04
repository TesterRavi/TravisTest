USE ``;

-- Table structure for table `brands_measurement_guides`
--

DROP TABLE IF EXISTS `brands_measurement_guides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands_measurement_guides` (
  `brand_id` int(10) unsigned NOT NULL DEFAULT '0',
  `measurement_guide` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`brand_id`,`measurement_guide`),
  KEY `FK_brands_measurement_guides::measurement_guides` (`measurement_guide`),
  CONSTRAINT `FK_brands_measurement_guides::brands` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_brands_measurement_guides::measurement_guides` FOREIGN KEY (`measurement_guide`) REFERENCES `measurement_guides` (`measurement_guide`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands_measurement_guides`
--

LOCK TABLES `brands_measurement_guides` WRITE;
/*!40000 ALTER TABLE `brands_measurement_guides` DISABLE KEYS */;
INSERT INTO `brands_measurement_guides` VALUES (338,'MeasuringGuides_Kids.png'),(338,'MeasuringGuides_Men.png'),(338,'MeasuringGuides_Women.png');
/*!40000 ALTER TABLE `brands_measurement_guides` ENABLE KEYS */;
UNLOCK TABLES;

--
