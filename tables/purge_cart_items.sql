USE ``;

-- Table structure for table `purge_cart_items`
--

DROP TABLE IF EXISTS `purge_cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purge_cart_items` (
  `cart_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purge_cart_items`
--

LOCK TABLES `purge_cart_items` WRITE;
/*!40000 ALTER TABLE `purge_cart_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `purge_cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
