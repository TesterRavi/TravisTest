USE ``;

-- Table structure for table `shipment_tracking_sources`
--

DROP TABLE IF EXISTS `shipment_tracking_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment_tracking_sources` (
  `shipment_tracking_source` varchar(25) NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`shipment_tracking_source`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_tracking_sources`
--

LOCK TABLES `shipment_tracking_sources` WRITE;
/*!40000 ALTER TABLE `shipment_tracking_sources` DISABLE KEYS */;
INSERT INTO `shipment_tracking_sources` VALUES ('CASI',''),('cleanup_job','Job that updates tracking information asynchronously'),('connect_ship',''),('connect_ship_east','Label generate from bergen warehouse'),('connect_ship_west','Label generate from commerce warehouse'),('gearman',''),('high_jump','');
/*!40000 ALTER TABLE `shipment_tracking_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
