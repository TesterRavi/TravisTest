USE ``;

-- Table structure for table `order_adjustments_dependencies`
--

DROP TABLE IF EXISTS `order_adjustments_dependencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_adjustments_dependencies` (
  `dependency_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_adjustment_id` int(10) unsigned NOT NULL,
  `table_name` varchar(75) NOT NULL,
  `primary_key` int(10) unsigned NOT NULL,
  `change_type` varchar(45) NOT NULL,
  `original_value` varchar(45) NOT NULL,
  PRIMARY KEY (`dependency_id`),
  KEY `order_adjustment_id` (`order_adjustment_id`),
  KEY `primary_key` (`primary_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_adjustments_dependencies`
--

LOCK TABLES `order_adjustments_dependencies` WRITE;
/*!40000 ALTER TABLE `order_adjustments_dependencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_adjustments_dependencies` ENABLE KEYS */;
UNLOCK TABLES;

--
