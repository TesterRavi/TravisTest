USE ``;

-- Table structure for table `member_groups`
--

DROP TABLE IF EXISTS `member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_groups` (
  `cookie_name` varchar(25) NOT NULL,
  `default_cookie_value` varchar(50) DEFAULT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`cookie_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_groups`
--

LOCK TABLES `member_groups` WRITE;
/*!40000 ALTER TABLE `member_groups` DISABLE KEYS */;
INSERT INTO `member_groups` VALUES ('feb_invite_promo',NULL,'5 for $25 invite promo feb 2010');
/*!40000 ALTER TABLE `member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
