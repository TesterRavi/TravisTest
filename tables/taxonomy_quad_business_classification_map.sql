USE ``;

-- Table structure for table `taxonomy_quad_business_classification_map`
--

DROP TABLE IF EXISTS `taxonomy_quad_business_classification_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxonomy_quad_business_classification_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quad_id` int(11) DEFAULT NULL,
  `business_classification_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F44CCBAC2B35B26` (`business_classification_id`),
  KEY `taxonomy_quad_business_classification_map_fk_2` (`quad_id`),
  CONSTRAINT `taxonomy_quad_business_classification_map_fk_1` FOREIGN KEY (`business_classification_id`) REFERENCES `taxonomy_business_classification` (`id`),
  CONSTRAINT `taxonomy_quad_business_classification_map_fk_2` FOREIGN KEY (`quad_id`) REFERENCES `quads` (`quad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_quad_business_classification_map`
--

LOCK TABLES `taxonomy_quad_business_classification_map` WRITE;
/*!40000 ALTER TABLE `taxonomy_quad_business_classification_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_quad_business_classification_map` ENABLE KEYS */;
UNLOCK TABLES;

--
