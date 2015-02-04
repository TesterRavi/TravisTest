USE ``;

-- Table structure for table `promo_placements`
--

DROP TABLE IF EXISTS `promo_placements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promo_placements` (
  `promo_placement` varchar(25) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`promo_placement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo_placements`
--

LOCK TABLES `promo_placements` WRITE;
/*!40000 ALTER TABLE `promo_placements` DISABLE KEYS */;
INSERT INTO `promo_placements` VALUES ('0',1),('1',1),('2',1),('3',1),('4',1),('5',1),('6',1),('7',1),('bottom_promo',1),('collapsible_promo',1),('grid_promo',1),('top_promo',1);
/*!40000 ALTER TABLE `promo_placements` ENABLE KEYS */;
UNLOCK TABLES;

--
