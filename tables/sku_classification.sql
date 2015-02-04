USE ``;

-- Table structure for table `sku_classification`
--

DROP TABLE IF EXISTS `sku_classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sku_classification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` int(10) unsigned NOT NULL,
  `business_member_classification_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_99C09678F9038C4` (`sku`),
  KEY `IDX_99C096782A86559F` (`business_member_classification_id`),
  CONSTRAINT `FK_99C096782A86559F` FOREIGN KEY (`business_member_classification_id`) REFERENCES `taxonomy_business_member_classification` (`id`),
  CONSTRAINT `FK_99C09678F9038C5` FOREIGN KEY (`sku`) REFERENCES `skus` (`sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sku_classification`
--

LOCK TABLES `sku_classification` WRITE;
/*!40000 ALTER TABLE `sku_classification` DISABLE KEYS */;
/*!40000 ALTER TABLE `sku_classification` ENABLE KEYS */;
UNLOCK TABLES;

--
