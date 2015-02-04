USE ``;

-- Table structure for table `delivery_estimates`
--

DROP TABLE IF EXISTS `delivery_estimates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_estimates` (
  `delivery_low_day` int(10) unsigned NOT NULL DEFAULT '0',
  `delivery_high_day` int(10) unsigned NOT NULL DEFAULT '0',
  `delivery_estimate_rule` enum('Business','Calendar') NOT NULL DEFAULT 'Business',
  `delivery_estimate_category` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `sort` tinyint(3) unsigned DEFAULT '0',
  `active` tinyint(3) unsigned DEFAULT '1',
  PRIMARY KEY (`delivery_low_day`,`delivery_high_day`,`delivery_estimate_rule`),
  KEY `FK_delivery_estimates::delivery_estimate_categories` (`delivery_estimate_category`),
  CONSTRAINT `FK_delivery_estimates::delivery_estimate_categories` FOREIGN KEY (`delivery_estimate_category`) REFERENCES `delivery_estimate_categories` (`delivery_estimate_category`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_estimates`
--

LOCK TABLES `delivery_estimates` WRITE;
/*!40000 ALTER TABLE `delivery_estimates` DISABLE KEYS */;
INSERT INTO `delivery_estimates` VALUES (1,1,'Calendar','Expedited Delivery Dates','',13,1),(1,2,'Business','Expedited Delivery Dates','',1,1),(2,3,'Business','Expedited Delivery Dates','',2,1),(2,5,'Business','Estimated Delivery Dates','',3,1),(3,7,'Business','Estimated Delivery Dates','',4,1),(4,6,'Business','Estimated Delivery Dates','',5,1),(5,7,'Business','Estimated Delivery Dates','',6,1),(6,9,'Business','Estimated Delivery Dates','',7,1),(7,10,'Business','Estimated Delivery Dates','',8,1),(8,11,'Business','Estimated Delivery Dates','',9,1),(10,12,'Business','Estimated Delivery Dates','',10,1),(10,14,'Business','Estimated Delivery Dates','',11,1),(14,21,'Business','Extended Delivery Dates','',12,1),(35,42,'Calendar','Extended Delivery Dates','',14,1),(42,56,'Calendar','Extended Delivery Dates','',15,1),(56,63,'Calendar','Extended Delivery Dates','',16,1);
/*!40000 ALTER TABLE `delivery_estimates` ENABLE KEYS */;
UNLOCK TABLES;

--
