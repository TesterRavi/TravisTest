USE ``;

-- Table structure for table `catalog_themes_styles`
--

DROP TABLE IF EXISTS `catalog_themes_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalog_themes_styles` (
  `catalog_theme_id` int(11) NOT NULL,
  `style_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`catalog_theme_id`,`style_id`),
  KEY `FK_catalog_themes_styles::styles` (`style_id`),
  CONSTRAINT `FK_catalog_themes_styles::catalog_themes` FOREIGN KEY (`catalog_theme_id`) REFERENCES `catalog_themes` (`catalog_theme_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_catalog_themes_styles::styles` FOREIGN KEY (`style_id`) REFERENCES `styles` (`style_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog_themes_styles`
--

LOCK TABLES `catalog_themes_styles` WRITE;
/*!40000 ALTER TABLE `catalog_themes_styles` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_themes_styles` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trigger_catalog_themes_styles_insert AFTER INSERT ON catalog_themes_styles
FOR EACH ROW
  BEGIN
    INSERT INTO solr_queue_populate_style (style_id, triggered_at) VALUES (NEW.style_id, NOW());
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trigger_catalog_themes_styles_update AFTER UPDATE ON catalog_themes_styles
FOR EACH ROW
  BEGIN
    INSERT INTO solr_queue_populate_style (style_id, triggered_at) VALUES (OLD.style_id, NOW());

    IF NOT (NEW.style_id <=> OLD.style_id)
    THEN
      INSERT INTO solr_queue_populate_style (style_id, triggered_at) VALUES (NEW.style_id, NOW());
    END IF;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trigger_catalog_themes_styles_delete AFTER DELETE ON catalog_themes_styles
FOR EACH ROW
  BEGIN
    INSERT INTO solr_queue_populate_style (style_id, triggered_at) VALUES (OLD.style_id, NOW());
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
