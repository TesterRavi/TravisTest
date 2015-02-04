USE ``;

-- Table structure for table `publisher_earning_types`
--

DROP TABLE IF EXISTS `publisher_earning_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publisher_earning_types` (
  `type_id` tinyint(3) unsigned NOT NULL,
  `credit_debit` varchar(6) NOT NULL,
  `member_trans` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type_desc` varchar(40) NOT NULL,
  PRIMARY KEY (`type_id`),
  KEY `member_trans_credit_debit` (`member_trans`,`credit_debit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher_earning_types`
--

LOCK TABLES `publisher_earning_types` WRITE;
/*!40000 ALTER TABLE `publisher_earning_types` DISABLE KEYS */;
INSERT INTO `publisher_earning_types` VALUES (10,'credit',1,'Credit for optin purchases'),(20,'credit',1,'Credit for traffic purchases'),(30,'credit',1,'Credit for hosted purchases'),(100,'debit',0,'Debit for payment to publisher'),(110,'debit',1,'Debit for return of optin purchase'),(120,'debit',1,'Debit for return of traffic purchase'),(130,'debit',1,'Debit for return of hosted purchase');
/*!40000 ALTER TABLE `publisher_earning_types` ENABLE KEYS */;
UNLOCK TABLES;

--
