USE ``;

-- Table structure for table `taxonomy_business_classification_quad_map`
--

DROP TABLE IF EXISTS `taxonomy_business_classification_quad_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxonomy_business_classification_quad_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_classification_id` int(11) DEFAULT NULL,
  `quad_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `business_classification_id` (`business_classification_id`),
  KEY `quad_id` (`quad_id`),
  CONSTRAINT `taxonomy_business_classification_quad_map_fk_1` FOREIGN KEY (`business_classification_id`) REFERENCES `taxonomy_business_classification` (`id`),
  CONSTRAINT `taxonomy_business_classification_quad_map_fk_2` FOREIGN KEY (`quad_id`) REFERENCES `quads` (`quad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_business_classification_quad_map`
--

LOCK TABLES `taxonomy_business_classification_quad_map` WRITE;
/*!40000 ALTER TABLE `taxonomy_business_classification_quad_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_business_classification_quad_map` ENABLE KEYS */;
UNLOCK TABLES;

--
