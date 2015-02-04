USE ``;

-- Table structure for table `google_ab_page_types`
--

DROP TABLE IF EXISTS `google_ab_page_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `google_ab_page_types` (
  `page_type` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`page_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `google_ab_page_types`
--

LOCK TABLES `google_ab_page_types` WRITE;
/*!40000 ALTER TABLE `google_ab_page_types` DISABLE KEYS */;
INSERT INTO `google_ab_page_types` VALUES ('conversion',''),('original',''),('variation','');
/*!40000 ALTER TABLE `google_ab_page_types` ENABLE KEYS */;
UNLOCK TABLES;

--
