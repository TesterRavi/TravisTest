USE ``;

-- Table structure for table `member_logins`
--

DROP TABLE IF EXISTS `member_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_logins` (
  `member_id` int(10) unsigned NOT NULL,
  `login_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IP` int(10) unsigned NOT NULL DEFAULT '0',
  `session_id` varchar(32) NOT NULL DEFAULT '',
  `device` varchar(20) NOT NULL DEFAULT 'PC',
  `user_agent` varchar(100) NOT NULL DEFAULT '',
  `screen_height` int(10) unsigned NOT NULL DEFAULT '0',
  `screen_width` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`login_date`,`member_id`,`IP`,`session_id`),
  KEY `FK_member_logins::members` (`member_id`),
  KEY `FK_member_logins::devices` (`device`),
  CONSTRAINT `FK_member_logins::devices` FOREIGN KEY (`device`) REFERENCES `devices` (`device`) ON UPDATE CASCADE,
  CONSTRAINT `FK_member_logins::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_logins`
--

LOCK TABLES `member_logins` WRITE;
/*!40000 ALTER TABLE `member_logins` DISABLE KEYS */;
INSERT INTO `member_logins` VALUES (1,'2012-10-18 07:59:40',167772674,'h2e27kvsi026r6j5ob1n69f2g1','PC','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.122',0,0);
/*!40000 ALTER TABLE `member_logins` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `member_logins_ai` AFTER INSERT ON `member_logins` FOR EACH ROW BEGIN

REPLACE INTO members_last_login(member_id, login_date)
VALUES (NEW.member_id, NEW.login_date);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
