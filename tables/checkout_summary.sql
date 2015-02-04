USE ``;

-- Table structure for table `checkout_summary`
--

DROP TABLE IF EXISTS `checkout_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checkout_summary` (
  `member_id` int(10) unsigned NOT NULL,
  `checkout_type` enum('standard','giftcard','WAP','iPhone') NOT NULL DEFAULT 'standard',
  `checkout_data` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`member_id`,`checkout_type`),
  CONSTRAINT `FK_checkout_summary::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout_summary`
--

LOCK TABLES `checkout_summary` WRITE;
/*!40000 ALTER TABLE `checkout_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `checkout_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
