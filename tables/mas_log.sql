USE ``;

-- Table structure for table `mas_log`
--

DROP TABLE IF EXISTS `mas_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mas_log` (
  `mas_log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `employee_id` int(10) unsigned NOT NULL,
  `mas_type` varchar(25) DEFAULT NULL,
  `url_controller` varchar(255) NOT NULL DEFAULT '',
  `url_action` varchar(255) NOT NULL DEFAULT '',
  `url_params` varchar(255) NOT NULL DEFAULT '',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mas_log_id`),
  KEY `FK_MasLog:member_id::Members:member_id` (`member_id`),
  KEY `FK_MasLog:employee_id::Members:member_id` (`employee_id`),
  KEY `FK_mas_types:mas_log` (`mas_type`),
  CONSTRAINT `C_MasLog:employee_id::Members:member_id` FOREIGN KEY (`employee_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `C_MasLog:member_id::Members:member_id` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_mas_types:mas_log` FOREIGN KEY (`mas_type`) REFERENCES `mas_types` (`mas_type`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Member Access System Log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mas_log`
--

LOCK TABLES `mas_log` WRITE;
/*!40000 ALTER TABLE `mas_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mas_log` ENABLE KEYS */;
UNLOCK TABLES;

--
