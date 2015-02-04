USE ``;

-- Table structure for table `service_settings`
--

DROP TABLE IF EXISTS `service_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_settings` (
  `service` varchar(30) NOT NULL DEFAULT '',
  `setting` enum('on','off') NOT NULL DEFAULT 'on',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`service`,`setting`,`modified`),
  KEY `FK_service_settings::members` (`modified_by`),
  CONSTRAINT `FK_service_settings::members` FOREIGN KEY (`modified_by`) REFERENCES `members` (`member_id`),
  CONSTRAINT `FK_service_settings::services` FOREIGN KEY (`service`) REFERENCES `services` (`service`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_settings`
--

LOCK TABLES `service_settings` WRITE;
/*!40000 ALTER TABLE `service_settings` DISABLE KEYS */;
INSERT INTO `service_settings` VALUES ('DGAW Omniture Tracking','off','2010-03-19 17:55:00',294723),('Omniture Clicks','on','2010-05-19 23:13:30',294723),('Omniture Clicks','on','2010-05-20 17:19:00',294723),('Omniture Clicks','on','2010-05-20 20:43:08',294723),('Omniture Clicks','off','2010-03-19 17:55:00',294723),('Omniture Clicks','off','2010-05-19 23:35:13',294723),('Omniture Clicks','off','2010-05-20 20:42:18',294723),('Omniture Clicks','on','2010-05-21 18:54:26',1103203),('Omniture Clicks','on','2010-05-22 20:47:50',1103203),('Omniture Clicks','on','2010-05-23 04:09:57',1103203),('Omniture Clicks','on','2010-05-24 14:46:44',1103203),('Omniture Clicks','off','2010-05-20 20:44:09',1103203),('Omniture Clicks','off','2010-05-21 19:37:04',1103203),('Omniture Clicks','off','2010-05-23 04:05:23',1103203),('Omniture Clicks','off','2010-05-23 05:31:53',1103203),('Omniture Clicks','off','2010-05-24 17:32:21',1103203);
/*!40000 ALTER TABLE `service_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
