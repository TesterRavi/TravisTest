USE ``;

-- Table structure for table `campaign_channels`
--

DROP TABLE IF EXISTS `campaign_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_channels` (
  `campaign_channel` varchar(25) NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`campaign_channel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_channels`
--

LOCK TABLES `campaign_channels` WRITE;
/*!40000 ALTER TABLE `campaign_channels` DISABLE KEYS */;
INSERT INTO `campaign_channels` VALUES ('Affiliate',''),('Banner',''),('BD / Partnerships',''),('Contextual',''),('Direct / Organic',''),('Display',''),('Email',''),('Exclude',''),('Invite',''),('Other',''),('Referral',''),('Search',''),('Share','');
/*!40000 ALTER TABLE `campaign_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
