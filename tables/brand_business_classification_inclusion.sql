USE ``;

-- Table structure for table `brand_business_classification_inclusion`
--

DROP TABLE IF EXISTS `brand_business_classification_inclusion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand_business_classification_inclusion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(10) unsigned NOT NULL,
  `taxonomy_business_classification_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_brand_business_classification_inclusion` (`brand_id`,`taxonomy_business_classification_id`),
  KEY `FK_brand_bus_cls_inclusion::taxonomy_business_classification_id` (`taxonomy_business_classification_id`),
  CONSTRAINT `FK_brand_bus_cls_inclusion::brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_brand_bus_cls_inclusion::taxonomy_business_classification_id` FOREIGN KEY (`taxonomy_business_classification_id`) REFERENCES `taxonomy_business_classification` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_business_classification_inclusion`
--

LOCK TABLES `brand_business_classification_inclusion` WRITE;
/*!40000 ALTER TABLE `brand_business_classification_inclusion` DISABLE KEYS */;
INSERT INTO `brand_business_classification_inclusion` VALUES (1,6235,2),(2,6235,4);
/*!40000 ALTER TABLE `brand_business_classification_inclusion` ENABLE KEYS */;
UNLOCK TABLES;

--
