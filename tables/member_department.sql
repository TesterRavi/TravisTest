USE ``;

-- Table structure for table `member_department`
--

DROP TABLE IF EXISTS `member_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_department` (
  `member_department_cd` varchar(50) NOT NULL,
  `is_active_flag` char(1) NOT NULL,
  `created_by_user_id` int(11) NOT NULL,
  `created_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`member_department_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_department`
--

LOCK TABLES `member_department` WRITE;
/*!40000 ALTER TABLE `member_department` DISABLE KEYS */;
INSERT INTO `member_department` VALUES ('','Y',0,'2013-10-21 23:13:17'),('Accessories','Y',0,'2013-10-21 23:13:17'),('Bath & Body','Y',0,'2013-10-21 23:13:17'),('Beauty Bags','Y',0,'2013-10-21 23:13:17'),('Bedding & Bath','Y',0,'2013-10-21 23:13:17'),('Boys\' Clothing','Y',0,'2014-01-14 13:57:03'),('Clothing','Y',0,'2013-10-21 23:13:17'),('Coats & Jackets','Y',0,'2013-10-21 23:13:17'),('Decor & Accessories','Y',0,'2013-10-21 23:13:17'),('Electronics & Home Appliances','Y',0,'2013-10-21 23:13:17'),('Fragrance','Y',0,'2013-10-21 23:13:17'),('Furniture','Y',0,'2013-10-21 23:13:17'),('Girls\' Clothing','Y',0,'2014-01-14 13:56:57'),('Grooming & Fragrance','Y',0,'2013-10-21 23:13:17'),('Hair Care','Y',0,'2013-10-21 23:13:17'),('Handbags','Y',0,'2013-10-21 23:13:17'),('Intimate Apparel','Y',0,'2013-10-21 23:13:17'),('Jewelry, Watches & Accessories','Y',0,'2013-10-21 23:13:17'),('Kitchen','Y',0,'2013-10-21 23:13:17'),('Makeup','Y',0,'2013-10-21 23:13:17'),('Maternity','Y',0,'2013-10-21 23:13:17'),('Nails','Y',0,'2013-10-21 23:13:17'),('Outdoor','Y',0,'2013-10-21 23:13:17'),('Plus','Y',0,'2013-10-21 23:13:17'),('Rugs','Y',0,'2013-10-21 23:13:17'),('Shoes','Y',0,'2013-10-21 23:13:17'),('Skin Care','Y',0,'2013-10-21 23:13:17'),('Storage & Organization','Y',0,'2013-10-21 23:13:17'),('Supplements','Y',0,'2013-10-21 23:13:17'),('Swim','Y',0,'2013-10-21 23:13:17'),('Tabletop & Bar','Y',0,'2013-10-21 23:13:17'),('Tools & Accessories','Y',0,'2013-10-21 23:13:17'),('Toys, Gear & Home','Y',0,'2013-10-21 23:13:17'),('Travel','Y',0,'2013-10-21 23:13:17'),('Underwear, Socks & Loungewear','Y',0,'2014-01-14 13:56:34');
/*!40000 ALTER TABLE `member_department` ENABLE KEYS */;
UNLOCK TABLES;

--
