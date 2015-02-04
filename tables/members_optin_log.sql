USE ``;

-- Table structure for table `members_optin_log`
--

DROP TABLE IF EXISTS `members_optin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members_optin_log` (
  `members_optin_log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `email` varchar(100) NOT NULL,
  `log_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `optin` varchar(20) DEFAULT NULL,
  `rack_optin` varchar(20) DEFAULT NULL,
  `inc_optin` varchar(20) DEFAULT NULL,
  `members_optin_source` varchar(30) NOT NULL,
  PRIMARY KEY (`members_optin_log_id`),
  KEY `FK_members_optin_log_id::members` (`member_id`),
  KEY `FK_members_optin_log_id::optins` (`optin`),
  KEY `FK_members_optin_log_id::rack_optins` (`rack_optin`),
  KEY `FK_members_optin_log_id::inc_optins` (`inc_optin`),
  KEY `FK_members_optin_log_id::members_optin_sources` (`members_optin_source`),
  CONSTRAINT `FK_members_optin_log::inc_optins` FOREIGN KEY (`inc_optin`) REFERENCES `optins` (`optin`),
  CONSTRAINT `FK_members_optin_log::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_members_optin_log::members_optin_sources` FOREIGN KEY (`members_optin_source`) REFERENCES `members_optin_sources` (`members_optin_source`),
  CONSTRAINT `FK_members_optin_log::optins` FOREIGN KEY (`optin`) REFERENCES `optins` (`optin`),
  CONSTRAINT `FK_members_optin_log::rack_optins` FOREIGN KEY (`rack_optin`) REFERENCES `optins` (`optin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_optin_log`
--

LOCK TABLES `members_optin_log` WRITE;
/*!40000 ALTER TABLE `members_optin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_optin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
