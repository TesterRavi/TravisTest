USE ``;

-- Table structure for table `order_adjustments_temp`
--

DROP TABLE IF EXISTS `order_adjustments_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_adjustments_temp` (
  `temp_adjustment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_adjustment_id` int(10) unsigned NOT NULL,
  `type` varchar(75) NOT NULL,
  `sku` int(10) unsigned DEFAULT NULL,
  `order_item_id` int(10) unsigned zerofill DEFAULT NULL,
  `value` varchar(75) NOT NULL,
  PRIMARY KEY (`temp_adjustment_id`),
  KEY `order_adjustment_id` (`order_adjustment_id`),
  KEY `order_item_id` (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_adjustments_temp`
--

LOCK TABLES `order_adjustments_temp` WRITE;
/*!40000 ALTER TABLE `order_adjustments_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_adjustments_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
