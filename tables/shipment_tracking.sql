USE ``;

-- Table structure for table `shipment_tracking`
--

DROP TABLE IF EXISTS `shipment_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment_tracking` (
  `shipment_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tracking_num` varchar(25) NOT NULL DEFAULT '',
  `ship_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delivery_attempt_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delivery_estimate_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delivery_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `return_to_shipper_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `email_notification_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `email_notification_type` enum('full','partial','remainder') DEFAULT NULL,
  `tracking_info` varchar(150) NOT NULL DEFAULT '',
  `tracking_info_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `label_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `group_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `source` varchar(25) NOT NULL DEFAULT 'gearman',
  PRIMARY KEY (`tracking_num`,`shipment_id`),
  KEY `FK_shipment_tracking::shipments` (`shipment_id`),
  KEY `ship_date` (`ship_date`),
  KEY `email_notification_type` (`email_notification_type`),
  KEY `tracking_info_date` (`tracking_info_date`),
  KEY `delivery_date` (`delivery_date`,`tracking_info_date`),
  KEY `FK_shipment_tracking::shipment_tracking_sources` (`source`),
  CONSTRAINT `FK_shipment_tracking::shipments` FOREIGN KEY (`shipment_id`) REFERENCES `shipments` (`shipment_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_shipment_tracking::shipment_tracking_sources` FOREIGN KEY (`source`) REFERENCES `shipment_tracking_sources` (`shipment_tracking_source`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_tracking`
--

LOCK TABLES `shipment_tracking` WRITE;
/*!40000 ALTER TABLE `shipment_tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipment_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
