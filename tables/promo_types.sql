USE ``;

-- Table structure for table `promo_types`
--

DROP TABLE IF EXISTS `promo_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promo_types` (
  `promo_type` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`promo_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo_types`
--

LOCK TABLES `promo_types` WRITE;
/*!40000 ALTER TABLE `promo_types` DISABLE KEYS */;
INSERT INTO `promo_types` VALUES ('facebook','Facebook'),('facebook_twitter','Facebook/Twitter'),('invite_a_friend','Invite A Friend'),('pinterest','Pinterest'),('standard','Standard'),('twitter','Twitter');
/*!40000 ALTER TABLE `promo_types` ENABLE KEYS */;
UNLOCK TABLES;

--
