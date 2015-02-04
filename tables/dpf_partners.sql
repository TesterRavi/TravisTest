USE ``;

-- Table structure for table `dpf_partners`
--

DROP TABLE IF EXISTS `dpf_partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpf_partners` (
  `member_id` int(10) unsigned NOT NULL,
  `partner_name` varchar(50) NOT NULL DEFAULT '',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`member_id`,`partner_name`),
  UNIQUE KEY `UNIQUE_partner_name` (`partner_name`),
  CONSTRAINT `C_DpfPartners:member_id::Members:member_id` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dpf_partners`
--

LOCK TABLES `dpf_partners` WRITE;
/*!40000 ALTER TABLE `dpf_partners` DISABLE KEYS */;
INSERT INTO `dpf_partners` VALUES (137965,'Cory',1,'2009-11-30 23:59:16'),(251641,'Rebekah',1,'2010-04-15 17:22:40'),(421680,'Emily',1,'2009-11-30 23:45:07'),(1232274,'Brittany',1,'2010-03-16 22:36:09'),(1310459,'Tumri',1,'2009-10-30 21:45:04'),(1811177,'Buddy Media',1,'2010-02-06 00:42:32'),(2110125,'Jean',1,'2010-03-09 18:24:33'),(2111423,'Erica',1,'2010-03-09 22:00:11'),(2148957,'Amy',1,'2010-03-16 22:43:41'),(2154832,'Test DPF Account',1,'2010-03-17 21:02:31'),(2207493,'Neko',0,'2010-03-26 16:59:29'),(2207850,'Kyle',1,'2010-03-26 17:17:59'),(2229055,'Permuto',1,'2010-03-30 22:42:35'),(2302988,'HauteLook',1,'2010-12-17 17:57:05'),(2524279,'Kathy',1,'2010-05-20 23:35:08'),(2659370,'Roderick',1,'2010-06-18 17:33:24'),(2726791,'Krag',1,'2010-07-02 21:11:06'),(2833382,'Tobias',1,'2010-07-21 16:00:03'),(2868329,'Lynn',1,'2010-07-27 20:55:07'),(3107016,'Laura',1,'2010-09-02 00:32:29'),(3135276,'Matt',1,'2010-09-08 22:09:58'),(3193247,'Evelyn',1,'2010-09-17 22:04:38'),(5417362,'Wayne',1,'2011-07-22 05:45:57'),(5605040,'David',1,'2011-07-28 23:42:46'),(6362233,'Nanigans',1,'2011-11-04 01:01:41');
/*!40000 ALTER TABLE `dpf_partners` ENABLE KEYS */;
UNLOCK TABLES;

--
