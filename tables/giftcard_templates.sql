USE ``;

-- Table structure for table `giftcard_templates`
--

DROP TABLE IF EXISTS `giftcard_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcard_templates` (
  `giftcard_template` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`giftcard_template`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giftcard_templates`
--

LOCK TABLES `giftcard_templates` WRITE;
/*!40000 ALTER TABLE `giftcard_templates` DISABLE KEYS */;
INSERT INTO `giftcard_templates` VALUES ('default_order','',1,1),('default_return','',1,1);
/*!40000 ALTER TABLE `giftcard_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
