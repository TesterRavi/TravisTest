USE ``;

-- Table structure for table `internal_reconcile_member_last_visit`
--

DROP TABLE IF EXISTS `internal_reconcile_member_last_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internal_reconcile_member_last_visit` (
  `member_id` int(10) unsigned NOT NULL,
  `last_visit_date` datetime NOT NULL,
  PRIMARY KEY (`member_id`),
  KEY `member_id` (`member_id`,`last_visit_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internal_reconcile_member_last_visit`
--

LOCK TABLES `internal_reconcile_member_last_visit` WRITE;
/*!40000 ALTER TABLE `internal_reconcile_member_last_visit` DISABLE KEYS */;
/*!40000 ALTER TABLE `internal_reconcile_member_last_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
