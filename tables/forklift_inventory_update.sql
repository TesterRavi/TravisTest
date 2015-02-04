USE ``;

-- Table structure for table `forklift_inventory_update`
--

DROP TABLE IF EXISTS `forklift_inventory_update`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forklift_inventory_update` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sku` int(10) unsigned NOT NULL,
  `original_quantity` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `difference` int(10) NOT NULL DEFAULT '0',
  `quantity_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `modified_date` (`quantity_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forklift_inventory_update`
--

LOCK TABLES `forklift_inventory_update` WRITE;
/*!40000 ALTER TABLE `forklift_inventory_update` DISABLE KEYS */;
/*!40000 ALTER TABLE `forklift_inventory_update` ENABLE KEYS */;
UNLOCK TABLES;

--
