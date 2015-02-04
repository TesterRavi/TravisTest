USE ``;

-- Table structure for table `nordstrom_color_families`
--

DROP TABLE IF EXISTS `nordstrom_color_families`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nordstrom_color_families` (
  `nordstrom_color_family` varchar(3) NOT NULL,
  `color_family` varchar(25) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nordstrom_color_family`),
  KEY `FK_nordstrom_color_families::color_families` (`color_family`),
  CONSTRAINT `FK_nordstrom_color_families::color_families` FOREIGN KEY (`color_family`) REFERENCES `color_families` (`color_family`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Map of Nordstrom Color Families to Hautelook Color Families';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nordstrom_color_families`
--

LOCK TABLES `nordstrom_color_families` WRITE;
/*!40000 ALTER TABLE `nordstrom_color_families` DISABLE KEYS */;
INSERT INTO `nordstrom_color_families` VALUES ('CBE','Beige','BEIGE TONES'),('CBG','Blue','BLUE/GREEN TONES'),('CBK','Black','BLACK TONES'),('CBL','Blue','BLUE TONES'),('CBR','Brown','BROWN TONES'),('CBU','Purple','BURGUNDY TONES'),('CCO','Orange','CORAL TONES'),('CGR','Green','GREEN TONES'),('CGY','Gray','GREY TONES'),('CIV','White','IVORY TONES'),('CMT','Metallic','METALLIC TONES'),('CNO','No Color','NO COLOR'),('COR','Orange','ORANGE TONES'),('CPK','Pink','PINK TONES'),('CPU','Purple','PURPLE TONES'),('CRE','Red','RED TONES'),('CWH','White','WHITE TONES'),('CYE','Yellow','YELLOW TONES');
/*!40000 ALTER TABLE `nordstrom_color_families` ENABLE KEYS */;
UNLOCK TABLES;

--
