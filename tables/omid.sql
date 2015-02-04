USE ``;

-- Table structure for table `omid`
--

DROP TABLE IF EXISTS `omid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `omid` (
  `omid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL DEFAULT '0',
  `channel` varchar(50) NOT NULL,
  `account` varchar(50) NOT NULL,
  `site` varchar(50) NOT NULL,
  `campaign` varchar(50) NOT NULL,
  `placement` varchar(50) DEFAULT NULL,
  `creative` varchar(50) DEFAULT NULL,
  `adgroup` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `matchtype` varchar(30) NOT NULL,
  `is_active_flag` char(1) DEFAULT NULL,
  `created_by_user_id` int(11) DEFAULT NULL,
  `created_ts` timestamp NULL DEFAULT NULL,
  `last_updated_by_user_id` int(11) DEFAULT NULL,
  `last_updated_ts` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`omid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omid`
--

LOCK TABLES `omid` WRITE;
/*!40000 ALTER TABLE `omid` DISABLE KEYS */;
/*!40000 ALTER TABLE `omid` ENABLE KEYS */;
UNLOCK TABLES;

--
