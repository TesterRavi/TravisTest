USE ``;

-- Table structure for table `return_reason_types`
--

DROP TABLE IF EXISTS `return_reason_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_reason_types` (
  `return_reason_type` varchar(40) NOT NULL,
  `member_facing_return_reason` varchar(40) DEFAULT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`return_reason_type`),
  KEY `FK_return_reason_types::member_facing_return_reasons` (`member_facing_return_reason`),
  CONSTRAINT `FK_return_reason_types::member_facing_return_reasons` FOREIGN KEY (`member_facing_return_reason`) REFERENCES `member_facing_return_reasons` (`member_facing_return_reason`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_reason_types`
--

LOCK TABLES `return_reason_types` WRITE;
/*!40000 ALTER TABLE `return_reason_types` DISABLE KEYS */;
INSERT INTO `return_reason_types` VALUES ('Cancel',NULL,1),('Damage',NULL,1),('Damage to Gift Card',NULL,0),('Damaged',NULL,0),('Did not expect',NULL,0),('Did not fit',NULL,0),('Did not like',NULL,0),('Disputed',NULL,1),('Fraud',NULL,1),('In warehouse, return n/a',NULL,0),('Lost in Warehouse',NULL,1),('No reason',NULL,0),('Other',NULL,1),('Oversold',NULL,1),('Restocking',NULL,0),('Restocking, Remove Fee',NULL,1),('Restocking, Remove Fee to CC',NULL,0),('Restocking, Remove Fee to HL',NULL,0),('Return Lost in Shipment',NULL,1),('Return Lost in Warehouse to CC',NULL,0),('Return Lost in Warehouse to HL',NULL,0),('Return to CreditCard/PayPal/BML',NULL,0),('Return to Gift Card',NULL,0),('Return to HL Credit',NULL,0),('Short',NULL,1),('Warehouse',NULL,1),('Warehouse to Gift Card',NULL,0);
/*!40000 ALTER TABLE `return_reason_types` ENABLE KEYS */;
UNLOCK TABLES;

--
