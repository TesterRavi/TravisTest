USE ``;

-- Table structure for table `invitation_promotions`
--

DROP TABLE IF EXISTS `invitation_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitation_promotions` (
  `inv_camp_id` int(10) unsigned NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `purchase_end_date` datetime DEFAULT NULL,
  `member_specific` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`inv_camp_id`),
  CONSTRAINT `FK_invitation_promotions::invitation_campaigns` FOREIGN KEY (`inv_camp_id`) REFERENCES `invitation_campaigns` (`inv_camp_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitation_promotions`
--

LOCK TABLES `invitation_promotions` WRITE;
/*!40000 ALTER TABLE `invitation_promotions` DISABLE KEYS */;
INSERT INTO `invitation_promotions` VALUES (1,NULL,NULL,NULL,0),(2,NULL,NULL,'1998-12-18 00:00:00',0),(3,NULL,NULL,'1998-12-18 00:00:00',0),(4,NULL,NULL,'1998-12-18 00:00:00',0),(5,NULL,NULL,'1998-12-18 00:00:00',0),(6,NULL,NULL,'1998-12-18 00:00:00',0),(7,NULL,NULL,'1998-12-18 00:00:00',0),(8,NULL,NULL,'1998-12-18 00:00:00',0),(9,NULL,NULL,NULL,0),(10,'2011-01-26 00:00:00','2011-01-28 23:59:59','2011-02-28 00:00:00',0),(11,'2011-03-16 00:00:00','2011-03-16 00:00:00','2011-04-16 23:59:59',0),(12,'2011-07-11 00:00:00','2011-07-13 23:59:59','2011-08-11 23:59:59',0),(13,'2011-07-28 00:00:00','2011-08-03 23:59:59','2011-08-10 23:59:59',1),(14,'2011-10-10 08:00:00','2011-10-16 23:59:59','2011-11-16 23:59:59',0);
/*!40000 ALTER TABLE `invitation_promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
