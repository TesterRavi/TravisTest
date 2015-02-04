USE ``;

-- Table structure for table `purchase_orders_line_items`
--

DROP TABLE IF EXISTS `purchase_orders_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_orders_line_items` (
  `purchase_orders_line_items_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `line_nbr` int(10) unsigned NOT NULL DEFAULT '0',
  `po_id` int(10) unsigned NOT NULL,
  `sku` int(10) unsigned NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `purchased` int(10) unsigned NOT NULL,
  `received` int(10) unsigned NOT NULL,
  PRIMARY KEY (`purchase_orders_line_items_id`),
  KEY `FK_purchase_orders_line_items::skus` (`sku`),
  KEY `FK_purchase_orders_line_items::purchase_orders` (`po_id`),
  CONSTRAINT `FK_purchase_orders_line_items::purchase_orders` FOREIGN KEY (`po_id`) REFERENCES `purchase_orders` (`po_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_purchase_orders_line_items::skus` FOREIGN KEY (`sku`) REFERENCES `skus` (`sku`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_orders_line_items`
--

LOCK TABLES `purchase_orders_line_items` WRITE;
/*!40000 ALTER TABLE `purchase_orders_line_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_orders_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
