USE ``;

-- Table structure for table `purge_member_logins`
--

DROP TABLE IF EXISTS `purge_member_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purge_member_logins` (
  `member_id` int(10) unsigned NOT NULL,
  `login_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IP` int(10) unsigned NOT NULL DEFAULT '0',
  `session_id` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`login_date`,`member_id`,`IP`,`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purge_member_logins`
--

LOCK TABLES `purge_member_logins` WRITE;
/*!40000 ALTER TABLE `purge_member_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `purge_member_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
