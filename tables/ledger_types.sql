USE ``;

-- Table structure for table `ledger_types`
--

DROP TABLE IF EXISTS `ledger_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ledger_types` (
  `ledger_type` tinyint(3) unsigned NOT NULL,
  `description` varchar(15) NOT NULL,
  `expirable` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ledger_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ledger_types`
--

LOCK TABLES `ledger_types` WRITE;
/*!40000 ALTER TABLE `ledger_types` DISABLE KEYS */;
INSERT INTO `ledger_types` VALUES (1,'sponsor',1),(2,'return',0),(3,'compensation',1),(4,'award',1),(5,'Undefined',1),(9,'Undefined',1);
/*!40000 ALTER TABLE `ledger_types` ENABLE KEYS */;
UNLOCK TABLES;

--
