USE ``;

-- Table structure for table `email_queue`
--

DROP TABLE IF EXISTS `email_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_queue` (
  `email_queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `queue_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email_recipient` varchar(100) NOT NULL DEFAULT '',
  `email_sender` varchar(100) NOT NULL DEFAULT '',
  `email_subject` text NOT NULL,
  `email_body` text NOT NULL,
  `email_header` text NOT NULL,
  `email_metadata` text NOT NULL,
  `email_template` varchar(20) NOT NULL,
  `email_status` enum('complete','pending','retry','failed','review') NOT NULL DEFAULT 'pending',
  `raw_request` text NOT NULL,
  `raw_response` text NOT NULL,
  `send_on_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sent_date` timestamp NULL DEFAULT NULL,
  `process_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email_queue_id`),
  KEY `FK_email_queue::members` (`member_id`),
  KEY `FK_email_queue::email_templates` (`email_template`),
  KEY `queue_date` (`queue_date`,`email_status`),
  KEY `process_id` (`process_id`,`email_status`),
  KEY `email_status` (`email_status`),
  CONSTRAINT `FK_email_queueee::email_templates` FOREIGN KEY (`email_template`) REFERENCES `email_templates` (`email_template`),
  CONSTRAINT `FK_email_queueee::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_queue`
--

LOCK TABLES `email_queue` WRITE;
/*!40000 ALTER TABLE `email_queue` DISABLE KEYS */;
INSERT INTO `email_queue` VALUES (1,1,'2012-10-18 15:59:40','test@user.com','hautelook@hautelookmail.com','Welcome to HauteLook','Female','a:3:{s:2:\"To\";a:3:{i:0;s:25:\"Test User <test@user.com>\";s:6:\"append\";b:1;i:1;s:13:\"test@user.com\";}s:4:\"From\";a:2:{i:0;s:39:\"HauteLook <hautelook@hautelookmail.com>\";s:6:\"append\";b:1;}s:7:\"Subject\";a:1:{i:0;s:20:\"Welcome to HauteLook\";}}','a:11:{s:6:\"gender\";s:6:\"female\";s:7:\"country\";s:7:\"welcome\";s:10:\"first_name\";s:4:\"Test\";s:9:\"last_name\";s:4:\"User\";s:4:\"name\";s:9:\"Test User\";s:9:\"hl_credit\";s:0:\"\";s:17:\"member_first_name\";s:0:\"\";s:16:\"member_last_name\";s:0:\"\";s:15:\"pending_invites\";s:0:\"\";s:16:\"personal_message\";s:0:\"\";s:9:\"member_id\";s:1:\"1\";}','welcome','pending','a:8:{s:4:\"TYPE\";s:7:\"welcome\";s:9:\"MEMBER_ID\";s:1:\"1\";s:6:\"GENDER\";s:6:\"female\";s:10:\"FIRST_NAME\";s:0:\"\";s:9:\"LAST_NAME\";s:0:\"\";s:4:\"MISC\";s:0:\"\";s:19:\"INVITERS_FROM_EMAIL\";s:0:\"\";s:20:\"UNUSED_CREDIT_AMOUNT\";s:0:\"\";}','','2012-10-18 15:59:40',NULL,NULL);
/*!40000 ALTER TABLE `email_queue` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER set_email_queue_send_on_date BEFORE INSERT ON email_queue
FOR EACH ROW
BEGIN

IF NEW.send_on_date IS NULL OR NEW.send_on_date = 0 THEN
  SET NEW.send_on_date = NOW();
END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
