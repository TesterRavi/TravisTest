USE ``;

-- Table structure for table `shipping_calc_rules`
--

DROP TABLE IF EXISTS `shipping_calc_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_calc_rules` (
  `shipping_calc_rule` varchar(50) NOT NULL,
  `priority` int(10) unsigned NOT NULL DEFAULT '0',
  `description` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`shipping_calc_rule`),
  UNIQUE KEY `priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_calc_rules`
--

LOCK TABLES `shipping_calc_rules` WRITE;
/*!40000 ALTER TABLE `shipping_calc_rules` DISABLE KEYS */;
INSERT INTO `shipping_calc_rules` VALUES ('flat_event 5.95',24,'inactive',1),('flat_event 6.95',135,'inactive',1),('flat_event 7.95',182,'inactive',1),('flat_event 8.95',83,'inactive',1),('flat_event 9.95',117,'inactive',1),('flat_event: 5.95',200,'Flat per Event: $5.95',1),('flat_event: 6.95',202,'Flat per Event: $6.95',1),('flat_event: 7.95',203,'Flat per Event: $7.95',1),('flat_event: 8.95',204,'Flat per Event: $8.95',1),('flat_event: 9.95',205,'Flat per Event: $9.95',1),('flat_event: 95.95',201,'Flat per Event: $95.95',1),('flat_item: 5.95',300,'Flat per Item: $5.95',1),('flat_item: 95.95',301,'Flat per Item: $95.95',1),('free',100,'Free Shipping',1),('unknown',0,'Unknown',0),('weight',1,'Ship By Item Weight',1);
/*!40000 ALTER TABLE `shipping_calc_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
