USE ``;

-- Table structure for table `wms_shipment_item_import`
--

DROP TABLE IF EXISTS `wms_shipment_item_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wms_shipment_item_import` (
  `high_jump_container` varchar(34) NOT NULL DEFAULT '',
  `order_id` varchar(30) DEFAULT NULL,
  `sku` varchar(30) DEFAULT NULL,
  `event_id` varchar(250) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `tracking_num` varchar(100) DEFAULT NULL,
  `ship_date` datetime DEFAULT NULL,
  `ship_method` varchar(250) DEFAULT NULL,
  `import_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wms_shipment_item_import`
--

LOCK TABLES `wms_shipment_item_import` WRITE;
/*!40000 ALTER TABLE `wms_shipment_item_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `wms_shipment_item_import` ENABLE KEYS */;
UNLOCK TABLES;

--
