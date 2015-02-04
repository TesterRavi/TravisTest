USE ``;

-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_items` (
  `cart_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `event_id` int(10) unsigned NOT NULL,
  `sku` int(10) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `cart_item_status` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `viewed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `expires_at` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  UNIQUE KEY `member_id` (`member_id`,`event_id`,`sku`,`viewed`),
  KEY `FK_cart_items::cart_item_statuses` (`cart_item_status`),
  KEY `FK_cart_items:events` (`event_id`),
  KEY `FK_cart_items:skus` (`sku`),
  CONSTRAINT `FK_cart_items::cart_item_statuses` FOREIGN KEY (`cart_item_status`) REFERENCES `cart_item_statuses` (`cart_item_status`),
  CONSTRAINT `FK_cart_items:events` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_cart_items:members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_cart_items:skus` FOREIGN KEY (`sku`) REFERENCES `skus` (`sku`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trigger_cart_items_insert AFTER INSERT ON cart_items
FOR EACH ROW
  BEGIN
    INSERT INTO solr_queue_inventory (sku, event_id, triggered_at) VALUES (NEW.sku, NEW.event_id, NOW());
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trigger_cart_items_update AFTER UPDATE ON cart_items
FOR EACH ROW
  BEGIN
    IF
      NOT (NEW.quantity <=> OLD.quantity)
      OR (
        NOT (NEW.cart_item_status <=> OLD.cart_item_status)

        
        
        AND NOT (
          NEW.cart_item_status = 75 
          AND OLD.cart_item_status = 50 
        )
        AND NOT (
          NEW.cart_item_status = 50 
          AND OLD.cart_item_status = 75 
        )
      )
    THEN
      INSERT INTO solr_queue_inventory (sku, event_id, triggered_at) VALUES (NEW.sku, NEW.event_id, NOW());
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trigger_cart_items_delete AFTER DELETE ON cart_items
FOR EACH ROW
  BEGIN
    INSERT INTO solr_queue_inventory (sku, event_id, triggered_at) VALUES (OLD.sku, OLD.event_id, NOW());
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
