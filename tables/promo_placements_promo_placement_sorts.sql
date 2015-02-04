USE ``;

-- Table structure for table `promo_placements_promo_placement_sorts`
--

DROP TABLE IF EXISTS `promo_placements_promo_placement_sorts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promo_placements_promo_placement_sorts` (
  `promo_placement` varchar(25) NOT NULL,
  `promo_placement_sort` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`promo_placement`,`promo_placement_sort`),
  KEY `FK_promo_placements_promo_placement_sorts::promo_placement_sorts` (`promo_placement_sort`),
  CONSTRAINT `FK_promo_placements_promo_placement_sorts::promo_placements` FOREIGN KEY (`promo_placement`) REFERENCES `promo_placements` (`promo_placement`) ON UPDATE CASCADE,
  CONSTRAINT `FK_promo_placements_promo_placement_sorts::promo_placement_sorts` FOREIGN KEY (`promo_placement_sort`) REFERENCES `promo_placement_sorts` (`promo_placement_sort`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo_placements_promo_placement_sorts`
--

LOCK TABLES `promo_placements_promo_placement_sorts` WRITE;
/*!40000 ALTER TABLE `promo_placements_promo_placement_sorts` DISABLE KEYS */;
INSERT INTO `promo_placements_promo_placement_sorts` VALUES ('bottom_promo',1),('grid_promo',1),('bottom_promo',2),('grid_promo',2),('bottom_promo',3);
/*!40000 ALTER TABLE `promo_placements_promo_placement_sorts` ENABLE KEYS */;
UNLOCK TABLES;

--
