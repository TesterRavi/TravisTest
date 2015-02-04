USE ``;

-- Table structure for table `unsubscribe_reasons`
--

DROP TABLE IF EXISTS `unsubscribe_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unsubscribe_reasons` (
  `unsubscribe_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `reason` varchar(100) NOT NULL,
  `other_text` varchar(150) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`unsubscribe_id`),
  KEY `FK_unsubscribe_reasons::members` (`member_id`),
  CONSTRAINT `FK_unsubscribe_reasons::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unsubscribe_reasons`
--

LOCK TABLES `unsubscribe_reasons` WRITE;
/*!40000 ALTER TABLE `unsubscribe_reasons` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsubscribe_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
