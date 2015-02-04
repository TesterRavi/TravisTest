USE ``;

-- Table structure for table `monthly_target`
--

DROP TABLE IF EXISTS `monthly_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly_target` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `month` datetime NOT NULL,
  `target` float(12,2) NOT NULL,
  `days_in_month` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_target`
--

LOCK TABLES `monthly_target` WRITE;
/*!40000 ALTER TABLE `monthly_target` DISABLE KEYS */;
INSERT INTO `monthly_target` VALUES (1,'2008-10-01 00:00:00',1332713.00,23),(2,'2008-11-01 00:00:00',1759500.00,20),(3,'2008-12-01 00:00:00',1730813.00,23),(4,'2009-01-01 00:00:00',1215375.00,22),(5,'2009-02-01 00:00:00',1020700.00,20),(6,'2009-03-01 00:00:00',2424434.00,22),(7,'2009-04-01 00:00:00',2605000.00,22),(8,'2009-05-01 00:00:00',2008000.00,20),(9,'2009-06-01 00:00:00',4203080.00,22),(10,'2009-07-01 00:00:00',4997033.00,23),(11,'2009-08-01 00:00:00',4000000.00,21),(12,'2009-09-01 00:00:00',4000000.00,22),(13,'2009-10-01 00:00:00',4500000.00,22),(14,'2009-11-01 00:00:00',6200000.00,21),(15,'2009-12-01 00:00:00',5800000.00,21),(16,'2010-01-01 00:00:00',6896230.00,21),(17,'2010-02-01 00:00:00',7294191.00,20),(18,'2010-03-01 00:00:00',8049524.00,23),(19,'2010-04-01 00:00:00',9121197.00,22),(20,'2010-05-01 00:00:00',9578654.00,21);
/*!40000 ALTER TABLE `monthly_target` ENABLE KEYS */;
UNLOCK TABLES;

--
