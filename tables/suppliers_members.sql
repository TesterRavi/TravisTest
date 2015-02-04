USE ``;

-- Table structure for table `suppliers_members`
--

DROP TABLE IF EXISTS `suppliers_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers_members` (
  `supplier` varchar(15) NOT NULL DEFAULT '',
  `member_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`supplier`,`member_id`),
  KEY `FK_suppliers_members::members` (`member_id`),
  CONSTRAINT `FK_suppliers_members::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_suppliers_members::suppliers` FOREIGN KEY (`supplier`) REFERENCES `suppliers` (`supplier`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers_members`
--

LOCK TABLES `suppliers_members` WRITE;
/*!40000 ALTER TABLE `suppliers_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `suppliers_members` ENABLE KEYS */;
UNLOCK TABLES;

--
