USE ``;

-- Table structure for table `member_statuses`
--

DROP TABLE IF EXISTS `member_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_statuses` (
  `member_status` varchar(20) NOT NULL,
  PRIMARY KEY (`member_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_statuses`
--

LOCK TABLES `member_statuses` WRITE;
/*!40000 ALTER TABLE `member_statuses` DISABLE KEYS */;
INSERT INTO `member_statuses` VALUES ('active'),('inactive'),('pending');
/*!40000 ALTER TABLE `member_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
