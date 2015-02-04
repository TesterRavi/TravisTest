USE ``;

-- Table structure for table `purchase_order_types`
--

DROP TABLE IF EXISTS `purchase_order_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_order_types` (
  `purchase_order_type` varchar(20) NOT NULL,
  PRIMARY KEY (`purchase_order_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_order_types`
--

LOCK TABLES `purchase_order_types` WRITE;
/*!40000 ALTER TABLE `purchase_order_types` DISABLE KEYS */;
INSERT INTO `purchase_order_types` VALUES ('Consignment'),('Pre-Buy'),('Sample'),('Warehouse');
/*!40000 ALTER TABLE `purchase_order_types` ENABLE KEYS */;
UNLOCK TABLES;

--
