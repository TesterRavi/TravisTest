USE ``;

-- Table structure for table `coupon_rules`
--

DROP TABLE IF EXISTS `coupon_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_rules` (
  `coupon_rule` varchar(25) NOT NULL,
  `description` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`coupon_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_rules`
--

LOCK TABLES `coupon_rules` WRITE;
/*!40000 ALTER TABLE `coupon_rules` DISABLE KEYS */;
INSERT INTO `coupon_rules` VALUES ('4Hour','4 hours after event start date');
/*!40000 ALTER TABLE `coupon_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
