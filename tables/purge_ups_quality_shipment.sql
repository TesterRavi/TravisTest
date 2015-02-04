USE ``;

-- Table structure for table `purge_ups_quality_shipment`
--

DROP TABLE IF EXISTS `purge_ups_quality_shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purge_ups_quality_shipment` (
  `order_item_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purge_ups_quality_shipment`
--

LOCK TABLES `purge_ups_quality_shipment` WRITE;
/*!40000 ALTER TABLE `purge_ups_quality_shipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `purge_ups_quality_shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
