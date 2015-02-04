USE ``;

-- Table structure for table `product_locations`
--

DROP TABLE IF EXISTS `product_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_locations` (
  `style_id` int(10) unsigned NOT NULL,
  `po_id` int(10) unsigned NOT NULL,
  `location` varchar(40) NOT NULL,
  PRIMARY KEY (`po_id`,`style_id`),
  KEY `FK_product_locations::styles` (`style_id`),
  CONSTRAINT `FK_product_locations::purchase_orders` FOREIGN KEY (`po_id`) REFERENCES `purchase_orders` (`po_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_product_locations::styles` FOREIGN KEY (`style_id`) REFERENCES `styles` (`style_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_locations`
--

LOCK TABLES `product_locations` WRITE;
/*!40000 ALTER TABLE `product_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
