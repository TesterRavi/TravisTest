USE ``;

-- Table structure for table `business_division`
--

DROP TABLE IF EXISTS `business_division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_division` (
  `business_division_id` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `is_active_flag` char(1) NOT NULL,
  `created_by_user_id` int(11) NOT NULL,
  `created_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`business_division_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_division`
--

LOCK TABLES `business_division` WRITE;
/*!40000 ALTER TABLE `business_division` DISABLE KEYS */;
INSERT INTO `business_division` VALUES ('Beauty','','Y',0,'2013-10-21 23:09:50'),('Experiences','','Y',0,'2013-10-21 23:09:50'),('Handbags','','Y',0,'2013-10-21 23:09:50'),('Home','','Y',0,'2013-10-21 23:09:50'),('JWA','','Y',0,'2013-10-21 23:09:50'),('Kids','','Y',0,'2013-10-21 23:09:50'),('Men\'s','','Y',0,'2013-10-21 23:09:50'),('Women\'s','','Y',0,'2013-10-21 23:09:50'),('Women\'s Shoes','','Y',0,'2013-10-21 23:09:50');
/*!40000 ALTER TABLE `business_division` ENABLE KEYS */;
UNLOCK TABLES;

--
