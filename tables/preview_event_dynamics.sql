USE ``;

-- Table structure for table `preview_event_dynamics`
--

DROP TABLE IF EXISTS `preview_event_dynamics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preview_event_dynamics` (
  `preview_event_batch` varchar(40) NOT NULL DEFAULT '',
  `start_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`start_date`,`preview_event_batch`,`end_date`),
  KEY `FK_preview_event_dynamics::preview_event_batches` (`preview_event_batch`),
  CONSTRAINT `FK_preview_event_dynamics::preview_event_batches` FOREIGN KEY (`preview_event_batch`) REFERENCES `preview_event_batches` (`preview_event_batch`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preview_event_dynamics`
--

LOCK TABLES `preview_event_dynamics` WRITE;
/*!40000 ALTER TABLE `preview_event_dynamics` DISABLE KEYS */;
INSERT INTO `preview_event_dynamics` VALUES ('test_case_2','2013-04-24 07:00:00','2013-09-24 07:00:00','2015-01-22 21:15:40','2011-07-13 22:47:21');
/*!40000 ALTER TABLE `preview_event_dynamics` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER preview_event_dynamics_bi BEFORE INSERT ON preview_event_dynamics
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
