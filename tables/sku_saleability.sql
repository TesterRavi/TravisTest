USE ``;

-- Table structure for table `sku_saleability`
--

DROP TABLE IF EXISTS `sku_saleability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sku_saleability` (
  `sku` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `is_sellable` int(11) NOT NULL DEFAULT '0',
  `in_persistent` int(11) NOT NULL DEFAULT '0',
  `in_flash` int(11) NOT NULL DEFAULT '0',
  `not_sellable_reasons` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sku`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sku_saleability`
--

LOCK TABLES `sku_saleability` WRITE;
/*!40000 ALTER TABLE `sku_saleability` DISABLE KEYS */;
/*!40000 ALTER TABLE `sku_saleability` ENABLE KEYS */;
UNLOCK TABLES;

--
