USE ``;

-- Table structure for table `ship_method_calc_rules`
--

DROP TABLE IF EXISTS `ship_method_calc_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ship_method_calc_rules` (
  `ship_method_calc_rule` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ship_method_calc_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ship_method_calc_rules`
--

LOCK TABLES `ship_method_calc_rules` WRITE;
/*!40000 ALTER TABLE `ship_method_calc_rules` DISABLE KEYS */;
INSERT INTO `ship_method_calc_rules` VALUES ('landmark: .20','',1),('none','',1);
/*!40000 ALTER TABLE `ship_method_calc_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
