USE ``;

-- Table structure for table `ups_quality_shipment`
--

DROP TABLE IF EXISTS `ups_quality_shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ups_quality_shipment` (
  `order_item_id` int(10) unsigned NOT NULL,
  `quality` enum('HIGH','LOW') NOT NULL DEFAULT 'LOW',
  `days_in_transit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_item_id`),
  CONSTRAINT `FK_UpsQualityShipment::OrderItems` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`item_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ups_quality_shipment`
--

LOCK TABLES `ups_quality_shipment` WRITE;
/*!40000 ALTER TABLE `ups_quality_shipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ups_quality_shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
