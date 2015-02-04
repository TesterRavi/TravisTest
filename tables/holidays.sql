USE ``;

-- Table structure for table `holidays`
--

DROP TABLE IF EXISTS `holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holidays` (
  `holiday_date` date NOT NULL,
  `holiday` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`holiday_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holidays`
--

LOCK TABLES `holidays` WRITE;
/*!40000 ALTER TABLE `holidays` DISABLE KEYS */;
INSERT INTO `holidays` VALUES ('2010-05-31','Memorial Day',''),('2010-07-05','Independence Day (observed)',''),('2010-09-06','Labor Day',''),('2010-11-25','Thanksgiving Day',''),('2010-11-26','Day after Thanksgiving',''),('2010-12-25','Christmas Day',''),('2010-12-31','New Years Eve',''),('2011-01-01','New Years Day','');
/*!40000 ALTER TABLE `holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
