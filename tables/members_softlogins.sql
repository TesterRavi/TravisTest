USE ``;

-- Table structure for table `members_softlogins`
--

DROP TABLE IF EXISTS `members_softlogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members_softlogins` (
  `token` varchar(23) NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`token`),
  KEY `FK_members_softlogins::members` (`member_id`),
  CONSTRAINT `FK_members_softlogins::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_softlogins`
--

LOCK TABLES `members_softlogins` WRITE;
/*!40000 ALTER TABLE `members_softlogins` DISABLE KEYS */;
INSERT INTO `members_softlogins` VALUES ('5080276c45da2',1,'2012-10-18 15:59:40');
/*!40000 ALTER TABLE `members_softlogins` ENABLE KEYS */;
UNLOCK TABLES;

--
