USE ``;

-- Table structure for table `dpf_products_excluded`
--

DROP TABLE IF EXISTS `dpf_products_excluded`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpf_products_excluded` (
  `style_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`style_id`),
  CONSTRAINT `FK_dpf_products_excluded::styles` FOREIGN KEY (`style_id`) REFERENCES `styles` (`style_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dpf_products_excluded`
--

LOCK TABLES `dpf_products_excluded` WRITE;
/*!40000 ALTER TABLE `dpf_products_excluded` DISABLE KEYS */;
/*!40000 ALTER TABLE `dpf_products_excluded` ENABLE KEYS */;
UNLOCK TABLES;

--
