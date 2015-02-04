USE ``;

-- Table structure for table `return_item_statuses`
--

DROP TABLE IF EXISTS `return_item_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_item_statuses` (
  `return_item_status` tinyint(3) unsigned NOT NULL,
  `description` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`return_item_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_item_statuses`
--

LOCK TABLES `return_item_statuses` WRITE;
/*!40000 ALTER TABLE `return_item_statuses` DISABLE KEYS */;
INSERT INTO `return_item_statuses` VALUES (5,'failed'),(10,'void'),(25,'limbo'),(40,'locked'),(50,'pending'),(75,'need_manager'),(100,'complete');
/*!40000 ALTER TABLE `return_item_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
