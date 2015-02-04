USE ``;

-- Table structure for table `event_platforms`
--

DROP TABLE IF EXISTS `event_platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_platforms` (
  `event_platform` varchar(20) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `event_platform` (`event_platform`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_platforms`
--

LOCK TABLES `event_platforms` WRITE;
/*!40000 ALTER TABLE `event_platforms` DISABLE KEYS */;
INSERT INTO `event_platforms` VALUES ('HL & NR Email',1),('HL Email',1),('NR Email',1);
/*!40000 ALTER TABLE `event_platforms` ENABLE KEYS */;
UNLOCK TABLES;

--
