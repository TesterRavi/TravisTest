USE ``;

-- Table structure for table `promo_url_actions`
--

DROP TABLE IF EXISTS `promo_url_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promo_url_actions` (
  `promo_url_action` varchar(25) NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`promo_url_action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo_url_actions`
--

LOCK TABLES `promo_url_actions` WRITE;
/*!40000 ALTER TABLE `promo_url_actions` DISABLE KEYS */;
INSERT INTO `promo_url_actions` VALUES ('','Mail To',0),('widget','Execute Widget Behavior',1),('_blank','Open Link In New Tab',1),('_self','Direct Link To Page',1);
/*!40000 ALTER TABLE `promo_url_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
