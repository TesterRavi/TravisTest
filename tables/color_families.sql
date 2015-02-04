USE ``;

-- Table structure for table `color_families`
--

DROP TABLE IF EXISTS `color_families`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `color_families` (
  `color_family` varchar(25) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`color_family`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color_families`
--

LOCK TABLES `color_families` WRITE;
/*!40000 ALTER TABLE `color_families` DISABLE KEYS */;
INSERT INTO `color_families` VALUES ('Beige',1,'2015-01-22 21:15:29'),('Black',1,'2015-01-22 21:15:29'),('Blue',1,'2015-01-22 21:15:29'),('Brown',1,'2015-01-22 21:15:29'),('Gray',1,'2015-01-22 21:15:29'),('Green',1,'2015-01-22 21:15:29'),('Metallic',1,'2015-01-22 21:15:29'),('Multi',1,'2015-01-22 21:15:29'),('No Color',1,'2015-01-22 21:15:29'),('Orange',1,'2015-01-22 21:15:29'),('Pink',1,'2015-01-22 21:15:29'),('Purple',1,'2015-01-22 21:15:29'),('Red',1,'2015-01-22 21:15:29'),('White',1,'2015-01-22 21:15:29'),('Yellow',1,'2015-01-22 21:15:29');
/*!40000 ALTER TABLE `color_families` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trigger_color_families_update AFTER UPDATE ON color_families
FOR EACH ROW
  BEGIN
    IF NOT (NEW.active <=> OLD.active)
    THEN
      INSERT INTO solr_queue_populate_sku (sku, triggered_at)
      SELECT s.sku, NOW()
      FROM skus AS s
      WHERE s.color_family = NEW.color_family;
    END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
