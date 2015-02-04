USE ``;

-- Table structure for table `member_facing_return_reasons`
--

DROP TABLE IF EXISTS `member_facing_return_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_facing_return_reasons` (
  `member_facing_return_reason` varchar(40) NOT NULL,
  PRIMARY KEY (`member_facing_return_reason`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_facing_return_reasons`
--

LOCK TABLES `member_facing_return_reasons` WRITE;
/*!40000 ALTER TABLE `member_facing_return_reasons` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_facing_return_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
