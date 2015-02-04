USE ``;

-- Table structure for table `purchase_order_statuses`
--

DROP TABLE IF EXISTS `purchase_order_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_order_statuses` (
  `purchase_order_status` tinyint(3) unsigned NOT NULL,
  `description` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`purchase_order_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_order_statuses`
--

LOCK TABLES `purchase_order_statuses` WRITE;
/*!40000 ALTER TABLE `purchase_order_statuses` DISABLE KEYS */;
INSERT INTO `purchase_order_statuses` VALUES (10,'Voided'),(25,'Created'),(50,'Posted'),(75,'Received'),(100,'Complete');
/*!40000 ALTER TABLE `purchase_order_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
