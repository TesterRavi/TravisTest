USE ``;

-- Table structure for table `download_log`
--

DROP TABLE IF EXISTS `download_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download_log` (
  `member_id` int(10) unsigned NOT NULL,
  `download_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `download_type` enum('drop_ship') DEFAULT 'drop_ship',
  `filename` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`download_date`,`member_id`),
  KEY `FK_download_log::members` (`member_id`),
  CONSTRAINT `FK_download_log::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_log`
--

LOCK TABLES `download_log` WRITE;
/*!40000 ALTER TABLE `download_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `download_log` ENABLE KEYS */;
UNLOCK TABLES;

--
