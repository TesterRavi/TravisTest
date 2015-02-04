USE ``;

-- Table structure for table `event_page_positions`
--

DROP TABLE IF EXISTS `event_page_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_page_positions` (
  `event_page_position` varchar(25) NOT NULL,
  PRIMARY KEY (`event_page_position`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_page_positions`
--

LOCK TABLES `event_page_positions` WRITE;
/*!40000 ALTER TABLE `event_page_positions` DISABLE KEYS */;
INSERT INTO `event_page_positions` VALUES ('bottom'),('top');
/*!40000 ALTER TABLE `event_page_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
