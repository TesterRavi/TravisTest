USE ``;

-- Table structure for table `return_tos`
--

DROP TABLE IF EXISTS `return_tos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_tos` (
  `return_to` varchar(20) NOT NULL,
  PRIMARY KEY (`return_to`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_tos`
--

LOCK TABLES `return_tos` WRITE;
/*!40000 ALTER TABLE `return_tos` DISABLE KEYS */;
INSERT INTO `return_tos` VALUES ('brand'),('hautelook'),('nordstrom_rack');
/*!40000 ALTER TABLE `return_tos` ENABLE KEYS */;
UNLOCK TABLES;

--
