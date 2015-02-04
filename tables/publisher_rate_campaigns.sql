USE ``;

-- Table structure for table `publisher_rate_campaigns`
--

DROP TABLE IF EXISTS `publisher_rate_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publisher_rate_campaigns` (
  `publisher_class` varchar(3) NOT NULL,
  `percent_optin` decimal(3,3) unsigned NOT NULL DEFAULT '0.000',
  `percent_traffic` decimal(3,3) unsigned NOT NULL DEFAULT '0.000',
  `percent_host` decimal(3,3) unsigned NOT NULL DEFAULT '0.000',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '9999-12-31 23:59:59',
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`publisher_class`,`percent_optin`,`percent_traffic`,`percent_host`),
  KEY `publisher_class_dates` (`publisher_class`,`start_date`,`end_date`),
  CONSTRAINT `FK_PublisherRateCampaigns::PublisherClasses` FOREIGN KEY (`publisher_class`) REFERENCES `publisher_classes` (`publisher_class`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher_rate_campaigns`
--

LOCK TABLES `publisher_rate_campaigns` WRITE;
/*!40000 ALTER TABLE `publisher_rate_campaigns` DISABLE KEYS */;
INSERT INTO `publisher_rate_campaigns` VALUES ('A',0.030,0.030,0.030,'0000-00-00 00:00:00','9999-12-31 23:59:59','2009-11-04 00:43:30'),('B',0.020,0.020,0.020,'0000-00-00 00:00:00','9999-12-31 23:59:59','2009-11-04 00:43:30'),('C',0.010,0.010,0.010,'0000-00-00 00:00:00','9999-12-31 23:59:59','2009-11-04 00:43:30');
/*!40000 ALTER TABLE `publisher_rate_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
