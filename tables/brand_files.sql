USE ``;

-- Table structure for table `brand_files`
--

DROP TABLE IF EXISTS `brand_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand_files` (
  `brand_id` int(10) unsigned NOT NULL,
  `filename` varchar(100) NOT NULL DEFAULT '',
  `file_type` varchar(25) NOT NULL DEFAULT '',
  `display_name` varchar(100) NOT NULL DEFAULT '',
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`brand_id`,`filename`),
  KEY `FK_brand_files:file_types` (`file_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_files`
--

LOCK TABLES `brand_files` WRITE;
/*!40000 ALTER TABLE `brand_files` DISABLE KEYS */;
INSERT INTO `brand_files` VALUES (2460,'Child_Safety_PDF.pdf','Child Safety PDF','Schylling\'s Safety Statement','2011-11-19 00:04:04'),(3128,'Child_Safety_PDF.pdf','Child Safety PDF','Schoenhut\'s Safety Statement','2012-03-07 02:10:35'),(1796,'Child_Safety_PDF.pdf','Child Safety PDF','ALEX\'s Safety Statement','2011-09-29 23:11:55'),(2509,'Child_Safety_PDF.pdf','Child Safety PDF','Smart Gear & Wonderworld\'s Safety Statement','2011-12-02 22:14:16'),(3958,'Child_Safety_PDF.pdf','Child Safety PDF','Smart Gear & Wonderworld\'s Safety Statement','2011-12-02 23:31:02'),(2790,'Child_Safety_PDF.pdf','Child Safety PDF','Madame Alexander\'s Safety Statement','2011-11-16 00:19:27'),(2196,'Child_Safety_PDF.pdf','Child Safety PDF','Infantino\'s Safety Statement','2011-11-18 01:24:57'),(3519,'Child_Safety_PDF.pdf','Child Safety PDF','Green Toys Safety Statement','2011-11-19 00:04:55'),(4211,'Child_Safety_PDF.pdf','Child Safety PDF','Thinkfun\'s Safety Statement','2011-11-19 00:18:22'),(2218,'Child_Safety_PDF.pdf','Child Safety PDF','Green Toys\' Safety Statement','2011-11-19 00:24:50'),(1355,'Child_Safety_PDF.pdf','Child Safety PDF','Mary Meyer\'s Safety Statement','2012-01-18 02:02:21'),(1362,'Child_Safety_PDF.pdf','Child Safety PDF','PlanToys\' Safety Statement','2012-03-27 23:37:49'),(1539,'Child_Safety_PDF.pdf','Child Safety PDF','Melissa & Doug\'s Safety Statement','2012-04-09 22:56:05'),(5139,'Child_Safety_PDF.pdf','Child Safety PDF','Sassafras\' Safety Statement','2012-05-14 22:41:05'),(5286,'Child_Safety_PDF.pdf','Child Safety PDF','Small World Toys\' Safety Statement','2012-05-15 18:18:30'),(2748,'Child_Safety_PDF.pdf','Child Safety PDF','Melissa & Doug\'s Safety Statement','2012-05-16 21:58:47');
/*!40000 ALTER TABLE `brand_files` ENABLE KEYS */;
UNLOCK TABLES;

--
