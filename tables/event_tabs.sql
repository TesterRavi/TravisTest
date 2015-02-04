USE ``;

-- Table structure for table `event_tabs`
--

DROP TABLE IF EXISTS `event_tabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_tabs` (
  `event_tab` varchar(50) NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bit_mask` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_tab`),
  UNIQUE KEY `bit_mask` (`bit_mask`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_tabs`
--

LOCK TABLES `event_tabs` WRITE;
/*!40000 ALTER TABLE `event_tabs` DISABLE KEYS */;
INSERT INTO `event_tabs` VALUES ('All Events',1,17),('Beauty',0,2),('Home',0,4),('Kids',0,8),('Men',0,16),('WOmen',0,1);
/*!40000 ALTER TABLE `event_tabs` ENABLE KEYS */;
UNLOCK TABLES;

--
