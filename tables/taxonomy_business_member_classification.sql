USE ``;

-- Table structure for table `taxonomy_business_member_classification`
--

DROP TABLE IF EXISTS `taxonomy_business_member_classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxonomy_business_member_classification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_classification_id` int(11) DEFAULT NULL,
  `member_classification_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taxonomy_business_member` (`business_classification_id`,`member_classification_id`),
  KEY `IDX_F37E3B89C2B35B26` (`business_classification_id`),
  KEY `IDX_F37E3B8963DFF5A1` (`member_classification_id`),
  CONSTRAINT `FK_99C096782A86559G` FOREIGN KEY (`business_classification_id`) REFERENCES `taxonomy_business_classification` (`id`),
  CONSTRAINT `FK_99C096782A86559H` FOREIGN KEY (`member_classification_id`) REFERENCES `taxonomy_member_classification` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_business_member_classification`
--

LOCK TABLES `taxonomy_business_member_classification` WRITE;
/*!40000 ALTER TABLE `taxonomy_business_member_classification` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxonomy_business_member_classification` ENABLE KEYS */;
UNLOCK TABLES;

--
