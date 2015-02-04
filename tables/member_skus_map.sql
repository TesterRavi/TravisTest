USE ``;

-- Table structure for table `member_skus_map`
--

DROP TABLE IF EXISTS `member_skus_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_skus_map` (
  `member_division_cd` varchar(50) NOT NULL,
  `member_department_cd` varchar(50) NOT NULL,
  `member_class_cd` varchar(50) NOT NULL,
  `member_subclass_cd` varchar(50) NOT NULL,
  `sku` int(11) NOT NULL,
  `is_active_flag` char(1) NOT NULL,
  `created_by_user_id` int(11) NOT NULL,
  `created_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sku`,`member_division_cd`,`member_department_cd`,`member_class_cd`,`member_subclass_cd`),
  KEY `fk_member_skus_map` (`member_division_cd`,`member_department_cd`,`member_class_cd`,`member_subclass_cd`),
  CONSTRAINT `fk_member_skus_map` FOREIGN KEY (`member_division_cd`, `member_department_cd`, `member_class_cd`, `member_subclass_cd`) REFERENCES `member_classification` (`member_division_cd`, `member_department_cd`, `member_class_cd`, `member_subclass_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_skus_map`
--

LOCK TABLES `member_skus_map` WRITE;
/*!40000 ALTER TABLE `member_skus_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_skus_map` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trigger_member_skus_map_insert AFTER INSERT ON member_skus_map
FOR EACH ROW
  BEGIN
    INSERT INTO solr_queue_populate_sku (sku, triggered_at) VALUES (NEW.sku, NOW());
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trigger_member_skus_map_update AFTER UPDATE ON member_skus_map
FOR EACH ROW
  BEGIN
    INSERT INTO solr_queue_populate_sku (sku, triggered_at) VALUES (OLD.sku, NOW());
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trigger_member_skus_map_delete AFTER DELETE ON member_skus_map
FOR EACH ROW
  BEGIN
    INSERT INTO solr_queue_populate_sku (sku, triggered_at) VALUES (OLD.sku, NOW());
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
