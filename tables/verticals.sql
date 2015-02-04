USE ``;

-- Table structure for table `verticals`
--

DROP TABLE IF EXISTS `verticals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verticals` (
  `vertical` varchar(30) NOT NULL,
  PRIMARY KEY (`vertical`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verticals`
--

LOCK TABLES `verticals` WRITE;
/*!40000 ALTER TABLE `verticals` DISABLE KEYS */;
INSERT INTO `verticals` VALUES ('Accessories'),('Apparel'),('Beauty'),('Experiences'),('Food & Beverage'),('Gear'),('Home'),('Jewelry'),('Toys');
/*!40000 ALTER TABLE `verticals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_connectship_shipment_items`
--

DROP TABLE IF EXISTS `view_connectship_shipment_items`;
/*!50001 DROP VIEW IF EXISTS `view_connectship_shipment_items`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_connectship_shipment_items` (
  `shipment_id` tinyint NOT NULL,
  `order_id` tinyint NOT NULL,
  `event_id` tinyint NOT NULL,
  `sku` tinyint NOT NULL,
  `quantity` tinyint NOT NULL,
  `style_name` tinyint NOT NULL,
  `country_iso` tinyint NOT NULL,
  `fiber_content` tinyint NOT NULL,
  `weight` tinyint NOT NULL,
  `material` tinyint NOT NULL,
  `sale_price` tinyint NOT NULL,
  `vertical` tinyint NOT NULL,
  `department` tinyint NOT NULL,
  `category` tinyint NOT NULL,
  `subcategory` tinyint NOT NULL,
  `hazmat` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_connectship_tracking`
--

DROP TABLE IF EXISTS `view_connectship_tracking`;
/*!50001 DROP VIEW IF EXISTS `view_connectship_tracking`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_connectship_tracking` (
  `shipment_id` tinyint NOT NULL,
  `tracking_num` tinyint NOT NULL,
  `ship_date` tinyint NOT NULL,
  `delivery_estimate_date` tinyint NOT NULL,
  `source` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_giftcards`
--

DROP TABLE IF EXISTS `view_giftcards`;
/*!50001 DROP VIEW IF EXISTS `view_giftcards`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_giftcards` (
  `order_id` tinyint NOT NULL,
  `card_number` tinyint NOT NULL,
  `create_date` tinyint NOT NULL,
  `schedule_date` tinyint NOT NULL,
  `redeemed` tinyint NOT NULL,
  `balance` tinyint NOT NULL,
  `card_order_status` tinyint NOT NULL,
  `recipient_email` tinyint NOT NULL,
  `recipient_name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_gp_po_header`
--

DROP TABLE IF EXISTS `view_gp_po_header`;
/*!50001 DROP VIEW IF EXISTS `view_gp_po_header`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_gp_po_header` (
  `po_id` tinyint NOT NULL,
  `po_date` tinyint NOT NULL,
  `po_notes` tinyint NOT NULL,
  `region` tinyint NOT NULL,
  `delivery_method` tinyint NOT NULL,
  `supplier` tinyint NOT NULL,
  `event_id` tinyint NOT NULL,
  `confirm_with` tinyint NOT NULL,
  `ship_method` tinyint NOT NULL,
  `event_type` tinyint NOT NULL,
  `first_payment_percentage` tinyint NOT NULL,
  `first_payment_timing` tinyint NOT NULL,
  `net_payment_percentage` tinyint NOT NULL,
  `net_payment_timing` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_gp_po_header_internal`
--

DROP TABLE IF EXISTS `view_gp_po_header_internal`;
/*!50001 DROP VIEW IF EXISTS `view_gp_po_header_internal`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_gp_po_header_internal` (
  `po_id` tinyint NOT NULL,
  `post_date` tinyint NOT NULL,
  `description` tinyint NOT NULL,
  `sku` tinyint NOT NULL,
  `style_num` tinyint NOT NULL,
  `purchased` tinyint NOT NULL,
  `cost` tinyint NOT NULL,
  `line_nbr` tinyint NOT NULL,
  `delivery_method` tinyint NOT NULL,
  `supplier` tinyint NOT NULL,
  `event_id` tinyint NOT NULL,
  `region` tinyint NOT NULL,
  `event_type` tinyint NOT NULL,
  `ship_method` tinyint NOT NULL,
  `confirm_with` tinyint NOT NULL,
  `first_payment_percentage` tinyint NOT NULL,
  `first_payment_timing` tinyint NOT NULL,
  `net_payment_percentage` tinyint NOT NULL,
  `net_payment_timing` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_gp_po_header_internal_owned`
--

DROP TABLE IF EXISTS `view_gp_po_header_internal_owned`;
/*!50001 DROP VIEW IF EXISTS `view_gp_po_header_internal_owned`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_gp_po_header_internal_owned` (
  `po_id` tinyint NOT NULL,
  `post_date` tinyint NOT NULL,
  `description` tinyint NOT NULL,
  `sku` tinyint NOT NULL,
  `style_num` tinyint NOT NULL,
  `purchased` tinyint NOT NULL,
  `cost` tinyint NOT NULL,
  `line_nbr` tinyint NOT NULL,
  `delivery_method` tinyint NOT NULL,
  `supplier` tinyint NOT NULL,
  `event_id` tinyint NOT NULL,
  `region` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `event_type` tinyint NOT NULL,
  `ship_method` tinyint NOT NULL,
  `confirm_with` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_gp_po_header_owned`
--

DROP TABLE IF EXISTS `view_gp_po_header_owned`;
/*!50001 DROP VIEW IF EXISTS `view_gp_po_header_owned`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_gp_po_header_owned` (
  `po_id` tinyint NOT NULL,
  `po_date` tinyint NOT NULL,
  `po_notes` tinyint NOT NULL,
  `region` tinyint NOT NULL,
  `delivery_method` tinyint NOT NULL,
  `supplier` tinyint NOT NULL,
  `event_id` tinyint NOT NULL,
  `confirm_with` tinyint NOT NULL,
  `ship_method` tinyint NOT NULL,
  `event_type` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `purchased` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_gp_po_line`
--

DROP TABLE IF EXISTS `view_gp_po_line`;
/*!50001 DROP VIEW IF EXISTS `view_gp_po_line`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_gp_po_line` (
  `po_id` tinyint NOT NULL,
  `sku` tinyint NOT NULL,
  `style_num` tinyint NOT NULL,
  `cost` tinyint NOT NULL,
  `line_nbr` tinyint NOT NULL,
  `ordered` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_gp_po_line_owned`
--

DROP TABLE IF EXISTS `view_gp_po_line_owned`;
/*!50001 DROP VIEW IF EXISTS `view_gp_po_line_owned`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_gp_po_line_owned` (
  `po_id` tinyint NOT NULL,
  `sku` tinyint NOT NULL,
  `style_num` tinyint NOT NULL,
  `cost` tinyint NOT NULL,
  `line_nbr` tinyint NOT NULL,
  `ordered` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_member_priority`
--

DROP TABLE IF EXISTS `view_member_priority`;
/*!50001 DROP VIEW IF EXISTS `view_member_priority`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_member_priority` (
  `member_id` tinyint NOT NULL,
  `priority` tinyint NOT NULL,
  `domain` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
