USE ``;

-- Table structure for table `shipments`
--

DROP TABLE IF EXISTS `shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipments` (
  `shipment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_method` varchar(25) NOT NULL DEFAULT '',
  `document_set` int(10) unsigned DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`shipment_id`),
  KEY `FK_shipments::delivery_methods` (`delivery_method`),
  KEY `create_date` (`create_date`),
  KEY `FK_shipments::document_sets` (`document_set`),
  CONSTRAINT `FK_shipments::delivery_methods` FOREIGN KEY (`delivery_method`) REFERENCES `delivery_methods` (`delivery_method`) ON UPDATE CASCADE,
  CONSTRAINT `FK_shipments::document_sets` FOREIGN KEY (`document_set`) REFERENCES `document_sets` (`document_set`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipments`
--

LOCK TABLES `shipments` WRITE;
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
