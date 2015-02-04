USE ``;

-- Table structure for table `member_fraud_flags`
--

DROP TABLE IF EXISTS `member_fraud_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_fraud_flags` (
  `fraud_flag` tinyint(3) unsigned NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`fraud_flag`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_fraud_flags`
--

LOCK TABLES `member_fraud_flags` WRITE;
/*!40000 ALTER TABLE `member_fraud_flags` DISABLE KEYS */;
INSERT INTO `member_fraud_flags` VALUES (0,'not fraudulent'),(1,'fraudulent'),(2,'fraud-proof');
/*!40000 ALTER TABLE `member_fraud_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
