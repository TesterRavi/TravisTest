USE ``;

-- Table structure for table `event_page_sorts`
--

DROP TABLE IF EXISTS `event_page_sorts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_page_sorts` (
  `event_page_position` varchar(25) NOT NULL,
  `gender` char(1) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `effective_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `event_id` int(10) unsigned DEFAULT NULL,
  `getaways_property_promotion_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`effective_date`,`event_page_position`,`gender`,`sort`),
  KEY `FK_event_page_sorts::events` (`event_id`),
  KEY `FK_event_page_sorts::event_page_positions` (`event_page_position`),
  CONSTRAINT `FK_event_page_sorts::events` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_event_page_sorts::event_page_positions` FOREIGN KEY (`event_page_position`) REFERENCES `event_page_positions` (`event_page_position`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_page_sorts`
--

LOCK TABLES `event_page_sorts` WRITE;
/*!40000 ALTER TABLE `event_page_sorts` DISABLE KEYS */;
INSERT INTO `event_page_sorts` VALUES ('top','F',1,'0000-00-00 00:00:00',NULL,NULL),('bottom','F',58,'2012-01-24 16:00:00',NULL,641),('bottom','F',59,'2012-01-24 16:00:00',NULL,648),('bottom','F',60,'2012-01-24 16:00:00',NULL,649),('bottom','F',61,'2012-01-24 16:00:00',NULL,639),('bottom','F',62,'2012-01-24 16:00:00',NULL,640),('top','F',18,'2012-01-24 16:00:00',NULL,643),('top','F',19,'2012-01-24 16:00:00',NULL,644),('top','F',20,'2012-01-24 16:00:00',NULL,653),('top','F',21,'2012-01-24 16:00:00',NULL,650),('top','F',22,'2012-01-24 16:00:00',NULL,654),('top','F',23,'2012-01-24 16:00:00',NULL,655),('top','F',24,'2012-01-24 16:00:00',NULL,642),('top','F',25,'2012-01-24 16:00:00',NULL,646),('bottom','F',54,'2012-01-25 16:00:00',NULL,640),('bottom','F',55,'2012-01-25 16:00:00',NULL,642),('bottom','F',56,'2012-01-25 16:00:00',NULL,643),('bottom','F',57,'2012-01-25 16:00:00',NULL,641),('top','F',24,'2012-01-25 16:00:00',NULL,646),('top','F',25,'2012-01-25 16:00:00',NULL,655),('top','F',26,'2012-01-25 16:00:00',NULL,652),('top','F',27,'2012-01-25 16:00:00',NULL,654),('top','F',28,'2012-01-25 16:00:00',NULL,650),('top','F',29,'2012-01-25 16:00:00',NULL,653),('top','F',30,'2012-01-25 16:00:00',NULL,656),('top','F',31,'2012-01-25 16:00:00',NULL,644),('bottom','F',60,'2012-01-26 16:00:00',NULL,654),('bottom','F',61,'2012-01-26 16:00:00',NULL,642),('bottom','F',62,'2012-01-26 16:00:00',NULL,643),('top','F',25,'2012-01-26 16:00:00',NULL,646),('top','F',26,'2012-01-26 16:00:00',NULL,655),('top','F',27,'2012-01-26 16:00:00',NULL,652),('top','F',28,'2012-01-26 16:00:00',NULL,651),('top','F',29,'2012-01-26 16:00:00',NULL,650),('top','F',30,'2012-01-26 16:00:00',NULL,653),('top','F',31,'2012-01-26 16:00:00',NULL,656),('top','F',32,'2012-01-26 16:00:00',NULL,644),('top','F',33,'2012-01-26 16:00:00',NULL,656),('top','F',34,'2012-01-26 16:00:00',NULL,644),('bottom','F',48,'2012-01-27 16:00:00',NULL,654),('bottom','F',49,'2012-01-27 16:00:00',NULL,655),('bottom','F',50,'2012-01-27 16:00:00',NULL,644),('bottom','F',51,'2012-01-27 16:00:00',NULL,655),('bottom','F',52,'2012-01-27 16:00:00',NULL,654),('top','F',21,'2012-01-27 16:00:00',NULL,646),('top','F',22,'2012-01-27 16:00:00',NULL,652),('top','F',23,'2012-01-27 16:00:00',NULL,651),('top','F',24,'2012-01-27 16:00:00',NULL,650),('top','F',25,'2012-01-27 16:00:00',NULL,653),('top','F',26,'2012-01-27 16:00:00',NULL,656),('top','F',31,'2012-01-27 16:00:00',NULL,646),('top','F',32,'2012-01-27 16:00:00',NULL,652),('top','F',33,'2012-01-27 16:00:00',NULL,651),('top','F',34,'2012-01-27 16:00:00',NULL,650),('top','F',35,'2012-01-27 16:00:00',NULL,653),('top','F',36,'2012-01-27 16:00:00',NULL,656),('bottom','F',43,'2012-01-28 16:00:00',NULL,646),('bottom','F',51,'2012-01-28 16:00:00',NULL,650),('bottom','F',52,'2012-01-28 16:00:00',NULL,653),('bottom','F',53,'2012-01-28 16:00:00',NULL,652),('bottom','F',54,'2012-01-28 16:00:00',NULL,656),('bottom','F',55,'2012-01-28 16:00:00',NULL,655),('bottom','F',56,'2012-01-28 16:00:00',NULL,644),('top','F',14,'2012-01-28 16:00:00',NULL,651),('top','F',15,'2012-01-28 16:00:00',NULL,651),('bottom','F',43,'2012-01-29 16:00:00',NULL,651),('bottom','F',44,'2012-01-29 16:00:00',NULL,650),('bottom','F',45,'2012-01-29 16:00:00',NULL,653),('bottom','F',46,'2012-01-29 16:00:00',NULL,652),('bottom','F',47,'2012-01-29 16:00:00',NULL,656),('bottom','F',48,'2012-01-29 16:00:00',NULL,646),('bottom','F',49,'2012-01-30 00:00:00',NULL,646),('bottom','F',50,'2012-01-30 00:00:00',NULL,651),('bottom','F',51,'2012-01-30 00:00:00',NULL,650),('bottom','F',52,'2012-01-30 00:00:00',NULL,653),('bottom','F',53,'2012-01-30 00:00:00',NULL,652),('bottom','F',54,'2012-01-30 00:00:00',NULL,656),('bottom','F',38,'2012-01-30 16:00:00',NULL,651);
/*!40000 ALTER TABLE `event_page_sorts` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger event_page_sorts_ai AFTER INSERT ON event_page_sorts FOR EACH ROW

BEGIN

UPDATE IGNORE `events`
SET sort_order = NEW.sort
where event_id = NEW.event_id and start_date = NEW.effective_date;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
