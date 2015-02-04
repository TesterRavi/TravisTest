USE ``;

-- Table structure for table `purge_litle_log`
--

DROP TABLE IF EXISTS `purge_litle_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purge_litle_log` (
  `member_id` int(10) unsigned NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `request_type` varchar(45) NOT NULL,
  `transaction_id` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`member_id`,`create_date`,`request_type`,`transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purge_litle_log`
--

LOCK TABLES `purge_litle_log` WRITE;
/*!40000 ALTER TABLE `purge_litle_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `purge_litle_log` ENABLE KEYS */;
UNLOCK TABLES;

--
