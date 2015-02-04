USE ``;

-- Table structure for table `dpf_events_excluded`
--

DROP TABLE IF EXISTS `dpf_events_excluded`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpf_events_excluded` (
  `event_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2335 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dpf_events_excluded`
--

LOCK TABLES `dpf_events_excluded` WRITE;
/*!40000 ALTER TABLE `dpf_events_excluded` DISABLE KEYS */;
INSERT INTO `dpf_events_excluded` VALUES (2334);
/*!40000 ALTER TABLE `dpf_events_excluded` ENABLE KEYS */;
UNLOCK TABLES;

--
