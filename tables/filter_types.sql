USE ``;

-- Table structure for table `filter_types`
--

DROP TABLE IF EXISTS `filter_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filter_types` (
  `filter_type` varchar(30) NOT NULL,
  `definition` text NOT NULL,
  PRIMARY KEY (`filter_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter_types`
--

LOCK TABLES `filter_types` WRITE;
/*!40000 ALTER TABLE `filter_types` DISABLE KEYS */;
INSERT INTO `filter_types` VALUES ('checkout_dropship',''),('preview_sales',''),('private_sales','');
/*!40000 ALTER TABLE `filter_types` ENABLE KEYS */;
UNLOCK TABLES;

--
