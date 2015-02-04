USE ``;

-- Table structure for table `fashion_rewards_bonus`
--

DROP TABLE IF EXISTS `fashion_rewards_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fashion_rewards_bonus` (
  `points` char(1) NOT NULL DEFAULT '1',
  `property_id` int(10) unsigned NOT NULL,
  `bonus_date` date NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`bonus_date`,`property_id`),
  KEY `FK_nordstrom_properties::nordstrom_properties` (`property_id`),
  CONSTRAINT `FK_nordstrom_properties::nordstrom_properties` FOREIGN KEY (`property_id`) REFERENCES `nordstrom_properties` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fashion_rewards_bonus`
--

LOCK TABLES `fashion_rewards_bonus` WRITE;
/*!40000 ALTER TABLE `fashion_rewards_bonus` DISABLE KEYS */;
INSERT INTO `fashion_rewards_bonus` VALUES ('B',3,'2015-02-05','2014-09-17 19:40:46','2014-05-25 08:16:16'),('B',2,'2015-02-07','2014-08-31 23:32:03','2014-03-31 20:53:52'),('B',4,'2015-02-09','2014-12-30 08:34:51','2014-07-12 05:20:14'),('B',1,'2015-02-10','2014-12-01 03:59:03','2014-10-27 18:40:11');
/*!40000 ALTER TABLE `fashion_rewards_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
