USE ``;

-- Table structure for table `federated_member_profiles`
--

DROP TABLE IF EXISTS `federated_member_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `federated_member_profiles` (
  `member_id` int(10) unsigned NOT NULL,
  `lifecycle_segment` varchar(50) NOT NULL DEFAULT 'Newborn',
  `lifecycle_segment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `loyalty_segment` varchar(50) DEFAULT NULL,
  `loyalty_segment_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `copa` varchar(50) NOT NULL DEFAULT 'default',
  `copa_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cosa` varchar(50) NOT NULL DEFAULT 'default',
  `cosa_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CONNECTION='mysql://hautelook:haute98livedb@10.0.0.248:3306/hautelook_live/member_profiles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `federated_member_profiles`
--

LOCK TABLES `federated_member_profiles` WRITE;
/*!40000 ALTER TABLE `federated_member_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `federated_member_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
