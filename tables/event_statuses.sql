USE ``;

-- Table structure for table `event_statuses`
--

DROP TABLE IF EXISTS `event_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_statuses` (
  `event_status` tinyint(3) unsigned NOT NULL,
  `description` varchar(20) NOT NULL,
  PRIMARY KEY (`event_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_statuses`
--

LOCK TABLES `event_statuses` WRITE;
/*!40000 ALTER TABLE `event_statuses` DISABLE KEYS */;
INSERT INTO `event_statuses` VALUES (5,'dept_cancelled'),(10,'inactive'),(20,'pending_approval'),(25,'preview'),(50,'active'),(60,'with_brand'),(70,'in_warehouse'),(80,'shipping'),(85,'ship_complete'),(90,'warehouse_complete'),(100,'closed');
/*!40000 ALTER TABLE `event_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
