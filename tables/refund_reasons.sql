USE ``;

-- Table structure for table `refund_reasons`
--

DROP TABLE IF EXISTS `refund_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refund_reasons` (
  `refund_reason` varchar(40) NOT NULL,
  `member_facing_refund_reason` varchar(40) DEFAULT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`refund_reason`),
  KEY `FK_refund_reasons::member_facing_refund_reasons` (`member_facing_refund_reason`),
  CONSTRAINT `FK_refund_reasons::member_facing_refund_reasons` FOREIGN KEY (`member_facing_refund_reason`) REFERENCES `member_facing_refund_reasons` (`member_facing_refund_reason`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refund_reasons`
--

LOCK TABLES `refund_reasons` WRITE;
/*!40000 ALTER TABLE `refund_reasons` DISABLE KEYS */;
INSERT INTO `refund_reasons` VALUES ('Freight Refund','Shipping refund',1),('No reason','Other',1),('Order Tender Change','Tender change',1),('Refund Freight','Shipping refund',1),('Refund Gift Card to HL Credit','Tender change',1),('Refund Gift Card to Original Payment','Tender change',1),('Refund HL Credit to Original Payment','Tender change',1),('Refund Restocking Fee','Return adjustment',1),('Refund Type Change','Other',1),('Return Tender Change','Tender change',1),('RMA Refund','Return shipping refund',1),('Subtotal Refund','Price Adjustment',1),('Surcharge Refund','Surcharge refund',1),('Taxes Refund','Tax refund',1),('Tender Change','Tender change',1);
/*!40000 ALTER TABLE `refund_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
