USE ``;

-- Table structure for table `return_types`
--

DROP TABLE IF EXISTS `return_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_types` (
  `return_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(31) NOT NULL,
  PRIMARY KEY (`return_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_types`
--

LOCK TABLES `return_types` WRITE;
/*!40000 ALTER TABLE `return_types` DISABLE KEYS */;
INSERT INTO `return_types` VALUES (1,'Return to HL Credit'),(2,'Return to CreditCard/PayPal/BML'),(3,'Damage'),(4,'Oversold'),(5,'Short'),(6,'Warehouse'),(7,'Restocking'),(8,'Return Lost in Warehouse to HL'),(9,'Return Lost in Warehouse to CC'),(11,'Fraud'),(12,'Return Lost in Shipment'),(13,'Restocking, Remove Fee to HL'),(14,'Restocking, Remove Fee to CC'),(15,'Return to Gift Card'),(16,'Damage to Gift Card'),(17,'Warehouse to Gift Card'),(18,'Cancel'),(19,'Non Inventory'),(20,'Inventory'),(21,'In warehouse, return n/a'),(22,'Disputed'),(23,'Restocking, Remove Fee'),(24,'Lost in Warehouse');
/*!40000 ALTER TABLE `return_types` ENABLE KEYS */;
UNLOCK TABLES;

--
