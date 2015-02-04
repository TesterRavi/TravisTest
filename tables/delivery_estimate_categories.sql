USE ``;

-- Table structure for table `delivery_estimate_categories`
--

DROP TABLE IF EXISTS `delivery_estimate_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_estimate_categories` (
  `delivery_estimate_category` varchar(25) NOT NULL,
  `display_color` varchar(6) NOT NULL DEFAULT '',
  `definition` text NOT NULL,
  PRIMARY KEY (`delivery_estimate_category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_estimate_categories`
--

LOCK TABLES `delivery_estimate_categories` WRITE;
/*!40000 ALTER TABLE `delivery_estimate_categories` DISABLE KEYS */;
INSERT INTO `delivery_estimate_categories` VALUES ('Estimated Delivery Dates','808080',''),('Expedited Delivery Dates','8dd43c',''),('Extended Delivery Dates','0000FF','');
/*!40000 ALTER TABLE `delivery_estimate_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
