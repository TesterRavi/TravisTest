USE ``;

-- Table structure for table `member_division`
--

DROP TABLE IF EXISTS `member_division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_division` (
  `member_division_cd` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `is_active_flag` char(1) NOT NULL,
  `created_by_user_id` int(11) NOT NULL,
  `created_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`member_division_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_division`
--

LOCK TABLES `member_division` WRITE;
/*!40000 ALTER TABLE `member_division` DISABLE KEYS */;
INSERT INTO `member_division` VALUES ('Beauty','','Y',0,'2013-10-21 23:13:16'),('Home','','Y',0,'2013-10-21 23:13:16'),('Kids','','Y',0,'2013-10-21 23:13:16'),('Men','','Y',0,'2013-10-21 23:13:16'),('Women','','Y',0,'2013-10-21 23:13:16');
/*!40000 ALTER TABLE `member_division` ENABLE KEYS */;
UNLOCK TABLES;

--
