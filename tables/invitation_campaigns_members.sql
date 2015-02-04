USE ``;

-- Table structure for table `invitation_campaigns_members`
--

DROP TABLE IF EXISTS `invitation_campaigns_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitation_campaigns_members` (
  `inv_camp_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`inv_camp_id`,`member_id`),
  KEY `FK_invitation_campaigns_members::members` (`member_id`),
  CONSTRAINT `FK_invitation_campaigns_members::invitation_campaigns` FOREIGN KEY (`inv_camp_id`) REFERENCES `invitation_campaigns` (`inv_camp_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_invitation_campaigns_members::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitation_campaigns_members`
--

LOCK TABLES `invitation_campaigns_members` WRITE;
/*!40000 ALTER TABLE `invitation_campaigns_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `invitation_campaigns_members` ENABLE KEYS */;
UNLOCK TABLES;

--
