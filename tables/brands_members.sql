USE ``;

-- Table structure for table `brands_members`
--

DROP TABLE IF EXISTS `brands_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands_members` (
  `brand_id` int(10) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`brand_id`,`member_id`),
  KEY `FK_brands_members::members` (`member_id`),
  CONSTRAINT `FK_brands_members::brands` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_brands_members::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands_members`
--

LOCK TABLES `brands_members` WRITE;
/*!40000 ALTER TABLE `brands_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `brands_members` ENABLE KEYS */;
UNLOCK TABLES;

--
