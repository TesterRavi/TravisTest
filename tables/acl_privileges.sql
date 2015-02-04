USE ``;

-- Table structure for table `acl_privileges`
--

DROP TABLE IF EXISTS `acl_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_privileges` (
  `acl_privilege` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL DEFAULT '',
  `create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned DEFAULT NULL,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`acl_privilege`),
  KEY `FK_acl_privileges::members1` (`created_by`),
  KEY `FK_acl_privileges::members2` (`modified_by`),
  CONSTRAINT `FK_acl_privileges::members1` FOREIGN KEY (`created_by`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_acl_privileges::members2` FOREIGN KEY (`modified_by`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_privileges`
--

LOCK TABLES `acl_privileges` WRITE;
/*!40000 ALTER TABLE `acl_privileges` DISABLE KEYS */;
INSERT INTO `acl_privileges` VALUES ('create','','2015-01-22 21:15:33',NULL,'2011-06-02 16:51:28',NULL),('delete','','2015-01-22 21:15:33',NULL,'2011-06-02 16:51:28',NULL),('read','','2015-01-22 21:15:33',NULL,'2011-06-02 16:51:28',NULL),('update','','2015-01-22 21:15:33',NULL,'2011-06-02 16:51:28',NULL);
/*!40000 ALTER TABLE `acl_privileges` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER acl_privileges_bi BEFORE INSERT ON acl_privileges
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
