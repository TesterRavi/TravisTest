USE ``;

-- Table structure for table `shipment_item_upload_exceptions`
--

DROP TABLE IF EXISTS `shipment_item_upload_exceptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment_item_upload_exceptions` (
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sku` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`sku`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_item_upload_exceptions`
--

LOCK TABLES `shipment_item_upload_exceptions` WRITE;
/*!40000 ALTER TABLE `shipment_item_upload_exceptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipment_item_upload_exceptions` ENABLE KEYS */;
UNLOCK TABLES;

--
