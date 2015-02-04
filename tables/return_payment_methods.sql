USE ``;

-- Table structure for table `return_payment_methods`
--

DROP TABLE IF EXISTS `return_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_payment_methods` (
  `return_payment_method` varchar(30) CHARACTER SET utf8 NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`return_payment_method`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_payment_methods`
--

LOCK TABLES `return_payment_methods` WRITE;
/*!40000 ALTER TABLE `return_payment_methods` DISABLE KEYS */;
INSERT INTO `return_payment_methods` VALUES ('Gift_Card',1),('HauteLook_Credit',1),('Original_Payment',1);
/*!40000 ALTER TABLE `return_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
