USE ``;

-- Table structure for table `shipment_items`
--

DROP TABLE IF EXISTS `shipment_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment_items` (
  `shipment_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `event_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sku` int(10) unsigned NOT NULL DEFAULT '0',
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `ship_method_id` int(10) unsigned NOT NULL DEFAULT '3',
  `print_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`shipment_id`,`order_id`,`sku`,`event_id`),
  KEY `FK_shipment_items::orders` (`order_id`),
  KEY `FK_shipment_items::skus` (`sku`),
  KEY `FK_shipment_items::events` (`event_id`),
  KEY `FK_shipment_items::ship_methods` (`ship_method_id`),
  CONSTRAINT `FK_shipment_items::events` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_shipment_items::orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_shipment_items::shipments` FOREIGN KEY (`shipment_id`) REFERENCES `shipments` (`shipment_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_shipment_items::ship_methods` FOREIGN KEY (`ship_method_id`) REFERENCES `ship_methods` (`ship_method_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_shipment_items::skus` FOREIGN KEY (`sku`) REFERENCES `skus` (`sku`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_items`
--

LOCK TABLES `shipment_items` WRITE;
/*!40000 ALTER TABLE `shipment_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipment_items` ENABLE KEYS */;
UNLOCK TABLES;

--
