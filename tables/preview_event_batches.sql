USE ``;

-- Table structure for table `preview_event_batches`
--

DROP TABLE IF EXISTS `preview_event_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preview_event_batches` (
  `preview_event_batch` varchar(40) NOT NULL,
  `description` varchar(1024) NOT NULL DEFAULT '',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`preview_event_batch`),
  KEY `active` (`active`,`preview_event_batch`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preview_event_batches`
--

LOCK TABLES `preview_event_batches` WRITE;
/*!40000 ALTER TABLE `preview_event_batches` DISABLE KEYS */;
INSERT INTO `preview_event_batches` VALUES ('test','test',1,'2015-01-22 21:15:40','2011-05-18 20:48:30'),('test_case_2','please ignore me, i really am a figment of your imagination',1,'2015-01-22 21:15:40','2011-07-13 22:47:21');
/*!40000 ALTER TABLE `preview_event_batches` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER preview_event_batches_bi BEFORE INSERT ON preview_event_batches
FOR EACH ROW
BEGIN

SET NEW.create_date = NOW();

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
