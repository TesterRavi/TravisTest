USE ``;

-- Table structure for table `purge_shipment_item_upload`
--

DROP TABLE IF EXISTS `purge_shipment_item_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purge_shipment_item_upload` (
  `shipment_id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `event_id` int(10) unsigned NOT NULL,
  `sku` int(10) unsigned NOT NULL,
  PRIMARY KEY (`shipment_id`,`order_id`,`sku`,`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purge_shipment_item_upload`
--

LOCK TABLES `purge_shipment_item_upload` WRITE;
/*!40000 ALTER TABLE `purge_shipment_item_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `purge_shipment_item_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
