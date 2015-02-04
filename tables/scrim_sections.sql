USE ``;

-- Table structure for table `scrim_sections`
--

DROP TABLE IF EXISTS `scrim_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scrim_sections` (
  `scrim_section` varchar(25) NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`scrim_section`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scrim_sections`
--

LOCK TABLES `scrim_sections` WRITE;
/*!40000 ALTER TABLE `scrim_sections` DISABLE KEYS */;
INSERT INTO `scrim_sections` VALUES ('catalog_banner',''),('catalog_page',''),('coming_soon',''),('event_page',''),('product_page','');
/*!40000 ALTER TABLE `scrim_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
