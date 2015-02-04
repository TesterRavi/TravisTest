USE ``;

-- Table structure for table `google_ab_tests`
--

DROP TABLE IF EXISTS `google_ab_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `google_ab_tests` (
  `google_ab_code` varchar(10) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_date` timestamp NULL DEFAULT NULL,
  `page_type` varchar(20) NOT NULL,
  `query_string` varchar(100) NOT NULL,
  PRIMARY KEY (`start_date`,`google_ab_code`,`page_type`,`query_string`),
  KEY `FK_google_ab_tests::google_ab_page_types` (`page_type`),
  CONSTRAINT `FK_google_ab_tests::google_ab_page_types` FOREIGN KEY (`page_type`) REFERENCES `google_ab_page_types` (`page_type`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `google_ab_tests`
--

LOCK TABLES `google_ab_tests` WRITE;
/*!40000 ALTER TABLE `google_ab_tests` DISABLE KEYS */;
INSERT INTO `google_ab_tests` VALUES ('0045362282','2010-01-05 08:00:00','2010-03-05 08:00:00','conversion','/events/start'),('0045362282','2010-01-05 08:00:00','2010-03-05 08:00:00','original','/campaigns/canada'),('0045362282','2010-01-05 08:00:00','2010-03-05 08:00:00','variation','/campaigns/canada2'),('0871279381','2010-01-05 08:00:00','2010-09-19 17:56:28','conversion','/catalog'),('0871279381','2010-01-05 08:00:00','2010-09-19 17:56:28','conversion','/events/start'),('0871279381','2010-01-05 08:00:00','2010-09-19 17:56:28','conversion','/product'),('0871279381','2010-01-05 08:00:00','2010-09-19 17:56:28','original','/'),('0871279381','2010-01-05 08:00:00','2010-09-19 17:56:28','variation','/index/index/mk/indexf'),('0871279381','2010-01-05 08:00:00','2010-09-19 17:56:28','variation','/index/index/mk/indexg'),('0871279381','2010-01-05 08:00:00','2010-09-19 17:56:28','variation','/index/index/mk/indexh'),('2955683673','2010-01-05 08:00:00','2010-06-15 23:49:02','conversion','/events/start'),('2955683673','2010-01-05 08:00:00','2010-06-15 23:49:02','original','/'),('2955683673','2010-01-05 08:00:00','2010-06-15 23:49:02','variation','/index/index/mk/indexb'),('2955683673','2010-01-05 08:00:00','2010-06-15 23:49:02','variation','/index/index/mk/indexc'),('2955683673','2010-01-05 08:00:00','2010-06-15 23:49:02','variation','/index/index/mk/indexd'),('2955683673','2010-01-05 08:00:00','2010-06-15 23:49:02','variation','/index/index/mk/indexe'),('4216632558','2010-01-05 08:00:00','2010-03-05 08:00:00','conversion','/events/start'),('4216632558','2010-01-05 08:00:00','2010-03-05 08:00:00','original','/campaigns/canada'),('4216632558','2010-01-05 08:00:00','2010-03-05 08:00:00','variation','/campaigns/canada2'),('3938861552','2010-05-11 18:11:18','2010-06-15 23:49:02','conversion','/events/start'),('3938861552','2010-05-11 18:11:18','2010-06-15 23:49:02','original','/campaigns/canada'),('3938861552','2010-05-11 18:11:18','2010-06-15 23:49:02','variation','/campaigns'),('3938861552','2010-05-11 18:11:18','2010-06-15 23:49:02','variation','/index/index/mk/indexd');
/*!40000 ALTER TABLE `google_ab_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
