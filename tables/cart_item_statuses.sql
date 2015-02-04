USE ``;

-- Table structure for table `cart_item_statuses`
--

DROP TABLE IF EXISTS `cart_item_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_item_statuses` (
  `cart_item_status` tinyint(3) unsigned NOT NULL,
  `description` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`cart_item_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item_statuses`
--

LOCK TABLES `cart_item_statuses` WRITE;
/*!40000 ALTER TABLE `cart_item_statuses` DISABLE KEYS */;
INSERT INTO `cart_item_statuses` VALUES (0,'deleted'),(25,'expired'),(50,'active'),(75,'hold'),(80,'locked'),(100,'purchased');
/*!40000 ALTER TABLE `cart_item_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
