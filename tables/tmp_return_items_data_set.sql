USE ``;

-- Table structure for table `tmp_return_items_data_set`
--

DROP TABLE IF EXISTS `tmp_return_items_data_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_return_items_data_set` (
  `item_id` int(10) unsigned NOT NULL,
  `return_type_id` int(10) unsigned NOT NULL,
  `return_reason_type` varchar(40) NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `item_id` (`item_id`,`return_type_id`,`return_reason_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp_return_items_data_set`
--

LOCK TABLES `tmp_return_items_data_set` WRITE;
/*!40000 ALTER TABLE `tmp_return_items_data_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmp_return_items_data_set` ENABLE KEYS */;
UNLOCK TABLES;

--
