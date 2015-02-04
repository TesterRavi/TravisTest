USE ``;

-- Table structure for table `catalog_themes`
--

DROP TABLE IF EXISTS `catalog_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalog_themes` (
  `catalog_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`catalog_theme_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog_themes`
--

LOCK TABLES `catalog_themes` WRITE;
/*!40000 ALTER TABLE `catalog_themes` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
