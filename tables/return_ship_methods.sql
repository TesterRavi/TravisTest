USE ``;

-- Table structure for table `return_ship_methods`
--

DROP TABLE IF EXISTS `return_ship_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_ship_methods` (
  `return_ship_method` varchar(30) NOT NULL,
  `agent` varchar(10) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL,
  `return_ship_methods_modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`return_ship_method`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_ship_methods`
--

LOCK TABLES `return_ship_methods` WRITE;
/*!40000 ALTER TABLE `return_ship_methods` DISABLE KEYS */;
INSERT INTO `return_ship_methods` VALUES ('DHL Ground','DHL','DHL Domestic Service','2012-10-02 04:48:41'),('Fedex Ground','FEDEX','FEDEX Domestic Service','2012-10-02 04:48:41'),('Landmark Australia','LANDMARK','Landmark Australian Service','2012-10-02 04:48:41'),('Landmark Canada','LANDMARK','Landmark Canadian Service','2012-10-02 04:48:41'),('Newgistics','USPS','Newgistics Domestic Service','2012-10-02 04:48:41'),('UPS Canada','UPS','UPS Canadian Service','2012-10-02 04:48:41'),('USPS','USPS','U.S. Postal Service','2012-10-02 04:48:41');
/*!40000 ALTER TABLE `return_ship_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
