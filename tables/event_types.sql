USE ``;

-- Table structure for table `event_types`
--

DROP TABLE IF EXISTS `event_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_types` (
  `event_type` varchar(20) NOT NULL,
  `definition` text NOT NULL,
  PRIMARY KEY (`event_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_types`
--

LOCK TABLES `event_types` WRITE;
/*!40000 ALTER TABLE `event_types` DISABLE KEYS */;
INSERT INTO `event_types` VALUES ('drop_ship','Vendor ships directly to the customer. We do not handle the inventory in our warehouse.'),('giftcard',''),('owned_inv','Blowout events using owned inventory from our warehouse.'),('parent','Parent Event Type'),('post_event','Purchase order is generated after the event based on what was sold during the event. Vendors ship merchandise to our warehouse where we then send it to the customer.'),('post_h','Post-event purchase inventory mixed with owned inventory from the warehouse.'),('pre_event','Merchandise is purchased before the event occurs and stored in the warehouse until items are sold during the event. We own all items, and keep what we do not sell through.'),('pre_h','Pre-event purchase inventory mixed with owned inventory from the warehouse.'),('pre_post_h','Both Post-event & Pre-event purchase inventory mixed with owned inventory from the warehouse.'),('service','Items sold during event are intanglible or transferred electronically.'),('stp','Temp Straight To Persistent Event'),('wine','Alcoholic Beverage Sales');
/*!40000 ALTER TABLE `event_types` ENABLE KEYS */;
UNLOCK TABLES;

--
