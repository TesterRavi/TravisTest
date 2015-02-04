USE ``;

-- Table structure for table `promo_placement_sorts`
--

DROP TABLE IF EXISTS `promo_placement_sorts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promo_placement_sorts` (
  `promo_placement_sort` tinyint(3) unsigned NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`promo_placement_sort`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo_placement_sorts`
--

LOCK TABLES `promo_placement_sorts` WRITE;
/*!40000 ALTER TABLE `promo_placement_sorts` DISABLE KEYS */;
INSERT INTO `promo_placement_sorts` VALUES (1,1),(2,1),(3,1);
/*!40000 ALTER TABLE `promo_placement_sorts` ENABLE KEYS */;
UNLOCK TABLES;

--
